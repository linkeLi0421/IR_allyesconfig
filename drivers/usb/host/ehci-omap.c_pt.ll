; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-omap.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_ehci_omap__295_297_ehci_omap_init6 = internal global ptr @ehci_omap_init, section ".initcall6.init", align 4
@ehci_hcd_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ehci_hcd_omap_probe, ptr @ehci_hcd_omap_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_ehci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_omap_cleanup = internal global ptr @ehci_omap_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias296 = internal constant [35 x i8] c"ehci_omap.alias=platform:ehci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [41 x i8] c"ehci_omap.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [55 x i8] c"ehci_omap.author=Felipe Balbi <felipe.balbi@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [47 x i8] c"ehci_omap.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [55 x i8] c"ehci_omap.description=OMAP-EHCI Host Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [42 x i8] c"ehci_omap.file=drivers/usb/host/ehci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [22 x i8] c"ehci_omap.license=GPL\00", section ".modinfo", align 1
@ehci_omap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: OMAP-EHCI Host Controller driver\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ehci_omap_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/host/ehci-omap.c\00", [35 x i8] zeroinitializer }, align 32
@ehci_omap_init._entry_ptr = internal global ptr @ehci_omap_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci-omap\00", [22 x i8] zeroinitializer }, align 32
@ehci_omap_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_omap_overrides = internal constant %struct.ehci_driver_overrides { i32 16, ptr null, ptr null }, section ".init.rodata", align 4
@omap_ehci_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ehci-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing parent device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ehci_hcd_omap_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry_ptr = internal global ptr @ehci_hcd_omap_probe._entry, section ".printk_index", align 4
@ehci_hcd_omap_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry_ptr.9 = internal global ptr @ehci_hcd_omap_probe._entry.7, section ".printk_index", align 4
@ehci_hcd_omap_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create HCD\0A\00", [42 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry_ptr.12 = internal global ptr @ehci_hcd_omap_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't get PHY for port %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry_ptr.16 = internal global ptr @ehci_hcd_omap_probe._entry.14, section ".printk_index", align 4
@ehci_hcd_omap_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add hcd with err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ehci_hcd_omap_probe._entry_ptr.19 = internal global ptr @ehci_hcd_omap_probe._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"ehci_hcd_omap_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 273, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 292, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 50, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"omap_ehci_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 266, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 102, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 113, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 139, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 158, i32 42 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 167, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [32 x i8] c"../drivers/usb/host/ehci-omap.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 198, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_ehci_omap_cleanup, ptr @__initcall__kmod_ehci_omap__295_297_ehci_omap_init6, ptr @ehci_hcd_omap_probe._entry, ptr @ehci_hcd_omap_probe._entry.10, ptr @ehci_hcd_omap_probe._entry.14, ptr @ehci_hcd_omap_probe._entry.17, ptr @ehci_hcd_omap_probe._entry.7, ptr @ehci_hcd_omap_probe._entry_ptr, ptr @ehci_hcd_omap_probe._entry_ptr.12, ptr @ehci_hcd_omap_probe._entry_ptr.16, ptr @ehci_hcd_omap_probe._entry_ptr.19, ptr @ehci_hcd_omap_probe._entry_ptr.9, ptr @ehci_omap_cleanup, ptr @ehci_omap_init._entry, ptr @ehci_omap_init._entry_ptr, ptr @ehci_hcd_omap_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @omap_ehci_dt_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_omap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ehci_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_hcd_omap_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_omap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #7
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_omap_hc_driver, ptr noundef nonnull @ehci_omap_overrides) #4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_hcd_omap_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_omap_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_hcd_omap_driver) #4
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
define internal i32 @ehci_hcd_omap_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup121_crit_edge

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  br label %cleanup121

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %platform_data.i211 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i211 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i211, align 8
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %platform_data.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %pdata.0 = phi ptr [ %7, %if.then7 ], [ %1, %if.end5.if.end10_crit_edge ]
  %tobool11.not = icmp eq ptr %pdata.0, null
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %cleanup121

if.end16:                                         ; preds = %if.end10
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup121_crit_edge, label %if.end19

if.end16.cleanup121_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

if.end19:                                         ; preds = %if.end16
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call20) #4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call21 to i32
  br label %cleanup121

if.end25:                                         ; preds = %if.end19
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end29, label %if.end25.cleanup121_crit_edge

if.end25.cleanup121_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

if.end29:                                         ; preds = %if.end25
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end29.dev_name.exit_crit_edge ]
  %call31 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_omap_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #4
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end36, label %if.end37

do.end36:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %cleanup121

if.end37:                                         ; preds = %dev_name.exit
  %15 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call20, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 17
  %17 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  %20 = load i32, ptr %call20, align 4
  %sub.i = add i32 %19, 1
  %add.i = sub i32 %sub.i, %20
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 18
  %21 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %rsrc_len, align 4
  %regs39 = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 16
  %22 = ptrtoint ptr %regs39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call21, ptr %regs39, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 0, i32 18
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call21, ptr %caps, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 2, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pdata.0, align 4
  %nports42 = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 2, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %nports42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nports42, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call31, ptr %driver_data.i.i, align 4
  %28 = load i32, ptr %nports42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp44246 = icmp sgt i32 %28, 0
  br i1 %cmp44246, label %if.end37.for.body_crit_edge, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.0247 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end37.for.body_crit_edge ]
  %conv = trunc i32 %i.0247 to i8
  %call45 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.13, i8 noundef zeroext %conv) #4
  %cmp.i213 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then47, label %if.end60

if.then47:                                        ; preds = %for.body
  %29 = ptrtoint ptr %call45 to i32
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.end58 [
    i32 -19, label %if.then47.for.inc_crit_edge
    i32 -517, label %err_phy.loopexit
  ]

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end58:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %i.0247, i32 noundef %31) #7
  br label %err_phy

if.end60:                                         ; preds = %for.body
  %arrayidx = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.0247
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %arrayidx, align 4
  %arrayidx62 = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata.0, i32 0, i32 1, i32 %i.0247
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp63 = icmp eq i32 %34, 1
  br i1 %cmp63, label %if.then65, label %if.end60.for.inc_crit_edge

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then65:                                        ; preds = %if.end60
  %tobool.not.i214 = icmp eq ptr %call45, null
  br i1 %tobool.not.i214, label %if.then65.usb_phy_init.exit_crit_edge, label %land.lhs.true.i

if.then65.usb_phy_init.exit_crit_edge:            ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_init.exit

land.lhs.true.i:                                  ; preds = %if.then65
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %call45, i32 0, i32 22
  %35 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_init.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_init.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_init.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %36(ptr noundef nonnull %call45) #4
  br label %usb_phy_init.exit

usb_phy_init.exit:                                ; preds = %if.then.i, %land.lhs.true.i.usb_phy_init.exit_crit_edge, %if.then65.usb_phy_init.exit_crit_edge
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i215 = icmp eq ptr %38, null
  br i1 %tobool.not.i215, label %usb_phy_init.exit.for.inc_crit_edge, label %land.lhs.true.i216

usb_phy_init.exit.for.inc_crit_edge:              ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.i216:                               ; preds = %usb_phy_init.exit
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %40, null
  br i1 %cmp.not.i, label %land.lhs.true.i216.for.inc_crit_edge, label %if.then.i218

land.lhs.true.i216.for.inc_crit_edge:             ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i218:                                     ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #6
  %call.i217 = tail call i32 %40(ptr noundef nonnull %38, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i218, %land.lhs.true.i216.for.inc_crit_edge, %usb_phy_init.exit.for.inc_crit_edge, %if.end60.for.inc_crit_edge, %if.then47.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0247, 1
  %41 = ptrtoint ptr %nports42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nports42, align 4
  %cmp44 = icmp slt i32 %inc, %42
  br i1 %cmp44, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  %call.i219 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #4
  %add.ptr.i = getelementptr i8, ptr %call21, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32) #4, !srcloc !67
  %call74 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call31, i32 noundef %call17, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call74) #7
  %call.i220 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  br label %err_phy

if.end80:                                         ; preds = %for.end
  %43 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call31, align 8
  %call81 = tail call i32 @device_wakeup_enable(ptr noundef %44) #4
  %45 = ptrtoint ptr %nports42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nports42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp84249 = icmp sgt i32 %46, 0
  br i1 %cmp84249, label %if.end80.for.body86_crit_edge, label %if.end80.cleanup121_crit_edge

if.end80.cleanup121_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

if.end80.for.body86_crit_edge:                    ; preds = %if.end80
  br label %for.body86

for.body86:                                       ; preds = %for.inc102.for.body86_crit_edge, %if.end80.for.body86_crit_edge
  %i.1250 = phi i32 [ %inc103, %for.inc102.for.body86_crit_edge ], [ 0, %if.end80.for.body86_crit_edge ]
  %arrayidx88 = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.1250
  %47 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx88, align 4
  %tobool89.not = icmp eq ptr %48, null
  br i1 %tobool89.not, label %for.body86.for.inc102_crit_edge, label %lor.lhs.false

for.body86.for.inc102_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc102

lor.lhs.false:                                    ; preds = %for.body86
  %arrayidx91 = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata.0, i32 0, i32 1, i32 %i.1250
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp92 = icmp eq i32 %50, 1
  br i1 %cmp92, label %lor.lhs.false.for.inc102_crit_edge, label %land.lhs.true.i224

lor.lhs.false.for.inc102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc102

land.lhs.true.i224:                               ; preds = %lor.lhs.false
  %init.i222 = getelementptr inbounds %struct.usb_phy, ptr %48, i32 0, i32 22
  %51 = ptrtoint ptr %init.i222 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init.i222, align 4
  %tobool1.not.i223 = icmp eq ptr %52, null
  br i1 %tobool1.not.i223, label %land.lhs.true.i224.usb_phy_init.exit227_crit_edge, label %if.then.i226

land.lhs.true.i224.usb_phy_init.exit227_crit_edge: ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_phy_init.exit227

if.then.i226:                                     ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #6
  %call.i225 = tail call i32 %52(ptr noundef nonnull %48) #4
  br label %usb_phy_init.exit227

usb_phy_init.exit227:                             ; preds = %if.then.i226, %land.lhs.true.i224.usb_phy_init.exit227_crit_edge
  %53 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx88, align 4
  %tobool.not.i228 = icmp eq ptr %54, null
  br i1 %tobool.not.i228, label %usb_phy_init.exit227.for.inc102_crit_edge, label %land.lhs.true.i231

usb_phy_init.exit227.for.inc102_crit_edge:        ; preds = %usb_phy_init.exit227
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc102

land.lhs.true.i231:                               ; preds = %usb_phy_init.exit227
  %set_suspend.i229 = getelementptr inbounds %struct.usb_phy, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %set_suspend.i229 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_suspend.i229, align 4
  %cmp.not.i230 = icmp eq ptr %56, null
  br i1 %cmp.not.i230, label %land.lhs.true.i231.for.inc102_crit_edge, label %if.then.i233

land.lhs.true.i231.for.inc102_crit_edge:          ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc102

if.then.i233:                                     ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #6
  %call.i232 = tail call i32 %56(ptr noundef nonnull %54, i32 noundef 0) #4
  br label %for.inc102

for.inc102:                                       ; preds = %if.then.i233, %land.lhs.true.i231.for.inc102_crit_edge, %usb_phy_init.exit227.for.inc102_crit_edge, %lor.lhs.false.for.inc102_crit_edge, %for.body86.for.inc102_crit_edge
  %inc103 = add nuw nsw i32 %i.1250, 1
  %57 = ptrtoint ptr %nports42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nports42, align 4
  %cmp84 = icmp slt i32 %inc103, %58
  br i1 %cmp84, label %for.inc102.for.body86_crit_edge, label %for.inc102.cleanup121_crit_edge

for.inc102.cleanup121_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

for.inc102.for.body86_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body86

err_phy.loopexit:                                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %call45 to i32
  br label %err_phy

err_phy:                                          ; preds = %err_phy.loopexit, %do.end79, %do.end58
  %ret.2 = phi i32 [ %call74, %do.end79 ], [ %31, %do.end58 ], [ %59, %err_phy.loopexit ]
  %60 = ptrtoint ptr %nports42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nports42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp108252 = icmp sgt i32 %61, 0
  br i1 %cmp108252, label %err_phy.for.body110_crit_edge, label %err_phy.for.end120_crit_edge

err_phy.for.end120_crit_edge:                     ; preds = %err_phy
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end120

err_phy.for.body110_crit_edge:                    ; preds = %err_phy
  br label %for.body110

for.body110:                                      ; preds = %for.inc118.for.body110_crit_edge, %err_phy.for.body110_crit_edge
  %i.2253 = phi i32 [ %inc119, %for.inc118.for.body110_crit_edge ], [ 0, %err_phy.for.body110_crit_edge ]
  %arrayidx112 = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.2253
  %62 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %63, null
  br i1 %tobool113.not, label %for.body110.for.inc118_crit_edge, label %land.lhs.true.i237

for.body110.for.inc118_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc118

land.lhs.true.i237:                               ; preds = %for.body110
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %63, i32 0, i32 23
  %64 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i236 = icmp eq ptr %65, null
  br i1 %tobool1.not.i236, label %land.lhs.true.i237.for.inc118_crit_edge, label %if.then.i238

land.lhs.true.i237.for.inc118_crit_edge:          ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc118

if.then.i238:                                     ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %65(ptr noundef nonnull %63) #4
  br label %for.inc118

for.inc118:                                       ; preds = %if.then.i238, %land.lhs.true.i237.for.inc118_crit_edge, %for.body110.for.inc118_crit_edge
  %inc119 = add nuw nsw i32 %i.2253, 1
  %66 = ptrtoint ptr %nports42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nports42, align 4
  %cmp108 = icmp slt i32 %inc119, %67
  br i1 %cmp108, label %for.inc118.for.body110_crit_edge, label %for.inc118.for.end120_crit_edge

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end120

for.inc118.for.body110_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body110

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %err_phy.for.end120_crit_edge
  tail call void @usb_put_hcd(ptr noundef nonnull %call31) #4
  br label %cleanup121

cleanup121:                                       ; preds = %for.end120, %for.inc102.cleanup121_crit_edge, %if.end80.cleanup121_crit_edge, %do.end36, %if.end25.cleanup121_crit_edge, %if.then23, %if.end16.cleanup121_crit_edge, %do.end15, %do.end, %entry.cleanup121_crit_edge
  %retval.0 = phi i32 [ %9, %if.then23 ], [ %ret.2, %for.end120 ], [ -12, %do.end36 ], [ -19, %do.end15 ], [ -19, %do.end ], [ -19, %entry.cleanup121_crit_edge ], [ %call17, %if.end16.cleanup121_crit_edge ], [ %call.i.i, %if.end25.cleanup121_crit_edge ], [ 0, %if.end80.cleanup121_crit_edge ], [ 0, %for.inc102.cleanup121_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_hcd_omap_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  tail call void @usb_remove_hcd(ptr noundef %1) #4
  %nports = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp sgt i32 %3, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %7(ptr noundef nonnull %5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @usb_put_hcd(ptr noundef %1) #4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_ehci_omap__295_297_ehci_omap_init6, !1, !"__initcall__kmod_ehci_omap__295_297_ehci_omap_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-omap.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_ehci_omap_cleanup, !3, !"__exitcall_ehci_omap_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-omap.c", i32 303, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias296, !5, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-omap.c", i32 305, i32 1}
!6 = !{ptr @__UNIQUE_ID_author297, !7, !"__UNIQUE_ID_author297", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-omap.c", i32 306, i32 1}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-omap.c", i32 307, i32 1}
!10 = !{ptr @__UNIQUE_ID_author299, !11, !"__UNIQUE_ID_author299", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-omap.c", i32 308, i32 1}
!12 = !{ptr @__UNIQUE_ID_description300, !13, !"__UNIQUE_ID_description300", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/ehci-omap.c", i32 310, i32 1}
!14 = !{ptr @__UNIQUE_ID_file301, !15, !"__UNIQUE_ID_file301", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/ehci-omap.c", i32 311, i32 1}
!16 = !{ptr @__UNIQUE_ID_license302, !15, !"__UNIQUE_ID_license302", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ehci-omap.c", i32 292, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ehci_omap_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ehci_omap_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @hcd_name, !24, !"hcd_name", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-omap.c", i32 50, i32 19}
!25 = !{ptr @ehci_omap_hc_driver, !26, !"ehci_omap_hc_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-omap.c", i32 72, i32 39}
!27 = !{ptr @ehci_omap_overrides, !28, !"ehci_omap_overrides", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-omap.c", i32 74, i32 43}
!29 = !{ptr @ehci_hcd_omap_driver, !30, !"ehci_hcd_omap_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ehci-omap.c", i32 273, i32 31}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ehci-omap.c", i32 102, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ehci_hcd_omap_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @ehci_hcd_omap_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-omap.c", i32 113, i32 3}
!40 = !{ptr @ehci_hcd_omap_probe._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ehci_hcd_omap_probe._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ehci-omap.c", i32 139, i32 3}
!44 = !{ptr @ehci_hcd_omap_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ehci_hcd_omap_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ehci-omap.c", i32 158, i32 42}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/ehci-omap.c", i32 167, i32 5}
!50 = !{ptr @ehci_hcd_omap_probe._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ehci_hcd_omap_probe._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ehci-omap.c", i32 198, i32 3}
!54 = !{ptr @ehci_hcd_omap_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ehci_hcd_omap_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @omap_ehci_dt_ids, !57, !"omap_ehci_dt_ids", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/ehci-omap.c", i32 266, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 4041624}
