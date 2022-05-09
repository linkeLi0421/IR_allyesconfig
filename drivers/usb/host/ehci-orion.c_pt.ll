; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-orion.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-orion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@__initcall__kmod_ehci_orion__296_369_ehci_orion_init6 = internal global ptr @ehci_orion_init, section ".initcall6.init", align 4
@ehci_orion_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ehci_orion_drv_probe, ptr @ehci_orion_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ehci_orion_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_orion_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_orion_cleanup = internal global ptr @ehci_orion_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [41 x i8] c"ehci_orion.description=EHCI orion driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [37 x i8] c"ehci_orion.alias=platform:orion-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [36 x i8] c"ehci_orion.author=Tzachi Perelstein\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [44 x i8] c"ehci_orion.file=drivers/usb/host/ehci-orion\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [26 x i8] c"ehci_orion.license=GPL v2\00", section ".modinfo", align 1
@ehci_orion_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: EHCI orion driver\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ehci_orion_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/ehci-orion.c\00", [34 x i8] zeroinitializer }, align 32
@ehci_orion_init._entry_ptr = internal global ptr @ehci_orion_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ehci-orion\00", [21 x i8] zeroinitializer }, align 32
@ehci_orion_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@orion_overrides = internal constant %struct.ehci_driver_overrides { i32 8, ptr @ehci_orion_drv_reset, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,armada-3700-ehci\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orion-ehci\00", [21 x i8] zeroinitializer }, align 32
@ehci_orion_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ehci_orion_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ehci_orion_drv_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ehci_orion\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ehci_orion_drv_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Initializing Orion-SoC USB Host Controller\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@ehci_orion_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 304, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"USB phy version isn't supported.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_orion_drv_probe._entry_ptr = internal global ptr @ehci_orion_drv_probe._entry, section ".printk_index", align 4
@ehci_orion_drv_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 321, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init %s fail, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ehci_orion_drv_probe._entry_ptr.15 = internal global ptr @ehci_orion_drv_probe._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"ehci_orion_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 348, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 364, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 68, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 179, i32 44 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 353, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"ehci_orion_dt_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 341, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"ehci_orion_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 199, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 222, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 273, i32 48 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 304, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [33 x i8] c"../drivers/usb/host/ehci-orion.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 320, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ehci_orion_cleanup, ptr @__initcall__kmod_ehci_orion__296_369_ehci_orion_init6, ptr @ehci_orion_cleanup, ptr @ehci_orion_drv_probe._entry, ptr @ehci_orion_drv_probe._entry.12, ptr @ehci_orion_drv_probe._entry_ptr, ptr @ehci_orion_drv_probe._entry_ptr.15, ptr @ehci_orion_init._entry, ptr @ehci_orion_init._entry_ptr, ptr @ehci_orion_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @ehci_orion_dt_ids, ptr @ehci_orion_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_orion_drv_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #8
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_orion_hc_driver, ptr noundef nonnull @orion_overrides) #5
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_orion_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_orion_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_orion_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_reset(ptr noundef %hcd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %call = tail call i32 @ehci_setup(ptr noundef %hcd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -620756992) #5, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_orion_drv_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_orion_drv_probe, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !63

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ehci_orion_drv_probe.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.7) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %do.end.do.end85_crit_edge, label %if.end10

do.end.do.end85_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

if.end10:                                         ; preds = %do.end
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end15, label %if.end10.do.end85_crit_edge

if.end10.do.end85_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

if.end15:                                         ; preds = %if.end10
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call16) #5
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call18 to i32
  br label %do.end85

if.end22:                                         ; preds = %if.end15
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i140 = phi ptr [ %7, %if.end.i ], [ %5, %if.end22.dev_name.exit_crit_edge ]
  %call26 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_orion_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i140) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %dev_name.exit.do.end85_crit_edge, label %if.end29

dev_name.exit.do.end85_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

if.end29:                                         ; preds = %dev_name.exit
  %8 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call16, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 0, i32 17
  %10 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = load i32, ptr %call16, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %13
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 0, i32 18
  %14 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %rsrc_len, align 4
  %regs31 = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 0, i32 16
  %15 = ptrtoint ptr %regs31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %regs31, align 4
  %add.ptr = getelementptr i8, ptr %call18, i32 256
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 1, i32 0, i32 18
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %caps, align 4
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 0, i32 14
  %17 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %priv35 = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 2, i32 0, i32 9, i32 3
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %18 = ptrtoint ptr %priv35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37, ptr %priv35, align 4
  %cmp.i142 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.end29.if.end46_crit_edge, label %if.then40

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end29
  %call.i = tail call i32 @clk_prepare(ptr noundef %call37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i143 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i143, label %if.end.i144, label %if.then40.err_put_hcd_crit_edge

if.then40.err_put_hcd_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_hcd

if.end.i144:                                      ; preds = %if.then40
  %call1.i = tail call i32 @clk_enable(ptr noundef %call37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i144.if.end46_crit_edge, label %if.end.i144.err_put_hcd.sink.split_crit_edge

if.end.i144.err_put_hcd.sink.split_crit_edge:     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_hcd.sink.split

if.end.i144.if.end46_crit_edge:                   ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.end46:                                         ; preds = %if.end.i144.if.end46_crit_edge, %if.end29.if.end46_crit_edge
  %call48 = tail call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %call26, i32 2, i32 0, i32 9, i32 3, i32 1
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call48, ptr %phy, align 4
  %cmp.i146 = icmp ule ptr %call48, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call48 to i32
  %cmp54.not = icmp eq ptr %call48, inttoptr (i32 -38 to ptr)
  %or.cond = or i1 %cmp.i146, %cmp54.not
  br i1 %or.cond, label %if.end57, label %if.end46.err_dis_clk_crit_edge

if.end46.err_dis_clk_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dis_clk

if.end57:                                         ; preds = %if.end46
  %call58 = tail call ptr @mv_mbus_dram_info() #5
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  %21 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs31, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !62
  %23 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs31, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #5, !srcloc !62
  %25 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs31, align 4
  %add.ptr.1.i = getelementptr i8, ptr %26, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #5, !srcloc !62
  %27 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs31, align 4
  %add.ptr4.1.i = getelementptr i8, ptr %28, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1.i, i32 0) #5, !srcloc !62
  %29 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs31, align 4
  %add.ptr.2.i = getelementptr i8, ptr %30, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #5, !srcloc !62
  %31 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs31, align 4
  %add.ptr4.2.i = getelementptr i8, ptr %32, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2.i, i32 0) #5, !srcloc !62
  %33 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs31, align 4
  %add.ptr.3.i = getelementptr i8, ptr %34, i32 848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #5, !srcloc !62
  %35 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs31, align 4
  %add.ptr4.3.i = getelementptr i8, ptr %36, i32 852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3.i, i32 0) #5, !srcloc !62
  %num_cs.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call58, i32 0, i32 1
  %37 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp646.i = icmp sgt i32 %38, 0
  br i1 %cmp646.i, label %for.body7.lr.ph.i, label %if.then60.if.end61_crit_edge

if.then60.if.end61_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

for.body7.lr.ph.i:                                ; preds = %if.then60
  %cs8.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call58, i32 0, i32 2
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.147.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc28.i, %for.body7.i.for.body7.i_crit_edge ]
  %size.i = getelementptr %struct.mbus_dram_window, ptr %cs8.i, i32 %i.147.i, i32 3
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %size.i, align 8
  %mbus_attr.i = getelementptr %struct.mbus_dram_window, ptr %cs8.i, i32 %i.147.i, i32 1
  %41 = ptrtoint ptr %mbus_attr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mbus_attr.i, align 1
  %conv.i = zext i8 %42 to i32
  %shl10.i = shl nuw nsw i32 %conv.i, 8
  %43 = ptrtoint ptr %call58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call58, align 8
  %conv12.i = zext i8 %44 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 4
  %45 = trunc i64 %40 to i32
  %46 = add i32 %45, -1
  %47 = and i32 %46, -65536
  %48 = or i32 %47, %shl10.i
  %49 = or i32 %48, %shl13.i
  %conv17.i = or i32 %49, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #5
  %51 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs31, align 4
  %shl19.i = shl i32 %i.147.i, 4
  %add20.i = add i32 %shl19.i, 800
  %add.ptr21.i = getelementptr i8, ptr %52, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %50) #5, !srcloc !62
  %base.i = getelementptr %struct.mbus_dram_window, ptr %cs8.i, i32 %i.147.i, i32 2
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %base.i, align 8
  %conv22.i = trunc i64 %54 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv22.i) #5
  %56 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs31, align 4
  %add25.i = add i32 %shl19.i, 804
  %add.ptr26.i = getelementptr i8, ptr %57, i32 %add25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %55) #5, !srcloc !62
  %inc28.i = add nuw nsw i32 %i.147.i, 1
  %58 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_cs.i, align 4
  %cmp6.i = icmp slt i32 %inc28.i, %59
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.if.end61_crit_edge

for.body7.i.if.end61_crit_edge:                   ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.i

if.end61:                                         ; preds = %for.body7.i.if.end61_crit_edge, %if.then60.if.end61_crit_edge, %if.end57.if.end61_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %tobool63.not = icmp eq ptr %61, null
  br i1 %tobool63.not, label %if.end66, label %if.end61.sw.epilog_crit_edge

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end66:                                         ; preds = %if.end61
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %63, label %do.end70 [
    i32 3, label %if.end66.sw.epilog_crit_edge
    i32 0, label %sw.bb
  ]

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end66
  %65 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs31, align 4
  %add.ptr.i148 = getelementptr i8, ptr %66, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 0) #5, !srcloc !62
  %67 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs31, align 4
  %add.ptr2.i = getelementptr i8, ptr %68, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #5, !srcloc !62
  %69 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs31, align 4
  %add.ptr4.i149 = getelementptr i8, ptr %70, i32 320
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i149) #5, !srcloc !64
  %72 = or i32 %71, 33554432
  %73 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs31, align 4
  %add.ptr6.i = getelementptr i8, ptr %74, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %72) #5, !srcloc !62
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %sw.bb
  %75 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs31, align 4
  %add.ptr9.i = getelementptr i8, ptr %76, i32 320
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !64
  %78 = and i32 %77, 33554432
  %tobool.not.i150 = icmp eq i32 %78, 0
  br i1 %tobool.not.i150, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %79 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs31, align 4
  %add.ptr14.i = getelementptr i8, ptr %80, i32 864
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !64
  %82 = and i32 %81, -8323073
  %83 = or i32 %82, 786432
  %84 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs31, align 4
  %add.ptr20.i = getelementptr i8, ptr %85, i32 864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %83) #5, !srcloc !62
  %86 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs31, align 4
  %add.ptr23.i = getelementptr i8, ptr %87, i32 1024
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !64
  %89 = and i32 %88, 1073741823
  %90 = or i32 %89, 1073741824
  %91 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs31, align 4
  %add.ptr29.i = getelementptr i8, ptr %92, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %90) #5, !srcloc !62
  %93 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs31, align 4
  %add.ptr32.i = getelementptr i8, ptr %94, i32 1056
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !64
  %96 = and i32 %95, -2015371265
  %97 = or i32 %96, 1075847168
  %98 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs31, align 4
  %add.ptr38.i = getelementptr i8, ptr %99, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %97) #5, !srcloc !62
  %100 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs31, align 4
  %add.ptr41.i = getelementptr i8, ptr %101, i32 1072
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #5, !srcloc !64
  %103 = and i32 %102, 268230451
  %104 = or i32 %103, 268435648
  %105 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs31, align 4
  %add.ptr47.i = getelementptr i8, ptr %106, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %104) #5, !srcloc !62
  %107 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs31, align 4
  %add.ptr50.i = getelementptr i8, ptr %108, i32 1088
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #5, !srcloc !64
  %110 = and i32 %109, -855640065
  %111 = or i32 %110, 838860800
  %112 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs31, align 4
  %add.ptr56.i = getelementptr i8, ptr %113, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %111) #5, !srcloc !62
  %114 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs31, align 4
  %add.ptr59.i = getelementptr i8, ptr %115, i32 1104
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #5, !srcloc !64
  %117 = and i32 %116, -8388609
  %118 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs31, align 4
  %add.ptr64.i = getelementptr i8, ptr %119, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %117) #5, !srcloc !62
  %120 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs31, align 4
  %add.ptr67.i = getelementptr i8, ptr %121, i32 320
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i) #5, !srcloc !64
  %123 = and i32 %122, -16777217
  %124 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs31, align 4
  %add.ptr72.i = getelementptr i8, ptr %125, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %123) #5, !srcloc !62
  %126 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs31, align 4
  %add.ptr75.i = getelementptr i8, ptr %127, i32 320
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #5, !srcloc !64
  %129 = or i32 %128, 33554432
  %130 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs31, align 4
  %add.ptr80.i = getelementptr i8, ptr %131, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %129) #5, !srcloc !62
  br label %while.cond81.i

while.cond81.i:                                   ; preds = %while.cond81.i.while.cond81.i_crit_edge, %while.end.i
  %132 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs31, align 4
  %add.ptr84.i = getelementptr i8, ptr %133, i32 320
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #5, !srcloc !64
  %135 = and i32 %134, 33554432
  %tobool88.not.i = icmp eq i32 %135, 0
  br i1 %tobool88.not.i, label %orion_usb_phy_v1_setup.exit, label %while.cond81.i.while.cond81.i_crit_edge

while.cond81.i.while.cond81.i_crit_edge:          ; preds = %while.cond81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond81.i

orion_usb_phy_v1_setup.exit:                      ; preds = %while.cond81.i
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs31, align 4
  %add.ptr92.i = getelementptr i8, ptr %137, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 318767104) #5, !srcloc !62
  br label %sw.epilog

do.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end70, %orion_usb_phy_v1_setup.exit, %if.end66.sw.epilog_crit_edge, %if.end61.sw.epilog_crit_edge
  %call72 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call26, i32 noundef %call8, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %sw.epilog.err_dis_clk_crit_edge

sw.epilog.err_dis_clk_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dis_clk

if.end75:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call26, align 8
  %call76 = tail call i32 @device_wakeup_enable(ptr noundef %139) #5
  br label %cleanup

err_dis_clk:                                      ; preds = %sw.epilog.err_dis_clk_crit_edge, %if.end46.err_dis_clk_crit_edge
  %err.0 = phi i32 [ %call72, %sw.epilog.err_dis_clk_crit_edge ], [ %20, %if.end46.err_dis_clk_crit_edge ]
  %140 = ptrtoint ptr %priv35 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv35, align 4
  %cmp.i151 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %err_dis_clk.err_put_hcd_crit_edge, label %if.then79

err_dis_clk.err_put_hcd_crit_edge:                ; preds = %err_dis_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_hcd

if.then79:                                        ; preds = %err_dis_clk
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %141) #5
  br label %err_put_hcd.sink.split

err_put_hcd.sink.split:                           ; preds = %if.then79, %if.end.i144.err_put_hcd.sink.split_crit_edge
  %call37.sink = phi ptr [ %141, %if.then79 ], [ %call37, %if.end.i144.err_put_hcd.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %if.then79 ], [ %call1.i, %if.end.i144.err_put_hcd.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call37.sink) #5
  br label %err_put_hcd

err_put_hcd:                                      ; preds = %err_put_hcd.sink.split, %err_dis_clk.err_put_hcd_crit_edge, %if.then40.err_put_hcd_crit_edge
  %err.1 = phi i32 [ %err.0, %err_dis_clk.err_put_hcd_crit_edge ], [ %call.i, %if.then40.err_put_hcd_crit_edge ], [ %err.1.ph, %err_put_hcd.sink.split ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call26) #5
  br label %do.end85

do.end85:                                         ; preds = %err_put_hcd, %dev_name.exit.do.end85_crit_edge, %if.then20, %if.end10.do.end85_crit_edge, %do.end.do.end85_crit_edge
  %err.2 = phi i32 [ %3, %if.then20 ], [ %err.1, %err_put_hcd ], [ -19, %do.end.do.end85_crit_edge ], [ -12, %dev_name.exit.do.end85_crit_edge ], [ %call.i.i, %if.end10.do.end85_crit_edge ]
  %init_name.i152 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %142 = ptrtoint ptr %init_name.i152 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %init_name.i152, align 8
  %tobool.not.i153 = icmp eq ptr %143, null
  br i1 %tobool.not.i153, label %if.end.i154, label %do.end85.dev_name.exit156_crit_edge

do.end85.dev_name.exit156_crit_edge:              ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit156

if.end.i154:                                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  br label %dev_name.exit156

dev_name.exit156:                                 ; preds = %if.end.i154, %do.end85.dev_name.exit156_crit_edge
  %retval.0.i155 = phi ptr [ %145, %if.end.i154 ], [ %143, %do.end85.dev_name.exit156_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i155, i32 noundef %err.2) #8
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit156, %if.end75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %dev_name.exit156 ], [ 0, %if.end75 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %4, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %5 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call2 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %5) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ehci_orion__296_369_ehci_orion_init6, !1, !"__initcall__kmod_ehci_orion__296_369_ehci_orion_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-orion.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_ehci_orion_cleanup, !3, !"__exitcall_ehci_orion_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-orion.c", i32 375, i32 1}
!4 = !{ptr @__UNIQUE_ID_description297, !5, !"__UNIQUE_ID_description297", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-orion.c", i32 377, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias298, !7, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-orion.c", i32 378, i32 1}
!8 = !{ptr @__UNIQUE_ID_author299, !9, !"__UNIQUE_ID_author299", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-orion.c", i32 379, i32 1}
!10 = !{ptr @__UNIQUE_ID_file300, !11, !"__UNIQUE_ID_file300", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-orion.c", i32 380, i32 1}
!12 = !{ptr @__UNIQUE_ID_license301, !11, !"__UNIQUE_ID_license301", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ehci-orion.c", i32 364, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ehci_orion_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ehci_orion_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @hcd_name, !20, !"hcd_name", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-orion.c", i32 68, i32 19}
!21 = !{ptr @ehci_orion_hc_driver, !22, !"ehci_orion_hc_driver", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-orion.c", i32 70, i32 39}
!23 = !{ptr @orion_overrides, !24, !"orion_overrides", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-orion.c", i32 202, i32 43}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-orion.c", i32 179, i32 44}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-orion.c", i32 353, i32 11}
!29 = !{ptr @ehci_orion_driver, !30, !"ehci_orion_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ehci-orion.c", i32 348, i32 31}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ehci-orion.c", i32 222, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ehci_orion_drv_probe.__UNIQUE_ID_ddebug295, !32, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ehci-orion.c", i32 273, i32 48}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-orion.c", i32 304, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ehci_orion_drv_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @ehci_orion_drv_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/ehci-orion.c", i32 320, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ehci_orion_drv_probe._entry.12, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ehci_orion_drv_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ehci_orion_dt_ids, !50, !"ehci_orion_dt_ids", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/ehci-orion.c", i32 341, i32 34}
!51 = !{ptr @ehci_orion_pm_ops, !52, !"ehci_orion_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/ehci-orion.c", i32 199, i32 8}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 5984146}
!63 = !{i64 2148698846, i64 2148698851, i64 2148698864, i64 2148698908, i64 2148698942, i64 2148698963}
!64 = !{i64 5984564}
