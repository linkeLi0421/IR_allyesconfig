; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-mv.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-mv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.85, %union.anon.87, [2 x i32], i32 }
%union.anon.85 = type { [15 x i32] }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, [15 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mv_usb_platform_data = type { ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_hcd_mv = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ehci_mv__293_303_ehci_platform_init6 = internal global ptr @ehci_platform_init, section ".initcall6.init", align 4
@ehci_mv_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_ehci_probe, ptr @mv_ehci_remove, ptr @mv_ehci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @ehci_mv_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ehci_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_platform_cleanup = internal global ptr @ehci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [40 x i8] c"ehci_mv.description=Marvell EHCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [47 x i8] c"ehci_mv.author=Chao Xie <chao.xie@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [48 x i8] c"ehci_mv.author=Neil Zhang <zhangwm@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [22 x i8] c"ehci_mv.alias=mv-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [38 x i8] c"ehci_mv.file=drivers/usb/host/ehci-mv\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"ehci_mv.license=GPL\00", section ".modinfo", align 1
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 32, ptr @mv_ehci_reset, ptr null }, section ".init.rodata", align 4
@mv_ehci_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can not find private ehci data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_ehci_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/host/ehci-mv.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_ehci_reset._entry_ptr = internal global ptr @mv_ehci_reset._entry, section ".printk_index", align 4
@mv_ehci_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ehci_setup failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mv_ehci_reset._entry_ptr.7 = internal global ptr @mv_ehci_reset._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mv-ehci\00", [24 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@ehci_mv_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxau2o-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ehci_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa-u2oehci\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"pxa-sph\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get phy.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_ehci_probe\00", [18 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr = internal global ptr @mv_ehci_probe._entry, section ".printk_index", align 4
@mv_ehci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.14 = internal global ptr @mv_ehci_probe._entry.12, section ".printk_index", align 4
@mv_ehci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init phy error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.17 = internal global ptr @mv_ehci_probe._entry.15, section ".printk_index", align 4
@mv_ehci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 183, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MV_USB_MODE_OTG must have CONFIG_USB_PHY enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.21 = internal global ptr @mv_ehci_probe._entry.18, section ".printk_index", align 4
@mv_ehci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to find transceiver\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.24 = internal global ptr @mv_ehci_probe._entry.22, section ".printk_index", align 4
@mv_ehci_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register with transceiver\0A\00", [59 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.27 = internal global ptr @mv_ehci_probe._entry.25, section ".printk_index", align 4
@mv_ehci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add hcd with err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.30 = internal global ptr @mv_ehci_probe._entry.28, section ".printk_index", align 4
@mv_ehci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.11, ptr @.str.2, i32 223, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"successful find EHCI device with regs 0x%p irq %d working in %s mode\0A\00", [58 x i8] zeroinitializer }, align 32
@mv_ehci_probe._entry_ptr.33 = internal global ptr @mv_ehci_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OTG\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Host\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ehci_mv_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 283, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 75, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 83, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 288, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"ehci_mv_dt_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 278, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"ehci_id_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 261, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 130, i32 51 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 134, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 140, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 154, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 182, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 185, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 192, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 205, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [30 x i8] c"../drivers/usb/host/ehci-mv.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 220, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ehci_platform_cleanup, ptr @__initcall__kmod_ehci_mv__293_303_ehci_platform_init6, ptr @ehci_platform_cleanup, ptr @mv_ehci_probe._entry, ptr @mv_ehci_probe._entry.12, ptr @mv_ehci_probe._entry.15, ptr @mv_ehci_probe._entry.18, ptr @mv_ehci_probe._entry.22, ptr @mv_ehci_probe._entry.25, ptr @mv_ehci_probe._entry.28, ptr @mv_ehci_probe._entry.31, ptr @mv_ehci_probe._entry_ptr, ptr @mv_ehci_probe._entry_ptr.14, ptr @mv_ehci_probe._entry_ptr.17, ptr @mv_ehci_probe._entry_ptr.21, ptr @mv_ehci_probe._entry_ptr.24, ptr @mv_ehci_probe._entry_ptr.27, ptr @mv_ehci_probe._entry_ptr.30, ptr @mv_ehci_probe._entry_ptr.33, ptr @mv_ehci_reset._entry, ptr @mv_ehci_reset._entry.5, ptr @mv_ehci_reset._entry_ptr, ptr @mv_ehci_reset._entry_ptr.7, ptr @ehci_mv_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @ehci_mv_dt_ids, ptr @ehci_id_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_mv_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_mv_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ehci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #5
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_mv_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_platform_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_mv_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ehci_reset(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 3
  %cmp = icmp eq ptr %priv, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %2 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %call3 = tail call i32 @ehci_setup(ptr noundef %hcd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %do.end7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %call3) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end7, %if.end.if.end8_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call9 = tail call i32 @of_usb_get_phy_mode(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 5
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %7 = getelementptr inbounds %struct.ehci_regs, ptr %6, i32 0, i32 11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !86
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %11 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then11.ehci_writel.exit_crit_edge

if.then11.ehci_writel.exit_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %14 = getelementptr inbounds %struct.ehci_regs, ptr %13, i32 0, i32 11
  %or = or i32 %9, 327680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %15) #5, !srcloc !89
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %if.then11.ehci_writel.exit_crit_edge
  %16 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i40 = load i32, ptr %imx28_write_fix.i, align 4
  %17 = and i32 %bf.load.i40, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i41 = icmp eq i32 %17, 0
  br i1 %tobool.not.i41, label %do.body.i42, label %ehci_writel.exit.cleanup_crit_edge

ehci_writel.exit.cleanup_crit_edge:               ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i42:                                      ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %20 = getelementptr inbounds %struct.ehci_regs, ptr %19, i32 0, i32 11
  %and = and i32 %9, -327681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #5, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %do.body.i42, %ehci_writel.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call3, %if.end8.cleanup_crit_edge ], [ %call3, %ehci_writel.exit.cleanup_crit_edge ], [ %call3, %do.body.i42 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ehci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  %call6 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %dev_name.exit.cleanup_crit_edge, label %if.end9

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %priv, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mode13 = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode13, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %priv, align 4
  %set_vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_vbus, align 4
  %set_vbus15 = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5, i32 3
  %13 = ptrtoint ptr %set_vbus15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %set_vbus15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  %call18 = tail call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #5
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5, i32 2
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end16
  %cmp.not = icmp eq ptr %call18, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then21.err_put_hcd_crit_edge, label %do.end

if.then21.err_put_hcd_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_hcd

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %err_put_hcd

if.end27:                                         ; preds = %if.end16
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %clk, align 4
  %cmp.i236 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %err_put_hcd

if.end39:                                         ; preds = %if.end27
  %call40 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call42 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call40) #5
  %base = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 3, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call42, ptr %base, align 4
  %cmp.i237 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call42 to i32
  br label %err_put_hcd

if.end48:                                         ; preds = %if.end39
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end48.do.end54_crit_edge

if.end48.do.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

if.end.i.i:                                       ; preds = %if.end48
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i238, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i238:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %call2.i = tail call i32 @phy_init(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end56, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then4.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %27, %if.then4.i ], [ %23, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call2.i, %if.then4.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #5
  br label %do.end54

do.end54:                                         ; preds = %cleanup.sink.split.i, %if.end48.do.end54_crit_edge
  %retval.0.i239.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %if.end48.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i239.ph) #8
  br label %err_put_hcd

if.end56:                                         ; preds = %if.end.i238
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = ptrtoint ptr %29 to i32
  %add = add i32 %30, 256
  %31 = inttoptr i32 %add to ptr
  %cap_regs = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 4
  %32 = ptrtoint ptr %cap_regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cap_regs, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !86
  %34 = lshr i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %35 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cap_regs, align 4
  %37 = ptrtoint ptr %36 to i32
  %add62 = add i32 %34, %37
  %38 = inttoptr i32 %add62 to ptr
  %op_regs = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5
  %39 = ptrtoint ptr %op_regs to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %op_regs, align 4
  %40 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call40, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 0, i32 17
  %42 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call40, i32 0, i32 1
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i, align 4
  %45 = load i32, ptr %call40, align 4
  %sub.i = add i32 %44, 1
  %add.i = sub i32 %sub.i, %45
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 0, i32 18
  %46 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %rsrc_len, align 4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 0, i32 16
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %38, ptr %regs, align 4
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end56.err_disable_clk_crit_edge, label %if.end68

if.end56.err_disable_clk_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk

if.end68:                                         ; preds = %if.end56
  %irq = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 0, i32 15
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call65, ptr %irq, align 8
  %49 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cap_regs, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 1, i32 0, i32 18
  %51 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %caps, align 4
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp72 = icmp eq i32 %53, 0
  br i1 %cmp72, label %if.then73, label %if.else103

if.then73:                                        ; preds = %if.end68
  %call75 = tail call ptr @devm_usb_get_phy(ptr noundef %dev, i32 noundef 1) #5
  %otg = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5, i32 1
  %54 = ptrtoint ptr %otg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call75, ptr %otg, align 4
  %cmp.i241 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then78, label %if.end92

if.then78:                                        ; preds = %if.then73
  %cmp81 = icmp eq ptr %call75, inttoptr (i32 -6 to ptr)
  br i1 %cmp81, label %do.end85, label %do.end89

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %err_disable_clk

do.end89:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %call75 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %err_disable_clk

if.end92:                                         ; preds = %if.then73
  %otg94 = getelementptr inbounds %struct.usb_phy, ptr %call75, i32 0, i32 5
  %56 = ptrtoint ptr %otg94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %otg94, align 4
  %tobool.not.i242 = icmp eq ptr %57, null
  br i1 %tobool.not.i242, label %if.end92.do.end100_crit_edge, label %land.lhs.true.i

if.end92.do.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

land.lhs.true.i:                                  ; preds = %if.end92
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end100_crit_edge, label %otg_set_host.exit

land.lhs.true.i.do.end100_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

otg_set_host.exit:                                ; preds = %land.lhs.true.i
  %call.i = tail call i32 %59(ptr noundef nonnull %57, ptr noundef nonnull %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp96 = icmp slt i32 %call.i, 0
  br i1 %cmp96, label %otg_set_host.exit.do.end100_crit_edge, label %if.end102

otg_set_host.exit.do.end100_crit_edge:            ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

do.end100:                                        ; preds = %otg_set_host.exit.do.end100_crit_edge, %land.lhs.true.i.do.end100_crit_edge, %if.end92.do.end100_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %err_disable_clk

if.end102:                                        ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mv_ehci_disable(ptr noundef %priv)
  br label %if.end121

if.else103:                                       ; preds = %if.end68
  %set_vbus104 = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 2, i32 0, i32 9, i32 5, i32 3
  %60 = ptrtoint ptr %set_vbus104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_vbus104, align 4
  %tobool105.not = icmp eq ptr %61, null
  br i1 %tobool105.not, label %if.else103.if.end109_crit_edge, label %if.then106

if.else103.if.end109_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then106:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = tail call i32 %61(i32 noundef 1) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.else103.if.end109_crit_edge
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 8
  %call111 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call6, i32 noundef %63, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end118, label %do.end116

do.end116:                                        ; preds = %if.end109
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call111) #8
  %64 = ptrtoint ptr %set_vbus104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_vbus104, align 4
  %tobool141.not = icmp eq ptr %65, null
  br i1 %tobool141.not, label %do.end116.err_disable_clk_crit_edge, label %if.then142

do.end116.err_disable_clk_crit_edge:              ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk

if.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call6, align 8
  %call120 = tail call i32 @device_wakeup_enable(ptr noundef %67) #5
  br label %if.end121

if.end121:                                        ; preds = %if.end118, %if.end102
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %68 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node, align 8
  %call123 = tail call i32 @of_usb_get_phy_mode(ptr noundef %69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call123)
  %cmp124 = icmp eq i32 %call123, 5
  br i1 %cmp124, label %if.then125, label %if.end121.do.end134_crit_edge

if.end121.do.end134_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end134

if.then125:                                       ; preds = %if.end121
  %regs126 = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 1, i32 1
  %70 = ptrtoint ptr %regs126 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs126, align 8
  %72 = getelementptr inbounds %struct.ehci_regs, ptr %71, i32 0, i32 11
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %call6, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %74 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %75 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i244 = icmp eq i32 %75, 0
  br i1 %tobool.not.i244, label %do.body.i, label %if.then125.do.end134_crit_edge

if.then125.do.end134_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end134

do.body.i:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %regs126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs126, align 8
  %78 = getelementptr inbounds %struct.ehci_regs, ptr %77, i32 0, i32 11
  %79 = and i32 %73, -195
  %80 = or i32 %79, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %80) #5, !srcloc !89
  br label %do.end134

do.end134:                                        ; preds = %do.body.i, %if.then125.do.end134_crit_edge, %if.end121.do.end134_crit_edge
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq, align 8
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp139 = icmp eq i32 %86, 0
  %cond = select i1 %cmp139, ptr @.str.34, ptr @.str.35
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef %82, i32 noundef %84, ptr noundef nonnull %cond) #8
  br label %cleanup

if.then142:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #7
  %call144 = tail call i32 %65(i32 noundef 0) #5
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %if.then142, %do.end116.err_disable_clk_crit_edge, %do.end100, %do.end89, %do.end85, %if.end56.err_disable_clk_crit_edge
  %retval1.0 = phi i32 [ %call65, %if.end56.err_disable_clk_crit_edge ], [ -6, %do.end85 ], [ %55, %do.end89 ], [ -19, %do.end100 ], [ %call111, %if.then142 ], [ %call111, %do.end116.err_disable_clk_crit_edge ]
  %87 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy, align 4
  %call.i247 = tail call i32 @phy_exit(ptr noundef %88) #5
  %89 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %90) #5
  tail call void @clk_unprepare(ptr noundef %90) #5
  br label %err_put_hcd

err_put_hcd:                                      ; preds = %err_disable_clk, %do.end54, %if.then45, %do.end35, %do.end, %if.then21.err_put_hcd_crit_edge
  %retval1.1 = phi i32 [ %15, %do.end ], [ -517, %if.then21.err_put_hcd_crit_edge ], [ %19, %do.end35 ], [ %21, %if.then45 ], [ %retval.0.i239.ph, %do.end54 ], [ %retval1.0, %err_disable_clk ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_hcd, %do.end134, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %err_put_hcd ], [ 0, %do.end134 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ehci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %rh_registered = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rh_registered to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %rh_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %otg = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
  %3 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %otg5 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %otg5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %otg5, align 4
  %tobool.not.i23 = icmp eq ptr %6, null
  br i1 %tobool.not.i23, label %if.then3.if.end7_crit_edge, label %land.lhs.true.i

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then3
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %if.then.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %8(ptr noundef nonnull %6, ptr noundef null) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end7_crit_edge, %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then8, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %if.end7
  %set_vbus = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 3
  %11 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_vbus, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.then8.if.end13_crit_edge, label %if.then10

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 %12(i32 noundef 0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8.if.end13_crit_edge
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  %13 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy.i, align 4
  %call.i24 = tail call i32 @phy_exit(ptr noundef %14) #5
  %clk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end7.if.end14_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_ehci_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rh_registered = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rh_registered to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %rh_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 8
  %shutdown = getelementptr inbounds %struct.hc_driver, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shutdown, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_ehci_disable(ptr nocapture noundef readonly %ehci_mv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ehci_hcd_mv, ptr %ehci_mv, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_exit(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.ehci_hcd_mv, ptr %ehci_mv, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_ehci_mv__293_303_ehci_platform_init6, !1, !"__initcall__kmod_ehci_mv__293_303_ehci_platform_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-mv.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_ehci_platform_cleanup, !3, !"__exitcall_ehci_platform_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-mv.c", i32 309, i32 1}
!4 = !{ptr @__UNIQUE_ID_description294, !5, !"__UNIQUE_ID_description294", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-mv.c", i32 311, i32 1}
!6 = !{ptr @__UNIQUE_ID_author295, !7, !"__UNIQUE_ID_author295", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-mv.c", i32 312, i32 1}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-mv.c", i32 313, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias297, !11, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-mv.c", i32 314, i32 1}
!12 = !{ptr @__UNIQUE_ID_file298, !13, !"__UNIQUE_ID_file298", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/ehci-mv.c", i32 315, i32 1}
!14 = !{ptr @__UNIQUE_ID_license299, !13, !"__UNIQUE_ID_license299", i1 false, i1 false}
!15 = !{ptr @ehci_platform_hc_driver, !16, !"ehci_platform_hc_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/ehci-mv.c", i32 96, i32 39}
!17 = !{ptr @platform_overrides, !18, !"platform_overrides", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ehci-mv.c", i32 98, i32 43}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-mv.c", i32 75, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mv_ehci_reset._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mv_ehci_reset._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-mv.c", i32 83, i32 3}
!29 = !{ptr @mv_ehci_reset._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mv_ehci_reset._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ehci-mv.c", i32 288, i32 11}
!33 = !{ptr @ehci_mv_driver, !34, !"ehci_mv_driver", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/ehci-mv.c", i32 283, i32 31}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/ehci-mv.c", i32 130, i32 51}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/ehci-mv.c", i32 134, i32 4}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mv_ehci_probe._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mv_ehci_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ehci-mv.c", i32 140, i32 3}
!44 = !{ptr @mv_ehci_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mv_ehci_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ehci-mv.c", i32 154, i32 3}
!48 = !{ptr @mv_ehci_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mv_ehci_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ehci-mv.c", i32 182, i32 5}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mv_ehci_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mv_ehci_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/ehci-mv.c", i32 185, i32 5}
!57 = !{ptr @mv_ehci_probe._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mv_ehci_probe._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/ehci-mv.c", i32 192, i32 4}
!61 = !{ptr @mv_ehci_probe._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mv_ehci_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/ehci-mv.c", i32 205, i32 4}
!65 = !{ptr @mv_ehci_probe._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mv_ehci_probe._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/ehci-mv.c", i32 220, i32 2}
!69 = !{ptr @mv_ehci_probe._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mv_ehci_probe._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ehci_mv_dt_ids, !74, !"ehci_mv_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/ehci-mv.c", i32 278, i32 34}
!75 = !{ptr @ehci_id_table, !76, !"ehci_id_table", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/ehci-mv.c", i32 261, i32 40}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 5982329}
!87 = !{i64 2155321906}
!88 = !{i64 2155322445}
!89 = !{i64 5981911}
!90 = !{i64 2155332321}
