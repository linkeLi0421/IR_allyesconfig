; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-meson-g12a.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-meson-g12a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dwc3_meson_g12a_drvdata = type { i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dwc3_meson_g12a = type { ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, i32, i32, ptr, %struct.usb_role_switch_desc, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@__initcall__kmod_dwc3_meson_g12a__328_982_dwc3_meson_g12a_driver_init6 = internal global ptr @dwc3_meson_g12a_driver_init, section ".initcall6.init", align 4
@dwc3_meson_g12a_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_meson_g12a_probe, ptr @dwc3_meson_g12a_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc3_meson_g12a_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_meson_g12a_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_meson_g12a_driver_exit = internal global ptr @dwc3_meson_g12a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file329 = internal constant [54 x i8] c"dwc3_meson_g12a.file=drivers/usb/dwc3/dwc3-meson-g12a\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [31 x i8] c"dwc3_meson_g12a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [62 x i8] c"dwc3_meson_g12a.description=Amlogic Meson G12A USB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author332 = internal constant [64 x i8] c"dwc3_meson_g12a.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc3-meson-g12a\00", [16 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxl_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxm_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @g12a_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a1_drvdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_meson_g12a_runtime_suspend, ptr @dwc3_meson_g12a_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get device reset, err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_meson_g12a_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/dwc3/dwc3-meson-g12a.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_probe._entry_ptr = internal global ptr @dwc3_meson_g12a_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_get_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 470, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB2 ports: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_meson_g12a_get_phys\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_get_phys._entry_ptr = internal global ptr @dwc3_meson_g12a_get_phys._entry, section ".printk_index", align 4
@dwc3_meson_g12a_get_phys._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 471, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB3 ports: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_get_phys._entry_ptr.13 = internal global ptr @dwc3_meson_g12a_get_phys._entry.11, section ".printk_index", align 4
@dwc3_meson_g12a_otg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 615, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to switch OTG mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_meson_g12a_otg_init\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_otg_init._entry_ptr = internal global ptr @dwc3_meson_g12a_otg_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snps,dwc3\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snps,dwc2\00", [22 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_otg_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.4, i32 630, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register Role Switch\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_otg_init._entry_ptr.21 = internal global ptr @dwc3_meson_g12a_otg_init._entry.19, section ".printk_index", align 4
@dwc3_meson_g12a_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.4, i32 558, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc3_meson_g12a_irq_thread\00", [37 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_irq_thread._entry_ptr = internal global ptr @dwc3_meson_g12a_irq_thread._entry, section ".printk_index", align 4
@dwc3_meson_g12a_otg_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 497, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"switching to Host Mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc3_meson_g12a_otg_mode_set\00", [35 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_otg_mode_set._entry_ptr = internal global ptr @dwc3_meson_g12a_otg_mode_set._entry, section ".printk_index", align 4
@dwc3_meson_g12a_otg_mode_set._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 499, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switching to Device Mode\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_otg_mode_set._entry_ptr.27 = internal global ptr @dwc3_meson_g12a_otg_mode_set._entry.25, section ".printk_index", align 4
@dwc3_meson_g12a_role_set.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dwc3_meson_g12a_role_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 537, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Broken manual OTG switch\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_meson_g12a_role_set\00", [39 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_role_set._entry_ptr = internal global ptr @dwc3_meson_g12a_role_set._entry, section ".printk_index", align 4
@gxl_drvdata = internal global { %struct.dwc3_meson_g12a_drvdata, [56 x i8] } { %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, ptr @meson_gxl_clocks, i32 1, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_gxl_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, [56 x i8] zeroinitializer }, align 32
@gxm_drvdata = internal global { %struct.dwc3_meson_g12a_drvdata, [56 x i8] } { %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, ptr @meson_gxl_clocks, i32 1, ptr @meson_gxm_phy_names, i32 3, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_gxl_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, [56 x i8] zeroinitializer }, align 32
@axg_drvdata = internal global { %struct.dwc3_meson_g12a_drvdata, [56 x i8] } { %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, ptr @meson_gxl_clocks, i32 2, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, [56 x i8] zeroinitializer }, align 32
@g12a_drvdata = internal global { %struct.dwc3_meson_g12a_drvdata, [56 x i8] } { %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, ptr @meson_g12a_clocks, i32 1, ptr @meson_g12a_phy_names, i32 3, ptr @dwc3_meson_g12a_setup_regmaps, ptr @dwc3_meson_g12a_usb2_init_phy, ptr @dwc3_meson_g12a_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr null }, [56 x i8] zeroinitializer }, align 32
@a1_drvdata = internal global { %struct.dwc3_meson_g12a_drvdata, [56 x i8] } { %struct.dwc3_meson_g12a_drvdata { i8 0, i8 0, ptr @meson_a1_clocks, i32 3, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_g12a_setup_regmaps, ptr @dwc3_meson_g12a_usb2_init_phy, ptr @dwc3_meson_g12a_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr null }, [56 x i8] zeroinitializer }, align 32
@meson_gxl_clocks = internal global { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.30, ptr null }, %struct.clk_bulk_data { ptr @.str.31, ptr null }], [16 x i8] zeroinitializer }, align 32
@meson_a1_phy_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb2-phy0\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb2-phy1\00", [22 x i8] zeroinitializer }, align 32
@dwc3_meson_gxl_setup_regmaps._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phy_meson_g12a_usb_glue_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.35, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"dwc3_meson_g12a:640:(&phy_meson_g12a_usb_glue_regmap_conf)->lock\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-glue\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_gxm_phy_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb2-phy2\00", [22 x i8] zeroinitializer }, align 32
@meson_g12a_clocks = internal global { [1 x %struct.clk_bulk_data], [24 x i8] } zeroinitializer, align 32
@meson_g12a_phy_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb3-phy0\00", [22 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_setup_regmaps._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"dwc3_meson_g12a:651:(&phy_meson_g12a_usb_glue_regmap_conf)->lock\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u2p-%d\00", [25 x i8] zeroinitializer }, align 32
@dwc3_meson_g12a_setup_regmaps._key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dwc3_meson_g12a:674:(&u2p_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@meson_a1_clocks = internal global { [3 x %struct.clk_bulk_data], [40 x i8] } { [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.30, ptr null }, %struct.clk_bulk_data { ptr @.str.43, ptr null }, %struct.clk_bulk_data { ptr @.str.44, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xtal_usb_ctrl\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"dwc3_meson_g12a_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 972, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 976, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"dwc3_meson_g12a_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 947, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"dwc3_meson_g12a_dev_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 941, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 725, i32 48 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 748, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 464, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 470, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 471, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 615, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 621, i32 9 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 622, i32 57 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 630, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 558, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 497, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 499, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 537, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"gxl_drvdata\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 191, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"gxm_drvdata\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 205, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"axg_drvdata\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 219, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"g12a_drvdata\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 232, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"a1_drvdata\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 244, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"meson_gxl_clocks\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 104, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"meson_a1_phy_names\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 136, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 105, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 106, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 137, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 137, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant [36 x i8] c"phy_meson_g12a_usb_glue_regmap_conf\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 442, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 639, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 443, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 338, i32 44 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"meson_gxm_phy_names\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 119, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 120, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"meson_g12a_clocks\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 109, i32 29 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"meson_g12a_phy_names\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 123, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 124, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 649, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 668, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 672, i32 25 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"meson_a1_clocks\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 113, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 115, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [38 x i8] c"../drivers/usb/dwc3/dwc3-meson-g12a.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 116, i32 10 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_dwc3_meson_g12a_driver_exit, ptr @__initcall__kmod_dwc3_meson_g12a__328_982_dwc3_meson_g12a_driver_init6, ptr @dwc3_meson_g12a_driver_exit, ptr @dwc3_meson_g12a_get_phys._entry, ptr @dwc3_meson_g12a_get_phys._entry.11, ptr @dwc3_meson_g12a_get_phys._entry_ptr, ptr @dwc3_meson_g12a_get_phys._entry_ptr.13, ptr @dwc3_meson_g12a_irq_thread._entry, ptr @dwc3_meson_g12a_irq_thread._entry_ptr, ptr @dwc3_meson_g12a_otg_init._entry, ptr @dwc3_meson_g12a_otg_init._entry.19, ptr @dwc3_meson_g12a_otg_init._entry_ptr, ptr @dwc3_meson_g12a_otg_init._entry_ptr.21, ptr @dwc3_meson_g12a_otg_mode_set._entry, ptr @dwc3_meson_g12a_otg_mode_set._entry.25, ptr @dwc3_meson_g12a_otg_mode_set._entry_ptr, ptr @dwc3_meson_g12a_otg_mode_set._entry_ptr.27, ptr @dwc3_meson_g12a_probe._entry, ptr @dwc3_meson_g12a_probe._entry_ptr, ptr @dwc3_meson_g12a_role_set._entry, ptr @dwc3_meson_g12a_role_set._entry_ptr, ptr @dwc3_meson_g12a_driver, ptr @.str, ptr @dwc3_meson_g12a_match, ptr @dwc3_meson_g12a_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @gxl_drvdata, ptr @gxm_drvdata, ptr @axg_drvdata, ptr @g12a_drvdata, ptr @a1_drvdata, ptr @meson_gxl_clocks, ptr @meson_a1_phy_names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dwc3_meson_gxl_setup_regmaps._key, ptr @phy_meson_g12a_usb_glue_regmap_conf, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @meson_gxm_phy_names, ptr @.str.37, ptr @meson_g12a_clocks, ptr @meson_g12a_phy_names, ptr @.str.38, ptr @dwc3_meson_g12a_setup_regmaps._key, ptr @.str.39, ptr @.str.40, ptr @dwc3_meson_g12a_setup_regmaps._key.41, ptr @.str.42, ptr @meson_a1_clocks, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_get_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_get_phys._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_otg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_otg_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_otg_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_otg_mode_set._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_role_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxl_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxm_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a1_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_a1_phy_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_gxl_setup_regmaps._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_g12a_usb_glue_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxm_phy_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_g12a_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_g12a_phy_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_setup_regmaps._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_meson_g12a_setup_regmaps._key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_a1_clocks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_meson_g12a_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_meson_g12a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_meson_g12a_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %drvdata, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %call10 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %vbus, align 4
  %cmp.i234 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then13, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end6
  %cmp = icmp eq ptr %call10, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vbus, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end6.if.end21_crit_edge
  %7 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drvdata, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clks, align 4
  %call24 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %10, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  %num_clks29 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %num_clks29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_clks29, align 4
  %clks31 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %clks31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clks31, align 4
  %call.i235 = tail call i32 @clk_bulk_prepare(i32 noundef %16, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool.not.i = icmp eq i32 %call.i235, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %16, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef %16, ptr noundef %18) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i236 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i236, ptr %reset, align 4
  %cmp.i237 = icmp ugt ptr %call.i236, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i236 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %21) #10
  br label %err_disable_clks

if.end42:                                         ; preds = %if.end35
  %call44 = tail call i32 @reset_control_reset(ptr noundef %call.i236) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.err_disable_clks_crit_edge

if.end42.err_disable_clks_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

if.end47:                                         ; preds = %if.end42
  %call48 = tail call fastcc i32 @dwc3_meson_g12a_get_phys(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.err_rearm_crit_edge

if.end47.err_rearm_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rearm

if.end51:                                         ; preds = %if.end47
  %22 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drvdata, align 4
  %setup_regmaps = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %setup_regmaps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_regmaps, align 4
  %call53 = tail call i32 %25(ptr noundef nonnull %call.i, ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_rearm_crit_edge

if.end51.err_rearm_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rearm

if.end56:                                         ; preds = %if.end51
  %26 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus, align 4
  %tobool58.not = icmp eq ptr %27, null
  br i1 %tobool58.not, label %if.end56.if.end65_crit_edge, label %if.then59

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then59:                                        ; preds = %if.end56
  %call61 = tail call i32 @regulator_enable(ptr noundef nonnull %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.if.end65_crit_edge, label %if.then59.err_rearm_crit_edge

if.then59.err_rearm_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rearm

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %call66 = tail call i32 @usb_get_dr_mode(ptr noundef %dev1) #7
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %otg_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call66, ptr %otg_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call66)
  %cmp68 = icmp eq i32 %call66, 2
  %spec.select = select i1 %cmp68, i32 6, i32 1
  %29 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %29, align 4
  %31 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drvdata, align 4
  %usb_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %usb_init to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_init, align 4
  %call73 = tail call i32 %34(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.body.preheader, label %if.end65.err_disable_regulator_crit_edge

if.end65.err_disable_regulator_crit_edge:         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_regulator

for.body.preheader:                               ; preds = %if.end65
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 4, i32 0
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %call78 = tail call i32 @phy_init(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.cond, label %for.body.preheader.err_disable_regulator_crit_edge

for.body.preheader.err_disable_regulator_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_regulator

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1, align 4
  %call78.1 = tail call i32 @phy_init(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.1)
  %tobool79.not.1 = icmp eq i32 %call78.1, 0
  br i1 %tobool79.not.1, label %for.cond.1, label %for.cond.err_disable_regulator_crit_edge

for.cond.err_disable_regulator_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_regulator

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dwc3_meson_g12a, ptr %call.i, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.2, align 4
  %call78.2 = tail call i32 @phy_init(ptr noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.2)
  %tobool79.not.2 = icmp eq i32 %call78.2, 0
  br i1 %tobool79.not.2, label %for.cond.2, label %for.cond.1.err_disable_regulator_crit_edge

for.cond.1.err_disable_regulator_crit_edge:       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_regulator

for.cond.2:                                       ; preds = %for.cond.1
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %call87 = tail call i32 @phy_power_on(ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.cond82, label %for.cond.2.err_phys_exit_crit_edge

for.cond.2.err_phys_exit_crit_edge:               ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_exit

for.cond82:                                       ; preds = %for.cond.2
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.1, align 4
  %call87.1 = tail call i32 @phy_power_on(ptr noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.1)
  %tobool88.not.1 = icmp eq i32 %call87.1, 0
  br i1 %tobool88.not.1, label %for.cond82.1, label %for.cond82.err_phys_exit_crit_edge

for.cond82.err_phys_exit_crit_edge:               ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_exit

for.cond82.1:                                     ; preds = %for.cond82
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.2, align 4
  %call87.2 = tail call i32 @phy_power_on(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.2)
  %tobool88.not.2 = icmp eq i32 %call87.2, 0
  br i1 %tobool88.not.2, label %for.cond82.2, label %for.cond82.1.err_phys_exit_crit_edge

for.cond82.1.err_phys_exit_crit_edge:             ; preds = %for.cond82.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_exit

for.cond82.2:                                     ; preds = %for.cond82.1
  %47 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drvdata, align 4
  %usb_post_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %usb_post_init to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_post_init, align 4
  %tobool95.not = icmp eq ptr %50, null
  br i1 %tobool95.not, label %for.cond82.2.if.end103_crit_edge, label %if.then96

for.cond82.2.if.end103_crit_edge:                 ; preds = %for.cond82.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then96:                                        ; preds = %for.cond82.2
  %call99 = tail call i32 %50(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then96.if.end103_crit_edge, label %if.then96.err_phys_power_crit_edge

if.then96.err_phys_power_crit_edge:               ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_power

if.then96.if.end103_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end103:                                        ; preds = %if.then96.if.end103_crit_edge, %for.cond82.2.if.end103_crit_edge
  %call104 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_phys_power_crit_edge

if.end103.err_phys_power_crit_edge:               ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_power

if.end107:                                        ; preds = %if.end103
  %call108 = tail call fastcc i32 @dwc3_meson_g12a_otg_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.err_phys_power_crit_edge

if.end107.err_phys_power_crit_edge:               ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phys_power

if.end111:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %call.i238 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i239 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  br label %cleanup

err_phys_power:                                   ; preds = %if.end107.err_phys_power_crit_edge, %if.end103.err_phys_power_crit_edge, %if.then96.err_phys_power_crit_edge
  %ret.0 = phi i32 [ %call99, %if.then96.err_phys_power_crit_edge ], [ %call104, %if.end103.err_phys_power_crit_edge ], [ %call108, %if.end107.err_phys_power_crit_edge ]
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %call119 = tail call i32 @phy_power_off(ptr noundef %52) #7
  %53 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1, align 4
  %call119.1 = tail call i32 @phy_power_off(ptr noundef %54) #7
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.2, align 4
  %call119.2 = tail call i32 @phy_power_off(ptr noundef %56) #7
  br label %err_phys_exit

err_phys_exit:                                    ; preds = %err_phys_power, %for.cond82.1.err_phys_exit_crit_edge, %for.cond82.err_phys_exit_crit_edge, %for.cond.2.err_phys_exit_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_phys_power ], [ %call87, %for.cond.2.err_phys_exit_crit_edge ], [ %call87.1, %for.cond82.err_phys_exit_crit_edge ], [ %call87.2, %for.cond82.1.err_phys_exit_crit_edge ]
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %call128 = tail call i32 @phy_exit(ptr noundef %58) #7
  %59 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.1, align 4
  %call128.1 = tail call i32 @phy_exit(ptr noundef %60) #7
  %61 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.2, align 4
  %call128.2 = tail call i32 @phy_exit(ptr noundef %62) #7
  br label %err_disable_regulator

err_disable_regulator:                            ; preds = %err_phys_exit, %for.cond.1.err_disable_regulator_crit_edge, %for.cond.err_disable_regulator_crit_edge, %for.body.preheader.err_disable_regulator_crit_edge, %if.end65.err_disable_regulator_crit_edge
  %ret.2 = phi i32 [ %call73, %if.end65.err_disable_regulator_crit_edge ], [ %ret.1, %err_phys_exit ], [ %call78, %for.body.preheader.err_disable_regulator_crit_edge ], [ %call78.1, %for.cond.err_disable_regulator_crit_edge ], [ %call78.2, %for.cond.1.err_disable_regulator_crit_edge ]
  %63 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vbus, align 4
  %tobool133.not = icmp eq ptr %64, null
  br i1 %tobool133.not, label %err_disable_regulator.err_rearm_crit_edge, label %if.then134

err_disable_regulator.err_rearm_crit_edge:        ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rearm

if.then134:                                       ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #9
  %call136 = tail call i32 @regulator_disable(ptr noundef nonnull %64) #7
  br label %err_rearm

err_rearm:                                        ; preds = %if.then134, %err_disable_regulator.err_rearm_crit_edge, %if.then59.err_rearm_crit_edge, %if.end51.err_rearm_crit_edge, %if.end47.err_rearm_crit_edge
  %ret.3 = phi i32 [ %call48, %if.end47.err_rearm_crit_edge ], [ %call53, %if.end51.err_rearm_crit_edge ], [ %call61, %if.then59.err_rearm_crit_edge ], [ %ret.2, %if.then134 ], [ %ret.2, %err_disable_regulator.err_rearm_crit_edge ]
  %65 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reset, align 4
  %call139 = tail call i32 @reset_control_rearm(ptr noundef %66) #7
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %err_rearm, %if.end42.err_disable_clks_crit_edge, %if.then39
  %ret.4 = phi i32 [ %21, %if.then39 ], [ %call44, %if.end42.err_disable_clks_crit_edge ], [ %ret.3, %err_rearm ]
  %67 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drvdata, align 4
  %num_clks141 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %num_clks141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_clks141, align 4
  %clks143 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %clks143 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clks143, align 4
  tail call void @clk_bulk_disable(i32 noundef %70, ptr noundef %72) #7
  tail call void @clk_bulk_unprepare(i32 noundef %70, ptr noundef %72) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %if.end111, %if.then3.i, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %ret.4, %err_disable_clks ], [ 0, %if.end111 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ -517, %if.then13.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i235, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %role_switch = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %role_switch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_switch, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @of_platform_depopulate(ptr noundef %dev1) #7
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @phy_power_off(ptr noundef %9) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @phy_exit(ptr noundef %11) #7
  %arrayidx.1 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %call2.1 = tail call i32 @phy_power_off(ptr noundef %13) #7
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %call5.1 = tail call i32 @phy_exit(ptr noundef %15) #7
  %arrayidx.2 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %call2.2 = tail call i32 @phy_power_off(ptr noundef %17) #7
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %call5.2 = tail call i32 @phy_exit(ptr noundef %19) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !139
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #7
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  %call7 = tail call i32 @reset_control_rearm(ptr noundef %22) #7
  %23 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %26, ptr noundef %28) #7
  tail call void @clk_bulk_unprepare(i32 noundef %26, ptr noundef %28) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_get_phys(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %num_phys46 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_phys46 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47 = icmp sgt i32 %3, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %usb3_ports = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 8
  %usb2_ports = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %16, %for.inc.for.body_crit_edge ]
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %for.inc.for.body_crit_edge ]
  %phy_names = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %phy_names to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_names, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.048
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call = tail call ptr @devm_phy_optional_get(ptr noundef %10, ptr noundef %8) #7
  %arrayidx2 = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 4, i32 %i.048
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call ptr @strstr(ptr noundef %8, ptr noundef nonnull @.str.7)
  %tobool14.not = icmp eq ptr %call13, null
  %usb2_ports.usb3_ports = select i1 %tobool14.not, ptr %usb2_ports, ptr %usb3_ports
  %13 = ptrtoint ptr %usb2_ports.usb3_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb2_ports.usb3_ports, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %usb2_ports.usb3_ports, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %inc18 = add nuw nsw i32 %i.048, 1
  %15 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata, align 4
  %num_phys = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc18, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %usb2_ports20 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 7
  %21 = ptrtoint ptr %usb2_ports20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb2_ports20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %22) #10
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %usb3_ports25 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 8
  %25 = ptrtoint ptr %usb3_ports25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb3_ports25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, i32 noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8
  %retval.0 = phi i32 [ %12, %if.then8 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_otg_init(ptr noundef %pdev, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %otg_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %otg_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then2, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then2:                                         ; preds = %if.end
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 20, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call8 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call3, ptr noundef null, ptr noundef nonnull @dwc3_meson_g12a_irq_thread, i32 noundef 8192, ptr noundef %9, ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %otg_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %otg_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp14 = icmp eq i32 %.pr, 3
  br i1 %cmp14, label %if.then15, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg.i, align 4, !annotation !141
  %12 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i72 = call i32 @regmap_read(ptr noundef %13, i32 noundef 20, ptr noundef nonnull %reg.i) #7
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %17)
  %cmp17.not = icmp eq i32 %..i, %17
  br i1 %cmp17.not, label %if.then15.if.end24_crit_edge, label %if.then18

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then18:                                        ; preds = %if.then15
  %call19 = call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %priv, i32 noundef %..i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %do.end

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then18.if.end24_crit_edge, %if.then15.if.end24_crit_edge, %if.end12.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %call.i73 = call ptr @of_get_compatible_child(ptr noundef %19, ptr noundef nonnull @.str.17) #7
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %if.end24.dwc3_meson_g12_find_child.exit_crit_edge, label %if.end.i

if.end24.dwc3_meson_g12_find_child.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc3_meson_g12_find_child.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call ptr @of_find_device_by_node(ptr noundef nonnull %call.i73) #7
  call void @of_node_put(ptr noundef nonnull %call.i73) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3
  %spec.select.i = select i1 %tobool2.not.i, ptr null, ptr %dev5.i
  br label %dwc3_meson_g12_find_child.exit

dwc3_meson_g12_find_child.exit:                   ; preds = %if.end.i, %if.end24.dwc3_meson_g12_find_child.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end24.dwc3_meson_g12_find_child.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %switch_desc = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10
  %usb2_port = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %usb2_port to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %usb2_port, align 4
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call.i76 = call ptr @of_get_compatible_child(ptr noundef %22, ptr noundef nonnull @.str.18) #7
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %dwc3_meson_g12_find_child.exit.dwc3_meson_g12_find_child.exit84_crit_edge, label %if.end.i82

dwc3_meson_g12_find_child.exit.dwc3_meson_g12_find_child.exit84_crit_edge: ; preds = %dwc3_meson_g12_find_child.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc3_meson_g12_find_child.exit84

if.end.i82:                                       ; preds = %dwc3_meson_g12_find_child.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i78 = call ptr @of_find_device_by_node(ptr noundef nonnull %call.i76) #7
  call void @of_node_put(ptr noundef nonnull %call.i76) #7
  %tobool2.not.i79 = icmp eq ptr %call1.i78, null
  %dev5.i80 = getelementptr inbounds %struct.platform_device, ptr %call1.i78, i32 0, i32 3
  %spec.select.i81 = select i1 %tobool2.not.i79, ptr null, ptr %dev5.i80
  br label %dwc3_meson_g12_find_child.exit84

dwc3_meson_g12_find_child.exit84:                 ; preds = %if.end.i82, %dwc3_meson_g12_find_child.exit.dwc3_meson_g12_find_child.exit84_crit_edge
  %retval.0.i83 = phi ptr [ null, %dwc3_meson_g12_find_child.exit.dwc3_meson_g12_find_child.exit84_crit_edge ], [ %spec.select.i81, %if.end.i82 ]
  %udc = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %udc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i83, ptr %udc, align 4
  %allow_userspace_control = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 6
  %24 = ptrtoint ptr %allow_userspace_control to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %allow_userspace_control, align 4
  %set = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 4
  %25 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dwc3_meson_g12a_role_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 5
  %26 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dwc3_meson_g12a_role_get, ptr %get, align 4
  %driver_data = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 10, i32 7
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %priv, ptr %driver_data, align 4
  %call33 = call ptr @usb_role_switch_register(ptr noundef %dev1, ptr noundef %switch_desc) #7
  %role_switch = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 11
  %28 = ptrtoint ptr %role_switch to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %role_switch, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end39, label %dwc3_meson_g12_find_child.exit84.cleanup_crit_edge

dwc3_meson_g12_find_child.exit84.cleanup_crit_edge: ; preds = %dwc3_meson_g12_find_child.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %dwc3_meson_g12_find_child.exit84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %dwc3_meson_g12_find_child.exit84.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ 0, %do.end39 ], [ 0, %dwc3_meson_g12_find_child.exit84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !141
  %usb_glue_regmap.i = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %usb_glue_regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_glue_regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %reg.i) #7
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %6)
  %cmp.not = icmp eq i32 %..i, %6
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %data, i32 noundef %..i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.14) #10
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %9 = ptrtoint ptr %usb_glue_regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_glue_regmap.i, align 4
  %call.i10 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 20, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %priv, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  br i1 %cmp, label %if.end7.thread, label %if.end7

if.end7:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.26) #10
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 9
  %8 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end20_crit_edge, label %if.then9

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end7.thread:                                   ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.23) #10
  %vbus43 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 9
  %10 = ptrtoint ptr %vbus43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus43, align 4
  %tobool8.not44 = icmp eq ptr %11, null
  br i1 %tobool8.not44, label %if.end7.thread.if.end20_crit_edge, label %if.end7.thread.if.else13_crit_edge

if.end7.thread.if.else13_crit_edge:               ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13

if.end7.thread.if.end20_crit_edge:                ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mode)
  %cmp10 = icmp eq i32 %mode, 6
  br i1 %cmp10, label %if.then11, label %if.then9.if.else13_crit_edge

if.then9.if.else13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %9) #7
  br label %if.end16

if.else13:                                        ; preds = %if.then9.if.else13_crit_edge, %if.end7.thread.if.else13_crit_edge
  %12 = phi ptr [ %9, %if.then9.if.else13_crit_edge ], [ %11, %if.end7.thread.if.else13_crit_edge ]
  %call15 = tail call i32 @regulator_enable(ptr noundef nonnull %12) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11
  %ret.0 = phi i32 [ %call, %if.then11 ], [ %call15, %if.else13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end7.thread.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 6
  %13 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mode, ptr %otg_phy_mode, align 4
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %set_phy_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_phy_mode, align 4
  %call22 = tail call i32 %17(ptr noundef %priv, i32 noundef 1, i32 noundef %mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %priv, i32 noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_role_set(ptr noundef %sw, i32 noundef %role) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp = icmp eq i32 %role, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp1 = icmp eq i32 %role, 1
  %cond = select i1 %cmp1, i32 1, i32 6
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %1)
  %cmp2 = icmp eq i32 %cond, %1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %otg_phy_host_port_disable = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %otg_phy_host_port_disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %otg_phy_host_port_disable, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end4.if.end12_crit_edge, label %do.body

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.body:                                          ; preds = %if.end4
  %.b20 = load i1, ptr @dwc3_meson_g12a_role_set.__print_once, align 1
  br i1 %.b20, label %do.body.if.end12_crit_edge, label %if.then7

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dwc3_meson_g12a_role_set.__print_once, align 1
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.28) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.body.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %call13 = tail call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %call, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_role_get(ptr noundef %sw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #7
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr nocapture noundef readonly %priv, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mode)
  %cmp = icmp eq i32 %mode, 6
  %otg_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %otg_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %otg_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1.not = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %otg_phy_host_port_disable = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %otg_phy_host_port_disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %otg_phy_host_port_disable, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4, i32 noundef 12288, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %usb_glue_regmap11 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %usb_glue_regmap11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_glue_regmap11, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end31

if.else:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.else.if.end26_crit_edge, label %land.lhs.true19

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true19:                                  ; preds = %if.else
  %drvdata20 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %drvdata20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata20, align 4
  %otg_phy_host_port_disable21 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %otg_phy_host_port_disable21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %otg_phy_host_port_disable21, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %land.lhs.true19.if.end26_crit_edge, label %if.then23

land.lhs.true19.if.end26_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %usb_glue_regmap24 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %usb_glue_regmap24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_glue_regmap24, align 4
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 4, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 500) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %usb_glue_regmap27 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end
  %usb_glue_regmap27.sink50 = phi ptr [ %usb_glue_regmap27, %if.end26 ], [ %usb_glue_regmap11, %if.end ]
  %.sink49 = phi i32 [ -2147483648, %if.end26 ], [ 1610612736, %if.end ]
  %.sink48 = phi i32 [ 0, %if.end26 ], [ 2, %if.end ]
  %16 = ptrtoint ptr %usb_glue_regmap27.sink50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_glue_regmap27.sink50, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef %.sink49, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %usb_glue_regmap27.sink50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_glue_regmap27.sink50, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef 2, i32 noundef %.sink48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_setup_regmaps(ptr nocapture noundef %priv, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %1, ptr noundef null, ptr noundef %base, ptr noundef nonnull @phy_meson_g12a_usb_glue_regmap_conf, ptr noundef nonnull @dwc3_meson_gxl_setup_regmaps._key, ptr noundef nonnull @.str.34) #7
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %usb_glue_regmap, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb2_init_phy(ptr noundef %priv, i32 noundef %i, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp = icmp eq i32 %i, 1
  %cond = select i1 %cmp, i32 6, i32 1
  %call = tail call i32 %3(ptr noundef %priv, i32 noundef %i, i32 noundef %cond) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_set_phy_mode(ptr nocapture noundef readonly %priv, i32 noundef %i, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 4, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_set_mode_ext(ptr noundef %1, i32 noundef %mode, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb_init(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %priv, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb_post_init(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_phy_mode, align 4
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %otg_phy_mode, align 4
  %call = tail call i32 %3(ptr noundef %priv, i32 noundef 1, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %otg_phy_mode, align 4
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %priv, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %priv, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %num_phys21.i = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_phys21.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.i = icmp sgt i32 %3, 0
  br i1 %cmp22.i, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi ptr [ %14, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 4, i32 %i.023.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %phy_names.i = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %phy_names.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_names.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %8, i32 %i.023.i
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call ptr @strstr(ptr noundef %10, ptr noundef nonnull @.str.36) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i
  %usb2_init_phy.i = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %4, i32 0, i32 7
  %11 = ptrtoint ptr %usb2_init_phy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb2_init_phy.i, align 4
  %call7.i = tail call i32 %12(ptr noundef %priv, i32 noundef %i.023.i, i32 noundef %mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.for.inc.i_crit_edge, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %13 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata.i, align 4
  %num_phys.i = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 4, i32 noundef 33030144, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 20, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 20, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %23 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 20, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %usb3_ports = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 8
  %25 = ptrtoint ptr %usb3_ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb3_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %if.end.if.end38_crit_edge, label %if.then37

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 12, i32 noundef 8206, i32 noundef 8197, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #7
  %30 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i55.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8, i32 noundef 66060288, i32 noundef 22020096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i56.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8, i32 noundef -67108864, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #7
  %35 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i57.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 4, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_glue_regmap, align 4
  %call.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 4, i32 noundef -33554432, i32 noundef -33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end.if.end38_crit_edge
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %priv, i32 noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call7.i, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_usb_init(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %otg_phy_mode, align 4
  %call = tail call fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %priv, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_setup_regmaps(ptr nocapture noundef %priv, ptr noundef %base) #2 align 64 {
entry:
  %u2p_regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 128
  %call = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %1, ptr noundef null, ptr noundef %add.ptr, ptr noundef nonnull @phy_meson_g12a_usb_glue_regmap_conf, ptr noundef nonnull @dwc3_meson_g12a_setup_regmaps._key, ptr noundef nonnull @.str.39) #7
  %usb_glue_regmap = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %usb_glue_regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %usb_glue_regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  %num_phys50 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %num_phys50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_phys50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp51 = icmp sgt i32 %6, 0
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.preheader.cleanup28_crit_edge

for.cond.preheader.cleanup28_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %u2p_regmap_config, i32 0, i32 1
  %8 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %u2p_regmap_config, i32 0, i32 2
  %9 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %u2p_regmap_config, i32 0, i32 4
  %10 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %u2p_regmap_config, i32 0, i32 21
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call to i32
  br label %cleanup28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi ptr [ %4, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %u2p_regmap_config) #7
  %13 = call ptr @memset(ptr %u2p_regmap_config, i32 0, i32 172)
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %7, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %8, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %9, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %10, align 4
  %phy_names = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %12, i32 0, i32 4
  %18 = ptrtoint ptr %phy_names to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_names, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.052
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call6 = call ptr @strstr(ptr noundef %21, ptr noundef nonnull @.str.36)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %call10 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %23, i32 noundef 3264, ptr noundef nonnull @.str.40, i32 noundef %i.052) #7
  %24 = ptrtoint ptr %u2p_regmap_config to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10, ptr %u2p_regmap_config, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.cleanup.thread_crit_edge, label %if.end14

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end8
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %mul = shl i32 %i.052, 5
  %add.ptr17 = getelementptr i8, ptr %base, i32 %mul
  %call18 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %26, ptr noundef null, ptr noundef %add.ptr17, ptr noundef nonnull %u2p_regmap_config, ptr noundef nonnull @dwc3_meson_g12a_setup_regmaps._key.41, ptr noundef nonnull @.str.42) #7
  %arrayidx19 = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 1, i32 %i.052
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call18, ptr %arrayidx19, align 4
  %cmp.i47 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then23, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call18 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then23, %if.end8.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %28, %if.then23 ], [ -12, %if.end8.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %u2p_regmap_config) #7
  br label %cleanup28

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %u2p_regmap_config) #7
  %inc = add nuw nsw i32 %i.052, 1
  %29 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drvdata, align 4
  %num_phys = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup28_crit_edge

for.inc.cleanup28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup28:                                        ; preds = %for.inc.cleanup28_crit_edge, %cleanup.thread, %if.then, %for.cond.preheader.cleanup28_crit_edge
  %retval.2 = phi i32 [ %11, %if.then ], [ %retval.1.ph, %cleanup.thread ], [ 0, %for.cond.preheader.cleanup28_crit_edge ], [ 0, %for.inc.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_usb2_init_phy(ptr noundef %priv, i32 noundef %i, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 1, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp = icmp eq i32 %i, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 48, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %set_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %set_phy_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_phy_mode, align 4
  %call5 = tail call i32 %11(ptr noundef %priv, i32 noundef 1, i32 noundef %mode) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_phy_mode7 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %set_phy_mode7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_phy_mode7, align 4
  %call8 = tail call i32 %13(ptr noundef %priv, i32 noundef %i, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_set_phy_mode(ptr nocapture noundef readonly %priv, i32 noundef %i, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %priv, i32 0, i32 1, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %. = zext i1 %cmp to i32
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @phy_power_off(ptr noundef %7) #7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @phy_exit(ptr noundef %9) #7
  %arrayidx.1 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %call7.1 = tail call i32 @phy_power_off(ptr noundef %11) #7
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %call10.1 = tail call i32 @phy_exit(ptr noundef %13) #7
  %arrayidx.2 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %call7.2 = tail call i32 @phy_power_off(ptr noundef %15) #7
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %call10.2 = tail call i32 @phy_exit(ptr noundef %17) #7
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %call11 = tail call i32 @reset_control_rearm(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %usb_init = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %usb_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_init, align 4
  %call2 = tail call i32 %7(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @phy_init(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %call6.1 = tail call i32 @phy_init(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %call6.2 = tail call i32 @phy_init(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool7.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool7.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @phy_power_on(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond10, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond10:                                       ; preds = %for.cond.2
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %call15.1 = tail call i32 @phy_power_on(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %tobool16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %tobool16.not.1, label %for.cond10.1, label %for.cond10.cleanup_crit_edge

for.cond10.cleanup_crit_edge:                     ; preds = %for.cond10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond10.1:                                     ; preds = %for.cond10
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %call15.2 = tail call i32 @phy_power_on(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %tobool16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %tobool16.not.2, label %for.cond10.2, label %for.cond10.1.cleanup_crit_edge

for.cond10.1.cleanup_crit_edge:                   ; preds = %for.cond10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond10.2:                                     ; preds = %for.cond10.1
  %vbus = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbus, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %for.cond10.2.if.end30_crit_edge, label %land.lhs.true

for.cond10.2.if.end30_crit_edge:                  ; preds = %for.cond10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %for.cond10.2
  %otg_phy_mode = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %otg_phy_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %otg_phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp23 = icmp eq i32 %23, 1
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24:                                        ; preds = %land.lhs.true
  %call26 = tail call i32 @regulator_enable(ptr noundef nonnull %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %for.cond10.2.if.end30_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then24.cleanup_crit_edge, %for.cond10.1.cleanup_crit_edge, %for.cond10.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call26, %if.then24.cleanup_crit_edge ], [ %call15, %for.cond.2.cleanup_crit_edge ], [ %call15.1, %for.cond10.cleanup_crit_edge ], [ %call15.2, %for.cond10.1.cleanup_crit_edge ], [ %call6, %for.body.preheader.cleanup_crit_edge ], [ %call6.1, %for.cond.cleanup_crit_edge ], [ %call6.2, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %7) #7
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvdata = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_bulk_prepare_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_bulk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #7
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !115, !117, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_dwc3_meson_g12a__328_982_dwc3_meson_g12a_driver_init6, !1, !"__initcall__kmod_dwc3_meson_g12a__328_982_dwc3_meson_g12a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 982, i32 1}
!2 = !{ptr @__exitcall_dwc3_meson_g12a_driver_exit, !1, !"__exitcall_dwc3_meson_g12a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file329, !4, !"__UNIQUE_ID_file329", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 983, i32 1}
!5 = !{ptr @__UNIQUE_ID_license330, !4, !"__UNIQUE_ID_license330", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description331, !7, !"__UNIQUE_ID_description331", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 984, i32 1}
!8 = !{ptr @__UNIQUE_ID_author332, !9, !"__UNIQUE_ID_author332", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 985, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 976, i32 11}
!12 = !{ptr @dwc3_meson_g12a_driver, !13, !"dwc3_meson_g12a_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 972, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 725, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 748, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dwc3_meson_g12a_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_meson_g12a_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 464, i32 24}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 470, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dwc3_meson_g12a_get_phys._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @dwc3_meson_g12a_get_phys._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 471, i32 2}
!34 = !{ptr @dwc3_meson_g12a_get_phys._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dwc3_meson_g12a_get_phys._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 615, i32 5}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dwc3_meson_g12a_otg_init._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @dwc3_meson_g12a_otg_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 621, i32 9}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 622, i32 57}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 630, i32 3}
!48 = !{ptr @dwc3_meson_g12a_otg_init._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc3_meson_g12a_otg_init._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 558, i32 4}
!52 = !{ptr @dwc3_meson_g12a_irq_thread._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dwc3_meson_g12a_irq_thread._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 497, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dwc3_meson_g12a_otg_mode_set._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @dwc3_meson_g12a_otg_mode_set._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 499, i32 3}
!61 = !{ptr @dwc3_meson_g12a_otg_mode_set._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dwc3_meson_g12a_otg_mode_set._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__print_once", i1 false, i1 false}
!64 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 537, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dwc3_meson_g12a_role_set._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @dwc3_meson_g12a_role_set._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @dwc3_meson_g12a_match, !70, !"dwc3_meson_g12a_match", i1 false, i1 false}
!70 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 947, i32 34}
!71 = !{ptr @gxl_drvdata, !72, !"gxl_drvdata", i1 false, i1 false}
!72 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 191, i32 39}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 105, i32 10}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 106, i32 10}
!77 = !{ptr @meson_gxl_clocks, !78, !"meson_gxl_clocks", i1 false, i1 false}
!78 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 104, i32 29}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 137, i32 2}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 137, i32 15}
!83 = !{ptr @meson_a1_phy_names, !84, !"meson_a1_phy_names", i1 false, i1 false}
!84 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 136, i32 27}
!85 = !{ptr @dwc3_meson_gxl_setup_regmaps._key, !86, !"_key", i1 false, i1 false}
!86 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 639, i32 26}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 443, i32 10}
!90 = !{ptr @phy_meson_g12a_usb_glue_regmap_conf, !91, !"phy_meson_g12a_usb_glue_regmap_conf", i1 false, i1 false}
!91 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 442, i32 35}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 338, i32 44}
!94 = !{ptr @gxm_drvdata, !95, !"gxm_drvdata", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 205, i32 39}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 120, i32 28}
!98 = !{ptr @meson_gxm_phy_names, !99, !"meson_gxm_phy_names", i1 false, i1 false}
!99 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 119, i32 27}
!100 = !{ptr @axg_drvdata, !101, !"axg_drvdata", i1 false, i1 false}
!101 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 219, i32 39}
!102 = !{ptr @g12a_drvdata, !103, !"g12a_drvdata", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 232, i32 39}
!104 = !{ptr @meson_g12a_clocks, !105, !"meson_g12a_clocks", i1 false, i1 false}
!105 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 109, i32 29}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 124, i32 28}
!108 = !{ptr @meson_g12a_phy_names, !109, !"meson_g12a_phy_names", i1 false, i1 false}
!109 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 123, i32 27}
!110 = !{ptr @dwc3_meson_g12a_setup_regmaps._key, !111, !"_key", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 649, i32 26}
!112 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 668, i32 8}
!115 = !{ptr @dwc3_meson_g12a_setup_regmaps._key.41, !116, !"_key", i1 false, i1 false}
!116 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 672, i32 25}
!117 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @a1_drvdata, !119, !"a1_drvdata", i1 false, i1 false}
!119 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 244, i32 39}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 115, i32 10}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 116, i32 10}
!124 = !{ptr @meson_a1_clocks, !125, !"meson_a1_clocks", i1 false, i1 false}
!125 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 113, i32 29}
!126 = !{ptr @dwc3_meson_g12a_dev_pm_ops, !127, !"dwc3_meson_g12a_dev_pm_ops", i1 false, i1 false}
!127 = !{!"../drivers/usb/dwc3/dwc3-meson-g12a.c", i32 941, i32 32}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 2148363858}
!139 = !{i64 849478, i64 849503, i64 849525, i64 849541, i64 849553, i64 849573, i64 849597, i64 849613, i64 849625}
!140 = !{i64 2148364046}
!141 = !{!"auto-init"}
