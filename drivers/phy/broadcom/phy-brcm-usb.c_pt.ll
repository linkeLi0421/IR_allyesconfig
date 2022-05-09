; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-brcm-usb.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.value_to_name_map = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.match_chip_info = type { ptr, [7 x i8], i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.brcm_usb_phy_data = type { %struct.brcm_usb_init_params, i8, i8, ptr, ptr, ptr, %struct.mutex, i32, i32, [2 x %struct.brcm_usb_phy], %struct.notifier_block, i8 }
%struct.brcm_usb_phy = type { ptr, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_brcm_usb_dvr__295_666_brcm_usb_driver_init6 = internal global ptr @brcm_usb_driver_init, section ".initcall6.init", align 4
@brcm_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcm_usb_phy_probe, ptr @brcm_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_usb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_usb_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcm_usb_driver_exit = internal global ptr @brcm_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias296 = internal constant [48 x i8] c"phy_brcm_usb_dvr.alias=platform:brcmstb-usb-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [57 x i8] c"phy_brcm_usb_dvr.author=Al Cooper <acooper@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [49 x i8] c"phy_brcm_usb_dvr.description=BRCM USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [60 x i8] c"phy_brcm_usb_dvr.file=drivers/phy/broadcom/phy-brcm-usb-dvr\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [32 x i8] c"phy_brcm_usb_dvr.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmstb-usb-phy\00", [16 x i8] zeroinitializer }, align 32
@brcm_usb_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7216 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7211b0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7445 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@brcm_usb_phy_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_usb_phy_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_brcm_usb_dvr\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_usb_phy_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/broadcom/phy-brcm-usb.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Best mapping table is for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcm,ipp\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcm,ioc\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dr_mode\00", [24 x i8] zeroinitializer }, align 32
@brcm_dr_mode_to_name = internal constant { [4 x %struct.value_to_name_map], [32 x i8] } { [4 x %struct.value_to_name_map] [%struct.value_to_name_map { i32 0, ptr @.str.16 }, %struct.value_to_name_map { i32 1, ptr @.str.17 }, %struct.value_to_name_map { i32 2, ptr @.str.18 }, %struct.value_to_name_map { i32 3, ptr @.str.19 }], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm,has-xhci\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,has-eohci\00", [17 x i8] zeroinitializer }, align 32
@brcm_usb_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@brcm_usb_phy_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_dr_mode, ptr @dev_attr_dual_select, ptr null], [20 x i8] zeroinitializer }, align 32
@brcm_usb_phy_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @brcm_usb_phy_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@brcm_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 537, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error creating sysfs attributes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcm_usb_phy_probe._entry_ptr = internal global ptr @brcm_usb_phy_probe._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syscon-piarbctl\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm,syscon-piarbctl\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drd\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"typec-pd\00", [23 x i8] zeroinitializer }, align 32
@node_reg_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [40 x i8] zeroinitializer }, align 32
@brcm_usb_get_regs.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_usb_get_regs\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Optional reg %s not found\0A\00", [37 x i8] zeroinitializer }, align 32
@brcm_usb_get_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 365, ptr @.str.23, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get %s base addr\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@brcm_usb_get_regs._entry_ptr = internal global ptr @brcm_usb_get_regs._entry, section ".printk_index", align 4
@brcm_usb_get_regs._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 372, ptr @.str.23, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't map %s register space\0A\00", [35 x i8] zeroinitializer }, align 32
@brcm_usb_get_regs._entry_ptr.26 = internal global ptr @brcm_usb_get_regs._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crtl\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xhci_ec\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci_gbl\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_mdio\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bdc_ec\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sw_usb\00", [25 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 390, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Clock not found in Device Tree\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm_usb_phy_dvr_init\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr = internal global ptr @brcm_usb_phy_dvr_init._entry, section ".printk_index", align 4
@brcm_usb_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @brcm_usb_phy_init, ptr @brcm_usb_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 400, ptr @.str.23, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create EHCI/OHCI PHY\0A\00", [32 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr.39 = internal global ptr @brcm_usb_phy_dvr_init._entry.37, section ".printk_index", align 4
@brcm_usb_phy_dvr_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 411, ptr @.str.23, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create XHCI PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr.42 = internal global ptr @brcm_usb_phy_dvr_init._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_usb3\00", [24 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.3, i32 423, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"USB3.0 clock not found in Device Tree\0A\00", [57 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr.46 = internal global ptr @brcm_usb_phy_dvr_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb0_freerun\00", [19 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.3, i32 435, ptr @.str.23, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Suspend Clock not found in Device Tree\0A\00", [56 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr.50 = internal global ptr @brcm_usb_phy_dvr_init._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.3, i32 451, ptr @.str.36, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Wake interrupt missing, system wake not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@brcm_usb_phy_dvr_init._entry_ptr.55 = internal global ptr @brcm_usb_phy_dvr_init._entry.53, section ".printk_index", align 4
@brcm_usb_phy_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_usb_phy_init\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"INIT, id: %d, total: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@brcm_usb_phy_exit.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_usb_phy_exit\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@dev_attr_dr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dr_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dual_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dual_select_show, ptr @dual_select_store }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dual_select\00", [20 x i8] zeroinitializer }, align 32
@sysfs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sysfs_lock, i64 52), ptr getelementptr (i8, ptr @sysfs_lock, i64 52) }, ptr @sysfs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@brcm_dual_mode_to_name = internal constant { [3 x %struct.value_to_name_map], [40 x i8] } { [3 x %struct.value_to_name_map] [%struct.value_to_name_map { i32 0, ptr @.str.16 }, %struct.value_to_name_map { i32 1, ptr @.str.65 }, %struct.value_to_name_map { i32 2, ptr @.str.66 }], [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysfs_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysfs_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@brcm_usb_phy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 192, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error, 2.0 Phy not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_usb_phy_xlate\00", [45 x i8] zeroinitializer }, align 32
@brcm_usb_phy_xlate._entry_ptr = internal global ptr @brcm_usb_phy_xlate._entry, section ".printk_index", align 4
@brcm_usb_phy_xlate._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 198, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error, 3.0 Phy not found\0A\00", [38 x i8] zeroinitializer }, align 32
@brcm_usb_phy_xlate._entry_ptr.71 = internal global ptr @brcm_usb_phy_xlate._entry.69, section ".printk_index", align 4
@chip_info_7445 = internal constant { %struct.match_chip_info, [20 x i8] } { %struct.match_chip_info { ptr @brcm_usb_dvr_init_7445, [7 x i8] c"\00\01\FF\00\00\00\00", i8 0 }, [20 x i8] zeroinitializer }, align 32
@chip_info_7216 = internal constant { %struct.match_chip_info, [20 x i8] } { %struct.match_chip_info { ptr @brcm_usb_dvr_init_7216, [7 x i8] c"\00\01\02\FF\00\00\00", i8 0 }, [20 x i8] zeroinitializer }, align 32
@chip_info_7211b0 = internal constant { %struct.match_chip_info, [20 x i8] } { %struct.match_chip_info { ptr @brcm_usb_dvr_init_7211b0, [7 x i8] c"\00\01\02\03\04\FF\00", i8 5 }, [20 x i8] zeroinitializer }, align 32
@brcm_usb_phy_suspend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm_usb_phy_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SUSPEND\0A\00", [23 x i8] zeroinitializer }, align 32
@brcm_usb_phy_resume.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm_usb_phy_resume\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESUME\0A\00", [24 x i8] zeroinitializer }, align 32
@switch.table.brcm_pm_notifier = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\01\00\01\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"brcm_usb_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 656, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 660, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"brcm_usb_dt_ids\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 318, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"brcm_usb_phy_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 650, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 483, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 486, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 487, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 490, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"brcm_dr_mode_to_name\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 44, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 496, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 498, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 524, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"brcm_usb_phy_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 276, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"brcm_usb_phy_group\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 282, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 537, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 541, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 544, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 45, i32 24 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 46, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 47, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 48, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"node_reg_names\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 78, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 359, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 364, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 371, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 44 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 79, i32 56 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 386, i32 44 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 390, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"brcm_usb_phy_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 172, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 400, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 411, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 418, i32 45 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 422, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 431, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 435, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 439, i32 49 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 441, i32 50 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 450, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 138, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 153, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"dev_attr_dr_mode\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 238, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"dev_attr_dual_select\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 233, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 223, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 274, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant [11 x i8] c"sysfs_lock\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [23 x i8] c"brcm_dual_mode_to_name\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 51, i32 39 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 25, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 53, i32 7 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 54, i32 7 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 192, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 198, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"chip_info_7445\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 309, i32 37 }
@___asan_gen_.327 = private unnamed_addr constant [15 x i8] c"chip_info_7216\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 286, i32 37 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"chip_info_7211b0\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 296, i32 37 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 578, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [39 x i8] c"../drivers/phy/broadcom/phy-brcm-usb.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 618, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [30 x i8] c"switch.table.brcm_pm_notifier\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_brcm_usb_driver_exit, ptr @__initcall__kmod_phy_brcm_usb_dvr__295_666_brcm_usb_driver_init6, ptr @brcm_usb_driver_exit, ptr @brcm_usb_get_regs._entry, ptr @brcm_usb_get_regs._entry.24, ptr @brcm_usb_get_regs._entry_ptr, ptr @brcm_usb_get_regs._entry_ptr.26, ptr @brcm_usb_phy_dvr_init._entry, ptr @brcm_usb_phy_dvr_init._entry.37, ptr @brcm_usb_phy_dvr_init._entry.40, ptr @brcm_usb_phy_dvr_init._entry.44, ptr @brcm_usb_phy_dvr_init._entry.48, ptr @brcm_usb_phy_dvr_init._entry.53, ptr @brcm_usb_phy_dvr_init._entry_ptr, ptr @brcm_usb_phy_dvr_init._entry_ptr.39, ptr @brcm_usb_phy_dvr_init._entry_ptr.42, ptr @brcm_usb_phy_dvr_init._entry_ptr.46, ptr @brcm_usb_phy_dvr_init._entry_ptr.50, ptr @brcm_usb_phy_dvr_init._entry_ptr.55, ptr @brcm_usb_phy_probe._entry, ptr @brcm_usb_phy_probe._entry_ptr, ptr @brcm_usb_phy_xlate._entry, ptr @brcm_usb_phy_xlate._entry.69, ptr @brcm_usb_phy_xlate._entry_ptr, ptr @brcm_usb_phy_xlate._entry_ptr.71, ptr @brcm_usb_driver, ptr @.str, ptr @brcm_usb_dt_ids, ptr @brcm_usb_phy_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @brcm_dr_mode_to_name, ptr @.str.8, ptr @.str.9, ptr @brcm_usb_phy_probe.__key, ptr @.str.10, ptr @brcm_usb_phy_attrs, ptr @brcm_usb_phy_group, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @node_reg_names, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @brcm_usb_phy_ops, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @dev_attr_dr_mode, ptr @dev_attr_dual_select, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @sysfs_lock, ptr @brcm_dual_mode_to_name, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @chip_info_7445, ptr @chip_info_7216, ptr @chip_info_7211b0, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.brcm_pm_notifier], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_dr_mode_to_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_reg_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_get_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_get_regs._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_dvr_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dual_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_dual_mode_to_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_usb_phy_xlate._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_info_7445 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_info_7216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_info_7211b0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcm_pm_notifier to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_usb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcm_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode, align 4, !annotation !187
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 224, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @brcmstb_get_family_id() #8
  %family_id = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %family_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %family_id, align 4
  %call4 = tail call i32 @brcmstb_get_product_id() #8
  %product_id = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %product_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %product_id, align 4
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7, align 4
  tail call void %7(ptr noundef nonnull %call.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_phy_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_phy_probe, %if.then16)) #8
          to label %do.end [label %if.then16], !srcloc !188

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %family_name = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %family_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %family_name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_phy_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end10
  %ipp = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %ipp, i32 noundef 1, i32 noundef 0) #8
  %ioc = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 1
  %call.i.i174 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %ioc, i32 noundef 1, i32 noundef 0) #8
  %mode24 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %mode24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode24, align 4
  %call25 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp eq i32 %call25, 0
  br i1 %cmp, label %if.then26, label %do.end.if.end30_crit_edge

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %do.end
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode, align 4
  %13 = ptrtoint ptr %mode24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mode24, align 4
  %call.i175 = call zeroext i1 @sysfs_streq(ptr noundef %12, ptr noundef nonnull @.str.16) #8
  br i1 %call.i175, label %if.then26.if.then.i_crit_edge, label %for.inc.i

if.then26.if.then.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.2.if.then.i_crit_edge, %for.inc.i.1.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.then26.if.then.i_crit_edge
  %x.08.i.lcssa = phi i32 [ 0, %if.then26.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.i.1.if.then.i_crit_edge ], [ 3, %for.inc.i.2.if.then.i_crit_edge ]
  %14 = ptrtoint ptr %mode24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %x.08.i.lcssa, ptr %mode24, align 4
  br label %if.end30

for.inc.i:                                        ; preds = %if.then26
  %call.i175.1 = call zeroext i1 @sysfs_streq(ptr noundef %12, ptr noundef nonnull @.str.17) #8
  br i1 %call.i175.1, label %for.inc.i.if.then.i_crit_edge, label %for.inc.i.1

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i175.2 = call zeroext i1 @sysfs_streq(ptr noundef %12, ptr noundef nonnull @.str.18) #8
  br i1 %call.i175.2, label %for.inc.i.1.if.then.i_crit_edge, label %for.inc.i.2

for.inc.i.1.if.then.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %call.i175.3 = call zeroext i1 @sysfs_streq(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  br i1 %call.i175.3, label %for.inc.i.2.if.then.i_crit_edge, label %for.inc.i.2.if.end30_crit_edge

for.inc.i.2.if.end30_crit_edge:                   ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.inc.i.2.if.then.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end30:                                         ; preds = %for.inc.i.2.if.end30_crit_edge, %if.then.i, %do.end.if.end30_crit_edge
  %call.i177 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i177, null
  br i1 %tobool.i.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %has_xhci = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %has_xhci to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %has_xhci, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %call.i178 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %tobool.i179.not = icmp eq ptr %call.i178, null
  br i1 %tobool.i179.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %has_eohci = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %has_eohci to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %has_eohci, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %arrayidx = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp38 = icmp ugt i8 %18, 5
  br i1 %cmp38, label %if.end36.for.end_crit_edge, label %if.end41

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %if.end41
  %arrayidx.1 = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp38.1 = icmp ugt i8 %20, 5
  br i1 %cmp38.1, label %for.cond.for.end_crit_edge, label %if.end41.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41.1:                                       ; preds = %for.cond
  %conv.1 = zext i8 %20 to i32
  %call46.1 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv.1, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.1)
  %tobool47.not.1 = icmp eq i32 %call46.1, 0
  br i1 %tobool47.not.1, label %for.cond.1, label %if.end41.1.cleanup_crit_edge

if.end41.1.cleanup_crit_edge:                     ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %if.end41.1
  %arrayidx.2 = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp38.2 = icmp ugt i8 %22, 5
  br i1 %cmp38.2, label %for.cond.1.for.end_crit_edge, label %if.end41.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41.2:                                       ; preds = %for.cond.1
  %conv.2 = zext i8 %22 to i32
  %call46.2 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv.2, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.2)
  %tobool47.not.2 = icmp eq i32 %call46.2, 0
  br i1 %tobool47.not.2, label %for.cond.2, label %if.end41.2.cleanup_crit_edge

if.end41.2.cleanup_crit_edge:                     ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %if.end41.2
  %arrayidx.3 = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp38.3 = icmp ugt i8 %24, 5
  br i1 %cmp38.3, label %for.cond.2.for.end_crit_edge, label %if.end41.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41.3:                                       ; preds = %for.cond.2
  %conv.3 = zext i8 %24 to i32
  %call46.3 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv.3, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.3)
  %tobool47.not.3 = icmp eq i32 %call46.3, 0
  br i1 %tobool47.not.3, label %for.cond.3, label %if.end41.3.cleanup_crit_edge

if.end41.3.cleanup_crit_edge:                     ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %if.end41.3
  %arrayidx.4 = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %cmp38.4 = icmp ugt i8 %26, 5
  br i1 %cmp38.4, label %for.cond.3.for.end_crit_edge, label %if.end41.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41.4:                                       ; preds = %for.cond.3
  %conv.4 = zext i8 %26 to i32
  %call46.4 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv.4, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.4)
  %tobool47.not.4 = icmp eq i32 %call46.4, 0
  br i1 %tobool47.not.4, label %for.cond.4, label %if.end41.4.cleanup_crit_edge

if.end41.4.cleanup_crit_edge:                     ; preds = %if.end41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %if.end41.4
  %arrayidx.5 = getelementptr %struct.match_chip_info, ptr %call7, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp38.5 = icmp ugt i8 %28, 5
  br i1 %cmp38.5, label %for.cond.4.for.end_crit_edge, label %if.end41.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41.5:                                       ; preds = %for.cond.4
  %conv.5 = zext i8 %28 to i32
  %call46.5 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv.5, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.5)
  %tobool47.not.5 = icmp eq i32 %call46.5, 0
  br i1 %tobool47.not.5, label %if.end41.5.for.end_crit_edge, label %if.end41.5.cleanup_crit_edge

if.end41.5.cleanup_crit_edge:                     ; preds = %if.end41.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41.5.for.end_crit_edge:                     ; preds = %if.end41.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41:                                         ; preds = %if.end36
  %conv = zext i8 %18 to i32
  %call46 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.cond, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %if.end41.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end36.for.end_crit_edge
  %optional_reg = getelementptr inbounds %struct.match_chip_info, ptr %call7, i32 0, i32 2
  %29 = ptrtoint ptr %optional_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %optional_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool50.not = icmp eq i8 %30, 0
  br i1 %tobool50.not, label %for.end.if.end59_crit_edge, label %if.then51

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then51:                                        ; preds = %for.end
  %conv53 = zext i8 %30 to i32
  %call55 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %conv53, ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then51.if.end59_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %for.end.if.end59_crit_edge
  %call.i180 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.33) #8
  %usb_20_clk.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %usb_20_clk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i180, ptr %usb_20_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i181, label %if.end59.if.end8.i_crit_edge

if.end59.if.end8.i_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i181:                                     ; preds = %if.end59
  %cmp.i = icmp eq ptr %call.i180, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then.i181.cleanup_crit_edge, label %do.end.i

if.then.i181.cleanup_crit_edge:                   ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #11
  %32 = ptrtoint ptr %usb_20_clk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %usb_20_clk.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end59.if.end8.i_crit_edge
  %33 = ptrtoint ptr %usb_20_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_20_clk.i, align 4
  %call.i.i182 = call i32 @clk_prepare(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool.not.i.i = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end12.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %34) #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i.i
  %has_eohci.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %has_eohci.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_eohci.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not.i = icmp eq i8 %36, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end27.i_crit_edge, label %if.then14.i

if.end12.i.if.end27.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end12.i
  %call15.i = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_ops) #8
  %cmp.i155.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i, label %if.then14.i.brcm_usb_phy_dvr_init.exit_crit_edge, label %if.end22.i

if.then14.i.brcm_usb_phy_dvr_init.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_phy_dvr_init.exit

if.end22.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %phys.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call15.i, ptr %phys.i, align 4
  %id.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %id.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call15.i, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %phys.i, ptr %driver_data.i.i.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end22.i, %if.end12.i.if.end27.i_crit_edge
  %gphy.0.i = phi ptr [ %call15.i, %if.end22.i ], [ null, %if.end12.i.if.end27.i_crit_edge ]
  %has_xhci.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %has_xhci.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_xhci.i, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool28.not.i = icmp eq i8 %41, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end65.i_crit_edge, label %if.then29.i

if.end27.i.if.end65.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then29.i:                                      ; preds = %if.end27.i
  %call30.i = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_ops) #8
  %cmp.i156.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156.i, label %if.then29.i.brcm_usb_phy_dvr_init.exit_crit_edge, label %if.end37.i

if.then29.i.brcm_usb_phy_dvr_init.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_phy_dvr_init.exit

if.end37.i:                                       ; preds = %if.then29.i
  %arrayidx39.i = getelementptr %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call30.i, ptr %arrayidx39.i, align 4
  %id43.i = getelementptr %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %43 = ptrtoint ptr %id43.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %id43.i, align 4
  %driver_data.i.i157.i = getelementptr inbounds %struct.device, ptr %call30.i, i32 0, i32 8
  %44 = ptrtoint ptr %driver_data.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx39.i, ptr %driver_data.i.i157.i, align 4
  %call46.i = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.43) #8
  %usb_30_clk.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %usb_30_clk.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call46.i, ptr %usb_30_clk.i, align 4
  %cmp.i158.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i, label %if.then49.i, label %if.end37.i.if.end59.i_crit_edge

if.end37.i.if.end59.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then49.i:                                      ; preds = %if.end37.i
  %cmp52.i = icmp eq ptr %call46.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp52.i, label %if.then49.i.cleanup_crit_edge, label %do.end57.i

if.then49.i.cleanup_crit_edge:                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end57.i:                                       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.45) #11
  %46 = ptrtoint ptr %usb_30_clk.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %usb_30_clk.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end57.i, %if.end37.i.if.end59.i_crit_edge
  %47 = ptrtoint ptr %usb_30_clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_30_clk.i, align 4
  %call.i159.i = call i32 @clk_prepare(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %tobool.not.i160.i = icmp eq i32 %call.i159.i, 0
  br i1 %tobool.not.i160.i, label %if.end.i163.i, label %if.end59.i.cleanup_crit_edge

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i163.i:                                    ; preds = %if.end59.i
  %call1.i161.i = call i32 @clk_enable(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i161.i)
  %tobool2.not.i162.i = icmp eq i32 %call1.i161.i, 0
  br i1 %tobool2.not.i162.i, label %if.end.i163.i.if.end65.i_crit_edge, label %if.then3.i164.i

if.end.i163.i.if.end65.i_crit_edge:               ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then3.i164.i:                                  ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %48) #8
  br label %cleanup

if.end65.i:                                       ; preds = %if.end.i163.i.if.end65.i_crit_edge, %if.end27.i.if.end65.i_crit_edge
  %gphy.1.i = phi ptr [ %gphy.0.i, %if.end27.i.if.end65.i_crit_edge ], [ %call30.i, %if.end.i163.i.if.end65.i_crit_edge ]
  %call66.i = call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.47) #8
  %suspend_clk.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %suspend_clk.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call66.i, ptr %suspend_clk.i, align 4
  %cmp.i167.i = icmp ugt ptr %call66.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.i, label %if.then69.i, label %if.end65.i.if.end79.i_crit_edge

if.end65.i.if.end79.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then69.i:                                      ; preds = %if.end65.i
  %cmp72.i = icmp eq ptr %call66.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp72.i, label %if.then69.i.cleanup_crit_edge, label %do.end77.i

if.then69.i.cleanup_crit_edge:                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end77.i:                                       ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #11
  %50 = ptrtoint ptr %suspend_clk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %suspend_clk.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end77.i, %if.end65.i.if.end79.i_crit_edge
  %call80.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.51) #8
  %wake_irq.i = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %wake_irq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call80.i, ptr %wake_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp82.i = icmp slt i32 %call80.i, 0
  br i1 %cmp82.i, label %if.end86.i, label %if.end79.i.if.then89.i_crit_edge

if.end79.i.if.then89.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89.i

if.end86.i:                                       ; preds = %if.end79.i
  %call84.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.52) #8
  %52 = ptrtoint ptr %wake_irq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call84.i, ptr %wake_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call84.i)
  %cmp88.i = icmp sgt i32 %call84.i, -1
  br i1 %cmp88.i, label %if.end86.i.if.then89.i_crit_edge, label %do.end98.i

if.end86.i.if.then89.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89.i

if.then89.i:                                      ; preds = %if.end86.i.if.then89.i_crit_edge, %if.end79.i.if.then89.i_crit_edge
  %53 = phi i32 [ %call84.i, %if.end86.i.if.then89.i_crit_edge ], [ %call80.i, %if.end79.i.if.then89.i_crit_edge ]
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i168.i = icmp eq ptr %55, null
  br i1 %tobool.not.i168.i, label %if.end.i169.i, label %if.then89.i.dev_name.exit.i_crit_edge

if.then89.i.dev_name.exit.i_crit_edge:            ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i169.i:                                    ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i169.i, %if.then89.i.dev_name.exit.i_crit_edge
  %retval.0.i170.i = phi ptr [ %57, %if.end.i169.i ], [ %55, %if.then89.i.dev_name.exit.i_crit_edge ]
  %call.i171.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %53, ptr noundef nonnull @brcm_usb_phy_wake_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i170.i, ptr noundef %gphy.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i)
  %cmp93.i = icmp slt i32 %call.i171.i, 0
  br i1 %cmp93.i, label %dev_name.exit.i.cleanup_crit_edge, label %if.end95.i

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %if.end63

do.end98.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.54) #11
  br label %if.end63

brcm_usb_phy_dvr_init.exit:                       ; preds = %if.then29.i.brcm_usb_phy_dvr_init.exit_crit_edge, %if.then14.i.brcm_usb_phy_dvr_init.exit_crit_edge
  %.str.38.sink = phi ptr [ @.str.38, %if.then14.i.brcm_usb_phy_dvr_init.exit_crit_edge ], [ @.str.41, %if.then29.i.brcm_usb_phy_dvr_init.exit_crit_edge ]
  %retval.0.i183.in = phi ptr [ %call15.i, %if.then14.i.brcm_usb_phy_dvr_init.exit_crit_edge ], [ %call30.i, %if.then29.i.brcm_usb_phy_dvr_init.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.38.sink) #11
  %retval.0.i183 = ptrtoint ptr %retval.0.i183.in to i32
  br label %cleanup

if.end63:                                         ; preds = %do.end98.i, %if.end95.i
  %pm_notifier = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 10
  %58 = ptrtoint ptr %pm_notifier to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @brcm_pm_notifier, ptr %pm_notifier, align 4
  %call65 = call i32 @register_pm_notifier(ptr noundef %pm_notifier) #8
  %mutex = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @brcm_usb_phy_probe.__key) #8
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 9
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.end63.brcm_usb_init_ipp.exit_crit_edge, label %if.then.i184

if.end63.brcm_usb_init_ipp.exit_crit_edge:        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_init_ipp.exit

if.then.i184:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void %62(ptr noundef nonnull %call.i) #8
  br label %brcm_usb_init_ipp.exit

brcm_usb_init_ipp.exit:                           ; preds = %if.then.i184, %if.end63.brcm_usb_init_ipp.exit_crit_edge
  %63 = ptrtoint ptr %mode24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp72.not = icmp eq i32 %64, 2
  br i1 %cmp72.not, label %brcm_usb_init_ipp.exit.if.end75_crit_edge, label %if.then74

brcm_usb_init_ipp.exit.if.end75_crit_edge:        ; preds = %brcm_usb_init_ipp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %brcm_usb_init_ipp.exit
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @brcm_usb_phy_attrs, i32 0, i32 1), align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %brcm_usb_init_ipp.exit.if.end75_crit_edge
  %call76 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @brcm_usb_phy_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %do.end81

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end75.if.end82_crit_edge
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call84 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %66, ptr noundef nonnull @.str.14) #8
  %cmp.i185 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then86, label %if.end82.if.end89_crit_edge

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node, align 8
  %call88 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %68, ptr noundef nonnull @.str.15) #8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end82.if.end89_crit_edge
  %rmap.0 = phi ptr [ %call88, %if.then86 ], [ %call84, %if.end82.if.end89_crit_edge ]
  %cmp.i186 = icmp ugt ptr %rmap.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.end89.if.end93_crit_edge, label %if.then91

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %syscon_piarbctl = getelementptr inbounds %struct.brcm_usb_init_params, ptr %call.i, i32 0, i32 10
  %69 = ptrtoint ptr %syscon_piarbctl to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %rmap.0, ptr %syscon_piarbctl, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end89.if.end93_crit_edge
  %70 = ptrtoint ptr %has_xhci.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %has_xhci.i, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool95.not = icmp eq i8 %71, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %uninit_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %uninit_xhci.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %uninit_xhci.i, align 4
  %tobool.not.i188 = icmp eq ptr %75, null
  br i1 %tobool.not.i188, label %if.then96.if.end98_crit_edge, label %if.then.i189

if.then96.if.end98_crit_edge:                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then.i189:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  call void %75(ptr noundef nonnull %call.i) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then.i189, %if.then96.if.end98_crit_edge, %if.end93.if.end98_crit_edge
  %76 = ptrtoint ptr %has_eohci.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %has_eohci.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool100.not = icmp eq i8 %77, 0
  br i1 %tobool100.not, label %if.end98.if.end103_crit_edge, label %if.then101

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then101:                                       ; preds = %if.end98
  %78 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i, align 4
  %uninit_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %uninit_eohci.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uninit_eohci.i, align 4
  %tobool.not.i191 = icmp eq ptr %81, null
  br i1 %tobool.not.i191, label %if.then101.if.end103_crit_edge, label %if.then.i192

if.then101.if.end103_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then.i192:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  call void %81(ptr noundef nonnull %call.i) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then.i192, %if.then101.if.end103_crit_edge, %if.end98.if.end103_crit_edge
  %82 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i, align 4
  %uninit_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %uninit_common.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %uninit_common.i, align 4
  %tobool.not.i194 = icmp eq ptr %85, null
  br i1 %tobool.not.i194, label %if.end103.brcm_usb_uninit_common.exit_crit_edge, label %if.then.i195

if.end103.brcm_usb_uninit_common.exit_crit_edge:  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_common.exit

if.then.i195:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  call void %85(ptr noundef nonnull %call.i) #8
  br label %brcm_usb_uninit_common.exit

brcm_usb_uninit_common.exit:                      ; preds = %if.then.i195, %if.end103.brcm_usb_uninit_common.exit_crit_edge
  %86 = ptrtoint ptr %usb_20_clk.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_20_clk.i, align 4
  call void @clk_disable(ptr noundef %87) #8
  call void @clk_unprepare(ptr noundef %87) #8
  %usb_30_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %call.i, i32 0, i32 4
  %88 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_30_clk, align 4
  call void @clk_disable(ptr noundef %89) #8
  call void @clk_unprepare(ptr noundef %89) #8
  %call105 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_xlate) #8
  %cmp.i.i196 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  %90 = ptrtoint ptr %call105 to i32
  %spec.select.i = select i1 %cmp.i.i196, i32 %90, i32 0
  br label %cleanup

cleanup:                                          ; preds = %brcm_usb_uninit_common.exit, %brcm_usb_phy_dvr_init.exit, %dev_name.exit.i.cleanup_crit_edge, %if.then69.i.cleanup_crit_edge, %if.then3.i164.i, %if.end59.i.cleanup_crit_edge, %if.then49.i.cleanup_crit_edge, %if.then3.i.i, %if.end8.i.cleanup_crit_edge, %if.then.i181.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end41.5.cleanup_crit_edge, %if.end41.4.cleanup_crit_edge, %if.end41.3.cleanup_crit_edge, %if.end41.2.cleanup_crit_edge, %if.end41.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %brcm_usb_uninit_common.exit ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %if.then51.cleanup_crit_edge ], [ %retval.0.i183, %brcm_usb_phy_dvr_init.exit ], [ %call.i159.i, %if.end59.i.cleanup_crit_edge ], [ %call1.i161.i, %if.then3.i164.i ], [ %call.i.i182, %if.end8.i.cleanup_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i171.i, %dev_name.exit.i.cleanup_crit_edge ], [ -517, %if.then69.i.cleanup_crit_edge ], [ -517, %if.then49.i.cleanup_crit_edge ], [ -517, %if.then.i181.cleanup_crit_edge ], [ -22, %if.end41.5.cleanup_crit_edge ], [ -22, %if.end41.4.cleanup_crit_edge ], [ -22, %if.end41.3.cleanup_crit_edge ], [ -22, %if.end41.2.cleanup_crit_edge ], [ -22, %if.end41.1.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @brcm_usb_phy_group) #8
  %pm_notifier = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @unregister_pm_notifier(ptr noundef %pm_notifier) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_family_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_product_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_usb_get_regs(ptr noundef %pdev, i32 noundef %regs, ptr nocapture noundef writeonly %ini, i1 noundef zeroext %optional) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x ptr], ptr @node_reg_names, i32 0, i32 %regs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %1) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %entry
  %2 = zext i32 %regs to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %regs, label %if.then.if.then12_crit_edge [
    i32 0, label %if.end10
    i32 1, label %if.then5
  ]

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then5:                                         ; preds = %if.then
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.if.end29_crit_edge

if.then5.if.end29_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %cmp11 = icmp eq ptr %call3, null
  br i1 %cmp11, label %if.end10.if.then12_crit_edge, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then.if.then12_crit_edge
  br i1 %optional, label %do.body, label %do.end25

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_get_regs.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_get_regs, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !188

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_get_regs.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %1) #8
  br label %cleanup

do.end25:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.22, ptr noundef %1) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end10.if.end29_crit_edge, %if.then5.if.end29_crit_edge, %entry.if.end29_crit_edge
  %res.1 = phi ptr [ %call3, %if.end10.if.end29_crit_edge ], [ %call, %entry.if.end29_crit_edge ], [ %call6, %if.then5.if.end29_crit_edge ]
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %dev30, ptr noundef nonnull %res.1) #8
  %arrayidx33 = getelementptr [6 x ptr], ptr %ini, i32 0, i32 %regs
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call31, ptr %arrayidx33, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.25, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end29.cleanup_crit_edge, %do.end25, %if.then19, %do.body, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end25 ], [ 1, %do.end40 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @brcm_pm_notifier(ptr nocapture noundef writeonly %notifier, i32 noundef %pm_event, ptr nocapture noundef readnone %unused) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %pm_event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 47, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.brcm_pm_notifier, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  %pm_active2 = getelementptr i8, ptr %notifier, i32 12
  %3 = ptrtoint ptr %pm_active2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %switch.load, ptr %pm_active2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_usb_phy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge26
    i32 1, label %entry.sw.bb6_crit_edge
    i32 4, label %entry.sw.bb6_crit_edge27
  ]

entry.sw.bb6_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26
  %phys = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phys, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge27
  %arrayidx8 = getelementptr %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %sw.bb6.cleanup.sink.split_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.str.67.sink = phi ptr [ @.str.67, %sw.bb.cleanup.sink.split_crit_edge ], [ @.str.70, %sw.bb6.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.67.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %sw.bb.cleanup_crit_edge ], [ %8, %sw.bb6.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_wake_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pm_wakeup_dev_event(ptr noundef %dev_id, i32 noundef 0, i1 noundef zeroext false) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_init(ptr noundef %gphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.brcm_usb_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %.neg = mul i32 %3, -12
  %idx.neg = add i32 %.neg, -184
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %pm_active = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 11
  %4 = ptrtoint ptr %pm_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_active, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %init_count = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 7
  %6 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then1:                                         ; preds = %if.end
  %usb_20_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_20_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then1.clk_prepare_enable.exit_crit_edge

if.then1.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then1
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then1.clk_prepare_enable.exit_crit_edge
  %usb_30_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 4
  %10 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_30_clk, align 4
  %call.i44 = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %clk_prepare_enable.exit.clk_prepare_enable.exit51_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit51_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit51

if.end.i48:                                       ; preds = %clk_prepare_enable.exit
  %call1.i46 = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %if.end.i48.clk_prepare_enable.exit51_crit_edge, label %if.then3.i49

if.end.i48.clk_prepare_enable.exit51_crit_edge:   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit51

if.then3.i49:                                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %clk_prepare_enable.exit51

clk_prepare_enable.exit51:                        ; preds = %if.then3.i49, %if.end.i48.clk_prepare_enable.exit51_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit51_crit_edge
  %suspend_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 5
  %12 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend_clk, align 4
  %call.i52 = tail call i32 @clk_prepare(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %clk_prepare_enable.exit51.clk_prepare_enable.exit59_crit_edge

clk_prepare_enable.exit51.clk_prepare_enable.exit59_crit_edge: ; preds = %clk_prepare_enable.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit59

if.end.i56:                                       ; preds = %clk_prepare_enable.exit51
  %call1.i54 = tail call i32 @clk_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool2.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool2.not.i55, label %if.end.i56.clk_prepare_enable.exit59_crit_edge, label %if.then3.i57

if.end.i56.clk_prepare_enable.exit59_crit_edge:   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit59

if.then3.i57:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %clk_prepare_enable.exit59

clk_prepare_enable.exit59:                        ; preds = %if.then3.i57, %if.end.i56.clk_prepare_enable.exit59_crit_edge, %clk_prepare_enable.exit51.clk_prepare_enable.exit59_crit_edge
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %init_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %init_common.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_common.i, align 4
  %tobool.not.i60 = icmp eq ptr %17, null
  br i1 %tobool.not.i60, label %clk_prepare_enable.exit59.if.end5_crit_edge, label %if.then.i

clk_prepare_enable.exit59.if.end5_crit_edge:      ; preds = %clk_prepare_enable.exit59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %clk_prepare_enable.exit59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %add.ptr) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %clk_prepare_enable.exit59.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %19, label %if.end5.if.end16_crit_edge [
    i32 0, label %if.then9
    i32 1, label %if.then13
  ]

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then9:                                         ; preds = %if.end5
  %ops.i62 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %21 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i62, align 4
  %init_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %init_eohci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_eohci.i, align 4
  %tobool.not.i63 = icmp eq ptr %24, null
  br i1 %tobool.not.i63, label %if.then9.if.end16_crit_edge, label %if.then9.if.end16.sink.split_crit_edge

if.then9.if.end16.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end5
  %ops.i66 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %25 = ptrtoint ptr %ops.i66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i66, align 4
  %init_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_xhci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_xhci.i, align 4
  %tobool.not.i67 = icmp eq ptr %28, null
  br i1 %tobool.not.i67, label %if.then13.if.end16_crit_edge, label %if.then13.if.end16.sink.split_crit_edge

if.then13.if.end16.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16.sink.split:                              ; preds = %if.then13.if.end16.sink.split_crit_edge, %if.then9.if.end16.sink.split_crit_edge
  %.sink = phi ptr [ %24, %if.then9.if.end16.sink.split_crit_edge ], [ %28, %if.then13.if.end16.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %add.ptr) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.then13.if.end16_crit_edge, %if.then9.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %inited = getelementptr inbounds %struct.brcm_usb_phy, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %inited to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %inited, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_phy_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_phy_init, %if.then22)) #8
          to label %cleanup [label %if.then22], !srcloc !188

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %32 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %init_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_phy_init.__UNIQUE_ID_ddebug289, ptr noundef %gphy, ptr noundef nonnull @.str.57, i32 noundef %31, i32 noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end16, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_exit(ptr noundef %gphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gphy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.brcm_usb_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %.neg = mul i32 %3, -12
  %idx.neg = add i32 %.neg, -184
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %pm_active = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 11
  %4 = ptrtoint ptr %pm_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_active, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_phy_exit.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_phy_exit, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !188

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_phy_exit.__UNIQUE_ID_ddebug290, ptr noundef %gphy, ptr noundef nonnull @.str.59) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then9, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %do.end
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %uninit_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %uninit_eohci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uninit_eohci.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then9.if.end10thread-pre-split_crit_edge, label %if.then.i

if.then9.if.end10thread-pre-split_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10thread-pre-split

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %add.ptr) #8
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.then.i, %if.then9.if.end10thread-pre-split_crit_edge
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %id, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %do.end.if.end10_crit_edge
  %13 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %7, %do.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  %ops.i36 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %14 = ptrtoint ptr %ops.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i36, align 4
  %uninit_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %uninit_xhci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uninit_xhci.i, align 4
  %tobool.not.i37 = icmp eq ptr %17, null
  br i1 %tobool.not.i37, label %if.then13.if.end15_crit_edge, label %if.then.i38

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i38:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %add.ptr) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then.i38, %if.then13.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %mutex = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %init_count = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 7
  %18 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %init_count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp16 = icmp eq i32 %dec, 0
  br i1 %cmp16, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  %ops.i39 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %add.ptr, i32 0, i32 9
  %20 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i39, align 4
  %uninit_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %uninit_common.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uninit_common.i, align 4
  %tobool.not.i40 = icmp eq ptr %23, null
  br i1 %tobool.not.i40, label %if.then17.brcm_usb_uninit_common.exit_crit_edge, label %if.then.i41

if.then17.brcm_usb_uninit_common.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_common.exit

if.then.i41:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %add.ptr) #8
  br label %brcm_usb_uninit_common.exit

brcm_usb_uninit_common.exit:                      ; preds = %if.then.i41, %if.then17.brcm_usb_uninit_common.exit_crit_edge
  %usb_20_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 3
  %24 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_20_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  %usb_30_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 4
  %26 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_30_clk, align 4
  tail call void @clk_disable(ptr noundef %27) #8
  tail call void @clk_unprepare(ptr noundef %27) #8
  %suspend_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %add.ptr, i32 0, i32 5
  %28 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %suspend_clk, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %if.end19

if.end19:                                         ; preds = %brcm_usb_uninit_common.exit, %if.end15.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %inited = getelementptr inbounds %struct.brcm_usb_phy, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %inited to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %inited, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not.i = icmp slt i32 %3, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.value_to_name.exit_crit_edge

entry.value_to_name.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %value_to_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.value_to_name_map, ptr @brcm_dr_mode_to_name, i32 %3, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  br label %value_to_name.exit

value_to_name.exit:                               ; preds = %if.end.i, %entry.value_to_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ @.str.61, %entry.value_to_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dual_select_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #8
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_dual_select.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %get_dual_select.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dual_select.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %brcm_usb_get_dual_select.exit.thread, label %brcm_usb_get_dual_select.exit

brcm_usb_get_dual_select.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  br label %if.end.i

brcm_usb_get_dual_select.exit:                    ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.not.i = icmp slt i32 %call.i, 3
  br i1 %cmp.not.i, label %brcm_usb_get_dual_select.exit.if.end.i_crit_edge, label %brcm_usb_get_dual_select.exit.value_to_name.exit_crit_edge

brcm_usb_get_dual_select.exit.value_to_name.exit_crit_edge: ; preds = %brcm_usb_get_dual_select.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %value_to_name.exit

brcm_usb_get_dual_select.exit.if.end.i_crit_edge: ; preds = %brcm_usb_get_dual_select.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %brcm_usb_get_dual_select.exit.if.end.i_crit_edge, %brcm_usb_get_dual_select.exit.thread
  %retval.0.i7 = phi i32 [ 0, %brcm_usb_get_dual_select.exit.thread ], [ %call.i, %brcm_usb_get_dual_select.exit.if.end.i_crit_edge ]
  %name.i = getelementptr %struct.value_to_name_map, ptr @brcm_dual_mode_to_name, i32 %retval.0.i7, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  br label %value_to_name.exit

value_to_name.exit:                               ; preds = %if.end.i, %brcm_usb_get_dual_select.exit.value_to_name.exit_crit_edge
  %retval.0.i4 = phi ptr [ %7, %if.end.i ], [ @.str.61, %brcm_usb_get_dual_select.exit.value_to_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i4)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dual_select_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysfs_lock, i32 noundef 0) #8
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.16) #8
  br i1 %call.i, label %entry.if.then_crit_edge, label %for.inc.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.65) #8
  br i1 %call.i.1, label %for.inc.i.if.then_crit_edge, label %for.inc.i.1

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.66) #8
  br i1 %call.i.2, label %for.inc.i.1.if.then_crit_edge, label %for.inc.i.1.if.end_crit_edge

for.inc.i.1.if.end_crit_edge:                     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.1.if.then_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.i.1.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %x.08.i.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.i.if.then_crit_edge ], [ 2, %for.inc.i.1.if.then_crit_edge ]
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %set_dual_select.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %set_dual_select.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_dual_select.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i3:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %1, i32 noundef %x.08.i.lcssa) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i3, %if.then.if.end_crit_edge, %for.inc.i.1.if.end_crit_edge
  %res.0 = phi i32 [ %len, %if.then.if.end_crit_edge ], [ %len, %if.then.i3 ], [ -22, %for.inc.i.1.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7445(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7216(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7211b0(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %init_count = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %do.body

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_phy_suspend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_phy_suspend, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !188

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_phy_suspend.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.73) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.end.device_may_wakeup.exit_crit_edge, label %land.rhs.i

do.end.device_may_wakeup.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %do.end.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %do.end.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 11
  %frombool7 = zext i1 %7 to i8
  %8 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool7, ptr %wake_enabled, align 4
  %inited = getelementptr %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9, i32 1, i32 2
  %9 = ptrtoint ptr %inited to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %inited, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %device_may_wakeup.exit.if.end11_crit_edge, label %if.then9

device_may_wakeup.exit.if.end11_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %device_may_wakeup.exit
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %uninit_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %uninit_xhci.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uninit_xhci.i, align 4
  %tobool.not.i58 = icmp eq ptr %14, null
  br i1 %tobool.not.i58, label %if.then9.if.end11_crit_edge, label %if.then.i

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef %1) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then9.if.end11_crit_edge, %device_may_wakeup.exit.if.end11_crit_edge
  %inited14 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9, i32 0, i32 2
  %15 = ptrtoint ptr %inited14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inited14, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.then16

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  %ops.i59 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i59, align 4
  %uninit_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %uninit_eohci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uninit_eohci.i, align 4
  %tobool.not.i60 = icmp eq ptr %20, null
  br i1 %tobool.not.i60, label %if.then16.if.end18_crit_edge, label %if.then.i61

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then.i61:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then.i61, %if.then16.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %ops.i62 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i62, align 4
  %uninit_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %uninit_common.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uninit_common.i, align 4
  %tobool.not.i63 = icmp eq ptr %24, null
  br i1 %tobool.not.i63, label %if.end18.brcm_usb_uninit_common.exit_crit_edge, label %if.then.i64

if.end18.brcm_usb_uninit_common.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_common.exit

if.then.i64:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %1) #8
  br label %brcm_usb_uninit_common.exit

brcm_usb_uninit_common.exit:                      ; preds = %if.then.i64, %if.end18.brcm_usb_uninit_common.exit_crit_edge
  %suspend_with_clocks = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %suspend_with_clocks to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %suspend_with_clocks, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  br i1 %tobool21.not, label %if.then22, label %brcm_usb_uninit_common.exit.if.end36_crit_edge

brcm_usb_uninit_common.exit.if.end36_crit_edge:   ; preds = %brcm_usb_uninit_common.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then22:                                        ; preds = %brcm_usb_uninit_common.exit
  %27 = ptrtoint ptr %inited to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %inited, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool26.not = icmp eq i8 %28, 0
  br i1 %tobool26.not, label %if.then22.if.end28_crit_edge, label %if.then27

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %usb_30_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_30_clk, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then22.if.end28_crit_edge
  %31 = ptrtoint ptr %inited14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %inited14, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not = icmp eq i8 %32, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end28.if.then34_crit_edge

if.end28.if.then34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.end28
  %has_eohci = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %has_eohci to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_eohci, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33.not = icmp eq i8 %34, 0
  br i1 %tobool33.not, label %lor.lhs.false.if.then34_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %if.end28.if.then34_crit_edge
  %usb_20_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_20_clk, align 4
  tail call void @clk_disable(ptr noundef %36) #8
  tail call void @clk_unprepare(ptr noundef %36) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %lor.lhs.false.if.end36_crit_edge, %brcm_usb_uninit_common.exit.if.end36_crit_edge
  %wake_irq = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp = icmp sgt i32 %38, -1
  br i1 %cmp, label %if.then37, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 1) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end36.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %usb_20_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_20_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %usb_30_clk = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_30_clk, align 4
  %call.i84 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %clk_prepare_enable.exit.clk_prepare_enable.exit91_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit91_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit91

if.end.i88:                                       ; preds = %clk_prepare_enable.exit
  %call1.i86 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool2.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool2.not.i87, label %if.end.i88.clk_prepare_enable.exit91_crit_edge, label %if.then3.i89

if.end.i88.clk_prepare_enable.exit91_crit_edge:   ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit91

if.then3.i89:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit91

clk_prepare_enable.exit91:                        ; preds = %if.then3.i89, %if.end.i88.clk_prepare_enable.exit91_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit91_crit_edge
  %ops.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i92 = icmp eq ptr %9, null
  br i1 %tobool.not.i92, label %clk_prepare_enable.exit91.brcm_usb_init_ipp.exit_crit_edge, label %if.then.i

clk_prepare_enable.exit91.brcm_usb_init_ipp.exit_crit_edge: ; preds = %clk_prepare_enable.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_init_ipp.exit

if.then.i:                                        ; preds = %clk_prepare_enable.exit91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %1) #8
  br label %brcm_usb_init_ipp.exit

brcm_usb_init_ipp.exit:                           ; preds = %if.then.i, %clk_prepare_enable.exit91.brcm_usb_init_ipp.exit_crit_edge
  %init_count = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else40, label %do.body

do.body:                                          ; preds = %brcm_usb_init_ipp.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_phy_resume.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_phy_resume, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !188

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_usb_phy_resume.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.75) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %wake_irq = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i94 = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef 0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %init_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %init_common.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_common.i, align 4
  %tobool.not.i96 = icmp eq ptr %17, null
  br i1 %tobool.not.i96, label %if.end11.brcm_usb_init_common.exit_crit_edge, label %if.then.i97

if.end11.brcm_usb_init_common.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_init_common.exit

if.then.i97:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %1) #8
  br label %brcm_usb_init_common.exit

brcm_usb_init_common.exit:                        ; preds = %if.then.i97, %if.end11.brcm_usb_init_common.exit_crit_edge
  %inited = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9, i32 0, i32 2
  %18 = ptrtoint ptr %inited to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %inited, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %brcm_usb_init_common.exit
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %init_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %init_eohci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_eohci.i, align 4
  %tobool.not.i100 = icmp eq ptr %23, null
  br i1 %tobool.not.i100, label %if.then14.if.end21_crit_edge, label %if.then.i101

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i101:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %1) #8
  br label %if.end21

if.else:                                          ; preds = %brcm_usb_init_common.exit
  %has_eohci = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %has_eohci to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_eohci, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.else
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %uninit_eohci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %uninit_eohci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uninit_eohci.i, align 4
  %tobool.not.i104 = icmp eq ptr %29, null
  br i1 %tobool.not.i104, label %if.then17.brcm_usb_uninit_eohci.exit_crit_edge, label %if.then.i105

if.then17.brcm_usb_uninit_eohci.exit_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_eohci.exit

if.then.i105:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %1) #8
  br label %brcm_usb_uninit_eohci.exit

brcm_usb_uninit_eohci.exit:                       ; preds = %if.then.i105, %if.then17.brcm_usb_uninit_eohci.exit_crit_edge
  %30 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_20_clk, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  br label %if.end21

if.end21:                                         ; preds = %brcm_usb_uninit_eohci.exit, %if.else.if.end21_crit_edge, %if.then.i101, %if.then14.if.end21_crit_edge
  %inited24 = getelementptr %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 9, i32 1, i32 2
  %32 = ptrtoint ptr %inited24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %inited24, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool25.not = icmp eq i8 %33, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.end21
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %init_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_xhci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_xhci.i, align 4
  %tobool.not.i108 = icmp eq ptr %37, null
  br i1 %tobool.not.i108, label %if.then26.if.end54_crit_edge, label %if.then.i109

if.then26.if.end54_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then.i109:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %37(ptr noundef %1) #8
  br label %if.end54

if.else28:                                        ; preds = %if.end21
  %has_xhci = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %has_xhci to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_xhci, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool29.not = icmp eq i8 %39, 0
  br i1 %tobool29.not, label %if.else28.if.end54_crit_edge, label %if.then30

if.else28.if.end54_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then30:                                        ; preds = %if.else28
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %uninit_xhci.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %uninit_xhci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uninit_xhci.i, align 4
  %tobool.not.i112 = icmp eq ptr %43, null
  br i1 %tobool.not.i112, label %if.then30.brcm_usb_uninit_xhci.exit_crit_edge, label %if.then.i113

if.then30.brcm_usb_uninit_xhci.exit_crit_edge:    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_xhci.exit

if.then.i113:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %43(ptr noundef %1) #8
  br label %brcm_usb_uninit_xhci.exit

brcm_usb_uninit_xhci.exit:                        ; preds = %if.then.i113, %if.then30.brcm_usb_uninit_xhci.exit_crit_edge
  %44 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_30_clk, align 4
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  %has_eohci33 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %has_eohci33 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_eohci33, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool34.not = icmp eq i8 %47, 0
  br i1 %tobool34.not, label %if.then35, label %brcm_usb_uninit_xhci.exit.if.end54_crit_edge

brcm_usb_uninit_xhci.exit.if.end54_crit_edge:     ; preds = %brcm_usb_uninit_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then35:                                        ; preds = %brcm_usb_uninit_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_20_clk, align 4
  tail call void @clk_disable(ptr noundef %49) #8
  tail call void @clk_unprepare(ptr noundef %49) #8
  br label %if.end54

if.else40:                                        ; preds = %brcm_usb_init_ipp.exit
  %has_xhci41 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %has_xhci41 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_xhci41, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool42.not = icmp eq i8 %51, 0
  br i1 %tobool42.not, label %if.else40.if.end45_crit_edge, label %if.then43

if.else40.if.end45_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.else40
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %uninit_xhci.i116 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %uninit_xhci.i116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uninit_xhci.i116, align 4
  %tobool.not.i117 = icmp eq ptr %55, null
  br i1 %tobool.not.i117, label %if.then43.if.end45_crit_edge, label %if.then.i118

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then.i118:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %55(ptr noundef %1) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then.i118, %if.then43.if.end45_crit_edge, %if.else40.if.end45_crit_edge
  %has_eohci46 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %has_eohci46 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %has_eohci46, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool47.not = icmp eq i8 %57, 0
  br i1 %tobool47.not, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %uninit_eohci.i122 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %uninit_eohci.i122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %uninit_eohci.i122, align 4
  %tobool.not.i123 = icmp eq ptr %61, null
  br i1 %tobool.not.i123, label %if.then48.if.end50_crit_edge, label %if.then.i124

if.then48.if.end50_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then.i124:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %61(ptr noundef %1) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then.i124, %if.then48.if.end50_crit_edge, %if.end45.if.end50_crit_edge
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  %uninit_common.i = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %uninit_common.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uninit_common.i, align 4
  %tobool.not.i128 = icmp eq ptr %65, null
  br i1 %tobool.not.i128, label %if.end50.brcm_usb_uninit_common.exit_crit_edge, label %if.then.i129

if.end50.brcm_usb_uninit_common.exit_crit_edge:   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcm_usb_uninit_common.exit

if.then.i129:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %65(ptr noundef %1) #8
  br label %brcm_usb_uninit_common.exit

brcm_usb_uninit_common.exit:                      ; preds = %if.then.i129, %if.end50.brcm_usb_uninit_common.exit_crit_edge
  %66 = ptrtoint ptr %usb_20_clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_20_clk, align 4
  tail call void @clk_disable(ptr noundef %67) #8
  tail call void @clk_unprepare(ptr noundef %67) #8
  %68 = ptrtoint ptr %usb_30_clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_30_clk, align 4
  tail call void @clk_disable(ptr noundef %69) #8
  tail call void @clk_unprepare(ptr noundef %69) #8
  br label %if.end54

if.end54:                                         ; preds = %brcm_usb_uninit_common.exit, %if.then35, %brcm_usb_uninit_xhci.exit.if.end54_crit_edge, %if.else28.if.end54_crit_edge, %if.then.i109, %if.then26.if.end54_crit_edge
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %wake_enabled, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !109, !110, !112, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !173, !174, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_phy_brcm_usb_dvr__295_666_brcm_usb_driver_init6, !1, !"__initcall__kmod_phy_brcm_usb_dvr__295_666_brcm_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 666, i32 1}
!2 = !{ptr @__exitcall_brcm_usb_driver_exit, !1, !"__exitcall_brcm_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias296, !4, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 668, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 669, i32 1}
!7 = !{ptr @__UNIQUE_ID_description298, !8, !"__UNIQUE_ID_description298", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 670, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 671, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 660, i32 11}
!14 = !{ptr @brcm_usb_driver, !15, !"brcm_usb_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 656, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 483, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @brcm_usb_phy_probe.__UNIQUE_ID_ddebug292, !17, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 486, i32 27}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 487, i32 27}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 490, i32 36}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 496, i32 32}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 498, i32 32}
!32 = !{ptr @brcm_usb_phy_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 524, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 537, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @brcm_usb_phy_probe._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @brcm_usb_phy_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 541, i32 8}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 544, i32 14}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 45, i32 24}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 46, i32 26}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 47, i32 23}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 48, i32 28}
!53 = !{ptr @brcm_dr_mode_to_name, !54, !"brcm_dr_mode_to_name", i1 false, i1 false}
!54 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 44, i32 39}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 359, i32 5}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @brcm_usb_get_regs.__UNIQUE_ID_ddebug291, !56, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 364, i32 4}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @brcm_usb_get_regs._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @brcm_usb_get_regs._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 371, i32 3}
!66 = !{ptr @brcm_usb_get_regs._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @brcm_usb_get_regs._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 10}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 21}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 33}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 44}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 79, i32 56}
!80 = !{ptr @node_reg_names, !81, !"node_reg_names", i1 false, i1 false}
!81 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 78, i32 12}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 386, i32 44}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 390, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @brcm_usb_phy_dvr_init._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 400, i32 4}
!92 = !{ptr @brcm_usb_phy_dvr_init._entry.37, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 411, i32 4}
!96 = !{ptr @brcm_usb_phy_dvr_init._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 418, i32 45}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 422, i32 4}
!102 = !{ptr @brcm_usb_phy_dvr_init._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 431, i32 35}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 435, i32 3}
!108 = !{ptr @brcm_usb_phy_dvr_init._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 439, i32 49}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 441, i32 50}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 450, i32 3}
!116 = !{ptr @brcm_usb_phy_dvr_init._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @brcm_usb_phy_dvr_init._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @brcm_usb_phy_ops, !119, !"brcm_usb_phy_ops", i1 false, i1 false}
!119 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 172, i32 29}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 138, i32 2}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @brcm_usb_phy_init.__UNIQUE_ID_ddebug289, !121, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 153, i32 2}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @brcm_usb_phy_exit.__UNIQUE_ID_ddebug290, !125, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!128 = !{ptr @brcm_usb_phy_attrs, !129, !"brcm_usb_phy_attrs", i1 false, i1 false}
!129 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 276, i32 26}
!130 = !{ptr @dev_attr_dr_mode, !131, !"dev_attr_dr_mode", i1 false, i1 false}
!131 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 238, i32 8}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 233, i32 22}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 223, i32 10}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 274, i32 8}
!138 = !{ptr @dev_attr_dual_select, !137, !"dev_attr_dual_select", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 25, i32 8}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @sysfs_lock, !140, !"sysfs_lock", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 53, i32 7}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 54, i32 7}
!147 = !{ptr @brcm_dual_mode_to_name, !148, !"brcm_dual_mode_to_name", i1 false, i1 false}
!148 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 51, i32 39}
!149 = !{ptr @brcm_usb_phy_group, !150, !"brcm_usb_phy_group", i1 false, i1 false}
!150 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 282, i32 37}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 192, i32 3}
!153 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @brcm_usb_phy_xlate._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @brcm_usb_phy_xlate._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 198, i32 3}
!158 = !{ptr @brcm_usb_phy_xlate._entry.69, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @brcm_usb_phy_xlate._entry_ptr.71, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @brcm_usb_dt_ids, !161, !"brcm_usb_dt_ids", i1 false, i1 false}
!161 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 318, i32 34}
!162 = !{ptr @chip_info_7445, !163, !"chip_info_7445", i1 false, i1 false}
!163 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 309, i32 37}
!164 = !{ptr @chip_info_7216, !165, !"chip_info_7216", i1 false, i1 false}
!165 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 286, i32 37}
!166 = !{ptr @chip_info_7211b0, !167, !"chip_info_7211b0", i1 false, i1 false}
!167 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 296, i32 37}
!168 = !{ptr @brcm_usb_phy_pm_ops, !169, !"brcm_usb_phy_pm_ops", i1 false, i1 false}
!169 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 650, i32 32}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 578, i32 3}
!172 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @brcm_usb_phy_suspend.__UNIQUE_ID_ddebug293, !171, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/phy/broadcom/phy-brcm-usb.c", i32 618, i32 3}
!176 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @brcm_usb_phy_resume.__UNIQUE_ID_ddebug294, !175, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i64 2148736809, i64 2148736814, i64 2148736827, i64 2148736871, i64 2148736905, i64 2148736926}
!189 = !{i8 0, i8 2}
