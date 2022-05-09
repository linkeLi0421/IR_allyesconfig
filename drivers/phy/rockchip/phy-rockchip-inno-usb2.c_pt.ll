; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-inno-usb2.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-inno-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rockchip_usb2phy_cfg = type { i32, i32, %struct.usb2phy_reg, [2 x %struct.rockchip_usb2phy_port_cfg], %struct.rockchip_chg_det_reg }
%struct.usb2phy_reg = type { i32, i32, i32, i32, i32 }
%struct.rockchip_usb2phy_port_cfg = type { %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg }
%struct.rockchip_chg_det_reg = type { %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg, %struct.usb2phy_reg }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.rockchip_usb2phy = type { ptr, ptr, ptr, ptr, ptr, %struct.clk_hw, i32, i32, i8, ptr, i32, ptr, [2 x %struct.rockchip_usb2phy_port] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rockchip_usb2phy_port = type { ptr, i32, i8, i8, i32, i32, i32, %struct.mutex, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.notifier_block, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_phy_rockchip_inno_usb2__312_1632_rockchip_usb2phy_driver_init6 = internal global ptr @rockchip_usb2phy_driver_init, section ".initcall6.init", align 4
@rockchip_usb2phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_usb2phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_usb2phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_usb2phy_driver_exit = internal global ptr @rockchip_usb2phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [69 x i8] c"phy_rockchip_inno_usb2.author=Frank Wang <frank.wang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [62 x i8] c"phy_rockchip_inno_usb2.description=Rockchip USB2.0 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [72 x i8] c"phy_rockchip_inno_usb2.file=drivers/phy/rockchip/phy-rockchip-inno-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [38 x i8] c"phy_rockchip_inno_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-usb2phy\00", [47 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_dt_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_phy_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-usb2phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_phy_cfgs }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy configs are not assigned!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_usb2phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/phy/rockchip/phy-rockchip-inno-usb2.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr = internal global ptr @rockchip_usb2phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rockchip,usbgrf\00", [16 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to locate usbgrf\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.9 = internal global ptr @rockchip_usb2phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,rv1108-usb2phy\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"the reg property is not assigned in %pOFn node\0A\00", [48 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.14 = internal global ptr @rockchip_usb2phy_probe._entry.12, section ".printk_index", align 4
@rockchip_usb2phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.16 = internal global ptr @rockchip_usb2phy_probe._entry.15, section ".printk_index", align 4
@rockchip_usb2phy_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no phy-config can be matched with %pOFn node\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.19 = internal global ptr @rockchip_usb2phy_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phyclk\00", [25 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1203, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no phyclk specified\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.24 = internal global ptr @rockchip_usb2phy_probe._entry.21, section ".printk_index", align 4
@rockchip_usb2phy_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register 480m output clock\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.27 = internal global ptr @rockchip_usb2phy_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host-port\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"otg-port\00", [23 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rockchip_usb2phy_init, ptr @rockchip_usb2phy_exit, ptr @rockchip_usb2phy_power_on, ptr @rockchip_usb2phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.32 = internal global ptr @rockchip_usb2phy_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_usb2phy\00", [47 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request usb2phy irq handle\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_probe._entry_ptr.36 = internal global ptr @rockchip_usb2phy_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_extcon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid or missing extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_usb2phy_extcon_register\00", [63 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_extcon_register._entry_ptr = internal global ptr @rockchip_usb2phy_extcon_register._entry, section ".printk_index", align 4
@rockchip_usb2phy_extcon_cable = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 5, i32 7, i32 6, i32 10, i32 0], [36 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_extcon_register._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_extcon_register._entry_ptr.42 = internal global ptr @rockchip_usb2phy_extcon_register._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_usbphy_480m\00", [16 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @rockchip_usb2phy_clk480m_prepare, ptr @rockchip_usb2phy_clk480m_unprepare, ptr @rockchip_usb2phy_clk480m_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_usb2phy_clk480m_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_rockchip_inno_usb2\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_usb2phy_init\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode %d\0A\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rockchip_usb2phy_power_on.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_usb2phy_power_on\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port power on\0A\00", [17 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_power_off.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_usb2phy_power_off\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port power off\0A\00", [16 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_host_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rport->mutex\00", [18 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_host_port_init.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&rport->sm_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_host_port_init.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&rport->sm_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_host_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1042, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to setup host irq\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip_usb2phy_host_port_init\00", [32 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_host_port_init._entry_ptr = internal global ptr @rockchip_usb2phy_host_port_init._entry, section ".printk_index", align 4
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_usb2phy_sm_work\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HS online\0A\00", [21 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FS/LS online\0A\00", [18 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Connected\0A\00", [21 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.63, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.59, ptr @.str.3, ptr @.str.64, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown phy state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"linestate\00", [22 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 967, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no linestate irq provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_usb2phy_port_irq_init\00", [33 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry_ptr = internal global ptr @rockchip_usb2phy_port_irq_init._entry, section ".printk_index", align 4
@rockchip_usb2phy_port_irq_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request linestate irq handle\0A\00", [56 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry_ptr.70 = internal global ptr @rockchip_usb2phy_port_irq_init._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"otg-mux\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rockchip_usb2phy_otg\00", [43 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.67, ptr @.str.3, i32 996, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request otg-mux irq handle\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry_ptr.75 = internal global ptr @rockchip_usb2phy_port_irq_init._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"otg-bvalid\00", [21 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.3, i32 1002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no vbus valid irq provided\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry_ptr.79 = internal global ptr @rockchip_usb2phy_port_irq_init._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_usb2phy_bvalid\00", [40 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.67, ptr @.str.3, i32 1015, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to request otg-bvalid irq handle\0A\00", [55 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_port_irq_init._entry_ptr.83 = internal global ptr @rockchip_usb2phy_port_irq_init._entry.81, section ".printk_index", align 4
@rockchip_usb2phy_otg_sm_work.cable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_usb2phy_otg_sm_work\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s otg sm work\0A\00", [16 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb otg host connect\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.87, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vbus_attach\0A\00", [19 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdp cable is connected\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.89, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dcp cable is connected\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.90, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdp cable is connected\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.91, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb disconnect\0A\00", [16 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.84, ptr @.str.3, ptr @.str.92, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb otg host disconnect\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_usb2phy_otg_port_init.__key.93 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&rport->chg_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init.__key.95 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&rport->chg_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init.__key.97 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&rport->otg_sm_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init.__key.99 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&rport->otg_sm_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 1093, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init irq for host port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_usb2phy_otg_port_init\00", [33 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init._entry_ptr = internal global ptr @rockchip_usb2phy_otg_port_init._entry, section ".printk_index", align 4
@rockchip_usb2phy_otg_port_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register USB HOST notifier failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_usb2phy_otg_port_init._entry_ptr.105 = internal global ptr @rockchip_usb2phy_otg_port_init._entry.103, section ".printk_index", align 4
@rockchip_chg_detect_work.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_chg_detect_work\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chg detection work state = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_chg_detect_work.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.106, ptr @.str.3, ptr @.str.108, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charger = %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_SDP_CHARGER\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_DCP_CHARGER\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_CDP_CHARGER\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INVALID_CHARGER\00", [16 x i8] zeroinitializer }, align 32
@rk3328_phy_cfgs = internal constant { [2 x %struct.rockchip_usb2phy_cfg], [328 x i8] } { [2 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 256, i32 2, %struct.usb2phy_reg { i32 264, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 256, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg { i32 272, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 276, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 280, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 272, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 276, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 280, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 5, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 260, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 272, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 276, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 280, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 288, i32 17, i32 16, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 19, i32 19, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 288, i32 24, i32 24, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 23, i32 23, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 25, i32 25, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 256, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg zeroinitializer], [328 x i8] zeroinitializer }, align 32
@rk3228_phy_cfgs = internal constant { [3 x %struct.rockchip_usb2phy_cfg], [492 x i8] } { [3 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 1888, i32 2, %struct.usb2phy_reg { i32 1896, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 1888, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg { i32 1664, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1664, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1152, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1152, i32 3, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 1892, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1664, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 2180, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2180, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2180, i32 5, i32 5, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1896, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1888, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg { i32 2048, i32 2, %struct.usb2phy_reg { i32 2056, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 2048, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1668, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1684, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1700, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 2052, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1668, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1684, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1700, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }], %struct.rockchip_chg_det_reg zeroinitializer }, %struct.rockchip_usb2phy_cfg zeroinitializer], [492 x i8] zeroinitializer }, align 32
@rk3308_phy_cfgs = internal constant { [2 x %struct.rockchip_usb2phy_cfg], [328 x i8] } { [2 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 256, i32 2, %struct.usb2phy_reg { i32 264, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 256, i32 8, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg { i32 12320, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12324, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12328, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12320, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12324, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12328, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 5, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 260, i32 8, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 12320, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12324, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 12328, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 288, i32 17, i32 16, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 19, i32 19, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 288, i32 24, i32 24, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 23, i32 23, i32 0, i32 1 }, %struct.usb2phy_reg { i32 288, i32 25, i32 25, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 256, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg zeroinitializer], [328 x i8] zeroinitializer }, align 32
@rk3366_phy_cfgs = internal constant { [2 x %struct.rockchip_usb2phy_cfg], [328 x i8] } { [2 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 1792, i32 2, %struct.usb2phy_reg { i32 1828, i32 15, i32 15, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg zeroinitializer, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 1832, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1664, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1180, i32 14, i32 13, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1180, i32 12, i32 12, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg zeroinitializer }, %struct.rockchip_usb2phy_cfg zeroinitializer], [328 x i8] zeroinitializer }, align 32
@rk3399_phy_cfgs = internal constant { [3 x %struct.rockchip_usb2phy_cfg], [492 x i8] } { [3 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 58448, i32 2, %struct.usb2phy_reg { i32 58448, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 58452, i32 1, i32 0, i32 2, i32 1 }, %struct.usb2phy_reg { i32 58304, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58336, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58320, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58028, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 58456, i32 1, i32 0, i32 2, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58304, i32 6, i32 6, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58336, i32 6, i32 6, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58320, i32 6, i32 6, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58028, i32 22, i32 21, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 23, i32 23, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 58028, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58448, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58452, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg { i32 58464, i32 2, %struct.usb2phy_reg { i32 58464, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 58468, i32 1, i32 0, i32 2, i32 1 }, %struct.usb2phy_reg { i32 58304, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58336, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58320, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58028, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 16, i32 16, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 58472, i32 1, i32 0, i32 2, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58304, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58336, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58320, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 58028, i32 26, i32 25, i32 0, i32 1 }, %struct.usb2phy_reg { i32 58028, i32 27, i32 27, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg zeroinitializer }, %struct.rockchip_usb2phy_cfg zeroinitializer], [492 x i8] zeroinitializer }, align 32
@rk3568_phy_cfgs = internal constant { [3 x %struct.rockchip_usb2phy_cfg], [492 x i8] } { [3 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 -24510464, i32 2, %struct.usb2phy_reg { i32 8, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 0, i32 8, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg { i32 128, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 132, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 136, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 192, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 4, i32 8, i32 0, i32 466, i32 466 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 128, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 132, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 136, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 192, i32 17, i32 16, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 19, i32 19, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 192, i32 24, i32 24, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 23, i32 23, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 25, i32 25, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 8, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 0, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg { i32 -24444928, i32 2, %struct.usb2phy_reg { i32 8, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 0, i32 8, i32 0, i32 466, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 128, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 132, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 136, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 192, i32 5, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 7, i32 7, i32 0, i32 1 } }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 4, i32 8, i32 0, i32 466, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 128, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 132, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 136, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 192, i32 17, i32 16, i32 0, i32 1 }, %struct.usb2phy_reg { i32 192, i32 19, i32 19, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg zeroinitializer }, %struct.rockchip_usb2phy_cfg zeroinitializer], [492 x i8] zeroinitializer }, align 32
@rv1108_phy_cfgs = internal constant { [2 x %struct.rockchip_usb2phy_cfg], [328 x i8] } { [2 x %struct.rockchip_usb2phy_cfg] [%struct.rockchip_usb2phy_cfg { i32 256, i32 2, %struct.usb2phy_reg { i32 264, i32 4, i32 4, i32 1, i32 0 }, [2 x %struct.rockchip_usb2phy_port_cfg] [%struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 256, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg { i32 1664, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 3, i32 3, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1664, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 2052, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2052, i32 13, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer }, %struct.rockchip_usb2phy_port_cfg { %struct.usb2phy_reg { i32 260, i32 15, i32 0, i32 0, i32 465 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 1664, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1680, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg { i32 1696, i32 4, i32 4, i32 0, i32 1 }, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg zeroinitializer, %struct.usb2phy_reg { i32 2052, i32 9, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2052, i32 7, i32 7, i32 0, i32 1 } }], %struct.rockchip_chg_det_reg { %struct.usb2phy_reg { i32 2052, i32 1, i32 1, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2052, i32 0, i32 0, i32 0, i32 1 }, %struct.usb2phy_reg { i32 2052, i32 2, i32 2, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 8, i32 8, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 7, i32 7, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 9, i32 9, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 10, i32 10, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 12, i32 12, i32 0, i32 1 }, %struct.usb2phy_reg { i32 264, i32 11, i32 11, i32 0, i32 1 }, %struct.usb2phy_reg { i32 256, i32 3, i32 0, i32 5, i32 1 } } }, %struct.rockchip_usb2phy_cfg zeroinitializer], [328 x i8] zeroinitializer }, align 32
@switch.table.rockchip_chg_detect_work = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.120 = private unnamed_addr constant [24 x i8] c"rockchip_usb2phy_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1625, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1628, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"rockchip_usb2phy_dt_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1612, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1128, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1133, i32 51 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1135, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1146, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1156, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1157, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1165, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1194, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1199, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1203, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1209, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1219, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1220, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"rockchip_usb2phy_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 512, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1225, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1260, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1263, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 371, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 375, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"rockchip_usb2phy_extcon_cable\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 69, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 388, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 329, i32 14 }
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"rockchip_usb2phy_clkout_ops\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 305, i32 29 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 333, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 426, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 455, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 482, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1037, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1038, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1042, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 815, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 829, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 835, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 845, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 864, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 965, i32 47 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 967, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 976, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 986, i32 52 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 992, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 995, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1000, i32 52 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1002, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1011, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1014, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant [6 x i8] c"cable\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 526, i32 22 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 536, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 547, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 552, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 560, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 568, i32 6 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 575, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 610, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 621, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1079, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1088, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1089, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1093, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1103, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 688, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 760, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 638, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 640, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 642, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 644, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant [16 x i8] c"rk3328_phy_cfgs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1383, i32 42 }
@___asan_gen_.459 = private unnamed_addr constant [16 x i8] c"rk3228_phy_cfgs\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1281, i32 42 }
@___asan_gen_.462 = private unnamed_addr constant [16 x i8] c"rk3308_phy_cfgs\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1340, i32 42 }
@___asan_gen_.465 = private unnamed_addr constant [16 x i8] c"rk3366_phy_cfgs\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1426, i32 42 }
@___asan_gen_.468 = private unnamed_addr constant [16 x i8] c"rk3399_phy_cfgs\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1445, i32 42 }
@___asan_gen_.471 = private unnamed_addr constant [16 x i8] c"rk3568_phy_cfgs\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1507, i32 42 }
@___asan_gen_.474 = private unnamed_addr constant [16 x i8] c"rv1108_phy_cfgs\00", align 1
@___asan_gen_.475 = private constant [49 x i8] c"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1570, i32 42 }
@___asan_gen_.477 = private unnamed_addr constant [38 x i8] c"switch.table.rockchip_chg_detect_work\00", align 1
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_rockchip_usb2phy_driver_exit, ptr @__initcall__kmod_phy_rockchip_inno_usb2__312_1632_rockchip_usb2phy_driver_init6, ptr @rockchip_usb2phy_driver_exit, ptr @rockchip_usb2phy_extcon_register._entry, ptr @rockchip_usb2phy_extcon_register._entry.40, ptr @rockchip_usb2phy_extcon_register._entry_ptr, ptr @rockchip_usb2phy_extcon_register._entry_ptr.42, ptr @rockchip_usb2phy_host_port_init._entry, ptr @rockchip_usb2phy_host_port_init._entry_ptr, ptr @rockchip_usb2phy_otg_port_init._entry, ptr @rockchip_usb2phy_otg_port_init._entry.103, ptr @rockchip_usb2phy_otg_port_init._entry_ptr, ptr @rockchip_usb2phy_otg_port_init._entry_ptr.105, ptr @rockchip_usb2phy_port_irq_init._entry, ptr @rockchip_usb2phy_port_irq_init._entry.68, ptr @rockchip_usb2phy_port_irq_init._entry.73, ptr @rockchip_usb2phy_port_irq_init._entry.77, ptr @rockchip_usb2phy_port_irq_init._entry.81, ptr @rockchip_usb2phy_port_irq_init._entry_ptr, ptr @rockchip_usb2phy_port_irq_init._entry_ptr.70, ptr @rockchip_usb2phy_port_irq_init._entry_ptr.75, ptr @rockchip_usb2phy_port_irq_init._entry_ptr.79, ptr @rockchip_usb2phy_port_irq_init._entry_ptr.83, ptr @rockchip_usb2phy_probe._entry, ptr @rockchip_usb2phy_probe._entry.12, ptr @rockchip_usb2phy_probe._entry.15, ptr @rockchip_usb2phy_probe._entry.17, ptr @rockchip_usb2phy_probe._entry.21, ptr @rockchip_usb2phy_probe._entry.25, ptr @rockchip_usb2phy_probe._entry.30, ptr @rockchip_usb2phy_probe._entry.34, ptr @rockchip_usb2phy_probe._entry.7, ptr @rockchip_usb2phy_probe._entry_ptr, ptr @rockchip_usb2phy_probe._entry_ptr.14, ptr @rockchip_usb2phy_probe._entry_ptr.16, ptr @rockchip_usb2phy_probe._entry_ptr.19, ptr @rockchip_usb2phy_probe._entry_ptr.24, ptr @rockchip_usb2phy_probe._entry_ptr.27, ptr @rockchip_usb2phy_probe._entry_ptr.32, ptr @rockchip_usb2phy_probe._entry_ptr.36, ptr @rockchip_usb2phy_probe._entry_ptr.9, ptr @rockchip_usb2phy_driver, ptr @.str, ptr @rockchip_usb2phy_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @rockchip_usb2phy_ops, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @rockchip_usb2phy_extcon_cable, ptr @.str.41, ptr @.str.43, ptr @rockchip_usb2phy_clkout_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @rockchip_usb2phy_host_port_init.__key, ptr @.str.52, ptr @rockchip_usb2phy_host_port_init.__key.53, ptr @.str.54, ptr @rockchip_usb2phy_host_port_init.__key.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @rockchip_usb2phy_otg_sm_work.cable, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @rockchip_usb2phy_otg_port_init.__key, ptr @rockchip_usb2phy_otg_port_init.__key.93, ptr @.str.94, ptr @rockchip_usb2phy_otg_port_init.__key.95, ptr @.str.96, ptr @rockchip_usb2phy_otg_port_init.__key.97, ptr @.str.98, ptr @rockchip_usb2phy_otg_port_init.__key.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @rk3328_phy_cfgs, ptr @rk3228_phy_cfgs, ptr @rk3308_phy_cfgs, ptr @rk3366_phy_cfgs, ptr @rk3399_phy_cfgs, ptr @rk3568_phy_cfgs, ptr @rv1108_phy_cfgs, ptr @switch.table.rockchip_chg_detect_work], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_dt_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_extcon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_extcon_cable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_extcon_register._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_host_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_host_port_init.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_host_port_init.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_host_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_port_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_port_irq_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_port_irq_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_port_irq_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_port_irq_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_sm_work.cable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init.__key.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init.__key.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init.__key.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init.__key.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb2phy_otg_port_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_phy_cfgs to i32), i32 1336, i32 1664, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_phy_cfgs to i32), i32 2004, i32 2496, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_phy_cfgs to i32), i32 1336, i32 1664, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_phy_cfgs to i32), i32 1336, i32 1664, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_phy_cfgs to i32), i32 2004, i32 2496, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_phy_cfgs to i32), i32 2004, i32 2496, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_phy_cfgs to i32), i32 1336, i32 1664, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_chg_detect_work to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_usb2phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb2phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_usb2phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name.i = alloca ptr, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !252
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 936, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup164_crit_edge, label %if.end

entry.cleanup164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_match_table, align 4
  %call2 = tail call ptr @of_match_device(ptr noundef %6, ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup164

if.end6:                                          ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.if.then12_crit_edge, label %lor.lhs.false8

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false8:                                   ; preds = %if.end6
  %of_node10 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node10, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %lor.lhs.false8.if.then12_crit_edge, label %if.else

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %call13 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.then12.if.end33_crit_edge

if.then12.if.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %14 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grf, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup164

if.else:                                          ; preds = %lor.lhs.false8
  %call25 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %12) #6
  %grf26 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %grf26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call25, ptr %grf26, align 4
  %cmp.i272 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then29, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call25 to i32
  br label %cleanup164

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then12.if.end33_crit_edge
  %call34 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else45, label %if.then36

if.then36:                                        ; preds = %if.end33
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call38 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %20, ptr noundef nonnull @.str.6) #6
  %usbgrf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %usbgrf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %usbgrf, align 4
  %cmp.i273 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %if.then41, label %if.then36.if.end47_crit_edge

if.then36.if.end47_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call38 to i32
  br label %cleanup164

if.else45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %usbgrf46 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %usbgrf46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %usbgrf46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then36.if.end47_crit_edge
  %call48 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %1) #9
  br label %cleanup164

if.end54:                                         ; preds = %if.end47
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then55, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then55:                                        ; preds = %if.end54
  %call56 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end63_crit_edge, label %do.end61

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %1) #9
  br label %cleanup164

if.end63:                                         ; preds = %if.then55.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %call.i, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %chg_state = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %chg_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %chg_state, align 4
  %chg_type = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %chg_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %chg_type, align 4
  %call66 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call66, ptr %irq, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.37, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end63
  %call2.i = call ptr @extcon_get_edev_by_phandle(ptr noundef %38, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.then.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge

if.then.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_usb2phy_extcon_register.exit.thread

if.then4.i:                                       ; preds = %if.then.i
  %cmp.not.i = icmp eq ptr %call2.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then4.i.cleanup164_crit_edge, label %rockchip_usb2phy_extcon_register.exit

if.then4.i.cleanup164_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164

if.else.i:                                        ; preds = %if.end63
  %call11.i = call ptr @devm_extcon_dev_allocate(ptr noundef %38, ptr noundef nonnull @rockchip_usb2phy_extcon_cable) #6
  %cmp.i39.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39.i, label %if.else.i.cleanup164_crit_edge, label %if.end14.i

if.else.i.cleanup164_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164

if.end14.i:                                       ; preds = %if.else.i
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call16.i = call i32 @devm_extcon_dev_register(ptr noundef %40, ptr noundef %call11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end14.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge, label %do.end20.i

if.end14.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_usb2phy_extcon_register.exit.thread

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41) #9
  br label %cleanup164

rockchip_usb2phy_extcon_register.exit.thread:     ; preds = %if.end14.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge, %if.then.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge
  %edev.0.i = phi ptr [ %call2.i, %if.then.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge ], [ %call11.i, %if.end14.i.rockchip_usb2phy_extcon_register.exit.thread_crit_edge ]
  %edev24.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %edev24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %edev.0.i, ptr %edev24.i, align 4
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool72.not332 = icmp eq i32 %45, 0
  br i1 %tobool72.not332, label %rockchip_usb2phy_extcon_register.exit.thread.while.end_crit_edge, label %while.body.lr.ph

rockchip_usb2phy_extcon_register.exit.thread.while.end_crit_edge: ; preds = %rockchip_usb2phy_extcon_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

rockchip_usb2phy_extcon_register.exit:            ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call2.i to i32
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.38) #9
  br label %cleanup164

while.body.lr.ph:                                 ; preds = %rockchip_usb2phy_extcon_register.exit.thread
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %50)
  %cmp75362 = icmp eq i32 %45, %50
  br i1 %cmp75362, label %while.body.lr.ph.if.then76_crit_edge, label %while.body.lr.ph.while.cond_crit_edge

while.body.lr.ph.while.cond_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.cond

while.body.lr.ph.if.then76_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.lr.ph.while.cond_crit_edge
  %index.0333363 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.body.lr.ph.while.cond_crit_edge ]
  %inc = add i32 %index.0333363, 1
  %arrayidx = getelementptr %struct.rockchip_usb2phy_cfg, ptr %28, i32 %inc
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool72.not = icmp eq i32 %52, 0
  br i1 %tobool72.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %cmp75 = icmp eq i32 %52, %50
  br i1 %cmp75, label %while.body.if.then76_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.then76_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.then76:                                        ; preds = %while.body.if.then76_crit_edge, %while.body.lr.ph.if.then76_crit_edge
  %arrayidx334.lcssa = phi ptr [ %28, %while.body.lr.ph.if.then76_crit_edge ], [ %arrayidx, %while.body.if.then76_crit_edge ]
  %phy_cfg = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx334.lcssa, ptr %phy_cfg, align 4
  br label %while.end

while.end:                                        ; preds = %if.then76, %while.cond.while.end_crit_edge, %rockchip_usb2phy_extcon_register.exit.thread.while.end_crit_edge
  %phy_cfg79 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 11
  %54 = ptrtoint ptr %phy_cfg79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_cfg79, align 4
  %tobool80.not = icmp eq ptr %55, null
  br i1 %tobool80.not, label %do.end84, label %if.end85

do.end84:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %1) #9
  br label %cleanup164

if.end85:                                         ; preds = %while.end
  %call86 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.20) #6
  %clk = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call86, ptr %clk, align 4
  %cmp.i274 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %do.end95, label %if.then89

if.then89:                                        ; preds = %if.end85
  %call.i275 = call i32 @clk_prepare(ptr noundef %call86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i276 = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i276, label %if.end.i, label %if.then89.if.end98_crit_edge

if.then89.if.end98_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.end.i:                                         ; preds = %if.then89
  %call1.i = call i32 @clk_enable(ptr noundef %call86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end98_crit_edge, label %if.then3.i

if.end.i.if.end98_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call86) #6
  br label %if.end98

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %clk, align 4
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %if.then3.i, %if.end.i.if.end98_crit_edge, %if.then89.if.end98_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %of_node.i278 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %of_node.i278 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node.i278, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %62 = getelementptr inbounds i8, ptr %init.i, i32 8
  %63 = call ptr @memset(ptr %62, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i) #6
  %64 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i, align 4, !annotation !252
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %flags.i, align 4
  %66 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.43, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @rockchip_usb2phy_clkout_ops, ptr %ops.i, align 4
  %call.i279 = call i32 @of_property_read_string(ptr noundef %61, ptr noundef nonnull @.str.44, ptr noundef nonnull %init.i) #6
  %68 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk, align 4
  %tobool.not.i280 = icmp eq ptr %69, null
  br i1 %tobool.not.i280, label %if.end98.if.end.i283_crit_edge, label %if.then.i281

if.end98.if.end.i283_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i283

if.then.i281:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call ptr @__clk_get_name(ptr noundef nonnull %69) #6
  %70 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call3.i, ptr %clk_name.i, align 4
  br label %if.end.i283

if.end.i283:                                      ; preds = %if.then.i281, %if.end98.if.end.i283_crit_edge
  %clk_name.sink.i = phi ptr [ %clk_name.i, %if.then.i281 ], [ null, %if.end98.if.end.i283_crit_edge ]
  %.sink.i = phi i8 [ 1, %if.then.i281 ], [ 0, %if.end98.if.end.i283_crit_edge ]
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %clk_name.sink.i, ptr %62, align 4
  %72 = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.i, ptr %72, align 4
  %clk480m_hw.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 5
  %init6.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %init6.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %init.i, ptr %init6.i, align 4
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %call9.i = call ptr @clk_register(ptr noundef %76, ptr noundef %clk480m_hw.i) #6
  %clk480m.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 4
  %77 = ptrtoint ptr %clk480m.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i, ptr %clk480m.i, align 4
  %cmp.i.i282 = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i282, label %rockchip_usb2phy_clk480m_register.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i283
  %call17.i = call i32 @of_clk_add_provider(ptr noundef %61, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i284 = icmp slt i32 %call17.i, 0
  br i1 %cmp.i284, label %if.end15.i.rockchip_usb2phy_clk480m_register.exit.thread_crit_edge, label %if.end19.i

if.end15.i.rockchip_usb2phy_clk480m_register.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_usb2phy_clk480m_register.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %call.i.i285 = call i32 @devm_add_action(ptr noundef %79, ptr noundef nonnull @rockchip_usb2phy_clk480m_unregister, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i285)
  %tobool.not.i.i = icmp eq i32 %call.i.i285, 0
  br i1 %tobool.not.i.i, label %rockchip_usb2phy_clk480m_register.exit.thread309, label %if.then.i.i

rockchip_usb2phy_clk480m_register.exit.thread309: ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %call106 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp107.not335 = icmp eq ptr %call106, null
  br i1 %cmp107.not335, label %rockchip_usb2phy_clk480m_register.exit.thread309.for.end_crit_edge, label %for.body.lr.ph

rockchip_usb2phy_clk480m_register.exit.thread309.for.end_crit_edge: ; preds = %rockchip_usb2phy_clk480m_register.exit.thread309
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %rockchip_usb2phy_clk480m_register.exit.thread309
  %edev.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 9
  br label %for.body

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node.i.i.i, align 8
  call void @of_clk_del_provider(ptr noundef %83) #6
  br label %rockchip_usb2phy_clk480m_register.exit.thread

rockchip_usb2phy_clk480m_register.exit.thread:    ; preds = %if.then.i.i, %if.end15.i.rockchip_usb2phy_clk480m_register.exit.thread_crit_edge
  %retval.0.i286.ph = phi i32 [ %call.i.i285, %if.then.i.i ], [ %call17.i, %if.end15.i.rockchip_usb2phy_clk480m_register.exit.thread_crit_edge ]
  %84 = ptrtoint ptr %clk480m.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk480m.i, align 4
  call void @clk_unregister(ptr noundef %85) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %do.end104

rockchip_usb2phy_clk480m_register.exit:           ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %call9.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %do.end104

do.end104:                                        ; preds = %rockchip_usb2phy_clk480m_register.exit, %rockchip_usb2phy_clk480m_register.exit.thread
  %retval.0.i286308 = phi i32 [ %retval.0.i286.ph, %rockchip_usb2phy_clk480m_register.exit.thread ], [ %86, %rockchip_usb2phy_clk480m_register.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %disable_clks

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.1337 = phi i32 [ 0, %for.body.lr.ph ], [ %inc135, %for.inc.for.body_crit_edge ]
  %child_np.0336 = phi ptr [ %call106, %for.body.lr.ph ], [ %call141, %for.inc.for.body_crit_edge ]
  %arrayidx108 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337
  %call109 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child_np.0336, ptr noundef nonnull @.str.28) #6
  br i1 %call109, label %for.body.if.end112_crit_edge, label %land.lhs.true

for.body.if.end112_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

land.lhs.true:                                    ; preds = %for.body
  %call110 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child_np.0336, ptr noundef nonnull @.str.29) #6
  br i1 %call110, label %land.lhs.true.if.end112_crit_edge, label %land.lhs.true.next_child_crit_edge

land.lhs.true.next_child_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_child

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true.if.end112_crit_edge, %for.body.if.end112_crit_edge
  %call113 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child_np.0336, ptr noundef nonnull @rockchip_usb2phy_ops) #6
  %cmp.i287 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %do.end118, label %if.end120

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  %87 = ptrtoint ptr %call113 to i32
  br label %put_child

if.end120:                                        ; preds = %if.end112
  %88 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call113, ptr %arrayidx108, align 4
  %driver_data.i.i288 = getelementptr inbounds %struct.device, ptr %call113, i32 0, i32 8
  %89 = ptrtoint ptr %driver_data.i.i288 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx108, ptr %driver_data.i.i288, align 4
  %call123 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child_np.0336, ptr noundef nonnull @.str.28) #6
  %port_id.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 1
  br i1 %call123, label %if.then124, label %if.else129

if.then124:                                       ; preds = %if.end120
  %90 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %port_id.i, align 4
  %91 = ptrtoint ptr %phy_cfg79 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_cfg79, align 4
  %arrayidx.i = getelementptr %struct.rockchip_usb2phy_cfg, ptr %92, i32 0, i32 3, i32 1
  %port_cfg.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 11
  %93 = ptrtoint ptr %port_cfg.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx.i, ptr %port_cfg.i, align 4
  %suspended.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 2
  %94 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %suspended.i, align 4
  %mutex.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 7
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @rockchip_usb2phy_host_port_init.__key) #6
  %sm_work.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10
  call void @__init_work(ptr noundef %sm_work.i, i32 noundef 0) #6
  %95 = ptrtoint ptr %sm_work.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -64, ptr %sm_work.i, align 4
  %lockdep_map.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @rockchip_usb2phy_host_port_init.__key.53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry9.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10, i32 0, i32 1
  %96 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %entry9.i, ptr %entry9.i, align 4
  %prev.i.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10, i32 0, i32 2
  %98 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @rockchip_usb2phy_sm_work, ptr %func.i, align 4
  %timer.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.56, ptr noundef nonnull @rockchip_usb2phy_host_port_init.__key.55) #6
  %call.i289 = call fastcc i32 @rockchip_usb2phy_port_irq_init(ptr noundef %call.i, ptr noundef %arrayidx108, ptr noundef nonnull %child_np.0336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool.not.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool.not.i290, label %if.then124.next_child_crit_edge, label %rockchip_usb2phy_host_port_init.exit

if.then124.next_child_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_child

rockchip_usb2phy_host_port_init.exit:             ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.57) #9
  br label %put_child

if.else129:                                       ; preds = %if.end120
  %101 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %port_id.i, align 4
  %102 = ptrtoint ptr %phy_cfg79 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy_cfg79, align 4
  %port_cfgs.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %103, i32 0, i32 3
  %port_cfg.i293 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 11
  %104 = ptrtoint ptr %port_cfg.i293 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %port_cfgs.i, ptr %port_cfg.i293, align 4
  %state.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 13
  %105 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %state.i, align 4
  %suspended.i294 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 2
  %106 = ptrtoint ptr %suspended.i294 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %suspended.i294, align 4
  %vbus_attached.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 3
  %107 = ptrtoint ptr %vbus_attached.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %vbus_attached.i, align 1
  %mutex.i295 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 7
  call void @__mutex_init(ptr noundef %mutex.i295, ptr noundef nonnull @.str.52, ptr noundef nonnull @rockchip_usb2phy_otg_port_init.__key) #6
  %call.i296 = call i32 @of_usb_get_dr_mode_by_phy(ptr noundef nonnull %child_np.0336, i32 noundef -1) #6
  %mode.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 14
  %108 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call.i296, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i296)
  %switch.i = icmp ult i32 %call.i296, 2
  br i1 %switch.i, label %if.else129.next_child_crit_edge, label %do.body5.i

if.else129.next_child_crit_edge:                  ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_child

do.body5.i:                                       ; preds = %if.else129
  %chg_work.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8
  call void @__init_work(ptr noundef %chg_work.i, i32 noundef 0) #6
  %109 = ptrtoint ptr %chg_work.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -64, ptr %chg_work.i, align 4
  %lockdep_map.i297 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i297, ptr noundef nonnull @.str.94, ptr noundef nonnull @rockchip_usb2phy_otg_port_init.__key.93, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry12.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8, i32 0, i32 1
  %110 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i298 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %prev.i.i298 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %entry12.i, ptr %prev.i.i298, align 4
  %func.i299 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8, i32 0, i32 2
  %112 = ptrtoint ptr %func.i299 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @rockchip_chg_detect_work, ptr %func.i299, align 4
  %timer.i300 = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer.i300, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.96, ptr noundef nonnull @rockchip_usb2phy_otg_port_init.__key.95) #6
  %otg_sm_work.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9
  call void @__init_work(ptr noundef %otg_sm_work.i, i32 noundef 0) #6
  %113 = ptrtoint ptr %otg_sm_work.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -64, ptr %otg_sm_work.i, align 4
  %lockdep_map33.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map33.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @rockchip_usb2phy_otg_port_init.__key.97, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry36.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9, i32 0, i32 1
  %114 = ptrtoint ptr %entry36.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %entry36.i, ptr %entry36.i, align 4
  %prev.i101.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %prev.i101.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %entry36.i, ptr %prev.i101.i, align 4
  %func39.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9, i32 0, i32 2
  %116 = ptrtoint ptr %func39.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @rockchip_usb2phy_otg_sm_work, ptr %func39.i, align 4
  %timer44.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 9, i32 1
  call void @init_timer_key(ptr noundef %timer44.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.100, ptr noundef nonnull @rockchip_usb2phy_otg_port_init.__key.99) #6
  %call49.i = call fastcc i32 @rockchip_usb2phy_port_irq_init(ptr noundef %call.i, ptr noundef %arrayidx108, ptr noundef nonnull %child_np.0336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool.not.i301 = icmp eq i32 %call49.i, 0
  br i1 %tobool.not.i301, label %if.end54.i, label %do.body5.i.rockchip_usb2phy_otg_port_init.exit_crit_edge

do.body5.i.rockchip_usb2phy_otg_port_init.exit_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_usb2phy_otg_port_init.exit

if.end54.i:                                       ; preds = %do.body5.i
  %117 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %edev.i, align 4
  %cmp.i.i302 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i302, label %if.end54.i.next_child_crit_edge, label %if.then56.i

if.end54.i.next_child_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_child

if.then56.i:                                      ; preds = %if.end54.i
  %event_nb.i = getelementptr %struct.rockchip_usb2phy, ptr %call.i, i32 0, i32 12, i32 %index.1337, i32 12
  %119 = ptrtoint ptr %event_nb.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @rockchip_otg_event, ptr %event_nb.i, align 4
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  %122 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %edev.i, align 4
  %call60.i = call i32 @devm_extcon_register_notifier(ptr noundef %121, ptr noundef %123, i32 noundef 2, ptr noundef %event_nb.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then56.i.next_child_crit_edge, label %if.then56.i.rockchip_usb2phy_otg_port_init.exit_crit_edge

if.then56.i.rockchip_usb2phy_otg_port_init.exit_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_usb2phy_otg_port_init.exit

if.then56.i.next_child_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_child

rockchip_usb2phy_otg_port_init.exit:              ; preds = %if.then56.i.rockchip_usb2phy_otg_port_init.exit_crit_edge, %do.body5.i.rockchip_usb2phy_otg_port_init.exit_crit_edge
  %.str.104.sink.i = phi ptr [ @.str.101, %do.body5.i.rockchip_usb2phy_otg_port_init.exit_crit_edge ], [ @.str.104, %if.then56.i.rockchip_usb2phy_otg_port_init.exit_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call49.i, %do.body5.i.rockchip_usb2phy_otg_port_init.exit_crit_edge ], [ %call60.i, %if.then56.i.rockchip_usb2phy_otg_port_init.exit_crit_edge ]
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull %.str.104.sink.i) #9
  br label %put_child

next_child:                                       ; preds = %if.then56.i.next_child_crit_edge, %if.end54.i.next_child_crit_edge, %if.else129.next_child_crit_edge, %if.then124.next_child_crit_edge, %land.lhs.true.next_child_crit_edge
  %inc135 = add nuw i32 %index.1337, 1
  %126 = ptrtoint ptr %phy_cfg79 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %phy_cfg79, align 4
  %num_ports = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc135, i32 %129)
  %cmp137.not = icmp ult i32 %inc135, %129
  br i1 %cmp137.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %next_child
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child_np.0336) #6
  br label %for.end

for.inc:                                          ; preds = %next_child
  %call141 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child_np.0336) #6
  %cmp107.not = icmp eq ptr %call141, null
  br i1 %cmp107.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %rockchip_usb2phy_clk480m_register.exit.thread309.for.end_crit_edge
  %child_np.0330 = phi ptr [ %child_np.0336, %cleanup ], [ null, %rockchip_usb2phy_clk480m_register.exit.thread309.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call142 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %130 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp144 = icmp sgt i32 %131, 0
  br i1 %cmp144, label %if.then145, label %for.end.if.end156_crit_edge

for.end.if.end156_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then145:                                       ; preds = %for.end
  %132 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call.i, align 4
  %call148 = call i32 @devm_request_threaded_irq(ptr noundef %133, i32 noundef %131, ptr noundef null, ptr noundef nonnull @rockchip_usb2phy_irq, i32 noundef 8192, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then145.if.end156_crit_edge, label %do.end153

if.then145.if.end156_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.end153:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.35) #9
  br label %put_child

if.end156:                                        ; preds = %if.then145.if.end156_crit_edge, %for.end.if.end156_crit_edge
  %cmp.i.i303 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  %136 = ptrtoint ptr %call142 to i32
  %spec.select.i = select i1 %cmp.i.i303, i32 %136, i32 0
  br label %cleanup164

put_child:                                        ; preds = %do.end153, %rockchip_usb2phy_otg_port_init.exit, %rockchip_usb2phy_host_port_init.exit, %do.end118
  %child_np.0329 = phi ptr [ %child_np.0330, %do.end153 ], [ %child_np.0336, %rockchip_usb2phy_otg_port_init.exit ], [ %child_np.0336, %rockchip_usb2phy_host_port_init.exit ], [ %child_np.0336, %do.end118 ]
  %ret.3 = phi i32 [ %call148, %do.end153 ], [ %ret.0.ph.i, %rockchip_usb2phy_otg_port_init.exit ], [ %call.i289, %rockchip_usb2phy_host_port_init.exit ], [ %87, %do.end118 ]
  call void @of_node_put(ptr noundef %child_np.0329) #6
  br label %disable_clks

disable_clks:                                     ; preds = %put_child, %do.end104
  %ret.4 = phi i32 [ %retval.0.i286308, %do.end104 ], [ %ret.3, %put_child ]
  %137 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %clk, align 4
  %tobool159.not = icmp eq ptr %138, null
  br i1 %tobool159.not, label %disable_clks.cleanup164_crit_edge, label %if.then160

disable_clks.cleanup164_crit_edge:                ; preds = %disable_clks
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164

if.then160:                                       ; preds = %disable_clks
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef nonnull %138) #6
  call void @clk_unprepare(ptr noundef nonnull %138) #6
  %139 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %140) #6
  br label %cleanup164

cleanup164:                                       ; preds = %if.then160, %disable_clks.cleanup164_crit_edge, %if.end156, %do.end84, %rockchip_usb2phy_extcon_register.exit, %do.end20.i, %if.else.i.cleanup164_crit_edge, %if.then4.i.cleanup164_crit_edge, %do.end61, %do.end53, %if.then41, %if.then29, %do.end19, %do.end, %entry.cleanup164_crit_edge
  %retval.0 = phi i32 [ %18, %if.then29 ], [ %22, %if.then41 ], [ -22, %do.end53 ], [ -22, %do.end61 ], [ %spec.select.i, %if.end156 ], [ -22, %do.end84 ], [ %16, %do.end19 ], [ -22, %do.end ], [ -12, %entry.cleanup164_crit_edge ], [ %46, %rockchip_usb2phy_extcon_register.exit ], [ %ret.4, %if.then160 ], [ %ret.4, %disable_clks.cleanup164_crit_edge ], [ -517, %if.then4.i.cleanup164_crit_edge ], [ -12, %if.else.i.cleanup164_crit_edge ], [ %call16.i, %do.end20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_cfg = getelementptr inbounds %struct.rockchip_usb2phy, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_cfg, align 4
  %num_ports5 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ret.07 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rockchip_usb2phy, ptr %data, i32 0, i32 12, i32 %index.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @rockchip_usb2phy_linestate_irq(i32 noundef %irq, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call, %if.end ], [ %ret.07, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %index.08, 1
  %6 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_cfg, align 4
  %num_ports = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb2phy_clk480m_unregister(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #6
  %clk480m = getelementptr inbounds %struct.rockchip_usb2phy, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk480m, align 4
  tail call void @clk_unregister(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_clk480m_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usbgrf.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ %1, %entry.get_reg_base.exit_crit_edge ]
  %phy_cfg = getelementptr i8, ptr %hw, i32 32
  %4 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_cfg, align 4
  %clkout_ctl = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %6 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitend.i, align 4
  %11 = ptrtoint ptr %clkout_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkout_ctl, align 4
  %call.i = call i32 @regmap_read(ptr noundef %cond.i, i32 noundef %12, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %property_enabled.exit, label %property_enabled.exit.thread

property_enabled.exit.thread:                     ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br label %if.then

property_enabled.exit:                            ; preds = %get_reg_base.exit
  %shl.neg.i = shl nsw i32 -1, %8
  %sub1.i = sub i32 31, %10
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %13 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %14
  %15 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %16
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %18)
  %cmp.i13 = icmp eq i32 %shr5.i, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br i1 %cmp.i13, label %property_enabled.exit.cleanup_crit_edge, label %property_enabled.exit.if.then_crit_edge

property_enabled.exit.if.then_crit_edge:          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

property_enabled.exit.cleanup_crit_edge:          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %property_enabled.exit.if.then_crit_edge, %property_enabled.exit.thread
  %19 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_cfg, align 4
  %clkout_ctl3 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %20, i32 0, i32 2
  %enable.i14 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %20, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %enable.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond.i15 = load i32, ptr %enable.i14, align 4
  %bitstart.i16 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %20, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %bitstart.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bitstart.i16, align 4
  %shl.neg.i17 = shl nsw i32 -1, %23
  %bitend.i18 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %20, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %bitend.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitend.i18, align 4
  %sub1.i19 = sub i32 31, %25
  %shr.i20 = lshr i32 -1, %sub1.i19
  %and.i21 = and i32 %shr.i20, %shl.neg.i17
  %shl4.i = shl i32 %cond.i15, %23
  %shl5.i = shl i32 %and.i21, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %26 = ptrtoint ptr %clkout_ctl3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clkout_ctl3, align 4
  %call.i22 = call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %27, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not = icmp eq i32 %call.i22, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 1200, i32 noundef 1300, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %property_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i22, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %property_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb2phy_clk480m_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usbgrf.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ %1, %entry.get_reg_base.exit_crit_edge ]
  %phy_cfg = getelementptr i8, ptr %hw, i32 32
  %4 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_cfg, align 4
  %clkout_ctl = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2
  %disable.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i3 = load i32, ptr %disable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %8
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %10
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i3, %8
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %11 = ptrtoint ptr %clkout_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkout_ctl, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %12, i32 noundef %or.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_clk480m_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usbgrf.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ %1, %entry.get_reg_base.exit_crit_edge ]
  %phy_cfg = getelementptr i8, ptr %hw, i32 32
  %4 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_cfg, align 4
  %clkout_ctl = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %6 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitend.i, align 4
  %11 = ptrtoint ptr %clkout_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkout_ctl, align 4
  %call.i = call i32 @regmap_read(ptr noundef %cond.i, i32 noundef %12, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_reg_base.exit.property_enabled.exit_crit_edge

get_reg_base.exit.property_enabled.exit_crit_edge: ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %property_enabled.exit

if.end.i:                                         ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl.neg.i = shl nsw i32 -1, %8
  %sub1.i = sub i32 31, %10
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %13 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %14
  %15 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %16
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %18)
  %cmp.i3 = icmp eq i32 %shr5.i, %18
  %phi.cast = zext i1 %cmp.i3 to i32
  br label %property_enabled.exit

property_enabled.exit:                            ; preds = %if.end.i, %get_reg_base.exit.property_enabled.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %get_reg_base.exit.property_enabled.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_usb2phy_clk480m_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 480000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %port_id = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.out_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then28
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp ult i32 %10, 2
  br i1 %switch, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.then
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf, align 4
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_cfg, align 4
  %bvalid_det_clr = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %14, i32 0, i32 3
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %14, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.i = load i32, ptr %enable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %14, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %17
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %14, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %19
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i, %17
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %20 = ptrtoint ptr %bvalid_det_clr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bvalid_det_clr, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %21, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.then5
  %22 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %grf, align 4
  %24 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_cfg, align 4
  %bvalid_det_en = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %25, i32 0, i32 1
  %enable.i67 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %25, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %enable.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond.i69 = load i32, ptr %enable.i67, align 4
  %bitstart.i70 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %25, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %bitstart.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitstart.i70, align 4
  %shl.neg.i71 = shl nsw i32 -1, %28
  %bitend.i72 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %25, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %bitend.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bitend.i72, align 4
  %sub1.i73 = sub i32 31, %30
  %shr.i74 = lshr i32 -1, %sub1.i73
  %and.i75 = and i32 %shr.i74, %shl.neg.i71
  %shl4.i76 = shl i32 %cond.i69, %28
  %shl5.i77 = shl i32 %and.i75, 16
  %or.i78 = or i32 %shl5.i77, %shl4.i76
  %31 = ptrtoint ptr %bvalid_det_en to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bvalid_det_en, align 4
  %call.i79 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %32, i32 noundef %or.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool11.not = icmp eq i32 %call.i79, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %otg_sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %otg_sm_work, i32 noundef 600) #6
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_init, %if.then19)) #6
          to label %out [label %if.then19], !srcloc !253

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_init.__UNIQUE_ID_ddebug293, ptr noundef %35, ptr noundef nonnull @.str.47, i32 noundef %37) #6
  br label %out

if.then28:                                        ; preds = %entry
  %grf29 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %grf29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %grf29, align 4
  %port_cfg30 = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %port_cfg30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_cfg30, align 4
  %ls_det_clr = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %41, i32 0, i32 6
  %enable.i80 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %41, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %enable.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond.i82 = load i32, ptr %enable.i80, align 4
  %bitstart.i83 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %41, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %bitstart.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bitstart.i83, align 4
  %shl.neg.i84 = shl nsw i32 -1, %44
  %bitend.i85 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %41, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %bitend.i85 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bitend.i85, align 4
  %sub1.i86 = sub i32 31, %46
  %shr.i87 = lshr i32 -1, %sub1.i86
  %and.i88 = and i32 %shr.i87, %shl.neg.i84
  %shl4.i89 = shl i32 %cond.i82, %44
  %shl5.i90 = shl i32 %and.i88, 16
  %or.i91 = or i32 %shl5.i90, %shl4.i89
  %47 = ptrtoint ptr %ls_det_clr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ls_det_clr, align 4
  %call.i92 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %48, i32 noundef %or.i91) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool32.not = icmp eq i32 %call.i92, 0
  br i1 %tobool32.not, label %if.end34, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %if.then28
  %49 = ptrtoint ptr %grf29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %grf29, align 4
  %51 = ptrtoint ptr %port_cfg30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port_cfg30, align 4
  %ls_det_en = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %52, i32 0, i32 4
  %enable.i93 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %52, i32 0, i32 4, i32 4
  %53 = ptrtoint ptr %enable.i93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %cond.i95 = load i32, ptr %enable.i93, align 4
  %bitstart.i96 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %52, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %bitstart.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bitstart.i96, align 4
  %shl.neg.i97 = shl nsw i32 -1, %55
  %bitend.i98 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %52, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %bitend.i98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bitend.i98, align 4
  %sub1.i99 = sub i32 31, %57
  %shr.i100 = lshr i32 -1, %sub1.i99
  %and.i101 = and i32 %shr.i100, %shl.neg.i97
  %shl4.i102 = shl i32 %cond.i95, %55
  %shl5.i103 = shl i32 %and.i101, 16
  %or.i104 = or i32 %shl5.i103, %shl4.i102
  %58 = ptrtoint ptr %ls_det_en to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ls_det_en, align 4
  %call.i105 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef %59, i32 noundef %or.i104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool38.not = icmp eq i32 %call.i105, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i106 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %sm_work, i32 noundef 6000) #6
  br label %out

out:                                              ; preds = %if.end40, %if.end34.out_crit_edge, %if.then28.out_crit_edge, %if.then19, %do.body, %if.end13, %if.end.out_crit_edge, %if.then5.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then5.out_crit_edge ], [ %call.i79, %if.end.out_crit_edge ], [ 0, %if.end13 ], [ 0, %if.then19 ], [ %call.i92, %if.then28.out_crit_edge ], [ %call.i105, %if.end34.out_crit_edge ], [ 0, %if.end40 ], [ 0, %entry.out_crit_edge ], [ 0, %do.body ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_id = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %3, label %entry.if.end11_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %if.then9
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %otg_sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 9
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %otg_sm_work) #6
  %chg_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 8
  br label %if.end11.sink.split

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 10
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then9, %if.then
  %sm_work.sink = phi ptr [ %sm_work, %if.then9 ], [ %chg_work, %if.then ]
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sm_work.sink) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %usbgrf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ %7, %entry.get_reg_base.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_power_on.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_power_on, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !253

if.then:                                          ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_power_on.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.49) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %get_reg_base.exit
  %suspended = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspended, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %clk480m = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk480m, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_cfg, align 4
  %disable.i = getelementptr inbounds %struct.usb2phy_reg, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i32 = load i32, ptr %disable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.usb2phy_reg, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %20
  %bitend.i = getelementptr inbounds %struct.usb2phy_reg, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %22
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i32, %20
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %17, align 4
  %call.i33 = tail call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %24, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool16.not = icmp eq i32 %call.i33, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1500, i32 noundef 2000, i32 noundef 2) #6
  %25 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.then3.i, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i33, %if.end14.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %usbgrf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ %7, %entry.get_reg_base.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_power_off.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_power_off, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !253

if.then:                                          ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_power_off.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.51) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %get_reg_base.exit
  %suspended = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspended, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_cfg, align 4
  %enable.i = getelementptr inbounds %struct.usb2phy_reg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i25 = load i32, ptr %enable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.usb2phy_reg, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %18
  %bitend.i = getelementptr inbounds %struct.usb2phy_reg, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %20
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i25, %18
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %22, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %suspended, align 4
  %clk480m = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk480m, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb2phy_sm_work(ptr noundef %work) #2 align 64 {
entry:
  %ul = alloca i32, align 4
  %uhd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -316
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %port_cfg = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_cfg, align 4
  %bitend = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %7, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %bitend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitend, align 4
  %bitstart = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %7, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %bitstart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bitstart, align 4
  %sub = add i32 %9, 1
  %add = sub i32 %sub, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ul) #6
  %12 = ptrtoint ptr %ul to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ul, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uhd) #6
  %13 = ptrtoint ptr %uhd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %uhd, align 4, !annotation !252
  %mutex = getelementptr i8, ptr %work, i32 -292
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grf, align 4
  %16 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_cfg, align 4
  %utmi_ls = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %utmi_ls to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmi_ls, align 4
  %call4 = call i32 @regmap_read(ptr noundef %15, i32 noundef %19, ptr noundef nonnull %ul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.next_schedule_crit_edge, label %if.end

entry.next_schedule_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_schedule

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf, align 4
  %22 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_cfg, align 4
  %utmi_hstdet7 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %utmi_hstdet7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %utmi_hstdet7, align 4
  %call9 = call i32 @regmap_read(ptr noundef %21, i32 noundef %25, ptr noundef nonnull %uhd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.next_schedule_crit_edge, label %if.end12

if.end.next_schedule_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_schedule

if.end12:                                         ; preds = %if.end
  %26 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_cfg, align 4
  %bitstart15 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %27, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %bitstart15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitstart15, align 4
  %shl.neg = shl nsw i32 -1, %29
  %bitend20 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %27, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %bitend20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bitend20, align 4
  %sub21 = sub i32 31, %31
  %shr = lshr i32 -1, %sub21
  %and = and i32 %shr, %shl.neg
  %bitstart25 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %27, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %bitstart25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bitstart25, align 4
  %shl26.neg = shl nsw i32 -1, %33
  %bitend31 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %27, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %bitend31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bitend31, align 4
  %sub32 = sub i32 31, %35
  %shr33 = lshr i32 -1, %sub32
  %and34 = and i32 %shr33, %shl26.neg
  %36 = ptrtoint ptr %uhd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uhd, align 4
  %and36 = and i32 %and, %37
  %shr40 = lshr i32 %and36, %29
  %38 = ptrtoint ptr %ul to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ul, align 4
  %and41 = and i32 %and34, %39
  %shr45 = lshr i32 %and41, %33
  %shl46 = shl i32 %shr45, %add
  %or = or i32 %shl46, %shr40
  %40 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %or, label %do.body154 [
    i32 0, label %do.body
    i32 4, label %sw.bb55
    i32 2, label %if.end12.sw.bb77_crit_edge
    i32 1, label %sw.bb121
  ]

if.end12.sw.bb77_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then51)) #6
          to label %next_schedule [label %if.then51], !srcloc !253

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug306, ptr noundef %42, ptr noundef nonnull @.str.60) #6
  br label %next_schedule

sw.bb55:                                          ; preds = %if.end12
  %suspended = getelementptr i8, ptr %work, i32 -308
  %43 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %suspended, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool56.not = icmp eq i8 %44, 0
  br i1 %tobool56.not, label %do.body58, label %sw.bb55.sw.bb77_crit_edge

sw.bb55.sw.bb77_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

do.body58:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then70)) #6
          to label %next_schedule [label %if.then70], !srcloc !253

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug307, ptr noundef %46, ptr noundef nonnull @.str.61) #6
  br label %next_schedule

sw.bb77:                                          ; preds = %sw.bb55.sw.bb77_crit_edge, %if.end12.sw.bb77_crit_edge
  %suspended78 = getelementptr i8, ptr %work, i32 -308
  %47 = ptrtoint ptr %suspended78 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %suspended78, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool79.not = icmp eq i8 %48, 0
  br i1 %tobool79.not, label %do.body102, label %do.body81

do.body81:                                        ; preds = %sw.bb77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then93)) #6
          to label %do.end98 [label %if.then93], !srcloc !253

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug308, ptr noundef %50, ptr noundef nonnull @.str.62) #6
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body81
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  %call100 = call i32 @rockchip_usb2phy_power_on(ptr noundef %52)
  %53 = ptrtoint ptr %suspended78 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %suspended78, align 4
  br label %next_schedule

do.body102:                                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then114)) #6
          to label %next_schedule [label %if.then114], !srcloc !253

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug309, ptr noundef %55, ptr noundef nonnull @.str.61) #6
  br label %next_schedule

sw.bb121:                                         ; preds = %if.end12
  %suspended122 = getelementptr i8, ptr %work, i32 -308
  %56 = ptrtoint ptr %suspended122 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %suspended122, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool123.not = icmp eq i8 %57, 0
  br i1 %tobool123.not, label %do.body125, label %sw.bb121.if.end146_crit_edge

sw.bb121.if.end146_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

do.body125:                                       ; preds = %sw.bb121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then137)) #6
          to label %do.end142 [label %if.then137], !srcloc !253

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug310, ptr noundef %59, ptr noundef nonnull @.str.63) #6
  br label %do.end142

do.end142:                                        ; preds = %if.then137, %do.body125
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 4
  %call144 = call i32 @rockchip_usb2phy_power_off(ptr noundef %61)
  %62 = ptrtoint ptr %suspended122 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %suspended122, align 4
  br label %if.end146

if.end146:                                        ; preds = %do.end142, %sw.bb121.if.end146_crit_edge
  %63 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %grf, align 4
  %65 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port_cfg, align 4
  %ls_det_clr = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %66, i32 0, i32 6
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %66, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %cond.i = load i32, ptr %enable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %66, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %69
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %66, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %71
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i, %69
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %72 = ptrtoint ptr %ls_det_clr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ls_det_clr, align 4
  %call.i = call i32 @regmap_write(ptr noundef %64, i32 noundef %73, i32 noundef %or.i) #6
  %74 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %grf, align 4
  %76 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %port_cfg, align 4
  %ls_det_en = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %77, i32 0, i32 4
  %enable.i230 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %77, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %enable.i230 to i32
  call void @__asan_load4_noabort(i32 %78)
  %cond.i232 = load i32, ptr %enable.i230, align 4
  %bitstart.i233 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %77, i32 0, i32 4, i32 2
  %79 = ptrtoint ptr %bitstart.i233 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bitstart.i233, align 4
  %shl.neg.i234 = shl nsw i32 -1, %80
  %bitend.i235 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %77, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %bitend.i235 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bitend.i235, align 4
  %sub1.i236 = sub i32 31, %82
  %shr.i237 = lshr i32 -1, %sub1.i236
  %and.i238 = and i32 %shr.i237, %shl.neg.i234
  %shl4.i239 = shl i32 %cond.i232, %80
  %shl5.i240 = shl i32 %and.i238, 16
  %or.i241 = or i32 %shl5.i240, %shl4.i239
  %83 = ptrtoint ptr %ls_det_en to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ls_det_en, align 4
  %call.i242 = call i32 @regmap_write(ptr noundef %75, i32 noundef %84, i32 noundef %or.i241) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

do.body154:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_sm_work, %if.then166)) #6
          to label %next_schedule [label %if.then166], !srcloc !253

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug311, ptr noundef %86, ptr noundef nonnull @.str.64) #6
  br label %next_schedule

next_schedule:                                    ; preds = %if.then166, %do.body154, %if.then114, %do.body102, %do.end98, %if.then70, %do.body58, %if.then51, %do.body, %if.end.next_schedule_crit_edge, %entry.next_schedule_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %87 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %87, ptr noundef %work, i32 noundef 6000) #6
  br label %cleanup

cleanup:                                          ; preds = %next_schedule, %if.end146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uhd) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ul) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_usb2phy_port_irq_init(ptr nocapture noundef readonly %rphy, ptr noundef %rport, ptr noundef %child_np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.rockchip_usb2phy, ptr %rphy, i32 0, i32 10
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_id = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %rport, i32 0, i32 1
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @of_irq_get_byname(ptr noundef %child_np, ptr noundef nonnull @.str.65) #6
  %ls_irq = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %rport, i32 0, i32 5
  %5 = ptrtoint ptr %ls_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %ls_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %6 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rphy, align 4
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.66) #9
  %8 = ptrtoint ptr %ls_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ls_irq, align 4
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %call8 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %call, ptr noundef null, ptr noundef nonnull @rockchip_usb2phy_linestate_irq, i32 noundef 8192, ptr noundef nonnull @.str.33, ptr noundef %rport) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.69) #9
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %call16 = tail call i32 @of_irq_get_byname(ptr noundef %child_np, ptr noundef nonnull @.str.71) #6
  %otg_mux_irq = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %rport, i32 0, i32 6
  %12 = ptrtoint ptr %otg_mux_irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call16, ptr %otg_mux_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp sgt i32 %call16, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb15
  %13 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rphy, align 4
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %call16, ptr noundef null, ptr noundef nonnull @rockchip_usb2phy_otg_mux_irq, i32 noundef 8192, ptr noundef nonnull @.str.72, ptr noundef %rport) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then19.cleanup_crit_edge, label %do.end27

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb15
  %call30 = tail call i32 @of_irq_get_byname(ptr noundef %child_np, ptr noundef nonnull @.str.76) #6
  %bvalid_irq = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %rport, i32 0, i32 4
  %17 = ptrtoint ptr %bvalid_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call30, ptr %bvalid_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp32 = icmp slt i32 %call30, 0
  %18 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rphy, align 4
  br i1 %cmp32, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.78) #9
  %20 = ptrtoint ptr %bvalid_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bvalid_irq, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.else
  %call42 = tail call i32 @devm_request_threaded_irq(ptr noundef %19, i32 noundef %call30, ptr noundef null, ptr noundef nonnull @rockchip_usb2phy_bvalid_irq, i32 noundef 8192, ptr noundef nonnull @.str.80, ptr noundef %rport) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %do.end47

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.82) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end39.cleanup_crit_edge, %do.end36, %do.end27, %if.then19.cleanup_crit_edge, %do.end12, %if.end5.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end27 ], [ %21, %do.end36 ], [ %call42, %do.end47 ], [ %9, %do.end ], [ %call8, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_linestate_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 11
  %8 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_cfg, align 4
  %ls_det_st = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %10 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitend.i, align 4
  %15 = ptrtoint ptr %ls_det_st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ls_det_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %16, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %property_enabled.exit, label %property_enabled.exit.thread

property_enabled.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br label %cleanup

property_enabled.exit:                            ; preds = %entry
  %shl.neg.i = shl nsw i32 -1, %12
  %sub1.i = sub i32 31, %14
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %17 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %18
  %19 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %20
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %22)
  %cmp.i = icmp eq i32 %shr5.i, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br i1 %cmp.i, label %if.end, label %property_enabled.exit.cleanup_crit_edge

property_enabled.exit.cleanup_crit_edge:          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %property_enabled.exit
  %mutex = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %23 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %grf, align 4
  %25 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_cfg, align 4
  %ls_det_en = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 4
  %disable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i = load i32, ptr %disable.i, align 4
  %bitstart.i23 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %bitstart.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitstart.i23, align 4
  %shl.neg.i24 = shl nsw i32 -1, %29
  %bitend.i25 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %bitend.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bitend.i25, align 4
  %sub1.i26 = sub i32 31, %31
  %shr.i27 = lshr i32 -1, %sub1.i26
  %and.i28 = and i32 %shr.i27, %shl.neg.i24
  %shl4.i = shl i32 %cond.i, %29
  %shl5.i = shl i32 %and.i28, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %32 = ptrtoint ptr %ls_det_en to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ls_det_en, align 4
  %call.i29 = call i32 @regmap_write(ptr noundef %24, i32 noundef %33, i32 noundef %or.i) #6
  %34 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %grf, align 4
  %36 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_cfg, align 4
  %ls_det_clr = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %37, i32 0, i32 6
  %enable.i30 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %37, i32 0, i32 6, i32 4
  %38 = ptrtoint ptr %enable.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %cond.i32 = load i32, ptr %enable.i30, align 4
  %bitstart.i33 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %37, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %bitstart.i33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bitstart.i33, align 4
  %shl.neg.i34 = shl nsw i32 -1, %40
  %bitend.i35 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %37, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %bitend.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bitend.i35, align 4
  %sub1.i36 = sub i32 31, %42
  %shr.i37 = lshr i32 -1, %sub1.i36
  %and.i38 = and i32 %shr.i37, %shl.neg.i34
  %shl4.i39 = shl i32 %cond.i32, %40
  %shl5.i40 = shl i32 %and.i38, 16
  %or.i41 = or i32 %shl5.i40, %shl4.i39
  %43 = ptrtoint ptr %ls_det_clr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ls_det_clr, align 4
  %call.i42 = call i32 @regmap_write(ptr noundef %35, i32 noundef %44, i32 noundef %or.i41) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %suspended = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 2
  %45 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %suspended, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %port_id = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 1
  %47 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp = icmp eq i32 %48, 1
  br i1 %cmp, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 10
  call void @rockchip_usb2phy_sm_work(ptr noundef %sm_work)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %property_enabled.exit.cleanup_crit_edge, %property_enabled.exit.thread
  %retval.0 = phi i32 [ 0, %property_enabled.exit.cleanup_crit_edge ], [ 1, %if.then9 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %property_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_otg_mux_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 11
  %8 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_cfg, align 4
  %bvalid_det_st = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %10 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitend.i, align 4
  %15 = ptrtoint ptr %bvalid_det_st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bvalid_det_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %16, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %property_enabled.exit, label %property_enabled.exit.thread

property_enabled.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br label %cleanup

property_enabled.exit:                            ; preds = %entry
  %shl.neg.i = shl nsw i32 -1, %12
  %sub1.i = sub i32 31, %14
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %17 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %18
  %19 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %20
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %22)
  %cmp.i = icmp eq i32 %shr5.i, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br i1 %cmp.i, label %if.then, label %property_enabled.exit.cleanup_crit_edge

property_enabled.exit.cleanup_crit_edge:          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 @rockchip_usb2phy_bvalid_irq(i32 noundef %irq, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %property_enabled.exit.cleanup_crit_edge, %property_enabled.exit.thread
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %property_enabled.exit.cleanup_crit_edge ], [ 0, %property_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb2phy_bvalid_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %port_cfg = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 11
  %8 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_cfg, align 4
  %bvalid_det_st = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %10 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitend.i, align 4
  %15 = ptrtoint ptr %bvalid_det_st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bvalid_det_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %16, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %property_enabled.exit, label %property_enabled.exit.thread

property_enabled.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br label %cleanup

property_enabled.exit:                            ; preds = %entry
  %shl.neg.i = shl nsw i32 -1, %12
  %sub1.i = sub i32 31, %14
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %17 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %18
  %19 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %20
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %22)
  %cmp.i = icmp eq i32 %shr5.i, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  br i1 %cmp.i, label %if.end, label %property_enabled.exit.cleanup_crit_edge

property_enabled.exit.cleanup_crit_edge:          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mutex = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %23 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %grf, align 4
  %25 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_cfg, align 4
  %bvalid_det_clr = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 3
  %enable.i13 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %enable.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i = load i32, ptr %enable.i13, align 4
  %bitstart.i14 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %bitstart.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitstart.i14, align 4
  %shl.neg.i15 = shl nsw i32 -1, %29
  %bitend.i16 = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %26, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %bitend.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bitend.i16, align 4
  %sub1.i17 = sub i32 31, %31
  %shr.i18 = lshr i32 -1, %sub1.i17
  %and.i19 = and i32 %shr.i18, %shl.neg.i15
  %shl4.i = shl i32 %cond.i, %29
  %shl5.i = shl i32 %and.i19, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %32 = ptrtoint ptr %bvalid_det_clr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bvalid_det_clr, align 4
  %call.i20 = call i32 @regmap_write(ptr noundef %24, i32 noundef %33, i32 noundef %or.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %otg_sm_work = getelementptr inbounds %struct.rockchip_usb2phy_port, ptr %data, i32 0, i32 9
  call void @rockchip_usb2phy_otg_sm_work(ptr noundef %otg_sm_work)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %property_enabled.exit.cleanup_crit_edge, %property_enabled.exit.thread
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %property_enabled.exit.cleanup_crit_edge ], [ 0, %property_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb2phy_otg_sm_work(ptr noundef %work) #2 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %port_cfg = getelementptr i8, ptr %work, i32 200
  %8 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_cfg, align 4
  %utmi_bvalid = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %10 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bitstart.i, align 4
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitend.i, align 4
  %15 = ptrtoint ptr %utmi_bvalid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %utmi_bvalid, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %16, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.property_enabled.exit_crit_edge

entry.property_enabled.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %property_enabled.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.neg.i = shl nsw i32 -1, %12
  %sub1.i = sub i32 31, %14
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %17 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i, %18
  %19 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bitstart.i, align 4
  %shr5.i = lshr i32 %and3.i, %20
  %enable.i = getelementptr inbounds %struct.rockchip_usb2phy_port_cfg, ptr %9, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %22)
  %cmp.i = icmp eq i32 %shr5.i, %22
  br label %property_enabled.exit

property_enabled.exit:                            ; preds = %if.end.i, %entry.property_enabled.exit_crit_edge
  %retval.0.i298 = phi i1 [ %cmp.i, %if.end.i ], [ false, %entry.property_enabled.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  %frombool = zext i1 %retval.0.i298 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !253

if.then:                                          ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %state = getelementptr i8, ptr %work, i32 216
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  %call9 = call ptr @usb_otg_state_string(i32 noundef %26) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug296, ptr noundef %24, ptr noundef nonnull @.str.85, ptr noundef %call9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %property_enabled.exit
  %state10 = getelementptr i8, ptr %work, i32 216
  %27 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state10, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %28, label %do.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 3, label %sw.bb162
    i32 9, label %sw.bb189
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %30 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %state10, align 4
  br i1 %retval.0.i298, label %sw.bb17.thread309, label %sw.bb17.thread

sw.bb17:                                          ; preds = %do.end
  %edev = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 9
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev, align 4
  %call18 = call i32 @extcon_get_state(ptr noundef %32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp sgt i32 %call18, 0
  br i1 %cmp, label %sw.bb17.do.body20_crit_edge, label %if.else

sw.bb17.do.body20_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

sw.bb17.thread309:                                ; preds = %sw.bb
  %edev310 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 9
  %33 = ptrtoint ptr %edev310 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edev310, align 4
  %call18311 = call i32 @extcon_get_state(ptr noundef %34, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18311)
  %cmp312 = icmp sgt i32 %call18311, 0
  br i1 %cmp312, label %sw.bb17.thread309.do.body20_crit_edge, label %sw.bb17.thread309.do.body43_crit_edge

sw.bb17.thread309.do.body43_crit_edge:            ; preds = %sw.bb17.thread309
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

sw.bb17.thread309.do.body20_crit_edge:            ; preds = %sw.bb17.thread309
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

sw.bb17.thread:                                   ; preds = %sw.bb
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %call15 = call i32 @rockchip_usb2phy_power_off(ptr noundef %36)
  %edev302 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 9
  %37 = ptrtoint ptr %edev302 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edev302, align 4
  %call18303 = call i32 @extcon_get_state(ptr noundef %38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18303)
  %cmp304 = icmp sgt i32 %call18303, 0
  br i1 %cmp304, label %sw.bb17.thread.do.body20_crit_edge, label %sw.bb17.thread.if.else131_crit_edge

sw.bb17.thread.if.else131_crit_edge:              ; preds = %sw.bb17.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else131

sw.bb17.thread.do.body20_crit_edge:               ; preds = %sw.bb17.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.body20:                                        ; preds = %sw.bb17.thread.do.body20_crit_edge, %sw.bb17.thread309.do.body20_crit_edge, %sw.bb17.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then32)) #6
          to label %do.end37 [label %if.then32], !srcloc !253

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug297, ptr noundef %40, ptr noundef nonnull @.str.86) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body20
  %41 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 9, ptr %state10, align 4
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %call40 = call i32 @rockchip_usb2phy_power_on(ptr noundef %43)
  br label %cleanup

if.else:                                          ; preds = %sw.bb17
  br i1 %retval.0.i298, label %if.else.do.body43_crit_edge, label %if.else.if.else131_crit_edge

if.else.if.else131_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else131

if.else.do.body43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.body43:                                        ; preds = %if.else.do.body43_crit_edge, %sw.bb17.thread309.do.body43_crit_edge
  %edev305315 = phi ptr [ %edev, %if.else.do.body43_crit_edge ], [ %edev310, %sw.bb17.thread309.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then55)) #6
          to label %do.end60 [label %if.then55], !srcloc !253

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug298, ptr noundef %45, ptr noundef nonnull @.str.87) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %chg_state = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 6
  %46 = ptrtoint ptr %chg_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chg_state, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %47, label %do.end60.if.end135_crit_edge [
    i32 0, label %sw.bb61
    i32 5, label %sw.bb63
  ]

do.end60.if.end135_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

sw.bb61:                                          ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %chg_work = getelementptr i8, ptr %work, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %chg_work, i32 noundef 0) #6
  br label %cleanup

sw.bb63:                                          ; preds = %do.end60
  %chg_type = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  %50 = ptrtoint ptr %chg_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chg_type, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %51, label %sw.bb63.if.end135_crit_edge [
    i32 4, label %do.body65
    i32 5, label %do.body87
    i32 6, label %do.body108
  ]

sw.bb63.if.end135_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

do.body65:                                        ; preds = %sw.bb63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then77)) #6
          to label %do.end82 [label %if.then77], !srcloc !253

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug299, ptr noundef %54, ptr noundef nonnull @.str.88) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body65
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %call84 = call i32 @rockchip_usb2phy_power_on(ptr noundef %56)
  %57 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %state10, align 4
  store i32 5, ptr @rockchip_usb2phy_otg_sm_work.cable, align 4
  br label %if.end135

do.body87:                                        ; preds = %sw.bb63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then99)) #6
          to label %do.end104 [label %if.then99], !srcloc !253

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug300, ptr noundef %59, ptr noundef nonnull @.str.89) #6
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.body87
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 4
  %call106 = call i32 @rockchip_usb2phy_power_off(ptr noundef %61)
  store i32 6, ptr @rockchip_usb2phy_otg_sm_work.cable, align 4
  br label %if.end135

do.body108:                                       ; preds = %sw.bb63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then120)) #6
          to label %do.end125 [label %if.then120], !srcloc !253

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug301, ptr noundef %63, ptr noundef nonnull @.str.90) #6
  br label %do.end125

do.end125:                                        ; preds = %if.then120, %do.body108
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %call127 = call i32 @rockchip_usb2phy_power_on(ptr noundef %65)
  %66 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %state10, align 4
  store i32 7, ptr @rockchip_usb2phy_otg_sm_work.cable, align 4
  br label %if.end135

if.else131:                                       ; preds = %if.else.if.else131_crit_edge, %sw.bb17.thread.if.else131_crit_edge
  %edev305308 = phi ptr [ %edev, %if.else.if.else131_crit_edge ], [ %edev302, %sw.bb17.thread.if.else131_crit_edge ]
  %chg_state132 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 6
  %67 = ptrtoint ptr %chg_state132 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %chg_state132, align 4
  %chg_type133 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %chg_type133 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %chg_type133, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %do.end125, %do.end104, %do.end82, %sw.bb63.if.end135_crit_edge, %do.end60.if.end135_crit_edge
  %edev305307 = phi ptr [ %edev305315, %do.end60.if.end135_crit_edge ], [ %edev305315, %sw.bb63.if.end135_crit_edge ], [ %edev305315, %do.end125 ], [ %edev305315, %do.end104 ], [ %edev305315, %do.end82 ], [ %edev305308, %if.else131 ]
  %notify_charger.0.off0 = phi i1 [ false, %do.end60.if.end135_crit_edge ], [ false, %sw.bb63.if.end135_crit_edge ], [ true, %do.end125 ], [ true, %do.end104 ], [ true, %do.end82 ], [ true, %if.else131 ]
  %sch_work.0 = phi i1 [ false, %do.end60.if.end135_crit_edge ], [ false, %sw.bb63.if.end135_crit_edge ], [ true, %do.end125 ], [ true, %do.end104 ], [ true, %do.end82 ], [ false, %if.else131 ]
  %vbus_attached = getelementptr i8, ptr %work, i32 -207
  %69 = ptrtoint ptr %vbus_attached to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vbus_attached, align 1, !range !254
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %frombool)
  %cmp139.not = icmp eq i8 %70, %frombool
  br i1 %cmp139.not, label %if.end135.sw.epilog218_crit_edge, label %if.then141

if.end135.sw.epilog218_crit_edge:                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog218

if.then141:                                       ; preds = %if.end135
  %71 = ptrtoint ptr %vbus_attached to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %frombool, ptr %vbus_attached, align 1
  br i1 %notify_charger.0.off0, label %land.lhs.true, label %if.then141.sw.epilog218_crit_edge

if.then141.sw.epilog218_crit_edge:                ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog218

land.lhs.true:                                    ; preds = %if.then141
  %72 = ptrtoint ptr %edev305307 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %edev305307, align 4
  %tobool148.not = icmp eq ptr %73, null
  br i1 %tobool148.not, label %land.lhs.true.sw.epilog218_crit_edge, label %if.then149

land.lhs.true.sw.epilog218_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog218

if.then149:                                       ; preds = %land.lhs.true
  %74 = load i32, ptr @rockchip_usb2phy_otg_sm_work.cable, align 4
  %call152 = call i32 @extcon_set_state_sync(ptr noundef nonnull %73, i32 noundef %74, i1 noundef zeroext %retval.0.i298) #6
  %75 = load i32, ptr @rockchip_usb2phy_otg_sm_work.cable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %75)
  %cmp153 = icmp eq i32 %75, 5
  br i1 %cmp153, label %if.then155, label %if.then149.sw.epilog218_crit_edge

if.then149.sw.epilog218_crit_edge:                ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog218

if.then155:                                       ; preds = %if.then149
  %76 = ptrtoint ptr %edev305307 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %edev305307, align 4
  %call158 = call i32 @extcon_set_state_sync(ptr noundef %77, i32 noundef 1, i1 noundef zeroext %retval.0.i298) #6
  br i1 %sch_work.0, label %if.then155.if.then220_crit_edge, label %if.then155.cleanup_crit_edge

if.then155.cleanup_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then155.if.then220_crit_edge:                  ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then220

sw.bb162:                                         ; preds = %do.end
  br i1 %retval.0.i298, label %sw.bb162.if.then220_crit_edge, label %do.body165

sw.bb162.if.then220_crit_edge:                    ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then220

do.body165:                                       ; preds = %sw.bb162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then177)) #6
          to label %do.end182 [label %if.then177], !srcloc !253

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug302, ptr noundef %79, ptr noundef nonnull @.str.91) #6
  br label %do.end182

do.end182:                                        ; preds = %if.then177, %do.body165
  %chg_state183 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 6
  %80 = ptrtoint ptr %chg_state183 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %chg_state183, align 4
  %chg_type184 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  %81 = ptrtoint ptr %chg_type184 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %chg_type184, align 4
  %82 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %state10, align 4
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 4
  %call187 = call i32 @rockchip_usb2phy_power_off(ptr noundef %84)
  br label %if.then220

sw.bb189:                                         ; preds = %do.end
  %edev190 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 9
  %85 = ptrtoint ptr %edev190 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %edev190, align 4
  %call191 = call i32 @extcon_get_state(ptr noundef %86, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %do.body195, label %sw.bb189.cleanup_crit_edge

sw.bb189.cleanup_crit_edge:                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body195:                                       ; preds = %sw.bb189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb2phy_otg_sm_work, %if.then207)) #6
          to label %do.end212 [label %if.then207], !srcloc !253

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug303, ptr noundef %88, ptr noundef nonnull @.str.92) #6
  br label %do.end212

do.end212:                                        ; preds = %if.then207, %do.body195
  %89 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %state10, align 4
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr, align 4
  %call215 = call i32 @rockchip_usb2phy_power_off(ptr noundef %91)
  br label %cleanup

sw.epilog218:                                     ; preds = %if.then149.sw.epilog218_crit_edge, %land.lhs.true.sw.epilog218_crit_edge, %if.then141.sw.epilog218_crit_edge, %if.end135.sw.epilog218_crit_edge
  br i1 %sch_work.0, label %sw.epilog218.if.then220_crit_edge, label %sw.epilog218.cleanup_crit_edge

sw.epilog218.cleanup_crit_edge:                   ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog218.if.then220_crit_edge:                ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then220

if.then220:                                       ; preds = %sw.epilog218.if.then220_crit_edge, %do.end182, %sw.bb162.if.then220_crit_edge, %if.then155.if.then220_crit_edge
  %delay.1328 = phi i32 [ 200, %sw.epilog218.if.then220_crit_edge ], [ 200, %if.then155.if.then220_crit_edge ], [ 0, %do.end182 ], [ 200, %sw.bb162.if.then220_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %92 = load ptr, ptr @system_wq, align 4
  %call.i.i299 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %work, i32 noundef %delay.1328) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then220, %sw.epilog218.cleanup_crit_edge, %do.end212, %sw.bb189.cleanup_crit_edge, %if.then155.cleanup_crit_edge, %sw.bb61, %do.end37, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_chg_detect_work(ptr noundef %work) #2 align 64 {
entry:
  %orig.i301 = alloca i32, align 4
  %orig.i218 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %usbgrf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %cond.true.i, label %entry.get_reg_base.exit_crit_edge

entry.get_reg_base.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_reg_base.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf.i, align 4
  br label %get_reg_base.exit

get_reg_base.exit:                                ; preds = %cond.true.i, %entry.get_reg_base.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ %7, %entry.get_reg_base.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_chg_detect_work.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_chg_detect_work, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !253

if.then:                                          ; preds = %get_reg_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %chg_state = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %chg_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chg_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_chg_detect_work.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.107, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %get_reg_base.exit
  %chg_state8 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chg_state8, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %15, label %do.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb31
    i32 3, label %sw.bb52
    i32 4, label %do.end.sw.bb64_crit_edge
    i32 5, label %do.end.sw.bb66_crit_edge
  ]

do.end.sw.bb66_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb66

do.end.sw.bb64_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %suspended = getelementptr i8, ptr %work, i32 -108
  %17 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %suspended, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %if.then10, label %sw.bb.if.end13_crit_edge

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %call12 = tail call i32 @rockchip_usb2phy_power_off(ptr noundef %20)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb.if.end13_crit_edge
  %phy_cfg = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_cfg, align 4
  %opmode = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %22, i32 0, i32 4, i32 9
  %disable.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %22, i32 0, i32 4, i32 9, i32 3
  %23 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond.i140 = load i32, ptr %disable.i, align 4
  %bitstart.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %22, i32 0, i32 4, i32 9, i32 2
  %24 = ptrtoint ptr %bitstart.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitstart.i, align 4
  %shl.neg.i = shl nsw i32 -1, %25
  %bitend.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %22, i32 0, i32 4, i32 9, i32 1
  %26 = ptrtoint ptr %bitend.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bitend.i, align 4
  %sub1.i = sub i32 31, %27
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %shl4.i = shl i32 %cond.i140, %25
  %shl5.i = shl i32 %and.i, 16
  %or.i = or i32 %shl5.i, %shl4.i
  %28 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opmode, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %29, i32 noundef %or.i) #6
  %30 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i = icmp eq ptr %31, null
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end13.rockchip_chg_enable_dcd.exit_crit_edge

if.end13.rockchip_chg_enable_dcd.exit_crit_edge:  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_dcd.exit

cond.true.i.i:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i.i = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %grf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %grf.i.i, align 4
  br label %rockchip_chg_enable_dcd.exit

rockchip_chg_enable_dcd.exit:                     ; preds = %cond.true.i.i, %if.end13.rockchip_chg_enable_dcd.exit_crit_edge
  %cond.i.i = phi ptr [ %33, %cond.true.i.i ], [ %31, %if.end13.rockchip_chg_enable_dcd.exit_crit_edge ]
  %34 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_cfg, align 4
  %rdm_pdwn_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %35, i32 0, i32 4, i32 6
  %enable.i.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %35, i32 0, i32 4, i32 6, i32 4
  %36 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %cond.i10.i = load i32, ptr %enable.i.i, align 4
  %bitstart.i.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %35, i32 0, i32 4, i32 6, i32 2
  %37 = ptrtoint ptr %bitstart.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bitstart.i.i, align 4
  %shl.neg.i.i = shl nsw i32 -1, %38
  %bitend.i.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %35, i32 0, i32 4, i32 6, i32 1
  %39 = ptrtoint ptr %bitend.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bitend.i.i, align 4
  %sub1.i.i = sub i32 31, %40
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %and.i.i = and i32 %shr.i.i, %shl.neg.i.i
  %shl4.i.i = shl i32 %cond.i10.i, %38
  %shl5.i.i = shl i32 %and.i.i, 16
  %or.i.i = or i32 %shl5.i.i, %shl4.i.i
  %41 = ptrtoint ptr %rdm_pdwn_en.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rdm_pdwn_en.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %cond.i.i, i32 noundef %42, i32 noundef %or.i.i) #6
  %43 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_cfg, align 4
  %idp_src_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %44, i32 0, i32 4, i32 5
  %enable.i11.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %44, i32 0, i32 4, i32 5, i32 4
  %45 = ptrtoint ptr %enable.i11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond.i14.i = load i32, ptr %enable.i11.i, align 4
  %bitstart.i15.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %44, i32 0, i32 4, i32 5, i32 2
  %46 = ptrtoint ptr %bitstart.i15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bitstart.i15.i, align 4
  %shl.neg.i16.i = shl nsw i32 -1, %47
  %bitend.i17.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %44, i32 0, i32 4, i32 5, i32 1
  %48 = ptrtoint ptr %bitend.i17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bitend.i17.i, align 4
  %sub1.i18.i = sub i32 31, %49
  %shr.i19.i = lshr i32 -1, %sub1.i18.i
  %and.i20.i = and i32 %shr.i19.i, %shl.neg.i16.i
  %shl4.i21.i = shl i32 %cond.i14.i, %47
  %shl5.i22.i = shl i32 %and.i20.i, 16
  %or.i23.i = or i32 %shl5.i22.i, %shl4.i21.i
  %50 = ptrtoint ptr %idp_src_en.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idp_src_en.i, align 4
  %call.i24.i = tail call i32 @regmap_write(ptr noundef %cond.i.i, i32 noundef %51, i32 noundef %or.i23.i) #6
  %52 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %chg_state8, align 4
  %dcd_retries = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 8
  %53 = ptrtoint ptr %dcd_retries to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %dcd_retries, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  %grf = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %grf, align 4
  %phy_cfg17 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 11
  %56 = ptrtoint ptr %phy_cfg17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy_cfg17, align 4
  %dp_det = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %57, i32 0, i32 4, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %58 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %orig.i, align 4, !annotation !252
  %bitstart.i141 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %57, i32 0, i32 4, i32 2, i32 2
  %59 = ptrtoint ptr %bitstart.i141 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bitstart.i141, align 4
  %bitend.i142 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %57, i32 0, i32 4, i32 2, i32 1
  %61 = ptrtoint ptr %bitend.i142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bitend.i142, align 4
  %63 = ptrtoint ptr %dp_det to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dp_det, align 4
  %call.i143 = call i32 @regmap_read(ptr noundef %55, i32 noundef %64, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb16.property_enabled.exit_crit_edge

sw.bb16.property_enabled.exit_crit_edge:          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %property_enabled.exit

if.end.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %shl.neg.i144 = shl nsw i32 -1, %60
  %sub1.i145 = sub i32 31, %62
  %shr.i146 = lshr i32 -1, %sub1.i145
  %and.i147 = and i32 %shr.i146, %shl.neg.i144
  %65 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %orig.i, align 4
  %and3.i = and i32 %and.i147, %66
  %67 = ptrtoint ptr %bitstart.i141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bitstart.i141, align 4
  %shr5.i = lshr i32 %and3.i, %68
  %enable.i148 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %57, i32 0, i32 4, i32 2, i32 4
  %69 = ptrtoint ptr %enable.i148 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enable.i148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i, i32 %70)
  %cmp.i149 = icmp eq i32 %shr5.i, %70
  br label %property_enabled.exit

property_enabled.exit:                            ; preds = %if.end.i, %sw.bb16.property_enabled.exit_crit_edge
  %retval.0.i150 = phi i1 [ %cmp.i149, %if.end.i ], [ false, %sw.bb16.property_enabled.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  %dcd_retries21 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 8
  %71 = ptrtoint ptr %dcd_retries21 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dcd_retries21, align 4
  %inc = add i8 %72, 1
  store i8 %inc, ptr %dcd_retries21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc)
  %cmp = icmp eq i8 %inc, 6
  %or.cond = select i1 %retval.0.i150, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then28, label %property_enabled.exit.sw.epilog_crit_edge

property_enabled.exit.sw.epilog_crit_edge:        ; preds = %property_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then28:                                        ; preds = %property_enabled.exit
  %73 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i152 = icmp eq ptr %74, null
  br i1 %cmp.i.i152, label %cond.true.i.i154, label %if.then28.rockchip_chg_enable_dcd.exit185_crit_edge

if.then28.rockchip_chg_enable_dcd.exit185_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_dcd.exit185

cond.true.i.i154:                                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %grf, align 4
  br label %rockchip_chg_enable_dcd.exit185

rockchip_chg_enable_dcd.exit185:                  ; preds = %cond.true.i.i154, %if.then28.rockchip_chg_enable_dcd.exit185_crit_edge
  %cond.i.i155 = phi ptr [ %76, %cond.true.i.i154 ], [ %74, %if.then28.rockchip_chg_enable_dcd.exit185_crit_edge ]
  %77 = ptrtoint ptr %phy_cfg17 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_cfg17, align 4
  %rdm_pdwn_en.i157 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %78, i32 0, i32 4, i32 6
  %disable.i.i159 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %78, i32 0, i32 4, i32 6, i32 3
  %79 = ptrtoint ptr %disable.i.i159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %cond.i10.i160 = load i32, ptr %disable.i.i159, align 4
  %bitstart.i.i161 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %78, i32 0, i32 4, i32 6, i32 2
  %80 = ptrtoint ptr %bitstart.i.i161 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bitstart.i.i161, align 4
  %shl.neg.i.i162 = shl nsw i32 -1, %81
  %bitend.i.i163 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %78, i32 0, i32 4, i32 6, i32 1
  %82 = ptrtoint ptr %bitend.i.i163 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bitend.i.i163, align 4
  %sub1.i.i164 = sub i32 31, %83
  %shr.i.i165 = lshr i32 -1, %sub1.i.i164
  %and.i.i166 = and i32 %shr.i.i165, %shl.neg.i.i162
  %shl4.i.i167 = shl i32 %cond.i10.i160, %81
  %shl5.i.i168 = shl i32 %and.i.i166, 16
  %or.i.i169 = or i32 %shl5.i.i168, %shl4.i.i167
  %84 = ptrtoint ptr %rdm_pdwn_en.i157 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rdm_pdwn_en.i157, align 4
  %call.i.i170 = call i32 @regmap_write(ptr noundef %cond.i.i155, i32 noundef %85, i32 noundef %or.i.i169) #6
  %86 = ptrtoint ptr %phy_cfg17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy_cfg17, align 4
  %idp_src_en.i171 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %87, i32 0, i32 4, i32 5
  %disable.i12.i173 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %87, i32 0, i32 4, i32 5, i32 3
  %88 = ptrtoint ptr %disable.i12.i173 to i32
  call void @__asan_load4_noabort(i32 %88)
  %cond.i14.i174 = load i32, ptr %disable.i12.i173, align 4
  %bitstart.i15.i175 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %87, i32 0, i32 4, i32 5, i32 2
  %89 = ptrtoint ptr %bitstart.i15.i175 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bitstart.i15.i175, align 4
  %shl.neg.i16.i176 = shl nsw i32 -1, %90
  %bitend.i17.i177 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %87, i32 0, i32 4, i32 5, i32 1
  %91 = ptrtoint ptr %bitend.i17.i177 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bitend.i17.i177, align 4
  %sub1.i18.i178 = sub i32 31, %92
  %shr.i19.i179 = lshr i32 -1, %sub1.i18.i178
  %and.i20.i180 = and i32 %shr.i19.i179, %shl.neg.i16.i176
  %shl4.i21.i181 = shl i32 %cond.i14.i174, %90
  %shl5.i22.i182 = shl i32 %and.i20.i180, 16
  %or.i23.i183 = or i32 %shl5.i22.i182, %shl4.i21.i181
  %93 = ptrtoint ptr %idp_src_en.i171 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %idp_src_en.i171, align 4
  %call.i24.i184 = call i32 @regmap_write(ptr noundef %cond.i.i155, i32 noundef %94, i32 noundef %or.i23.i183) #6
  %95 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i187 = icmp eq ptr %96, null
  br i1 %cmp.i.i187, label %cond.true.i.i189, label %rockchip_chg_enable_dcd.exit185.rockchip_chg_enable_primary_det.exit_crit_edge

rockchip_chg_enable_dcd.exit185.rockchip_chg_enable_primary_det.exit_crit_edge: ; preds = %rockchip_chg_enable_dcd.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_primary_det.exit

cond.true.i.i189:                                 ; preds = %rockchip_chg_enable_dcd.exit185
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %grf, align 4
  br label %rockchip_chg_enable_primary_det.exit

rockchip_chg_enable_primary_det.exit:             ; preds = %cond.true.i.i189, %rockchip_chg_enable_dcd.exit185.rockchip_chg_enable_primary_det.exit_crit_edge
  %cond.i.i190 = phi ptr [ %98, %cond.true.i.i189 ], [ %96, %rockchip_chg_enable_dcd.exit185.rockchip_chg_enable_primary_det.exit_crit_edge ]
  %99 = ptrtoint ptr %phy_cfg17 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy_cfg17, align 4
  %vdp_src_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %100, i32 0, i32 4, i32 8
  %enable.i.i192 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %100, i32 0, i32 4, i32 8, i32 4
  %101 = ptrtoint ptr %enable.i.i192 to i32
  call void @__asan_load4_noabort(i32 %101)
  %cond.i10.i194 = load i32, ptr %enable.i.i192, align 4
  %bitstart.i.i195 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %100, i32 0, i32 4, i32 8, i32 2
  %102 = ptrtoint ptr %bitstart.i.i195 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bitstart.i.i195, align 4
  %shl.neg.i.i196 = shl nsw i32 -1, %103
  %bitend.i.i197 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %100, i32 0, i32 4, i32 8, i32 1
  %104 = ptrtoint ptr %bitend.i.i197 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bitend.i.i197, align 4
  %sub1.i.i198 = sub i32 31, %105
  %shr.i.i199 = lshr i32 -1, %sub1.i.i198
  %and.i.i200 = and i32 %shr.i.i199, %shl.neg.i.i196
  %shl4.i.i201 = shl i32 %cond.i10.i194, %103
  %shl5.i.i202 = shl i32 %and.i.i200, 16
  %or.i.i203 = or i32 %shl5.i.i202, %shl4.i.i201
  %106 = ptrtoint ptr %vdp_src_en.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vdp_src_en.i, align 4
  %call.i.i204 = call i32 @regmap_write(ptr noundef %cond.i.i190, i32 noundef %107, i32 noundef %or.i.i203) #6
  %108 = ptrtoint ptr %phy_cfg17 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phy_cfg17, align 4
  %idm_sink_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %109, i32 0, i32 4, i32 3
  %enable.i11.i205 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %109, i32 0, i32 4, i32 3, i32 4
  %110 = ptrtoint ptr %enable.i11.i205 to i32
  call void @__asan_load4_noabort(i32 %110)
  %cond.i14.i207 = load i32, ptr %enable.i11.i205, align 4
  %bitstart.i15.i208 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %109, i32 0, i32 4, i32 3, i32 2
  %111 = ptrtoint ptr %bitstart.i15.i208 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bitstart.i15.i208, align 4
  %shl.neg.i16.i209 = shl nsw i32 -1, %112
  %bitend.i17.i210 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %109, i32 0, i32 4, i32 3, i32 1
  %113 = ptrtoint ptr %bitend.i17.i210 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bitend.i17.i210, align 4
  %sub1.i18.i211 = sub i32 31, %114
  %shr.i19.i212 = lshr i32 -1, %sub1.i18.i211
  %and.i20.i213 = and i32 %shr.i19.i212, %shl.neg.i16.i209
  %shl4.i21.i214 = shl i32 %cond.i14.i207, %112
  %shl5.i22.i215 = shl i32 %and.i20.i213, 16
  %or.i23.i216 = or i32 %shl5.i22.i215, %shl4.i21.i214
  %115 = ptrtoint ptr %idm_sink_en.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %idm_sink_en.i, align 4
  %call.i24.i217 = call i32 @regmap_write(ptr noundef %cond.i.i190, i32 noundef %116, i32 noundef %or.i23.i216) #6
  %117 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %chg_state8, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.end
  %grf32 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %118 = ptrtoint ptr %grf32 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %grf32, align 4
  %phy_cfg33 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 11
  %120 = ptrtoint ptr %phy_cfg33 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy_cfg33, align 4
  %chg_det34 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %121, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i218) #6
  %122 = ptrtoint ptr %orig.i218 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %orig.i218, align 4, !annotation !252
  %bitstart.i219 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %121, i32 0, i32 4, i32 0, i32 2
  %123 = ptrtoint ptr %bitstart.i219 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bitstart.i219, align 4
  %bitend.i220 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %121, i32 0, i32 4, i32 0, i32 1
  %125 = ptrtoint ptr %bitend.i220 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bitend.i220, align 4
  %127 = ptrtoint ptr %chg_det34 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %chg_det34, align 4
  %call.i221 = call i32 @regmap_read(ptr noundef %119, i32 noundef %128, ptr noundef nonnull %orig.i218) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i222 = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i222, label %if.end.i231, label %sw.bb31.property_enabled.exit233_crit_edge

sw.bb31.property_enabled.exit233_crit_edge:       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  br label %property_enabled.exit233

if.end.i231:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  %shl.neg.i223 = shl nsw i32 -1, %124
  %sub1.i224 = sub i32 31, %126
  %shr.i225 = lshr i32 -1, %sub1.i224
  %and.i226 = and i32 %shr.i225, %shl.neg.i223
  %129 = ptrtoint ptr %orig.i218 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %orig.i218, align 4
  %and3.i227 = and i32 %and.i226, %130
  %131 = ptrtoint ptr %bitstart.i219 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bitstart.i219, align 4
  %shr5.i228 = lshr i32 %and3.i227, %132
  %enable.i229 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %121, i32 0, i32 4, i32 0, i32 4
  %133 = ptrtoint ptr %enable.i229 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %enable.i229, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i228, i32 %134)
  %cmp.i230 = icmp eq i32 %shr5.i228, %134
  br label %property_enabled.exit233

property_enabled.exit233:                         ; preds = %if.end.i231, %sw.bb31.property_enabled.exit233_crit_edge
  %retval.0.i232 = phi i1 [ %cmp.i230, %if.end.i231 ], [ false, %sw.bb31.property_enabled.exit233_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i218) #6
  %135 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i235 = icmp eq ptr %136, null
  br i1 %cmp.i.i235, label %cond.true.i.i237, label %property_enabled.exit233.rockchip_chg_enable_primary_det.exit268_crit_edge

property_enabled.exit233.rockchip_chg_enable_primary_det.exit268_crit_edge: ; preds = %property_enabled.exit233
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_primary_det.exit268

cond.true.i.i237:                                 ; preds = %property_enabled.exit233
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %grf32 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %grf32, align 4
  br label %rockchip_chg_enable_primary_det.exit268

rockchip_chg_enable_primary_det.exit268:          ; preds = %cond.true.i.i237, %property_enabled.exit233.rockchip_chg_enable_primary_det.exit268_crit_edge
  %cond.i.i238 = phi ptr [ %138, %cond.true.i.i237 ], [ %136, %property_enabled.exit233.rockchip_chg_enable_primary_det.exit268_crit_edge ]
  %139 = ptrtoint ptr %phy_cfg33 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %phy_cfg33, align 4
  %vdp_src_en.i240 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %140, i32 0, i32 4, i32 8
  %disable.i.i242 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %140, i32 0, i32 4, i32 8, i32 3
  %141 = ptrtoint ptr %disable.i.i242 to i32
  call void @__asan_load4_noabort(i32 %141)
  %cond.i10.i243 = load i32, ptr %disable.i.i242, align 4
  %bitstart.i.i244 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %140, i32 0, i32 4, i32 8, i32 2
  %142 = ptrtoint ptr %bitstart.i.i244 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bitstart.i.i244, align 4
  %shl.neg.i.i245 = shl nsw i32 -1, %143
  %bitend.i.i246 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %140, i32 0, i32 4, i32 8, i32 1
  %144 = ptrtoint ptr %bitend.i.i246 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bitend.i.i246, align 4
  %sub1.i.i247 = sub i32 31, %145
  %shr.i.i248 = lshr i32 -1, %sub1.i.i247
  %and.i.i249 = and i32 %shr.i.i248, %shl.neg.i.i245
  %shl4.i.i250 = shl i32 %cond.i10.i243, %143
  %shl5.i.i251 = shl i32 %and.i.i249, 16
  %or.i.i252 = or i32 %shl5.i.i251, %shl4.i.i250
  %146 = ptrtoint ptr %vdp_src_en.i240 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %vdp_src_en.i240, align 4
  %call.i.i253 = call i32 @regmap_write(ptr noundef %cond.i.i238, i32 noundef %147, i32 noundef %or.i.i252) #6
  %148 = ptrtoint ptr %phy_cfg33 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phy_cfg33, align 4
  %idm_sink_en.i254 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %149, i32 0, i32 4, i32 3
  %disable.i12.i256 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %149, i32 0, i32 4, i32 3, i32 3
  %150 = ptrtoint ptr %disable.i12.i256 to i32
  call void @__asan_load4_noabort(i32 %150)
  %cond.i14.i257 = load i32, ptr %disable.i12.i256, align 4
  %bitstart.i15.i258 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %149, i32 0, i32 4, i32 3, i32 2
  %151 = ptrtoint ptr %bitstart.i15.i258 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bitstart.i15.i258, align 4
  %shl.neg.i16.i259 = shl nsw i32 -1, %152
  %bitend.i17.i260 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %149, i32 0, i32 4, i32 3, i32 1
  %153 = ptrtoint ptr %bitend.i17.i260 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bitend.i17.i260, align 4
  %sub1.i18.i261 = sub i32 31, %154
  %shr.i19.i262 = lshr i32 -1, %sub1.i18.i261
  %and.i20.i263 = and i32 %shr.i19.i262, %shl.neg.i16.i259
  %shl4.i21.i264 = shl i32 %cond.i14.i257, %152
  %shl5.i22.i265 = shl i32 %and.i20.i263, 16
  %or.i23.i266 = or i32 %shl5.i22.i265, %shl4.i21.i264
  %155 = ptrtoint ptr %idm_sink_en.i254 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %idm_sink_en.i254, align 4
  %call.i24.i267 = call i32 @regmap_write(ptr noundef %cond.i.i238, i32 noundef %156, i32 noundef %or.i23.i266) #6
  br i1 %retval.0.i232, label %if.then38, label %if.else40

if.then38:                                        ; preds = %rockchip_chg_enable_primary_det.exit268
  %157 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i270 = icmp eq ptr %158, null
  br i1 %cmp.i.i270, label %cond.true.i.i272, label %if.then38.rockchip_chg_enable_secondary_det.exit_crit_edge

if.then38.rockchip_chg_enable_secondary_det.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_secondary_det.exit

cond.true.i.i272:                                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %grf32 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %grf32, align 4
  br label %rockchip_chg_enable_secondary_det.exit

rockchip_chg_enable_secondary_det.exit:           ; preds = %cond.true.i.i272, %if.then38.rockchip_chg_enable_secondary_det.exit_crit_edge
  %cond.i.i273 = phi ptr [ %160, %cond.true.i.i272 ], [ %158, %if.then38.rockchip_chg_enable_secondary_det.exit_crit_edge ]
  %161 = ptrtoint ptr %phy_cfg33 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %phy_cfg33, align 4
  %vdm_src_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %162, i32 0, i32 4, i32 7
  %enable.i.i275 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %162, i32 0, i32 4, i32 7, i32 4
  %163 = ptrtoint ptr %enable.i.i275 to i32
  call void @__asan_load4_noabort(i32 %163)
  %cond.i10.i277 = load i32, ptr %enable.i.i275, align 4
  %bitstart.i.i278 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %162, i32 0, i32 4, i32 7, i32 2
  %164 = ptrtoint ptr %bitstart.i.i278 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bitstart.i.i278, align 4
  %shl.neg.i.i279 = shl nsw i32 -1, %165
  %bitend.i.i280 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %162, i32 0, i32 4, i32 7, i32 1
  %166 = ptrtoint ptr %bitend.i.i280 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bitend.i.i280, align 4
  %sub1.i.i281 = sub i32 31, %167
  %shr.i.i282 = lshr i32 -1, %sub1.i.i281
  %and.i.i283 = and i32 %shr.i.i282, %shl.neg.i.i279
  %shl4.i.i284 = shl i32 %cond.i10.i277, %165
  %shl5.i.i285 = shl i32 %and.i.i283, 16
  %or.i.i286 = or i32 %shl5.i.i285, %shl4.i.i284
  %168 = ptrtoint ptr %vdm_src_en.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vdm_src_en.i, align 4
  %call.i.i287 = call i32 @regmap_write(ptr noundef %cond.i.i273, i32 noundef %169, i32 noundef %or.i.i286) #6
  %170 = ptrtoint ptr %phy_cfg33 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %phy_cfg33, align 4
  %idp_sink_en.i = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %171, i32 0, i32 4, i32 4
  %enable.i11.i288 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %171, i32 0, i32 4, i32 4, i32 4
  %172 = ptrtoint ptr %enable.i11.i288 to i32
  call void @__asan_load4_noabort(i32 %172)
  %cond.i14.i290 = load i32, ptr %enable.i11.i288, align 4
  %bitstart.i15.i291 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %171, i32 0, i32 4, i32 4, i32 2
  %173 = ptrtoint ptr %bitstart.i15.i291 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bitstart.i15.i291, align 4
  %shl.neg.i16.i292 = shl nsw i32 -1, %174
  %bitend.i17.i293 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %171, i32 0, i32 4, i32 4, i32 1
  %175 = ptrtoint ptr %bitend.i17.i293 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bitend.i17.i293, align 4
  %sub1.i18.i294 = sub i32 31, %176
  %shr.i19.i295 = lshr i32 -1, %sub1.i18.i294
  %and.i20.i296 = and i32 %shr.i19.i295, %shl.neg.i16.i292
  %shl4.i21.i297 = shl i32 %cond.i14.i290, %174
  %shl5.i22.i298 = shl i32 %and.i20.i296, 16
  %or.i23.i299 = or i32 %shl5.i22.i298, %shl4.i21.i297
  %177 = ptrtoint ptr %idp_sink_en.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %idp_sink_en.i, align 4
  %call.i24.i300 = call i32 @regmap_write(ptr noundef %cond.i.i273, i32 noundef %178, i32 noundef %or.i23.i299) #6
  %179 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 3, ptr %chg_state8, align 4
  br label %sw.epilog

if.else40:                                        ; preds = %rockchip_chg_enable_primary_det.exit268
  %dcd_retries41 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 8
  %180 = ptrtoint ptr %dcd_retries41 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %dcd_retries41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %181)
  %cmp43 = icmp eq i8 %181, 6
  %chg_type = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %chg_type to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 5, ptr %chg_type, align 4
  %183 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 5, ptr %chg_state8, align 4
  br label %sw.epilog

if.else47:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %chg_type to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 4, ptr %chg_type, align 4
  %185 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 5, ptr %chg_state8, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %do.end
  %grf53 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 1
  %186 = ptrtoint ptr %grf53 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %grf53, align 4
  %phy_cfg54 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 11
  %188 = ptrtoint ptr %phy_cfg54 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %phy_cfg54, align 4
  %dcp_det = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %189, i32 0, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i301) #6
  %190 = ptrtoint ptr %orig.i301 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %orig.i301, align 4, !annotation !252
  %bitstart.i302 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %189, i32 0, i32 4, i32 1, i32 2
  %191 = ptrtoint ptr %bitstart.i302 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bitstart.i302, align 4
  %bitend.i303 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %189, i32 0, i32 4, i32 1, i32 1
  %193 = ptrtoint ptr %bitend.i303 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bitend.i303, align 4
  %195 = ptrtoint ptr %dcp_det to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dcp_det, align 4
  %call.i304 = call i32 @regmap_read(ptr noundef %187, i32 noundef %196, ptr noundef nonnull %orig.i301) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool.not.i305 = icmp eq i32 %call.i304, 0
  br i1 %tobool.not.i305, label %if.end.i314, label %sw.bb52.property_enabled.exit316_crit_edge

sw.bb52.property_enabled.exit316_crit_edge:       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %property_enabled.exit316

if.end.i314:                                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  %shl.neg.i306 = shl nsw i32 -1, %192
  %sub1.i307 = sub i32 31, %194
  %shr.i308 = lshr i32 -1, %sub1.i307
  %and.i309 = and i32 %shr.i308, %shl.neg.i306
  %197 = ptrtoint ptr %orig.i301 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %orig.i301, align 4
  %and3.i310 = and i32 %and.i309, %198
  %199 = ptrtoint ptr %bitstart.i302 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bitstart.i302, align 4
  %shr5.i311 = lshr i32 %and3.i310, %200
  %enable.i312 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %189, i32 0, i32 4, i32 1, i32 4
  %201 = ptrtoint ptr %enable.i312 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %enable.i312, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5.i311, i32 %202)
  %cmp.i313 = icmp eq i32 %shr5.i311, %202
  %phi.sel = select i1 %cmp.i313, i32 5, i32 6
  br label %property_enabled.exit316

property_enabled.exit316:                         ; preds = %if.end.i314, %sw.bb52.property_enabled.exit316_crit_edge
  %retval.0.i315 = phi i32 [ %phi.sel, %if.end.i314 ], [ 6, %sw.bb52.property_enabled.exit316_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i301) #6
  %203 = ptrtoint ptr %usbgrf.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %usbgrf.i, align 4
  %cmp.i.i318 = icmp eq ptr %204, null
  br i1 %cmp.i.i318, label %cond.true.i.i320, label %property_enabled.exit316.rockchip_chg_enable_secondary_det.exit351_crit_edge

property_enabled.exit316.rockchip_chg_enable_secondary_det.exit351_crit_edge: ; preds = %property_enabled.exit316
  call void @__sanitizer_cov_trace_pc() #8
  br label %rockchip_chg_enable_secondary_det.exit351

cond.true.i.i320:                                 ; preds = %property_enabled.exit316
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %grf53 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %grf53, align 4
  br label %rockchip_chg_enable_secondary_det.exit351

rockchip_chg_enable_secondary_det.exit351:        ; preds = %cond.true.i.i320, %property_enabled.exit316.rockchip_chg_enable_secondary_det.exit351_crit_edge
  %cond.i.i321 = phi ptr [ %206, %cond.true.i.i320 ], [ %204, %property_enabled.exit316.rockchip_chg_enable_secondary_det.exit351_crit_edge ]
  %207 = ptrtoint ptr %phy_cfg54 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %phy_cfg54, align 4
  %vdm_src_en.i323 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %208, i32 0, i32 4, i32 7
  %disable.i.i325 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %208, i32 0, i32 4, i32 7, i32 3
  %209 = ptrtoint ptr %disable.i.i325 to i32
  call void @__asan_load4_noabort(i32 %209)
  %cond.i10.i326 = load i32, ptr %disable.i.i325, align 4
  %bitstart.i.i327 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %208, i32 0, i32 4, i32 7, i32 2
  %210 = ptrtoint ptr %bitstart.i.i327 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bitstart.i.i327, align 4
  %shl.neg.i.i328 = shl nsw i32 -1, %211
  %bitend.i.i329 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %208, i32 0, i32 4, i32 7, i32 1
  %212 = ptrtoint ptr %bitend.i.i329 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %bitend.i.i329, align 4
  %sub1.i.i330 = sub i32 31, %213
  %shr.i.i331 = lshr i32 -1, %sub1.i.i330
  %and.i.i332 = and i32 %shr.i.i331, %shl.neg.i.i328
  %shl4.i.i333 = shl i32 %cond.i10.i326, %211
  %shl5.i.i334 = shl i32 %and.i.i332, 16
  %or.i.i335 = or i32 %shl5.i.i334, %shl4.i.i333
  %214 = ptrtoint ptr %vdm_src_en.i323 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %vdm_src_en.i323, align 4
  %call.i.i336 = call i32 @regmap_write(ptr noundef %cond.i.i321, i32 noundef %215, i32 noundef %or.i.i335) #6
  %216 = ptrtoint ptr %phy_cfg54 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %phy_cfg54, align 4
  %idp_sink_en.i337 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %217, i32 0, i32 4, i32 4
  %disable.i12.i339 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %217, i32 0, i32 4, i32 4, i32 3
  %218 = ptrtoint ptr %disable.i12.i339 to i32
  call void @__asan_load4_noabort(i32 %218)
  %cond.i14.i340 = load i32, ptr %disable.i12.i339, align 4
  %bitstart.i15.i341 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %217, i32 0, i32 4, i32 4, i32 2
  %219 = ptrtoint ptr %bitstart.i15.i341 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %bitstart.i15.i341, align 4
  %shl.neg.i16.i342 = shl nsw i32 -1, %220
  %bitend.i17.i343 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %217, i32 0, i32 4, i32 4, i32 1
  %221 = ptrtoint ptr %bitend.i17.i343 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bitend.i17.i343, align 4
  %sub1.i18.i344 = sub i32 31, %222
  %shr.i19.i345 = lshr i32 -1, %sub1.i18.i344
  %and.i20.i346 = and i32 %shr.i19.i345, %shl.neg.i16.i342
  %shl4.i21.i347 = shl i32 %cond.i14.i340, %220
  %shl5.i22.i348 = shl i32 %and.i20.i346, 16
  %or.i23.i349 = or i32 %shl5.i22.i348, %shl4.i21.i347
  %223 = ptrtoint ptr %idp_sink_en.i337 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %idp_sink_en.i337, align 4
  %call.i24.i350 = call i32 @regmap_write(ptr noundef %cond.i.i321, i32 noundef %224, i32 noundef %or.i23.i349) #6
  %chg_type60 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  %225 = ptrtoint ptr %chg_type60 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %retval.0.i315, ptr %chg_type60, align 4
  br label %sw.bb64

sw.bb64:                                          ; preds = %rockchip_chg_enable_secondary_det.exit351, %do.end.sw.bb64_crit_edge
  %226 = ptrtoint ptr %chg_state8 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 5, ptr %chg_state8, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb64, %do.end.sw.bb66_crit_edge
  %phy_cfg67 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 11
  %227 = ptrtoint ptr %phy_cfg67 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %phy_cfg67, align 4
  %opmode69 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %228, i32 0, i32 4, i32 9
  %enable.i352 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %228, i32 0, i32 4, i32 9, i32 4
  %229 = ptrtoint ptr %enable.i352 to i32
  call void @__asan_load4_noabort(i32 %229)
  %cond.i354 = load i32, ptr %enable.i352, align 4
  %bitstart.i355 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %228, i32 0, i32 4, i32 9, i32 2
  %230 = ptrtoint ptr %bitstart.i355 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %bitstart.i355, align 4
  %shl.neg.i356 = shl nsw i32 -1, %231
  %bitend.i357 = getelementptr inbounds %struct.rockchip_usb2phy_cfg, ptr %228, i32 0, i32 4, i32 9, i32 1
  %232 = ptrtoint ptr %bitend.i357 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bitend.i357, align 4
  %sub1.i358 = sub i32 31, %233
  %shr.i359 = lshr i32 -1, %sub1.i358
  %and.i360 = and i32 %shr.i359, %shl.neg.i356
  %shl4.i361 = shl i32 %cond.i354, %231
  %shl5.i362 = shl i32 %and.i360, 16
  %or.i363 = or i32 %shl5.i362, %shl4.i361
  %234 = ptrtoint ptr %opmode69 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %opmode69, align 4
  %call.i364 = call i32 @regmap_write(ptr noundef %cond.i, i32 noundef %235, i32 noundef %or.i363) #6
  %otg_sm_work = getelementptr i8, ptr %work, i32 100
  call void @rockchip_usb2phy_otg_sm_work(ptr noundef %otg_sm_work)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_chg_detect_work.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_chg_detect_work, %if.then84)) #6
          to label %cleanup [label %if.then84], !srcloc !253

if.then84:                                        ; preds = %sw.bb66
  %236 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %add.ptr, align 4
  %chg_type87 = getelementptr inbounds %struct.rockchip_usb2phy, ptr %5, i32 0, i32 7
  %238 = ptrtoint ptr %chg_type87 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %chg_type87, align 4
  %switch.tableidx = add i32 %239, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %240 = icmp ult i32 %switch.tableidx, 3
  br i1 %240, label %switch.lookup, label %if.then84.chg_to_string.exit_crit_edge

if.then84.chg_to_string.exit_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %chg_to_string.exit

switch.lookup:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.rockchip_chg_detect_work, i32 0, i32 %switch.tableidx
  %241 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %241)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %chg_to_string.exit

chg_to_string.exit:                               ; preds = %switch.lookup, %if.then84.chg_to_string.exit_crit_edge
  %retval.0.i365 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.112, %if.then84.chg_to_string.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_chg_detect_work.__UNIQUE_ID_ddebug305, ptr noundef %237, ptr noundef nonnull @.str.108, ptr noundef nonnull %retval.0.i365) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.else47, %if.then45, %rockchip_chg_enable_secondary_det.exit, %rockchip_chg_enable_primary_det.exit, %property_enabled.exit.sw.epilog_crit_edge, %rockchip_chg_enable_dcd.exit
  %delay.0 = phi i32 [ 4, %rockchip_chg_enable_secondary_det.exit ], [ 0, %if.then45 ], [ 0, %if.else47 ], [ 4, %rockchip_chg_enable_primary_det.exit ], [ 10, %rockchip_chg_enable_dcd.exit ], [ 10, %property_enabled.exit.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %242 = load ptr, ptr @system_wq, align 4
  %call.i.i366 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %242, ptr noundef %work, i32 noundef %delay.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %chg_to_string.exit, %sw.bb66, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_otg_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %otg_sm_work = getelementptr i8, ptr %nb, i32 -204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %otg_sm_work, i32 noundef 200) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !129, !130, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !151, !152, !154, !156, !157, !158, !160, !162, !163, !164, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__initcall__kmod_phy_rockchip_inno_usb2__312_1632_rockchip_usb2phy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_inno_usb2__312_1632_rockchip_usb2phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1632, i32 1}
!2 = !{ptr @__exitcall_rockchip_usb2phy_driver_exit, !1, !"__exitcall_rockchip_usb2phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1634, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1635, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1636, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1628, i32 11}
!12 = !{ptr @rockchip_usb2phy_driver, !13, !"rockchip_usb2phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1625, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1128, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_usb2phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_usb2phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1133, i32 51}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1135, i32 4}
!26 = !{ptr @rockchip_usb2phy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rockchip_usb2phy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1146, i32 34}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1156, i32 37}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1157, i32 3}
!34 = !{ptr @rockchip_usb2phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_usb2phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @rockchip_usb2phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1165, i32 4}
!38 = !{ptr @rockchip_usb2phy_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1194, i32 3}
!41 = !{ptr @rockchip_usb2phy_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rockchip_usb2phy_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1199, i32 37}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1203, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rockchip_usb2phy_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rockchip_usb2phy_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1209, i32 3}
!52 = !{ptr @rockchip_usb2phy_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rockchip_usb2phy_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1219, i32 34}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1220, i32 34}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1225, i32 4}
!60 = !{ptr @rockchip_usb2phy_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rockchip_usb2phy_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1260, i32 7}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1263, i32 4}
!66 = !{ptr @rockchip_usb2phy_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rockchip_usb2phy_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 371, i32 34}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 375, i32 5}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rockchip_usb2phy_extcon_register._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rockchip_usb2phy_extcon_register._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 388, i32 4}
!77 = !{ptr @rockchip_usb2phy_extcon_register._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rockchip_usb2phy_extcon_register._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @rockchip_usb2phy_extcon_cable, !80, !"rockchip_usb2phy_extcon_cable", i1 false, i1 false}
!80 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 69, i32 27}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 329, i32 14}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 333, i32 32}
!85 = !{ptr @rockchip_usb2phy_clkout_ops, !86, !"rockchip_usb2phy_clkout_ops", i1 false, i1 false}
!86 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 305, i32 29}
!87 = !{ptr @rockchip_usb2phy_ops, !88, !"rockchip_usb2phy_ops", i1 false, i1 false}
!88 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 512, i32 29}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 426, i32 4}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rockchip_usb2phy_init.__UNIQUE_ID_ddebug293, !90, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 455, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rockchip_usb2phy_power_on.__UNIQUE_ID_ddebug294, !95, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 482, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rockchip_usb2phy_power_off.__UNIQUE_ID_ddebug295, !99, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!102 = !{ptr @rockchip_usb2phy_host_port_init.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1037, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rockchip_usb2phy_host_port_init.__key.53, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1038, i32 2}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rockchip_usb2phy_host_port_init.__key.55, !106, !"__key", i1 false, i1 false}
!109 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1042, i32 3}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rockchip_usb2phy_host_port_init._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @rockchip_usb2phy_host_port_init._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 815, i32 3}
!117 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug306, !116, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 829, i32 4}
!121 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug307, !120, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 835, i32 4}
!124 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug308, !123, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!125 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug309, !126, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!126 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 840, i32 4}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 845, i32 4}
!129 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug310, !128, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 864, i32 3}
!132 = !{ptr @rockchip_usb2phy_sm_work.__UNIQUE_ID_ddebug311, !131, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 965, i32 47}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 967, i32 4}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rockchip_usb2phy_port_irq_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rockchip_usb2phy_port_irq_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 976, i32 4}
!142 = !{ptr @rockchip_usb2phy_port_irq_init._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rockchip_usb2phy_port_irq_init._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 986, i32 52}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 992, i32 8}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 995, i32 5}
!150 = !{ptr @rockchip_usb2phy_port_irq_init._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rockchip_usb2phy_port_irq_init._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1000, i32 52}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1002, i32 5}
!156 = !{ptr @rockchip_usb2phy_port_irq_init._entry.77, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @rockchip_usb2phy_port_irq_init._entry_ptr.79, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1011, i32 8}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1014, i32 5}
!162 = !{ptr @rockchip_usb2phy_port_irq_init._entry.81, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rockchip_usb2phy_port_irq_init._entry_ptr.83, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @rockchip_usb2phy_otg_sm_work.cable, !165, !"cable", i1 false, i1 false}
!165 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 526, i32 22}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 536, i32 2}
!168 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug296, !167, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 547, i32 4}
!172 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug297, !171, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 552, i32 4}
!175 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug298, !174, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 560, i32 6}
!178 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug299, !177, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 568, i32 6}
!181 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug300, !180, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 575, i32 6}
!184 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug301, !183, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 610, i32 4}
!187 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug302, !186, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 621, i32 4}
!190 = !{ptr @rockchip_usb2phy_otg_sm_work.__UNIQUE_ID_ddebug303, !189, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!191 = !{ptr @rockchip_usb2phy_otg_port_init.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1079, i32 2}
!193 = !{ptr @rockchip_usb2phy_otg_port_init.__key.93, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1088, i32 2}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rockchip_usb2phy_otg_port_init.__key.95, !194, !"__key", i1 false, i1 false}
!197 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @rockchip_usb2phy_otg_port_init.__key.97, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1089, i32 2}
!200 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @rockchip_usb2phy_otg_port_init.__key.99, !199, !"__key", i1 false, i1 false}
!202 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1093, i32 3}
!205 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @rockchip_usb2phy_otg_port_init._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @rockchip_usb2phy_otg_port_init._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1103, i32 4}
!210 = !{ptr @rockchip_usb2phy_otg_port_init._entry.103, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @rockchip_usb2phy_otg_port_init._entry_ptr.105, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 688, i32 2}
!214 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @rockchip_chg_detect_work.__UNIQUE_ID_ddebug304, !213, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 760, i32 3}
!218 = !{ptr @rockchip_chg_detect_work.__UNIQUE_ID_ddebug305, !217, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 638, i32 10}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 640, i32 10}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 642, i32 10}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 644, i32 10}
!227 = !{ptr @rockchip_usb2phy_dt_match, !228, !"rockchip_usb2phy_dt_match", i1 false, i1 false}
!228 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1612, i32 34}
!229 = !{ptr @rk3328_phy_cfgs, !230, !"rk3328_phy_cfgs", i1 false, i1 false}
!230 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1383, i32 42}
!231 = !{ptr @rk3228_phy_cfgs, !232, !"rk3228_phy_cfgs", i1 false, i1 false}
!232 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1281, i32 42}
!233 = !{ptr @rk3308_phy_cfgs, !234, !"rk3308_phy_cfgs", i1 false, i1 false}
!234 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1340, i32 42}
!235 = !{ptr @rk3366_phy_cfgs, !236, !"rk3366_phy_cfgs", i1 false, i1 false}
!236 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1426, i32 42}
!237 = !{ptr @rk3399_phy_cfgs, !238, !"rk3399_phy_cfgs", i1 false, i1 false}
!238 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1445, i32 42}
!239 = !{ptr @rk3568_phy_cfgs, !240, !"rk3568_phy_cfgs", i1 false, i1 false}
!240 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1507, i32 42}
!241 = !{ptr @rv1108_phy_cfgs, !242, !"rv1108_phy_cfgs", i1 false, i1 false}
!242 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-usb2.c", i32 1570, i32 42}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"auto-init"}
!253 = !{i64 2148766529, i64 2148766534, i64 2148766547, i64 2148766591, i64 2148766625, i64 2148766646}
!254 = !{i8 0, i8 2}
