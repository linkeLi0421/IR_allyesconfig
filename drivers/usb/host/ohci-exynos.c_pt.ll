; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-exynos.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-exynos.c"
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
%struct.exynos_ohci_hcd = type { ptr, ptr, [3 x ptr], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ohci_exynos__295_317_ohci_exynos_init6 = internal global ptr @ohci_exynos_init, section ".initcall6.init", align 4
@exynos_ohci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_ohci_probe, ptr @exynos_ohci_remove, ptr @exynos_ohci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ohci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_ohci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_exynos_cleanup = internal global ptr @ohci_exynos_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias296 = internal constant [39 x i8] c"ohci_exynos.alias=platform:exynos-ohci\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [52 x i8] c"ohci_exynos.author=Jingoo Han <jg1.han@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [46 x i8] c"ohci_exynos.file=drivers/usb/host/ohci-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [27 x i8] c"ohci_exynos.license=GPL v2\00", section ".modinfo", align 1
@ohci_exynos_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: OHCI Exynos driver\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ohci_exynos_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/ohci-exynos.c\00", [33 x i8] zeroinitializer }, align 32
@ohci_exynos_init._entry_ptr = internal global ptr @ohci_exynos_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ohci-exynos\00", [20 x i8] zeroinitializer }, align 32
@exynos_ohci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@exynos_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 24, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-ohci\00", [20 x i8] zeroinitializer }, align 32
@exynos_ohci_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_ohci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_ohci_suspend, ptr @exynos_ohci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 142, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to create HCD\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_ohci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry_ptr = internal global ptr @exynos_ohci_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbhost\00", [24 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get usbhost clock\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry_ptr.11 = internal global ptr @exynos_ohci_probe._entry.9, section ".printk_index", align 4
@exynos_ohci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 183, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable USB phy\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry_ptr.14 = internal global ptr @exynos_ohci_probe._entry.12, section ".printk_index", align 4
@exynos_ohci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add USB HCD\0A\00", [41 x i8] zeroinitializer }, align 32
@exynos_ohci_probe._entry_ptr.17 = internal global ptr @exynos_ohci_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@exynos_ohci_get_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 62, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to parse device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_ohci_get_phy\00", [44 x i8] zeroinitializer }, align 32
@exynos_ohci_get_phy._entry_ptr = internal global ptr @exynos_ohci_get_phy._entry, section ".printk_index", align 4
@exynos_ohci_get_phy._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 68, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid number of PHYs\0A\00", [40 x i8] zeroinitializer }, align 32
@exynos_ohci_get_phy._entry_ptr.25 = internal global ptr @exynos_ohci_get_phy._entry.23, section ".printk_index", align 4
@exynos_ohci_get_phy._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 82, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error retrieving usb2 phy: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@exynos_ohci_get_phy._entry_ptr.28 = internal global ptr @exynos_ohci_get_phy._entry.26, section ".printk_index", align 4
@exynos_ohci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.29, ptr @.str.2, i32 267, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_ohci_resume\00", [45 x i8] zeroinitializer }, align 32
@exynos_ohci_resume._entry_ptr = internal global ptr @exynos_ohci_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967277]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"exynos_ohci_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 298, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 313, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 24, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 303, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"exynos_ohci_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 291, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"exynos_ohci_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 142, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 152, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 155, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 183, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 47, i32 54 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 48, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 60, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 62, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 81, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [34 x i8] c"../drivers/usb/host/ohci-exynos.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 267, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ohci_exynos_cleanup, ptr @__initcall__kmod_ohci_exynos__295_317_ohci_exynos_init6, ptr @exynos_ohci_get_phy._entry, ptr @exynos_ohci_get_phy._entry.23, ptr @exynos_ohci_get_phy._entry.26, ptr @exynos_ohci_get_phy._entry_ptr, ptr @exynos_ohci_get_phy._entry_ptr.25, ptr @exynos_ohci_get_phy._entry_ptr.28, ptr @exynos_ohci_probe._entry, ptr @exynos_ohci_probe._entry.12, ptr @exynos_ohci_probe._entry.15, ptr @exynos_ohci_probe._entry.9, ptr @exynos_ohci_probe._entry_ptr, ptr @exynos_ohci_probe._entry_ptr.11, ptr @exynos_ohci_probe._entry_ptr.14, ptr @exynos_ohci_probe._entry_ptr.17, ptr @exynos_ohci_resume._entry, ptr @exynos_ohci_resume._entry_ptr, ptr @ohci_exynos_cleanup, ptr @ohci_exynos_init._entry, ptr @ohci_exynos_init._entry_ptr, ptr @exynos_ohci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @exynos_ohci_match, ptr @exynos_ohci_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_exynos_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_get_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_get_phy._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_get_phy._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ohci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_exynos_init() #0 section ".init.text" align 64 {
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
  tail call void @ohci_init_driver(ptr noundef nonnull @exynos_ohci_hc_driver, ptr noundef nonnull @exynos_overrides) #5
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ohci_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_exynos_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ohci_driver) #5
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
define internal i32 @exynos_ohci_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %phy_number.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end.dev_name.exit_crit_edge ]
  %call4 = tail call ptr @usb_create_hcd(ptr noundef nonnull @exynos_ohci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end8:                                          ; preds = %dev_name.exit
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 2, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_number.i) #5
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp88.i = icmp sgt i32 %call.i, 0
  br i1 %cmp88.i, label %if.end8.for.body.i_crit_edge, label %if.end8.i

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i125.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %storemerge89.i = phi i32 [ %inc.i, %if.end.i125.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev, ptr noundef %8, i32 noundef %storemerge89.i) #5
  %cmp.i.i124 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124, label %if.then.i, label %if.end.i125

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call2.i to i32
  br label %exynos_ohci_get_phy.exit

if.end.i125:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.exynos_ohci_hcd, ptr %priv, i32 0, i32 2, i32 %storemerge89.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %storemerge89.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %if.end.i125.exynos_ohci_get_phy.exit.thread136_crit_edge, label %if.end.i125.for.body.i_crit_edge

if.end.i125.for.body.i_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i125.exynos_ohci_get_phy.exit.thread136_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ohci_get_phy.exit.thread136

if.end8.i:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %phy_number.i, align 4
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call10.i = tail call ptr @of_get_next_available_child(ptr noundef %13, ptr noundef null) #5
  %cmp12.not90.i = icmp eq ptr %call10.i, null
  br i1 %cmp12.not90.i, label %if.end8.i.for.end43.i_crit_edge, label %if.end8.i.for.body13.i_crit_edge

if.end8.i.for.body13.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body13.i

if.end8.i.for.end43.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43.i

for.body13.i:                                     ; preds = %for.inc40.i.for.body13.i_crit_edge, %if.end8.i.for.body13.i_crit_edge
  %child.091.i = phi ptr [ %call42.i, %for.inc40.i.for.body13.i_crit_edge ], [ %call10.i, %if.end8.i.for.body13.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.091.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %phy_number.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i126 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i126, label %if.end16.i, label %for.body13.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge

for.body13.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge: ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ohci_get_phy.exit.thread.sink.split

if.end16.i:                                       ; preds = %for.body13.i
  %14 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp17.i = icmp sgt i32 %15, 2
  br i1 %cmp17.i, label %if.end16.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge, label %if.end22.i

if.end16.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ohci_get_phy.exit.thread.sink.split

if.end22.i:                                       ; preds = %if.end16.i
  %call23.i = call ptr @devm_of_phy_get(ptr noundef %dev, ptr noundef nonnull %child.091.i, ptr noundef null) #5
  %16 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_number.i, align 4
  %arrayidx25.i = getelementptr %struct.exynos_ohci_hcd, ptr %priv, i32 0, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23.i, ptr %arrayidx25.i, align 4
  %cmp.i78.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78.i, label %if.then27.i, label %if.end22.i.for.inc40.i_crit_edge

if.end22.i.for.inc40.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

if.then27.i:                                      ; preds = %if.end22.i
  %19 = ptrtoint ptr %call23.i to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end36.i [
    i32 -517, label %exynos_ohci_get_phy.exit.thread.loopexit
    i32 -38, label %if.then27.i.for.inc40.i_crit_edge
    i32 -19, label %if.then27.i.for.inc40.i_crit_edge196
  ]

if.then27.i.for.inc40.i_crit_edge196:             ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

if.then27.i.for.inc40.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

do.end36.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call23.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %21) #8
  call void @of_node_put(ptr noundef nonnull %child.091.i) #5
  br label %exynos_ohci_get_phy.exit

for.inc40.i:                                      ; preds = %if.then27.i.for.inc40.i_crit_edge, %if.then27.i.for.inc40.i_crit_edge196, %if.end22.i.for.inc40.i_crit_edge
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %call42.i = call ptr @of_get_next_available_child(ptr noundef %23, ptr noundef nonnull %child.091.i) #5
  %cmp12.not.i = icmp eq ptr %call42.i, null
  br i1 %cmp12.not.i, label %for.inc40.i.for.end43.i_crit_edge, label %for.inc40.i.for.body13.i_crit_edge

for.inc40.i.for.body13.i_crit_edge:               ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.inc40.i.for.end43.i_crit_edge:                ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc40.i.for.end43.i_crit_edge, %if.end8.i.for.end43.i_crit_edge
  %legacy_phy.i = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 2, i32 4
  %24 = ptrtoint ptr %legacy_phy.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %legacy_phy.i, align 4
  br label %exynos_ohci_get_phy.exit.thread136

exynos_ohci_get_phy.exit.thread.sink.split:       ; preds = %if.end16.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge, %for.body13.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %for.body13.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge ], [ @.str.24, %if.end16.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge ]
  %retval.0.i127.ph.ph = phi i32 [ %call.i.i.i, %for.body13.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge ], [ -22, %if.end16.i.exynos_ohci_get_phy.exit.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.21.sink) #8
  br label %exynos_ohci_get_phy.exit.thread

exynos_ohci_get_phy.exit.thread.loopexit:         ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call23.i to i32
  br label %exynos_ohci_get_phy.exit.thread

exynos_ohci_get_phy.exit.thread:                  ; preds = %exynos_ohci_get_phy.exit.thread.loopexit, %exynos_ohci_get_phy.exit.thread.sink.split
  %retval.0.i127.ph = phi i32 [ %retval.0.i127.ph.ph, %exynos_ohci_get_phy.exit.thread.sink.split ], [ %25, %exynos_ohci_get_phy.exit.thread.loopexit ]
  call void @of_node_put(ptr noundef nonnull %child.091.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  br label %fail_clk

exynos_ohci_get_phy.exit.thread136:               ; preds = %for.end43.i, %if.end.i125.exynos_ohci_get_phy.exit.thread136_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  %call16 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %priv, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end26

exynos_ohci_get_phy.exit:                         ; preds = %do.end36.i, %if.then.i
  %retval.0.i127 = phi i32 [ %9, %if.then.i ], [ %21, %do.end36.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  br label %fail_clk

do.end22:                                         ; preds = %exynos_ohci_get_phy.exit.thread136
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %fail_clk

if.end26:                                         ; preds = %exynos_ohci_get_phy.exit.thread136
  %call.i128 = call i32 @clk_prepare(ptr noundef %call16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i130, label %if.end26.fail_clk_crit_edge

if.end26.fail_clk_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_clk

if.end.i130:                                      ; preds = %if.end26
  %call1.i = call i32 @clk_enable(ptr noundef %call16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call16) #5
  br label %fail_clk

if.end31:                                         ; preds = %if.end.i130
  %call32 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call34 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call32) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 16
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call34, ptr %regs, align 4
  %cmp.i132 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call34 to i32
  br label %fail_io

if.end40:                                         ; preds = %if.end31
  %32 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call32, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 17
  %34 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call32, i32 0, i32 1
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end.i, align 4
  %37 = load i32, ptr %call32, align 4
  %sub.i = add i32 %36, 1
  %add.i = sub i32 %sub.i, %37
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 18
  %38 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end40.fail_io_crit_edge, label %if.end44

if.end40.fail_io_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_io

if.end44:                                         ; preds = %if.end40
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %call46 = call fastcc i32 @exynos_ohci_phy_enable(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %fail_io

if.end53:                                         ; preds = %if.end44
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %of_node55 = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 2, i32 0, i32 18
  %42 = ptrtoint ptr %of_node55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %of_node55, align 4
  %legacy_phy = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 2, i32 4
  %43 = ptrtoint ptr %legacy_phy to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %legacy_phy, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool56.not = icmp eq i8 %44, 0
  br i1 %tobool56.not, label %if.end53.if.end60_crit_edge, label %if.then57

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %of_node.i, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %call61 = call i32 @usb_add_hcd(ptr noundef nonnull %call4, i32 noundef %call42, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  call fastcc void @exynos_ohci_phy_disable(ptr noundef %dev)
  %46 = ptrtoint ptr %of_node55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node55, align 4
  %48 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %of_node.i, align 8
  br label %fail_io

if.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call4, align 8
  %call69 = call i32 @device_wakeup_enable(ptr noundef %50) #5
  br label %cleanup

fail_io:                                          ; preds = %do.end66, %do.end51, %if.end40.fail_io_crit_edge, %if.then37
  %err.0 = phi i32 [ %31, %if.then37 ], [ %call46, %do.end51 ], [ %call61, %do.end66 ], [ %call42, %if.end40.fail_io_crit_edge ]
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 4
  call void @clk_disable(ptr noundef %52) #5
  call void @clk_unprepare(ptr noundef %52) #5
  br label %fail_clk

fail_clk:                                         ; preds = %fail_io, %if.then3.i, %if.end26.fail_clk_crit_edge, %do.end22, %exynos_ohci_get_phy.exit, %exynos_ohci_get_phy.exit.thread
  %err.1 = phi i32 [ %retval.0.i127, %exynos_ohci_get_phy.exit ], [ %29, %do.end22 ], [ %err.0, %fail_io ], [ %retval.0.i127.ph, %exynos_ohci_get_phy.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i128, %if.end26.fail_clk_crit_edge ]
  call void @usb_put_hcd(ptr noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_clk, %if.end68, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail_clk ], [ 0, %if.end68 ], [ -12, %do.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ohci_remove(ptr nocapture noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 4
  %of_node2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node2, align 8
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 2, i32 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 @phy_power_off(ptr noundef %8) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.usb_hcd, ptr %6, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.1.i = tail call i32 @phy_power_off(ptr noundef %10) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.usb_hcd, ptr %6, i32 2, i32 3
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge, label %if.then.2.i

for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ohci_phy_disable.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.2.i = tail call i32 @phy_power_off(ptr noundef %12) #5
  br label %exynos_ohci_phy_disable.exit

exynos_ohci_phy_disable.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ohci_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %shutdown = getelementptr inbounds %struct.hc_driver, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shutdown, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_ohci_phy_enable(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @phy_power_on(ptr noundef %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ %call6, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp eq i32 %ret.1, 0
  br i1 %cmp, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.body.1.for.inc.1_crit_edge, label %if.then.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %call6.1 = tail call i32 @phy_power_on(ptr noundef %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.body.1.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ 0, %for.body.1.for.inc.1_crit_edge ], [ %call6.1, %if.then.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.1)
  %cmp.1 = icmp eq i32 %ret.1.1, 0
  br i1 %cmp.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.body.2.for.inc.2_crit_edge, label %if.then.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %call6.2 = tail call i32 @phy_power_on(ptr noundef %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.body.2.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ 0, %for.body.2.for.inc.2_crit_edge ], [ %call6.2, %if.then.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.2)
  %cmp.2 = icmp eq i32 %ret.1.2, 0
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.1, %for.inc.for.end_crit_edge ], [ %ret.1.1, %for.inc.1.for.end_crit_edge ], [ %ret.1.2, %for.inc.2 ]
  %cmp.lcssa = phi i1 [ %cmp, %for.inc.for.end_crit_edge ], [ %cmp.1, %for.inc.1.for.end_crit_edge ], [ %cmp.2, %for.inc.2 ]
  %cmp9.1 = phi i1 [ false, %for.inc.for.end_crit_edge ], [ false, %for.inc.1.for.end_crit_edge ], [ true, %for.inc.2 ]
  %i.037.lcssa = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ 1, %for.inc.1.for.end_crit_edge ], [ 2, %for.inc.2 ]
  br i1 %cmp.lcssa, label %for.end.if.end22_crit_edge, label %for.body10

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body10:                                       ; preds = %for.end
  %arrayidx12 = getelementptr [3 x ptr], ptr %phy, i32 0, i32 %i.037.lcssa
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %cmp.i36 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %for.body10.for.inc19_crit_edge, label %if.then14

for.body10.for.inc19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

if.then14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @phy_power_off(ptr noundef %9) #5
  br label %for.inc19

for.inc19:                                        ; preds = %if.then14, %for.body10.for.inc19_crit_edge
  br i1 %cmp, label %for.body10.1, label %for.inc19.if.end22_crit_edge

for.inc19.if.end22_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body10.1:                                     ; preds = %for.inc19
  %i.1 = add nsw i32 %i.037.lcssa, -1
  %arrayidx12.1 = getelementptr [3 x ptr], ptr %phy, i32 0, i32 %i.1
  %10 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12.1, align 4
  %cmp.i36.1 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.1, label %for.body10.1.for.inc19.1_crit_edge, label %if.then14.1

for.body10.1.for.inc19.1_crit_edge:               ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19.1

if.then14.1:                                      ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #7
  %call17.1 = tail call i32 @phy_power_off(ptr noundef %11) #5
  br label %for.inc19.1

for.inc19.1:                                      ; preds = %if.then14.1, %for.body10.1.for.inc19.1_crit_edge
  br i1 %cmp9.1, label %for.body10.2, label %for.inc19.1.if.end22_crit_edge

for.inc19.1.if.end22_crit_edge:                   ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body10.2:                                     ; preds = %for.inc19.1
  %i.1.1 = add nsw i32 %i.037.lcssa, -2
  %arrayidx12.2 = getelementptr [3 x ptr], ptr %phy, i32 0, i32 %i.1.1
  %12 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.2, align 4
  %cmp.i36.2 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.2, label %for.body10.2.if.end22_crit_edge, label %if.then14.2

for.body10.2.if.end22_crit_edge:                  ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then14.2:                                      ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #7
  %call17.2 = tail call i32 @phy_power_off(ptr noundef %13) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then14.2, %for.body10.2.if.end22_crit_edge, %for.inc19.1.if.end22_crit_edge, %for.inc19.if.end22_crit_edge, %for.end.if.end22_crit_edge
  ret i32 %ret.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_ohci_phy_disable(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @phy_power_off(ptr noundef %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call5.1 = tail call i32 @phy_power_off(ptr noundef %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call5.2 = tail call i32 @phy_power_off(ptr noundef %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ohci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
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
  %call3 = tail call i32 @ohci_suspend(ptr noundef %1, i1 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 1
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 @phy_power_off(ptr noundef %9) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.1.i = tail call i32 @phy_power_off(ptr noundef %11) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge, label %if.then.2.i

for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ohci_phy_disable.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.2.i = tail call i32 @phy_power_off(ptr noundef %13) #5
  br label %exynos_ohci_phy_disable.exit

exynos_ohci_phy_disable.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.exynos_ohci_phy_disable.exit_crit_edge
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %exynos_ohci_phy_disable.exit, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ohci_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 1
  %6 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %clk_prepare_enable.exit.for.inc.i_crit_edge, label %if.then.i

clk_prepare_enable.exit.for.inc.i_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @phy_power_on(ptr noundef %7) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %clk_prepare_enable.exit.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ 0, %clk_prepare_enable.exit.for.inc.i_crit_edge ], [ %call6.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp.i = icmp eq i32 %ret.1.i, 0
  br i1 %cmp.i, label %for.body.i.1, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.usb_hcd, ptr %5, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.1, align 4
  %cmp.i.i.1 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.1 = tail call i32 @phy_power_on(ptr noundef %9) #5
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  %ret.1.i.1 = phi i32 [ 0, %for.body.i.1.for.inc.i.1_crit_edge ], [ %call6.i.1, %if.then.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.1)
  %cmp.i.1 = icmp eq i32 %ret.1.i.1, 0
  br i1 %cmp.i.1, label %for.body.i.2, label %for.inc.i.1.for.end.i_crit_edge

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.usb_hcd, ptr %5, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.2, align 4
  %cmp.i.i.2 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.2 = tail call i32 @phy_power_on(ptr noundef %11) #5
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.body.i.2.for.inc.i.2_crit_edge
  %ret.1.i.2 = phi i32 [ 0, %for.body.i.2.for.inc.i.2_crit_edge ], [ %call6.i.2, %if.then.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.2)
  %cmp.i.2 = icmp eq i32 %ret.1.i.2, 0
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.2, %for.inc.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  %ret.1.i.lcssa = phi i32 [ %ret.1.i, %for.inc.i.for.end.i_crit_edge ], [ %ret.1.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %ret.1.i.2, %for.inc.i.2 ]
  %cmp.i.lcssa = phi i1 [ %cmp.i, %for.inc.i.for.end.i_crit_edge ], [ %cmp.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %cmp.i.2, %for.inc.i.2 ]
  %cmp9.i.1 = phi i1 [ false, %for.inc.i.for.end.i_crit_edge ], [ false, %for.inc.i.1.for.end.i_crit_edge ], [ true, %for.inc.i.2 ]
  %i.037.i.lcssa = phi i32 [ 0, %for.inc.i.for.end.i_crit_edge ], [ 1, %for.inc.i.1.for.end.i_crit_edge ], [ 2, %for.inc.i.2 ]
  br i1 %cmp.i.lcssa, label %if.end, label %for.body10.i

for.body10.i:                                     ; preds = %for.end.i
  %arrayidx12.i = getelementptr [3 x ptr], ptr %phy.i, i32 0, i32 %i.037.i.lcssa
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.i, align 4
  %cmp.i36.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %for.body10.i.for.inc19.i_crit_edge, label %if.then14.i

for.body10.i.for.inc19.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19.i

if.then14.i:                                      ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 @phy_power_off(ptr noundef %13) #5
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.then14.i, %for.body10.i.for.inc19.i_crit_edge
  br i1 %cmp.i, label %for.body10.i.1, label %for.inc19.i.do.end_crit_edge

for.inc19.i.do.end_crit_edge:                     ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body10.i.1:                                   ; preds = %for.inc19.i
  %i.1.i = add nsw i32 %i.037.i.lcssa, -1
  %arrayidx12.i.1 = getelementptr [3 x ptr], ptr %phy.i, i32 0, i32 %i.1.i
  %14 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12.i.1, align 4
  %cmp.i36.i.1 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i.1, label %for.body10.i.1.for.inc19.i.1_crit_edge, label %if.then14.i.1

for.body10.i.1.for.inc19.i.1_crit_edge:           ; preds = %for.body10.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19.i.1

if.then14.i.1:                                    ; preds = %for.body10.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.1 = tail call i32 @phy_power_off(ptr noundef %15) #5
  br label %for.inc19.i.1

for.inc19.i.1:                                    ; preds = %if.then14.i.1, %for.body10.i.1.for.inc19.i.1_crit_edge
  br i1 %cmp9.i.1, label %for.body10.i.2, label %for.inc19.i.1.do.end_crit_edge

for.inc19.i.1.do.end_crit_edge:                   ; preds = %for.inc19.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body10.i.2:                                   ; preds = %for.inc19.i.1
  %i.1.i.1 = add nsw i32 %i.037.i.lcssa, -2
  %arrayidx12.i.2 = getelementptr [3 x ptr], ptr %phy.i, i32 0, i32 %i.1.i.1
  %16 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12.i.2, align 4
  %cmp.i36.i.2 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i.2, label %for.body10.i.2.do.end_crit_edge, label %if.then14.i.2

for.body10.i.2.do.end_crit_edge:                  ; preds = %for.body10.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then14.i.2:                                    ; preds = %for.body10.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.2 = tail call i32 @phy_power_off(ptr noundef %17) #5
  br label %do.end

do.end:                                           ; preds = %if.then14.i.2, %for.body10.i.2.do.end_crit_edge, %for.inc19.i.1.do.end_crit_edge, %for.inc19.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @ohci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %ret.1.i.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_ohci_exynos__295_317_ohci_exynos_init6, !1, !"__initcall__kmod_ohci_exynos__295_317_ohci_exynos_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-exynos.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_ohci_exynos_cleanup, !3, !"__exitcall_ohci_exynos_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-exynos.c", i32 323, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias296, !5, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-exynos.c", i32 325, i32 1}
!6 = !{ptr @__UNIQUE_ID_author297, !7, !"__UNIQUE_ID_author297", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-exynos.c", i32 326, i32 1}
!8 = !{ptr @__UNIQUE_ID_file298, !9, !"__UNIQUE_ID_file298", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ohci-exynos.c", i32 327, i32 1}
!10 = !{ptr @__UNIQUE_ID_license299, !9, !"__UNIQUE_ID_license299", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ohci-exynos.c", i32 313, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ohci_exynos_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ohci_exynos_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hcd_name, !18, !"hcd_name", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ohci-exynos.c", i32 24, i32 19}
!19 = !{ptr @exynos_ohci_hc_driver, !20, !"exynos_ohci_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ohci-exynos.c", i32 25, i32 39}
!21 = !{ptr @exynos_overrides, !22, !"exynos_overrides", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ohci-exynos.c", i32 281, i32 43}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ohci-exynos.c", i32 303, i32 11}
!25 = !{ptr @exynos_ohci_driver, !26, !"exynos_ohci_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ohci-exynos.c", i32 298, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ohci-exynos.c", i32 142, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exynos_ohci_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_ohci_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ohci-exynos.c", i32 152, i32 46}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ohci-exynos.c", i32 155, i32 3}
!38 = !{ptr @exynos_ohci_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @exynos_ohci_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ohci-exynos.c", i32 183, i32 3}
!42 = !{ptr @exynos_ohci_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @exynos_ohci_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/ohci-exynos.c", i32 197, i32 3}
!46 = !{ptr @exynos_ohci_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @exynos_ohci_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/ohci-exynos.c", i32 47, i32 54}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ohci-exynos.c", i32 48, i32 12}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ohci-exynos.c", i32 60, i32 37}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/ohci-exynos.c", i32 62, i32 4}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @exynos_ohci_get_phy._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @exynos_ohci_get_phy._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/ohci-exynos.c", i32 68, i32 4}
!61 = !{ptr @exynos_ohci_get_phy._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @exynos_ohci_get_phy._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/ohci-exynos.c", i32 81, i32 5}
!65 = !{ptr @exynos_ohci_get_phy._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @exynos_ohci_get_phy._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @exynos_ohci_match, !68, !"exynos_ohci_match", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/ohci-exynos.c", i32 291, i32 34}
!69 = !{ptr @exynos_ohci_pm_ops, !70, !"exynos_ohci_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/usb/host/ohci-exynos.c", i32 285, i32 32}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/ohci-exynos.c", i32 267, i32 3}
!73 = !{ptr @exynos_ohci_resume._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @exynos_ohci_resume._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
