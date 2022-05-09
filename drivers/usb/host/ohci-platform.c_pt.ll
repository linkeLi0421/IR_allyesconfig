; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-platform.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.usb_ohci_pdata = type { i8, i32, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ohci_platform__239_350_ohci_platform_init6 = internal global ptr @ohci_platform_init, section ".initcall6.init", align 4
@ohci_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ohci_platform_probe, ptr @ohci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ohci_platform_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ohci_platform_pm_ops, ptr null, ptr null }, ptr @ohci_platform_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_platform_cleanup = internal global ptr @ohci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [55 x i8] c"ohci_platform.description=OHCI generic platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [36 x i8] c"ohci_platform.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [32 x i8] c"ohci_platform.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [50 x i8] c"ohci_platform.file=drivers/usb/host/ohci-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [26 x i8] c"ohci_platform.license=GPL\00", section ".modinfo", align 1
@ohci_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: OHCI generic platform driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci_platform_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/host/ohci-platform.c\00", [63 x i8] zeroinitializer }, align 32
@ohci_platform_init._entry_ptr = internal global ptr @ohci_platform_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci-platform\00", [18 x i8] zeroinitializer }, align 32
@ohci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ohci_driver_overrides { ptr @.str.3, i32 16, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Generic Platform OHCI controller\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci-platform\00", [18 x i8] zeroinitializer }, align 32
@ohci_platform_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-6335-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ohci-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ohci_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ohci_platform_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ohci-platform\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ohci_platform_defaults = internal global { %struct.usb_ohci_pdata, [44 x i8] } { %struct.usb_ohci_pdata { i8 0, i32 0, ptr @ohci_platform_power_on, ptr @ohci_platform_power_off, ptr @ohci_platform_power_off }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"big-endian-regs\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"big-endian-desc\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no-big-frame-no\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"remote-wakeup-connected\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-ports\00", [22 x i8] zeroinitializer }, align 32
@ohci_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 182, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: CONFIG_USB_OHCI_BIG_ENDIAN_MMIO not set\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ohci_platform_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ohci_platform_probe._entry_ptr = internal global ptr @ohci_platform_probe._entry, section ".printk_index", align 4
@ohci_platform_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 190, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: CONFIG_USB_OHCI_BIG_ENDIAN_DESC not set\0A\00", [48 x i8] zeroinitializer }, align 32
@ohci_platform_probe._entry_ptr.17 = internal global ptr @ohci_platform_probe._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"ohci_platform_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 328, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 345, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 43, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 80, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 334, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"ohci_platform_ids\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 311, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"ohci_platform_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 325, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"ohci_platform_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 319, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"ohci_platform_defaults\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 84, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 128, i32 47 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 131, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 134, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 137, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 141, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 144, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 181, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [36 x i8] c"../drivers/usb/host/ohci-platform.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 189, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_ohci_platform_cleanup, ptr @__initcall__kmod_ohci_platform__239_350_ohci_platform_init6, ptr @ohci_platform_cleanup, ptr @ohci_platform_init._entry, ptr @ohci_platform_init._entry_ptr, ptr @ohci_platform_probe._entry, ptr @ohci_platform_probe._entry.15, ptr @ohci_platform_probe._entry_ptr, ptr @ohci_platform_probe._entry_ptr.17, ptr @ohci_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @ohci_platform_ids, ptr @ohci_platform_pm_ops, ptr @ohci_platform_table, ptr @ohci_platform_defaults, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_defaults to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_platform_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_init() #0 section ".init.text" align 64 {
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
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_platform_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_platform_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_probe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @usb_disabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %tobool3.not, ptr @ohci_platform_defaults, ptr %1
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #4
  %call11 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end13.dev_name.exit_crit_edge ]
  %call17 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_platform_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %dev_name.exit.cleanup_crit_edge, label %if.end20

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.store.select, ptr %platform_data.i, align 8
  %priv23 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 17
  %cmp25 = icmp eq ptr %spec.store.select, @ohci_platform_defaults
  br i1 %cmp25, label %land.lhs.true, label %if.end20.if.end93_crit_edge

if.end20.if.end93_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

land.lhs.true:                                    ; preds = %if.end20
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool27.not = icmp eq ptr %10, null
  br i1 %tobool27.not, label %land.lhs.true.if.end93_crit_edge, label %if.then28

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.then28:                                        ; preds = %land.lhs.true
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then28.if.end33_crit_edge, label %if.then32

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or = or i32 %12, 16
  store i32 %or, ptr %flags, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then28.if.end33_crit_edge
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i277 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %tobool.i278.not = icmp eq ptr %call.i277, null
  br i1 %tobool.i278.not, label %if.end33.if.end40_crit_edge, label %if.then37

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %flags38 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %15 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags38, align 8
  %or39 = or i32 %16, 8
  store i32 %or39, ptr %flags38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33.if.end40_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i279 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef null) #4
  %tobool.i280.not = icmp eq ptr %call.i279, null
  br i1 %tobool.i280.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %flags45 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %19 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags45, align 8
  %or46 = or i32 %20, 24
  store i32 %or46, ptr %flags45, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i281 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef null) #4
  %tobool.i282.not = icmp eq ptr %call.i281, null
  br i1 %tobool.i282.not, label %if.end47.if.end54_crit_edge, label %if.then51

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %flags52 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %23 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags52, align 8
  %or53 = or i32 %24, 128
  store i32 %or53, ptr %flags52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47.if.end54_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call.i283 = tail call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef null) #4
  %tobool.i284.not = icmp eq ptr %call.i283, null
  br i1 %tobool.i284.not, label %if.end54.if.end59_crit_edge, label %if.then58

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %hc_control = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 8
  %27 = ptrtoint ptr %hc_control to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 512, ptr %hc_control, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %num_ports = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4
  %call.i.i285 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef %num_ports, i32 noundef 1, i32 noundef 0) #4
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call66 = tail call ptr @of_clk_get(ptr noundef %31, i32 noundef 0) #4
  %32 = ptrtoint ptr %priv23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call66, ptr %priv23, align 4
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end59.if.then70_crit_edge, label %for.inc

if.end59.if.then70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

if.then70:                                        ; preds = %for.inc.1.if.then70_crit_edge, %for.inc.if.then70_crit_edge, %if.end59.if.then70_crit_edge
  %clk.0294.lcssa = phi i32 [ 0, %if.end59.if.then70_crit_edge ], [ 1, %for.inc.if.then70_crit_edge ], [ 2, %for.inc.1.if.then70_crit_edge ]
  %call66.lcssa = phi ptr [ %call66, %if.end59.if.then70_crit_edge ], [ %call66.1, %for.inc.if.then70_crit_edge ], [ %call66.2, %for.inc.1.if.then70_crit_edge ]
  %cmp74 = icmp eq ptr %call66.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp74, label %if.then70.err_put_clks_crit_edge, label %if.end76

if.then70.err_put_clks_crit_edge:                 ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.le = getelementptr [3 x ptr], ptr %priv23, i32 0, i32 %clk.0294.lcssa
  %33 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.le, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end59
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call66.1 = tail call ptr @of_clk_get(ptr noundef %35, i32 noundef 1) #4
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 18
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call66.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call66.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.if.then70_crit_edge, label %for.inc.1

for.inc.if.then70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

for.inc.1:                                        ; preds = %for.inc
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call66.2 = tail call ptr @of_clk_get(ptr noundef %38, i32 noundef 2) #4
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %call17, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call66.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call66.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.if.then70_crit_edge, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.1.if.then70_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

for.end:                                          ; preds = %for.inc.1.for.end_crit_edge, %if.end76
  %clk.0292 = phi i32 [ %clk.0294.lcssa, %if.end76 ], [ 3, %for.inc.1.for.end_crit_edge ]
  %call.i286 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %resets = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 2
  %40 = ptrtoint ptr %resets to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i286, ptr %resets, align 4
  %cmp.i287 = icmp ugt ptr %call.i286, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then84, label %if.end87

if.then84:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %call.i286 to i32
  br label %err_put_clks

if.end87:                                         ; preds = %for.end
  %call89 = tail call i32 @reset_control_deassert(ptr noundef %call.i286) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end87.if.end93_crit_edge, label %if.end87.err_put_clks_crit_edge

if.end87.err_put_clks_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_put_clks

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.end93:                                         ; preds = %if.end87.if.end93_crit_edge, %land.lhs.true.if.end93_crit_edge, %if.end20.if.end93_crit_edge
  %clk.1 = phi i32 [ %clk.0292, %if.end87.if.end93_crit_edge ], [ 0, %land.lhs.true.if.end93_crit_edge ], [ 0, %if.end20.if.end93_crit_edge ]
  %42 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %spec.store.select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool94.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool94.not, label %if.end93.if.end98_crit_edge, label %if.then95

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %flags96 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %43 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags96, align 8
  %or97 = or i32 %44, 8
  store i32 %or97, ptr %flags96, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end93.if.end98_crit_edge
  %45 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load99 = load i8, ptr %spec.store.select, align 4
  %46 = and i8 %bf.load99, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool102.not = icmp eq i8 %46, 0
  br i1 %tobool102.not, label %if.end98.if.end106_crit_edge, label %if.then103

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  %flags104 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %47 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags104, align 8
  %or105 = or i32 %48, 16
  store i32 %or105, ptr %flags104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end98.if.end106_crit_edge
  %49 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load107 = load i8, ptr %spec.store.select, align 4
  %50 = and i8 %bf.load107, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool111.not = icmp eq i8 %50, 0
  br i1 %tobool111.not, label %if.end106.if.end115_crit_edge, label %if.then112

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end115

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  %flags113 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %51 = ptrtoint ptr %flags113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags113, align 8
  %or114 = or i32 %52, 128
  store i32 %or114, ptr %flags113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end106.if.end115_crit_edge
  %num_ports116 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %spec.store.select, i32 0, i32 1
  %53 = ptrtoint ptr %num_ports116 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_ports116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool117.not = icmp eq i32 %54, 0
  br i1 %tobool117.not, label %if.end115.if.end121_crit_edge, label %if.then118

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  %num_ports120 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4
  %55 = ptrtoint ptr %num_ports120 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %num_ports120, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end115.if.end121_crit_edge
  %flags122 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 0, i32 9, i32 1, i32 2
  %56 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags122, align 8
  %and = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool123.not = icmp eq i32 %and, 0
  br i1 %tobool123.not, label %if.end126, label %do.end

do.end:                                           ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %err_reset

if.end126:                                        ; preds = %if.end121
  %and128 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end135, label %do.end133

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  br label %err_reset

if.end135:                                        ; preds = %if.end126
  %call.i288 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  %power_on = getelementptr inbounds %struct.usb_ohci_pdata, ptr %spec.store.select, i32 0, i32 2
  %58 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %power_on, align 4
  %tobool139.not = icmp eq ptr %59, null
  br i1 %tobool139.not, label %if.end135.if.end146_crit_edge, label %if.then140

if.end135.if.end146_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end146

if.then140:                                       ; preds = %if.end135
  %call142 = tail call i32 %59(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then140.err_reset_crit_edge, label %if.then140.if.end146_crit_edge

if.then140.if.end146_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end146

if.then140.err_reset_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset

if.end146:                                        ; preds = %if.then140.if.end146_crit_edge, %if.end135.if.end146_crit_edge
  %call147 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #4
  %call149 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call147) #4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 0, i32 16
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call149, ptr %regs, align 4
  %cmp.i289 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %call149 to i32
  br label %err_power

if.end155:                                        ; preds = %if.end146
  %62 = ptrtoint ptr %call147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call147, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 0, i32 17
  %64 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call147, i32 0, i32 1
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end.i, align 4
  %67 = load i32, ptr %call147, align 4
  %sub.i = add i32 %66, 1
  %add.i = sub i32 %sub.i, %67
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 0, i32 18
  %68 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call157 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call17, i32 noundef %call11, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end155.err_power_crit_edge

if.end155.err_power_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power

if.end160:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call17, align 8
  %call161 = tail call i32 @device_wakeup_enable(ptr noundef %70) #4
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call17, ptr %driver_data.i.i, align 4
  br label %cleanup

err_power:                                        ; preds = %if.end155.err_power_crit_edge, %if.then152
  %err.0 = phi i32 [ %61, %if.then152 ], [ %call157, %if.end155.err_power_crit_edge ]
  %power_off = getelementptr inbounds %struct.usb_ohci_pdata, ptr %spec.store.select, i32 0, i32 3
  %72 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %power_off, align 4
  %tobool162.not = icmp eq ptr %73, null
  br i1 %tobool162.not, label %err_power.err_reset_crit_edge, label %if.then163

err_power.err_reset_crit_edge:                    ; preds = %err_power
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset

if.then163:                                       ; preds = %err_power
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %73(ptr noundef %dev) #4
  br label %err_reset

err_reset:                                        ; preds = %if.then163, %err_power.err_reset_crit_edge, %if.then140.err_reset_crit_edge, %do.end133, %do.end
  %err.1 = phi i32 [ -22, %do.end ], [ -22, %do.end133 ], [ %call142, %if.then140.err_reset_crit_edge ], [ %err.0, %if.then163 ], [ %err.0, %err_power.err_reset_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  %resets167 = getelementptr inbounds %struct.usb_hcd, ptr %call17, i32 2, i32 2
  %74 = ptrtoint ptr %resets167 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resets167, align 4
  %call168 = tail call i32 @reset_control_assert(ptr noundef %75) #4
  br label %err_put_clks

err_put_clks:                                     ; preds = %err_reset, %if.end87.err_put_clks_crit_edge, %if.then84, %if.then70.err_put_clks_crit_edge
  %err.2 = phi i32 [ -517, %if.then70.err_put_clks_crit_edge ], [ %41, %if.then84 ], [ %call89, %if.end87.err_put_clks_crit_edge ], [ %err.1, %err_reset ]
  %clk.2 = phi i32 [ %clk.0294.lcssa, %if.then70.err_put_clks_crit_edge ], [ %clk.0292, %if.then84 ], [ %clk.0292, %if.end87.err_put_clks_crit_edge ], [ %clk.1, %err_reset ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk.2)
  %cmp169296.not = icmp eq i32 %clk.2, 0
  br i1 %cmp169296.not, label %err_put_clks.while.end_crit_edge, label %while.body

err_put_clks.while.end_crit_edge:                 ; preds = %err_put_clks
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %err_put_clks
  %dec297 = add nsw i32 %clk.2, -1
  %arrayidx171 = getelementptr [3 x ptr], ptr %priv23, i32 0, i32 %dec297
  %76 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx171, align 4
  tail call void @clk_put(ptr noundef %77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.2)
  %cmp169 = icmp ugt i32 %clk.2, 1
  br i1 %cmp169, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %dec297.1 = add nsw i32 %clk.2, -2
  %arrayidx171.1 = getelementptr [3 x ptr], ptr %priv23, i32 0, i32 %dec297.1
  %78 = ptrtoint ptr %arrayidx171.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx171.1, align 4
  tail call void @clk_put(ptr noundef %79) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec297)
  %cmp169.1 = icmp ugt i32 %dec297, 1
  br i1 %cmp169.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %dec297.2 = add nsw i32 %clk.2, -3
  %arrayidx171.2 = getelementptr [3 x ptr], ptr %priv23, i32 0, i32 %dec297.2
  %80 = ptrtoint ptr %arrayidx171.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx171.2, align 4
  tail call void @clk_put(ptr noundef %81) #4
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %err_put_clks.while.end_crit_edge
  br i1 %cmp25, label %if.then173, label %while.end.if.end176_crit_edge

while.end.if.end176_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176

if.then173:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %platform_data.i, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %while.end.if.end176_crit_edge
  tail call void @usb_put_hcd(ptr noundef nonnull %call17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.end160, %dev_name.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %if.end176 ], [ 0, %if.end160 ], [ -19, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %priv4 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @usb_remove_hcd(ptr noundef %1) #4
  %power_off = getelementptr inbounds %struct.usb_ohci_pdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %5(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %resets = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 2
  %6 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resets, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  %8 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv4, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end
  tail call void @clk_put(ptr noundef nonnull %9) #4
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool9.not.1 = icmp eq ptr %11, null
  br i1 %tobool9.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_put(ptr noundef nonnull %11) #4
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool9.not.2 = icmp eq ptr %13, null
  br i1 %tobool9.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_put(ptr noundef nonnull %13) #4
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #4
  %call.i35 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  %cmp15 = icmp eq ptr %3, @ohci_platform_defaults
  br i1 %cmp15, label %if.then16, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %platform_data.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_power_on(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %clk_prepare_enable.exit

clk_prepare_enable.exit.thread50:                 ; preds = %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge
  %clk.029.lcssa38.ph = phi i32 [ 2, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ 1, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  %.lcssa36.ph = phi ptr [ %7, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ %5, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  %call1.i.lcssa.ph = phi i32 [ %call1.i.2, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ %call1.i.1, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa36.ph) #4
  br label %while.body

clk_prepare_enable.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef nonnull %3) #4
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.body.1.while.body_crit_edge

for.body.1.while.body_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.i.1:                                       ; preds = %for.body.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge

if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit.thread50

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.body.2.while.body_crit_edge

for.body.2.while.body_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.i.2:                                       ; preds = %for.body.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.cleanup_crit_edge, label %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge

if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit.thread50

if.end.i.2.cleanup_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %for.body.2.while.body_crit_edge, %for.body.1.while.body_crit_edge, %clk_prepare_enable.exit.thread50
  %retval.0.i44 = phi i32 [ %call1.i.lcssa.ph, %clk_prepare_enable.exit.thread50 ], [ %call.i.2, %for.body.2.while.body_crit_edge ], [ %call.i.1, %for.body.1.while.body_crit_edge ]
  %clk.0293943 = phi i32 [ %clk.029.lcssa38.ph, %clk_prepare_enable.exit.thread50 ], [ 2, %for.body.2.while.body_crit_edge ], [ 1, %for.body.1.while.body_crit_edge ]
  %dec32 = add nsw i32 %clk.0293943, -1
  %arrayidx9 = getelementptr [3 x ptr], ptr %priv2, i32 0, i32 %dec32
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.0293943)
  %cmp7 = icmp ugt i32 %clk.0293943, 1
  br i1 %cmp7, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %dec32.1 = add nsw i32 %clk.0293943, -2
  %arrayidx9.1 = getelementptr [3 x ptr], ptr %priv2, i32 0, i32 %dec32.1
  %10 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %while.body.1, %while.body.cleanup_crit_edge, %if.end.i.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %clk_prepare_enable.exit, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %clk_prepare_enable.exit ], [ 0, %if.end.i.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %retval.0.i44, %while.body.1 ], [ %retval.0.i44, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_platform_power_off(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %arrayidx = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %3) #4
  tail call void @clk_unprepare(ptr noundef nonnull %3) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %5) #4
  tail call void @clk_unprepare(ptr noundef nonnull %5) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %7) #4
  tail call void @clk_unprepare(ptr noundef nonnull %7) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call2 = tail call i32 @ohci_suspend(ptr noundef %1, i1 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %power_suspend = getelementptr inbounds %struct.usb_ohci_pdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %power_suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_suspend, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_platform_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %power_on = getelementptr inbounds %struct.usb_ohci_pdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_on, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call3 = tail call i32 %5(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup8_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then.cleanup8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup8

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @ohci_resume(ptr noundef %1, i1 noundef zeroext false) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %dev) #4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %if.then.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end5 ], [ %call3, %if.then.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_ohci_platform__239_350_ohci_platform_init6, !1, !"__initcall__kmod_ohci_platform__239_350_ohci_platform_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-platform.c", i32 350, i32 1}
!2 = !{ptr @__exitcall_ohci_platform_cleanup, !3, !"__exitcall_ohci_platform_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-platform.c", i32 356, i32 1}
!4 = !{ptr @__UNIQUE_ID_description240, !5, !"__UNIQUE_ID_description240", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-platform.c", i32 358, i32 1}
!6 = !{ptr @__UNIQUE_ID_author241, !7, !"__UNIQUE_ID_author241", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-platform.c", i32 359, i32 1}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ohci-platform.c", i32 360, i32 1}
!10 = !{ptr @__UNIQUE_ID_file243, !11, !"__UNIQUE_ID_file243", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ohci-platform.c", i32 361, i32 1}
!12 = !{ptr @__UNIQUE_ID_license244, !11, !"__UNIQUE_ID_license244", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ohci-platform.c", i32 345, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ohci_platform_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ohci_platform_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @hcd_name, !20, !"hcd_name", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ohci-platform.c", i32 43, i32 19}
!21 = !{ptr @ohci_platform_hc_driver, !22, !"ohci_platform_hc_driver", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ohci-platform.c", i32 77, i32 39}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ohci-platform.c", i32 80, i32 19}
!25 = !{ptr @platform_overrides, !26, !"platform_overrides", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ohci-platform.c", i32 79, i32 43}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ohci-platform.c", i32 334, i32 11}
!29 = !{ptr @ohci_platform_driver, !30, !"ohci_platform_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ohci-platform.c", i32 328, i32 31}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ohci-platform.c", i32 128, i32 47}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/ohci-platform.c", i32 131, i32 47}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/ohci-platform.c", i32 134, i32 47}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/ohci-platform.c", i32 137, i32 47}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/ohci-platform.c", i32 141, i32 8}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/ohci-platform.c", i32 144, i32 42}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/ohci-platform.c", i32 181, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ohci_platform_probe._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @ohci_platform_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ohci-platform.c", i32 189, i32 3}
!52 = !{ptr @ohci_platform_probe._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ohci_platform_probe._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ohci_platform_defaults, !55, !"ohci_platform_defaults", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/ohci-platform.c", i32 84, i32 30}
!56 = !{ptr @ohci_platform_ids, !57, !"ohci_platform_ids", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/ohci-platform.c", i32 311, i32 34}
!58 = !{ptr @ohci_platform_pm_ops, !59, !"ohci_platform_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/ohci-platform.c", i32 325, i32 8}
!60 = !{ptr @ohci_platform_table, !61, !"ohci_platform_table", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/ohci-platform.c", i32 319, i32 40}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
