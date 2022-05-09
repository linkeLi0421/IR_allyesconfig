; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-plat.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_plat_priv = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__UNIQUE_ID_alias297 = internal constant [38 x i8] c"xhci_plat_hcd.alias=platform:xhci-hcd\00", section ".modinfo", align 1
@__initcall__kmod_xhci_plat_hcd__298_530_xhci_plat_init6 = internal global ptr @xhci_plat_init, section ".initcall6.init", align 4
@usb_xhci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xhci_plat_probe, ptr @xhci_plat_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_xhci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_plat_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xhci_plat_exit = internal global ptr @xhci_plat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [63 x i8] c"xhci_plat_hcd.description=xHCI Platform Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [50 x i8] c"xhci_plat_hcd.file=drivers/usb/host/xhci-plat-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [26 x i8] c"xhci_plat_hcd.license=GPL\00", section ".modinfo", align 1
@xhci_plat_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_plat_overrides = internal constant %struct.xhci_driver_overrides { i32 40, ptr @xhci_plat_setup, ptr @xhci_plat_start, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci-hcd\00", [23 x i8] zeroinitializer }, align 32
@usb_xhci_of_match = internal constant { [15 x %struct.of_device_id], [708 x i8] } { [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xhci-platform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada3700-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada3700 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,xhci-brcm-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_brcm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_brcm }, %struct.of_device_id zeroinitializer], [708 x i8] zeroinitializer }, align 32
@xhci_plat_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_plat_runtime_suspend, ptr @xhci_plat_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/host/xhci-plat.c\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb2-lpm-disable\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3-lpm-capable\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quirk-broken-port-ped\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imod-interval-ns\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@xhci_plat_marvell_armada = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr null, i64 0, ptr null, ptr null, ptr @xhci_mvebu_mbus_init_quirk, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@xhci_plat_marvell_armada3700 = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr null, i64 0, ptr @xhci_mvebu_a3700_plat_setup, ptr null, ptr @xhci_mvebu_a3700_init_quirk, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@xhci_plat_renesas_rcar_gen2 = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr @.str.8, i64 8520704, ptr null, ptr @xhci_rcar_start, ptr @xhci_rcar_init_quirk, ptr null, ptr @xhci_rcar_resume_quirk }, [56 x i8] zeroinitializer }, align 32
@xhci_plat_renesas_rcar_gen3 = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr @.str.9, i64 8520704, ptr null, ptr @xhci_rcar_start, ptr @xhci_rcar_init_quirk, ptr null, ptr @xhci_rcar_resume_quirk }, [56 x i8] zeroinitializer }, align 32
@xhci_plat_brcm = internal constant { %struct.xhci_plat_priv, [56 x i8] } { %struct.xhci_plat_priv { ptr null, i64 128, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r8a779x_usb3_v1.dlmem\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r8a779x_usb3_v3.dlmem\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"usb_xhci_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 512, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 517, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"usb_xhci_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 140, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"xhci_plat_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 495, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 230, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 270, i32 52 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 317, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 320, i32 41 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 323, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 326, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 330, i32 53 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"xhci_plat_marvell_armada\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 119, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [29 x i8] c"xhci_plat_marvell_armada3700\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 123, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"xhci_plat_renesas_rcar_gen2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 128, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"xhci_plat_renesas_rcar_gen3\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 132, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"xhci_plat_brcm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 136, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 129, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [32 x i8] c"../drivers/usb/host/xhci-plat.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 133, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_xhci_plat_exit, ptr @__initcall__kmod_xhci_plat_hcd__298_530_xhci_plat_init6, ptr @xhci_plat_exit, ptr @usb_xhci_driver, ptr @.str, ptr @usb_xhci_of_match, ptr @xhci_plat_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xhci_plat_marvell_armada, ptr @xhci_plat_marvell_armada3700, ptr @xhci_plat_renesas_rcar_gen2, ptr @xhci_plat_renesas_rcar_gen3, ptr @xhci_plat_brcm, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xhci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xhci_of_match to i32), i32 2940, i32 3648, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_marvell_armada to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_marvell_armada3700 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_renesas_rcar_gen2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_renesas_rcar_gen3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_plat_brcm to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef nonnull @xhci_plat_overrides) #7
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_xhci_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xhci_plat_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_xhci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_setup(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.hcd_to_xhci.exit.i_crit_edge

entry.hcd_to_xhci.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %entry.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %1, %if.else.i.i ], [ %hcd, %entry.hcd_to_xhci.exit.i_crit_edge ]
  %init_quirk.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 26, i32 1
  %2 = ptrtoint ptr %init_quirk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_quirk.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %hcd_to_xhci.exit.i.if.end_crit_edge, label %xhci_priv_init_quirk.exit

hcd_to_xhci.exit.i.if.end_crit_edge:              ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

xhci_priv_init_quirk.exit:                        ; preds = %hcd_to_xhci.exit.i
  %call3.i = tail call i32 %3(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %xhci_priv_init_quirk.exit.if.end_crit_edge, label %xhci_priv_init_quirk.exit.cleanup_crit_edge

xhci_priv_init_quirk.exit.cleanup_crit_edge:      ; preds = %xhci_priv_init_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xhci_priv_init_quirk.exit.if.end_crit_edge:       ; preds = %xhci_priv_init_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %xhci_priv_init_quirk.exit.if.end_crit_edge, %hcd_to_xhci.exit.i.if.end_crit_edge
  %call1 = tail call i32 @xhci_gen_setup(ptr noundef %hcd, ptr noundef nonnull @xhci_plat_quirks) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xhci_priv_init_quirk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call3.i, %xhci_priv_init_quirk.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_start(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.hcd_to_xhci.exit.i_crit_edge

entry.hcd_to_xhci.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %entry.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %1, %if.else.i.i ], [ %hcd, %entry.hcd_to_xhci.exit.i_crit_edge ]
  %plat_start.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 26
  %2 = ptrtoint ptr %plat_start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_start.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %hcd_to_xhci.exit.i.xhci_priv_plat_start.exit_crit_edge, label %if.then.i

hcd_to_xhci.exit.i.xhci_priv_plat_start.exit_crit_edge: ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_priv_plat_start.exit

if.then.i:                                        ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %hcd) #7
  br label %xhci_priv_plat_start.exit

xhci_priv_plat_start.exit:                        ; preds = %if.then.i, %hcd_to_xhci.exit.i.xhci_priv_plat_start.exit_crit_edge
  %call = tail call i32 @xhci_run(ptr noundef %hcd) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xhci_plat_quirks(ptr nocapture noundef readnone %dev, ptr nocapture noundef %xhci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 1, i32 2
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %quirks, align 8
  %quirks2 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %2 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %quirks2, align 8
  %or = or i64 %1, %3
  %or3 = or i64 %or, 65536
  store i64 %or3, ptr %quirks2, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !60
  %call = tail call i32 @usb_disabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool4.not422 = icmp eq ptr %dev, null
  br i1 %tobool4.not422, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %sysdev.0423 = phi ptr [ %8, %for.inc.for.body_crit_edge ], [ %dev, %if.end3.for.body_crit_edge ]
  %fwnode = getelementptr inbounds %struct.device, ptr %sysdev.0423, i32 0, i32 28
  %1 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwnode, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.lor.lhs.false_crit_edge, label %is_of_node.exit

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

is_of_node.exit:                                  ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %4, @of_fwnode_ops
  br i1 %cmp.i, label %is_of_node.exit.for.end_crit_edge, label %is_of_node.exit.lor.lhs.false_crit_edge

is_of_node.exit.lor.lhs.false_crit_edge:          ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

is_of_node.exit.for.end_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false:                                    ; preds = %is_of_node.exit.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %bus = getelementptr inbounds %struct.device, ptr %sysdev.0423, i32 0, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %cmp9 = icmp eq ptr %6, @pci_bus_type
  br i1 %cmp9, label %lor.lhs.false.for.end_crit_edge, label %for.inc

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.device, ptr %sysdev.0423, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %is_of_node.exit.for.end_crit_edge, %if.end3.for.end_crit_edge
  %spec.select = phi ptr [ null, %if.end3.for.end_crit_edge ], [ %sysdev.0423, %lor.lhs.false.for.end_crit_edge ], [ %sysdev.0423, %is_of_node.exit.for.end_crit_edge ], [ %dev, %for.inc.for.end_crit_edge ]
  %dma_mask = getelementptr inbounds %struct.device, ptr %spec.select, i32 0, i32 18
  %9 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_mask, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.end45, label %if.else43, !prof !61

if.else43:                                        ; preds = %for.end
  %call.i = tail call i32 @dma_set_mask(ptr noundef %spec.select, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i346 = icmp eq i32 %call.i, 0
  br i1 %cmp.i346, label %if.else43.if.end52.sink.split_crit_edge, label %if.else43.if.then47_crit_edge

if.else43.if.then47_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.else43.if.end52.sink.split_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.sink.split

if.end45:                                         ; preds = %for.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  %call42 = tail call fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool46.not = icmp eq i32 %call42, 0
  br i1 %tobool46.not, label %if.end45.if.end52_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.else43.if.then47_crit_edge
  %call.i347 = tail call i32 @dma_set_mask(ptr noundef %spec.select, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %cmp.i348 = icmp eq i32 %call.i347, 0
  br i1 %cmp.i348, label %if.then47.if.end52.sink.split_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47.if.end52.sink.split_crit_edge:          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.then47.if.end52.sink.split_crit_edge, %if.else43.if.end52.sink.split_crit_edge
  %.sink = phi i64 [ -1, %if.else43.if.end52.sink.split_crit_edge ], [ 4294967295, %if.then47.if.end52.sink.split_crit_edge ]
  %call1.i349 = tail call i32 @dma_set_coherent_mask(ptr noundef %spec.select, i64 noundef %.sink) #7
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.end45.if.end52_crit_edge
  %call.i352 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !62
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.dev_name.exit_crit_edge

if.end52.dev_name.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end52.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end52.dev_name.exit_crit_edge ]
  %call60 = tail call ptr @__usb_create_hcd(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef %spec.select, ptr noundef %dev, ptr noundef %retval.0.i, ptr noundef null) #7
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %dev_name.exit.disable_runtime_crit_edge, label %if.end63

dev_name.exit.disable_runtime_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_runtime

if.end63:                                         ; preds = %dev_name.exit
  %call64 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 16
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call64, ptr %regs, align 4
  %cmp.i353 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call64 to i32
  br label %put_hcd

if.end70:                                         ; preds = %if.end63
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 17
  %22 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i, align 4
  %25 = load i32, ptr %19, align 4
  %sub.i = add i32 %24, 1
  %add.i = sub i32 %sub.i, %25
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 18
  %26 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call.i354 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool.not.i355 = icmp eq i32 %call.i354, 0
  br i1 %tobool.not.i355, label %if.else.i, label %if.end70.hcd_to_xhci.exit_crit_edge

if.end70.hcd_to_xhci.exit_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 25
  %27 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %if.end70.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %28, %if.else.i ], [ %call60, %if.end70.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call74 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %reg_clk = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 2
  %29 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call74, ptr %reg_clk, align 8
  %cmp.i357 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %if.then77, label %if.end80

if.then77:                                        ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call74 to i32
  br label %put_hcd

if.end80:                                         ; preds = %hcd_to_xhci.exit
  %call.i358 = call i32 @clk_prepare(ptr noundef %call74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i358)
  %tobool.not.i359 = icmp eq i32 %call.i358, 0
  br i1 %tobool.not.i359, label %if.end.i361, label %if.end80.put_hcd_crit_edge

if.end80.put_hcd_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_hcd

if.end.i361:                                      ; preds = %if.end80
  %call1.i360 = call i32 @clk_enable(ptr noundef %call74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i360)
  %tobool2.not.i = icmp eq i32 %call1.i360, 0
  br i1 %tobool2.not.i, label %if.end85, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call74) #7
  br label %put_hcd

if.end85:                                         ; preds = %if.end.i361
  %call87 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 1
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call87, ptr %clk, align 4
  %cmp.i363 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call87 to i32
  br label %disable_reg_clk

if.end93:                                         ; preds = %if.end85
  %call95 = call fastcc i32 @clk_prepare_enable(ptr noundef %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.disable_reg_clk_crit_edge

if.end93.disable_reg_clk_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_reg_clk

if.end98:                                         ; preds = %if.end93
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %tobool100.not = icmp eq ptr %34, null
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %call103 = call ptr @of_device_get_match_data(ptr noundef %dev) #7
  br label %if.end107

if.else104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %35 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_data.i, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else104, %if.then101
  %priv_match.0 = phi ptr [ %call103, %if.then101 ], [ %36, %if.else104 ]
  %tobool108.not = icmp eq ptr %priv_match.0, null
  br i1 %tobool108.not, label %if.end107.if.end112_crit_edge, label %if.then109

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then109:                                       ; preds = %if.end107
  %call.i364 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool.not.i365 = icmp eq i32 %call.i364, 0
  br i1 %tobool.not.i365, label %if.else.i367, label %if.then109.hcd_to_xhci.exit371_crit_edge

if.then109.hcd_to_xhci.exit371_crit_edge:         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit371

if.else.i367:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i366 = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 25
  %37 = ptrtoint ptr %primary_hcd1.i366 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %primary_hcd1.i366, align 8
  br label %hcd_to_xhci.exit371

hcd_to_xhci.exit371:                              ; preds = %if.else.i367, %if.then109.hcd_to_xhci.exit371_crit_edge
  %primary_hcd.0.i368 = phi ptr [ %38, %if.else.i367 ], [ %call60, %if.then109.hcd_to_xhci.exit371_crit_edge ]
  %priv111 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i368, i32 15, i32 21, i32 4
  %39 = call ptr @memcpy(ptr %priv111, ptr %priv_match.0, i32 40)
  br label %if.end112

if.end112:                                        ; preds = %hcd_to_xhci.exit371, %if.end107.if.end112_crit_edge
  %priv.0 = phi ptr [ %priv111, %hcd_to_xhci.exit371 ], [ null, %if.end107.if.end112_crit_edge ]
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #7
  %40 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call60, ptr %hcd_priv.i, align 8
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i373 = icmp eq ptr %42, null
  br i1 %tobool.not.i373, label %if.end.i374, label %if.end112.dev_name.exit376_crit_edge

if.end112.dev_name.exit376_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit376

if.end.i374:                                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  br label %dev_name.exit376

dev_name.exit376:                                 ; preds = %if.end.i374, %if.end112.dev_name.exit376_crit_edge
  %retval.0.i375 = phi ptr [ %44, %if.end.i374 ], [ %42, %if.end112.dev_name.exit376_crit_edge ]
  %call117 = call ptr @__usb_create_hcd(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef %spec.select, ptr noundef %dev, ptr noundef %retval.0.i375, ptr noundef nonnull %call60) #7
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call117, ptr %shared_hcd, align 4
  %tobool119.not = icmp eq ptr %call117, null
  br i1 %tobool119.not, label %dev_name.exit376.disable_clk_crit_edge, label %if.end121

dev_name.exit376.disable_clk_crit_edge:           ; preds = %dev_name.exit376
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end121:                                        ; preds = %dev_name.exit376
  %imod_interval = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 40000, ptr %imod_interval, align 4
  br i1 %tobool4.not422, label %if.end121.for.end143_crit_edge, label %for.body125.lr.ph

if.end121.for.end143_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end143

for.body125.lr.ph:                                ; preds = %if.end121
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  br label %for.body125

for.body125:                                      ; preds = %if.end138.for.body125_crit_edge, %for.body125.lr.ph
  %tmpdev.0428 = phi ptr [ %dev, %for.body125.lr.ph ], [ %54, %if.end138.for.body125_crit_edge ]
  %call.i377 = call zeroext i1 @device_property_present(ptr noundef nonnull %tmpdev.0428, ptr noundef nonnull @.str.3) #7
  br i1 %call.i377, label %if.then127, label %for.body125.if.end128_crit_edge

for.body125.if.end128_crit_edge:                  ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then127:                                       ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %quirks, align 8
  %or = or i64 %48, 536870912
  store i64 %or, ptr %quirks, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %for.body125.if.end128_crit_edge
  %call.i378 = call zeroext i1 @device_property_present(ptr noundef nonnull %tmpdev.0428, ptr noundef nonnull @.str.4) #7
  br i1 %call.i378, label %if.then130, label %if.end128.if.end133_crit_edge

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %quirks, align 8
  %or132 = or i64 %50, 2048
  store i64 %or132, ptr %quirks, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end128.if.end133_crit_edge
  %call.i379 = call zeroext i1 @device_property_present(ptr noundef nonnull %tmpdev.0428, ptr noundef nonnull @.str.5) #7
  br i1 %call.i379, label %if.then135, label %if.end133.if.end138_crit_edge

if.end133.if.end138_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %quirks, align 8
  %or137 = or i64 %52, 33554432
  store i64 %or137, ptr %quirks, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end133.if.end138_crit_edge
  %call.i380 = call i32 @device_property_read_u32_array(ptr noundef nonnull %tmpdev.0428, ptr noundef nonnull @.str.6, ptr noundef %imod_interval, i32 noundef 1) #7
  %parent142 = getelementptr inbounds %struct.device, ptr %tmpdev.0428, i32 0, i32 1
  %53 = ptrtoint ptr %parent142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent142, align 8
  %tobool124.not = icmp eq ptr %54, null
  br i1 %tobool124.not, label %if.end138.for.end143_crit_edge, label %if.end138.for.body125_crit_edge

if.end138.for.body125_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body125

if.end138.for.end143_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end143

for.end143:                                       ; preds = %if.end138.for.end143_crit_edge, %if.end121.for.end143_crit_edge
  %call144 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %spec.select, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #7
  %usb_phy = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 10
  %55 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call144, ptr %usb_phy, align 4
  %cmp.i381 = icmp ugt ptr %call144, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.then147, label %if.else154

if.then147:                                       ; preds = %for.end143
  %cmp150 = icmp eq ptr %call144, inttoptr (i32 -517 to ptr)
  br i1 %cmp150, label %if.then147.put_usb3_hcd_crit_edge, label %if.end152

if.then147.put_usb3_hcd_crit_edge:                ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

if.end152:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %usb_phy, align 4
  br label %if.end160

if.else154:                                       ; preds = %for.end143
  %tobool.not.i382 = icmp eq ptr %call144, null
  br i1 %tobool.not.i382, label %if.else154.if.end160_crit_edge, label %land.lhs.true.i

if.else154.if.end160_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

land.lhs.true.i:                                  ; preds = %if.else154
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %call144, i32 0, i32 22
  %57 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end160_crit_edge, label %usb_phy_init.exit

land.lhs.true.i.if.end160_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

usb_phy_init.exit:                                ; preds = %land.lhs.true.i
  %call.i383 = call i32 %58(ptr noundef nonnull %call144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %tobool157.not = icmp eq i32 %call.i383, 0
  br i1 %tobool157.not, label %usb_phy_init.exit.if.end160_crit_edge, label %usb_phy_init.exit.put_usb3_hcd_crit_edge

usb_phy_init.exit.put_usb3_hcd_crit_edge:         ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

usb_phy_init.exit.if.end160_crit_edge:            ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.end160:                                        ; preds = %usb_phy_init.exit.if.end160_crit_edge, %land.lhs.true.i.if.end160_crit_edge, %if.else154.if.end160_crit_edge, %if.end152
  %of_node161 = getelementptr inbounds %struct.device, ptr %spec.select, i32 0, i32 27
  %59 = ptrtoint ptr %of_node161 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node161, align 8
  %call162 = call zeroext i1 @of_usb_host_tpl_support(ptr noundef %60) #7
  %tpl_support = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 14
  %61 = ptrtoint ptr %tpl_support to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load = load i16, ptr %tpl_support, align 4
  %bf.shl = select i1 %call162, i16 32, i16 0
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %tpl_support, align 4
  %62 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shared_hcd, align 4
  %tpl_support167 = getelementptr inbounds %struct.usb_hcd, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %tpl_support167 to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load168 = load i16, ptr %tpl_support167, align 4
  %bf.clear171 = and i16 %bf.load168, -33
  %bf.set172 = or i16 %bf.clear171, %bf.shl
  store i16 %bf.set172, ptr %tpl_support167, align 4
  %tobool174.not = icmp eq ptr %priv.0, null
  br i1 %tobool174.not, label %if.end180.thread, label %if.then175

if.then175:                                       ; preds = %if.end160
  %call.i.i = call i32 @usb_hcd_is_primary_hcd(ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i386 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i386, label %if.else.i.i, label %if.then175.hcd_to_xhci.exit.i_crit_edge

if.then175.hcd_to_xhci.exit.i_crit_edge:          ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %call60, i32 0, i32 25
  %65 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %if.then175.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %66, %if.else.i.i ], [ %call60, %if.then175.hcd_to_xhci.exit.i_crit_edge ]
  %plat_setup.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 25
  %67 = ptrtoint ptr %plat_setup.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %plat_setup.i, align 8
  %tobool.not.i387 = icmp eq ptr %68, null
  br i1 %tobool.not.i387, label %hcd_to_xhci.exit.i.if.end180_crit_edge, label %xhci_priv_plat_setup.exit

hcd_to_xhci.exit.i.if.end180_crit_edge:           ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

xhci_priv_plat_setup.exit:                        ; preds = %hcd_to_xhci.exit.i
  %call3.i = call i32 %68(ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool177.not = icmp eq i32 %call3.i, 0
  br i1 %tobool177.not, label %xhci_priv_plat_setup.exit.if.end180_crit_edge, label %xhci_priv_plat_setup.exit.disable_usb_phy_crit_edge

xhci_priv_plat_setup.exit.disable_usb_phy_crit_edge: ; preds = %xhci_priv_plat_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_usb_phy

xhci_priv_plat_setup.exit.if.end180_crit_edge:    ; preds = %xhci_priv_plat_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.end180:                                        ; preds = %xhci_priv_plat_setup.exit.if.end180_crit_edge, %hcd_to_xhci.exit.i.if.end180_crit_edge
  %quirks181 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %69 = ptrtoint ptr %quirks181 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %quirks181, align 8
  %and = and i64 %70, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool182.not = icmp eq i64 %and, 0
  br i1 %tobool182.not, label %land.lhs.true.critedge, label %if.end180.land.lhs.true194.sink.split_crit_edge

if.end180.land.lhs.true194.sink.split_crit_edge:  ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true194.sink.split

if.end180.thread:                                 ; preds = %if.end160
  %quirks181410 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %71 = ptrtoint ptr %quirks181410 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %quirks181410, align 8
  %and411 = and i64 %72, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and411)
  %tobool182.not412 = icmp eq i64 %and411, 0
  br i1 %tobool182.not412, label %if.end180.thread.if.end201_crit_edge, label %if.then188.thread

if.end180.thread.if.end201_crit_edge:             ; preds = %if.end180.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

if.then188.thread:                                ; preds = %if.end180.thread
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %tpl_support to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load189418 = load i16, ptr %tpl_support, align 4
  %bf.set191419 = or i16 %bf.load189418, 2048
  store i16 %bf.set191419, ptr %tpl_support, align 4
  br label %if.end201

land.lhs.true.critedge:                           ; preds = %if.end180
  %quirks185 = getelementptr inbounds %struct.xhci_plat_priv, ptr %priv.0, i32 0, i32 1
  %74 = ptrtoint ptr %quirks185 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %quirks185, align 8
  %and186 = and i64 %75, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and186)
  %tobool187.not = icmp eq i64 %and186, 0
  br i1 %tobool187.not, label %land.lhs.true.critedge.land.lhs.true194_crit_edge, label %land.lhs.true.critedge.land.lhs.true194.sink.split_crit_edge

land.lhs.true.critedge.land.lhs.true194.sink.split_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true194.sink.split

land.lhs.true.critedge.land.lhs.true194_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true194

land.lhs.true194.sink.split:                      ; preds = %land.lhs.true.critedge.land.lhs.true194.sink.split_crit_edge, %if.end180.land.lhs.true194.sink.split_crit_edge
  %76 = ptrtoint ptr %tpl_support to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load189.c420 = load i16, ptr %tpl_support, align 4
  %bf.set191.c421 = or i16 %bf.load189.c420, 2048
  store i16 %bf.set191.c421, ptr %tpl_support, align 4
  br label %land.lhs.true194

land.lhs.true194:                                 ; preds = %land.lhs.true194.sink.split, %land.lhs.true.critedge.land.lhs.true194_crit_edge
  %quirks195 = getelementptr inbounds %struct.xhci_plat_priv, ptr %priv.0, i32 0, i32 1
  %77 = ptrtoint ptr %quirks195 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %quirks195, align 8
  %and196 = and i64 %78, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and196)
  %tobool197.not = icmp eq i64 %and196, 0
  br i1 %tobool197.not, label %land.lhs.true194.if.end201_crit_edge, label %if.then198

land.lhs.true194.if.end201_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

if.then198:                                       ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %quirks181 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %quirks181, align 8
  %or200 = or i64 %80, 549755813888
  store i64 %or200, ptr %quirks181, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %land.lhs.true194.if.end201_crit_edge, %if.then188.thread, %if.end180.thread.if.end201_crit_edge
  %call202 = call i32 @usb_add_hcd(ptr noundef nonnull %call60, i32 noundef %call1, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %if.end201.disable_usb_phy_crit_edge

if.end201.disable_usb_phy_crit_edge:              ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_usb_phy

if.end205:                                        ; preds = %if.end201
  %hcc_params = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %81 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hcc_params, align 8
  %shr = lshr i32 %82, 12
  %and206 = and i32 %shr, 15
  %shl = shl nuw nsw i32 2, %and206
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl)
  %cmp207 = icmp ugt i32 %shl, 3
  br i1 %cmp207, label %if.then209, label %if.end205.if.end214_crit_edge

if.end205.if.end214_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %shared_hcd, align 4
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %can_do_streams to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load211 = load i16, ptr %can_do_streams, align 4
  %bf.set213 = or i16 %bf.load211, 64
  store i16 %bf.set213, ptr %can_do_streams, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.end205.if.end214_crit_edge
  %86 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %shared_hcd, align 4
  %call216 = call i32 @usb_add_hcd(ptr noundef %87, i32 noundef %call1, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %dealloc_usb2_hcd

if.end219:                                        ; preds = %if.end214
  %is_prepared.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %88 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %89 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %bf.cast.not.i = icmp eq i16 %89, 0
  br i1 %bf.cast.not.i, label %if.then.i390, label %if.end219.device_enable_async_suspend.exit_crit_edge

if.end219.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_enable_async_suspend.exit

if.then.i390:                                     ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i = or i16 %bf.load.i, 16384
  %90 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i390, %if.end219.device_enable_async_suspend.exit_crit_edge
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  call void @pm_runtime_forbid(ptr noundef %dev) #7
  br label %cleanup

dealloc_usb2_hcd:                                 ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  call void @usb_remove_hcd(ptr noundef nonnull %call60) #7
  br label %disable_usb_phy

disable_usb_phy:                                  ; preds = %dealloc_usb2_hcd, %if.end201.disable_usb_phy_crit_edge, %xhci_priv_plat_setup.exit.disable_usb_phy_crit_edge
  %ret.1 = phi i32 [ %call3.i, %xhci_priv_plat_setup.exit.disable_usb_phy_crit_edge ], [ %call202, %if.end201.disable_usb_phy_crit_edge ], [ %call216, %dealloc_usb2_hcd ]
  %91 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i392 = icmp eq ptr %92, null
  br i1 %tobool.not.i392, label %disable_usb_phy.put_usb3_hcd_crit_edge, label %land.lhs.true.i394

disable_usb_phy.put_usb3_hcd_crit_edge:           ; preds = %disable_usb_phy
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

land.lhs.true.i394:                               ; preds = %disable_usb_phy
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %92, i32 0, i32 23
  %93 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i393 = icmp eq ptr %94, null
  br i1 %tobool1.not.i393, label %land.lhs.true.i394.put_usb3_hcd_crit_edge, label %if.then.i395

land.lhs.true.i394.put_usb3_hcd_crit_edge:        ; preds = %land.lhs.true.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

if.then.i395:                                     ; preds = %land.lhs.true.i394
  call void @__sanitizer_cov_trace_pc() #9
  call void %94(ptr noundef nonnull %92) #7
  br label %put_usb3_hcd

put_usb3_hcd:                                     ; preds = %if.then.i395, %land.lhs.true.i394.put_usb3_hcd_crit_edge, %disable_usb_phy.put_usb3_hcd_crit_edge, %usb_phy_init.exit.put_usb3_hcd_crit_edge, %if.then147.put_usb3_hcd_crit_edge
  %ret.2 = phi i32 [ -517, %if.then147.put_usb3_hcd_crit_edge ], [ %call.i383, %usb_phy_init.exit.put_usb3_hcd_crit_edge ], [ %ret.1, %disable_usb_phy.put_usb3_hcd_crit_edge ], [ %ret.1, %land.lhs.true.i394.put_usb3_hcd_crit_edge ], [ %ret.1, %if.then.i395 ]
  %95 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %shared_hcd, align 4
  call void @usb_put_hcd(ptr noundef %96) #7
  br label %disable_clk

disable_clk:                                      ; preds = %put_usb3_hcd, %dev_name.exit376.disable_clk_crit_edge
  %ret.3 = phi i32 [ %ret.2, %put_usb3_hcd ], [ -12, %dev_name.exit376.disable_clk_crit_edge ]
  %97 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %98) #7
  call void @clk_unprepare(ptr noundef %98) #7
  br label %disable_reg_clk

disable_reg_clk:                                  ; preds = %disable_clk, %if.end93.disable_reg_clk_crit_edge, %if.then90
  %ret.4 = phi i32 [ %32, %if.then90 ], [ %call95, %if.end93.disable_reg_clk_crit_edge ], [ %ret.3, %disable_clk ]
  %99 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_clk, align 8
  call void @clk_disable(ptr noundef %100) #7
  call void @clk_unprepare(ptr noundef %100) #7
  br label %put_hcd

put_hcd:                                          ; preds = %disable_reg_clk, %if.then3.i, %if.end80.put_hcd_crit_edge, %if.then77, %if.then67
  %ret.5 = phi i32 [ %17, %if.then67 ], [ %30, %if.then77 ], [ %ret.4, %disable_reg_clk ], [ %call1.i360, %if.then3.i ], [ %call.i358, %if.end80.put_hcd_crit_edge ]
  call void @usb_put_hcd(ptr noundef nonnull %call60) #7
  br label %disable_runtime

disable_runtime:                                  ; preds = %put_hcd, %dev_name.exit.disable_runtime_crit_edge
  %ret.6 = phi i32 [ %ret.5, %put_hcd ], [ -12, %dev_name.exit.disable_runtime_crit_edge ]
  %call.i.i.i398 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %disable_runtime.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

disable_runtime.pm_runtime_put_noidle.exit_crit_edge: ; preds = %disable_runtime
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %disable_runtime
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %disable_runtime.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %device_enable_async_suspend.exit, %if.then47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %pm_runtime_put_noidle.exit ], [ 0, %device_enable_async_suspend.exit ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i347, %if.then47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %clk2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk2, align 4
  %reg_clk3 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 2
  %6 = ptrtoint ptr %reg_clk3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_clk3, align 8
  %shared_hcd4 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %shared_hcd4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared_hcd4, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i24 = tail call i32 @__pm_runtime_resume(ptr noundef %dev5, i32 noundef 4) #7
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %10 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xhc_state, align 4
  %or = or i32 %11, 4
  store i32 %or, ptr %xhc_state, align 4
  tail call void @usb_remove_hcd(ptr noundef %9) #7
  %12 = ptrtoint ptr %shared_hcd4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %shared_hcd4, align 4
  %usb_phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i25 = icmp eq ptr %14, null
  br i1 %tobool.not.i25, label %hcd_to_xhci.exit.usb_phy_shutdown.exit_crit_edge, label %land.lhs.true.i

hcd_to_xhci.exit.usb_phy_shutdown.exit_crit_edge: ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_shutdown.exit

land.lhs.true.i:                                  ; preds = %hcd_to_xhci.exit
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_shutdown.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_shutdown.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef nonnull %14) #7
  br label %usb_phy_shutdown.exit

usb_phy_shutdown.exit:                            ; preds = %if.then.i, %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, %hcd_to_xhci.exit.usb_phy_shutdown.exit_crit_edge
  tail call void @usb_remove_hcd(ptr noundef %1) #7
  tail call void @usb_put_hcd(ptr noundef %9) #7
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  tail call void @usb_put_hcd(ptr noundef %1) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev5, i1 noundef zeroext true) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %usb_phy_shutdown.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

usb_phy_shutdown.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %usb_phy_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %usb_phy_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %usb_phy_shutdown.exit.pm_runtime_put_noidle.exit_crit_edge
  %call.i26 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev5, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.dma_set_mask_and_coherent.exit_crit_edge

entry.dma_set_mask_and_coherent.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #7
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %entry.dma_set_mask_and_coherent.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usb_create_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_usb_host_tpl_support(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_mbus_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_a3700_plat_setup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_a3700_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_rcar_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_rcar_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_rcar_resume_quirk(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %hcd_to_xhci.exit.if.end_crit_edge

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %hcd_to_xhci.exit
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i16 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i16, label %if.then, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge, %hcd_to_xhci.exit.if.end_crit_edge
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.hcd_to_xhci.exit.i_crit_edge

if.end.hcd_to_xhci.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %if.end.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %8, %if.else.i.i ], [ %1, %if.end.hcd_to_xhci.exit.i_crit_edge ]
  %suspend_quirk.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 26, i32 2
  %9 = ptrtoint ptr %suspend_quirk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %suspend_quirk.i, align 4
  %tobool.not.i18 = icmp eq ptr %10, null
  br i1 %tobool.not.i18, label %hcd_to_xhci.exit.i.if.end6_crit_edge, label %xhci_priv_suspend_quirk.exit

hcd_to_xhci.exit.i.if.end6_crit_edge:             ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

xhci_priv_suspend_quirk.exit:                     ; preds = %hcd_to_xhci.exit.i
  %call3.i = tail call i32 %10(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %xhci_priv_suspend_quirk.exit.if.end6_crit_edge, label %xhci_priv_suspend_quirk.exit.cleanup_crit_edge

xhci_priv_suspend_quirk.exit.cleanup_crit_edge:   ; preds = %xhci_priv_suspend_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xhci_priv_suspend_quirk.exit.if.end6_crit_edge:   ; preds = %xhci_priv_suspend_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %xhci_priv_suspend_quirk.exit.if.end6_crit_edge, %hcd_to_xhci.exit.i.if.end6_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i19 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i19)
  %tobool.not.i20 = icmp sgt i16 %bf.load.i19, -1
  br i1 %tobool.not.i20, label %if.end6.device_may_wakeup.exit_crit_edge, label %land.rhs.i21

if.end6.device_may_wakeup.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i21:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %12 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %13, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i21, %if.end6.device_may_wakeup.exit_crit_edge
  %14 = phi i1 [ false, %if.end6.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i21 ]
  %call8 = tail call i32 @xhci_suspend(ptr noundef %hcd_priv.i, i1 noundef zeroext %14) #7
  br label %cleanup

cleanup:                                          ; preds = %device_may_wakeup.exit, %xhci_priv_suspend_quirk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %device_may_wakeup.exit ], [ %call3.i, %xhci_priv_suspend_quirk.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge

hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %5, %if.else.i.i ], [ %1, %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge ]
  %resume_quirk.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 26, i32 3
  %6 = ptrtoint ptr %resume_quirk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume_quirk.i, align 8
  %tobool.not.i17 = icmp eq ptr %7, null
  br i1 %tobool.not.i17, label %hcd_to_xhci.exit.i.if.end_crit_edge, label %xhci_priv_resume_quirk.exit

hcd_to_xhci.exit.i.if.end_crit_edge:              ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

xhci_priv_resume_quirk.exit:                      ; preds = %hcd_to_xhci.exit.i
  %call3.i = tail call i32 %7(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %xhci_priv_resume_quirk.exit.if.end_crit_edge, label %xhci_priv_resume_quirk.exit.cleanup_crit_edge

xhci_priv_resume_quirk.exit.cleanup_crit_edge:    ; preds = %xhci_priv_resume_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xhci_priv_resume_quirk.exit.if.end_crit_edge:     ; preds = %xhci_priv_resume_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %xhci_priv_resume_quirk.exit.if.end_crit_edge, %hcd_to_xhci.exit.i.if.end_crit_edge
  %call3 = tail call i32 @xhci_resume(ptr noundef %hcd_priv.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i18 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %xhci_priv_resume_quirk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call3.i, %xhci_priv_resume_quirk.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge

hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %5, %if.else.i.i ], [ %1, %hcd_to_xhci.exit.hcd_to_xhci.exit.i_crit_edge ]
  %suspend_quirk.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 15, i32 26, i32 2
  %6 = ptrtoint ptr %suspend_quirk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend_quirk.i, align 4
  %tobool.not.i8 = icmp eq ptr %7, null
  br i1 %tobool.not.i8, label %hcd_to_xhci.exit.i.if.end_crit_edge, label %xhci_priv_suspend_quirk.exit

hcd_to_xhci.exit.i.if.end_crit_edge:              ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

xhci_priv_suspend_quirk.exit:                     ; preds = %hcd_to_xhci.exit.i
  %call3.i = tail call i32 %7(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %xhci_priv_suspend_quirk.exit.if.end_crit_edge, label %xhci_priv_suspend_quirk.exit.cleanup_crit_edge

xhci_priv_suspend_quirk.exit.cleanup_crit_edge:   ; preds = %xhci_priv_suspend_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xhci_priv_suspend_quirk.exit.if.end_crit_edge:    ; preds = %xhci_priv_suspend_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %xhci_priv_suspend_quirk.exit.if.end_crit_edge, %hcd_to_xhci.exit.i.if.end_crit_edge
  %call3 = tail call i32 @xhci_suspend(ptr noundef %hcd_priv.i, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xhci_priv_suspend_quirk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call3.i, %xhci_priv_suspend_quirk.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_plat_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call2 = tail call i32 @xhci_resume(ptr noundef %hcd_priv.i, i1 noundef zeroext false) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_alias297, !1, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-plat.c", i32 523, i32 1}
!2 = !{ptr @__initcall__kmod_xhci_plat_hcd__298_530_xhci_plat_init6, !3, !"__initcall__kmod_xhci_plat_hcd__298_530_xhci_plat_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-plat.c", i32 530, i32 1}
!4 = !{ptr @__exitcall_xhci_plat_exit, !5, !"__exitcall_xhci_plat_exit", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-plat.c", i32 536, i32 1}
!6 = !{ptr @__UNIQUE_ID_description299, !7, !"__UNIQUE_ID_description299", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-plat.c", i32 538, i32 1}
!8 = !{ptr @__UNIQUE_ID_file300, !9, !"__UNIQUE_ID_file300", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-plat.c", i32 539, i32 1}
!10 = !{ptr @__UNIQUE_ID_license301, !9, !"__UNIQUE_ID_license301", i1 false, i1 false}
!11 = !{ptr @xhci_plat_hc_driver, !12, !"xhci_plat_hc_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/xhci-plat.c", i32 28, i32 39}
!13 = !{ptr @xhci_plat_overrides, !14, !"xhci_plat_overrides", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-plat.c", i32 33, i32 43}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-plat.c", i32 517, i32 11}
!17 = !{ptr @usb_xhci_driver, !18, !"usb_xhci_driver", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/xhci-plat.c", i32 512, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/xhci-plat.c", i32 230, i32 6}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/xhci-plat.c", i32 270, i32 52}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/xhci-plat.c", i32 317, i32 41}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/xhci-plat.c", i32 320, i32 41}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/xhci-plat.c", i32 323, i32 41}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/xhci-plat.c", i32 326, i32 36}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/xhci-plat.c", i32 330, i32 53}
!33 = !{ptr @usb_xhci_of_match, !34, !"usb_xhci_of_match", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/xhci-plat.c", i32 140, i32 34}
!35 = !{ptr @xhci_plat_marvell_armada, !36, !"xhci_plat_marvell_armada", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/xhci-plat.c", i32 119, i32 36}
!37 = !{ptr @xhci_plat_marvell_armada3700, !38, !"xhci_plat_marvell_armada3700", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/xhci-plat.c", i32 123, i32 36}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/xhci-plat.c", i32 129, i32 2}
!41 = !{ptr @xhci_plat_renesas_rcar_gen2, !42, !"xhci_plat_renesas_rcar_gen2", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-plat.c", i32 128, i32 36}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/xhci-plat.c", i32 133, i32 2}
!45 = !{ptr @xhci_plat_renesas_rcar_gen3, !46, !"xhci_plat_renesas_rcar_gen3", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/xhci-plat.c", i32 132, i32 36}
!47 = !{ptr @xhci_plat_brcm, !48, !"xhci_plat_brcm", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/xhci-plat.c", i32 136, i32 36}
!49 = !{ptr @xhci_plat_pm_ops, !50, !"xhci_plat_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/xhci-plat.c", i32 495, i32 32}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2148250811, i64 2148250837, i64 2148250866, i64 2148250900, i64 2148250931, i64 2148250954}
!63 = !{i64 2148250230}
!64 = !{i64 735053, i64 735078, i64 735100, i64 735116, i64 735128, i64 735148, i64 735172, i64 735188, i64 735200}
!65 = !{i64 2148250418}
