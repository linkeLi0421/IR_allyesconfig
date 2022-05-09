; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-exynos.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-exynos.c"
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
%struct.exynos_ehci_hcd = type { ptr, ptr, [3 x ptr], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_exynos__295_354_ehci_exynos_init6 = internal global ptr @ehci_exynos_init, section ".initcall6.init", align 4
@exynos_ehci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_ehci_probe, ptr @exynos_ehci_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ehci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_ehci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_exynos_cleanup = internal global ptr @ehci_exynos_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [43 x i8] c"ehci_exynos.description=EHCI Exynos driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [39 x i8] c"ehci_exynos.alias=platform:exynos-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [30 x i8] c"ehci_exynos.author=Jingoo Han\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [34 x i8] c"ehci_exynos.author=Joonyoung Shim\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [46 x i8] c"ehci_exynos.file=drivers/usb/host/ehci-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"ehci_exynos.license=GPL v2\00", section ".modinfo", align 1
@ehci_exynos_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: EHCI Exynos driver\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ehci_exynos_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/ehci-exynos.c\00", [33 x i8] zeroinitializer }, align 32
@ehci_exynos_init._entry_ptr = internal global ptr @ehci_exynos_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ehci-exynos\00", [20 x i8] zeroinitializer }, align 32
@exynos_ehci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@exynos_overrides = internal constant %struct.ehci_driver_overrides { i32 24, ptr null, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-ehci\00", [20 x i8] zeroinitializer }, align 32
@exynos_ehci_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_ehci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_ehci_suspend, ptr @exynos_ehci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 174, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to create HCD\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_ehci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry_ptr = internal global ptr @exynos_ehci_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbhost\00", [24 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get usbhost clock\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry_ptr.11 = internal global ptr @exynos_ehci_probe._entry.9, section ".printk_index", align 4
@exynos_ehci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 213, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable USB phy\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry_ptr.14 = internal global ptr @exynos_ehci_probe._entry.12, section ".printk_index", align 4
@exynos_ehci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add USB HCD\0A\00", [41 x i8] zeroinitializer }, align 32
@exynos_ehci_probe._entry_ptr.17 = internal global ptr @exynos_ehci_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung,vbus-gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ehci_vbus_gpio\00", [17 x i8] zeroinitializer }, align 32
@exynos_setup_vbus_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 148, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't request ehci vbus gpio %d\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_setup_vbus_gpio\00", [41 x i8] zeroinitializer }, align 32
@exynos_setup_vbus_gpio._entry_ptr = internal global ptr @exynos_setup_vbus_gpio._entry, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@exynos_ehci_get_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 73, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to parse device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_ehci_get_phy\00", [44 x i8] zeroinitializer }, align 32
@exynos_ehci_get_phy._entry_ptr = internal global ptr @exynos_ehci_get_phy._entry, section ".printk_index", align 4
@exynos_ehci_get_phy._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 79, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid number of PHYs\0A\00", [40 x i8] zeroinitializer }, align 32
@exynos_ehci_get_phy._entry_ptr.29 = internal global ptr @exynos_ehci_get_phy._entry.27, section ".printk_index", align 4
@exynos_ehci_get_phy._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 93, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error retrieving usb2 phy: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@exynos_ehci_get_phy._entry_ptr.32 = internal global ptr @exynos_ehci_get_phy._entry.30, section ".printk_index", align 4
@exynos_ehci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.33, ptr @.str.2, i32 302, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_ehci_resume\00", [45 x i8] zeroinitializer }, align 32
@exynos_ehci_resume._entry_ptr = internal global ptr @exynos_ehci_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967277]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"exynos_ehci_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 331, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 350, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 35, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 336, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"exynos_ehci_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 324, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"exynos_ehci_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 318, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 174, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 183, i32 46 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 186, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 213, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 233, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 141, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 146, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 148, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 58, i32 54 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 59, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 71, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 73, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 79, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 92, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [34 x i8] c"../drivers/usb/host/ehci-exynos.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 302, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ehci_exynos_cleanup, ptr @__initcall__kmod_ehci_exynos__295_354_ehci_exynos_init6, ptr @ehci_exynos_cleanup, ptr @ehci_exynos_init._entry, ptr @ehci_exynos_init._entry_ptr, ptr @exynos_ehci_get_phy._entry, ptr @exynos_ehci_get_phy._entry.27, ptr @exynos_ehci_get_phy._entry.30, ptr @exynos_ehci_get_phy._entry_ptr, ptr @exynos_ehci_get_phy._entry_ptr.29, ptr @exynos_ehci_get_phy._entry_ptr.32, ptr @exynos_ehci_probe._entry, ptr @exynos_ehci_probe._entry.12, ptr @exynos_ehci_probe._entry.15, ptr @exynos_ehci_probe._entry.9, ptr @exynos_ehci_probe._entry_ptr, ptr @exynos_ehci_probe._entry_ptr.11, ptr @exynos_ehci_probe._entry_ptr.14, ptr @exynos_ehci_probe._entry_ptr.17, ptr @exynos_ehci_resume._entry, ptr @exynos_ehci_resume._entry_ptr, ptr @exynos_setup_vbus_gpio._entry, ptr @exynos_setup_vbus_gpio._entry_ptr, ptr @exynos_ehci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @exynos_ehci_match, ptr @exynos_ehci_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_exynos_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_setup_vbus_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_get_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_get_phy._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_get_phy._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ehci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_exynos_init() #0 section ".init.text" align 64 {
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
  tail call void @ehci_init_driver(ptr noundef nonnull @exynos_ehci_hc_driver, ptr noundef nonnull @exynos_overrides) #5
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ehci_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_exynos_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ehci_driver) #5
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
define internal i32 @exynos_ehci_probe(ptr noundef %pdev) #3 align 64 {
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
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.exynos_setup_vbus_gpio.exit_crit_edge, label %if.end.i

if.end.exynos_setup_vbus_gpio.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_setup_vbus_gpio.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i136 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %2, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i136)
  %3 = icmp ult i32 %call.i.i136, 2048
  br i1 %3, label %if.end4.i, label %if.end.i.exynos_setup_vbus_gpio.exit_crit_edge

if.end.i.exynos_setup_vbus_gpio.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_setup_vbus_gpio.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call.i.i136, i32 noundef 2, ptr noundef nonnull @.str.19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.exynos_setup_vbus_gpio.exit_crit_edge, label %do.end.i

if.end4.i.exynos_setup_vbus_gpio.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_setup_vbus_gpio.exit

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i.i136) #8
  br label %exynos_setup_vbus_gpio.exit

exynos_setup_vbus_gpio.exit:                      ; preds = %do.end.i, %if.end4.i.exynos_setup_vbus_gpio.exit_crit_edge, %if.end.i.exynos_setup_vbus_gpio.exit_crit_edge, %if.end.exynos_setup_vbus_gpio.exit_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i137 = icmp eq ptr %5, null
  br i1 %tobool.not.i137, label %if.end.i138, label %exynos_setup_vbus_gpio.exit.dev_name.exit_crit_edge

exynos_setup_vbus_gpio.exit.dev_name.exit_crit_edge: ; preds = %exynos_setup_vbus_gpio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i138:                                      ; preds = %exynos_setup_vbus_gpio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i138, %exynos_setup_vbus_gpio.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i138 ], [ %5, %exynos_setup_vbus_gpio.exit.dev_name.exit_crit_edge ]
  %call5 = tail call ptr @usb_create_hcd(ptr noundef nonnull @exynos_ehci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end9:                                          ; preds = %dev_name.exit
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 2, i32 0, i32 9, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_number.i) #5
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp88.i = icmp sgt i32 %call.i, 0
  br i1 %cmp88.i, label %if.end9.for.body.i_crit_edge, label %if.end8.i

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i141.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %storemerge89.i = phi i32 [ %inc.i, %if.end.i141.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev, ptr noundef %11, i32 noundef %storemerge89.i) #5
  %cmp.i.i140 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i140, label %if.then.i, label %if.end.i141

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call2.i to i32
  br label %exynos_ehci_get_phy.exit

if.end.i141:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.exynos_ehci_hcd, ptr %priv, i32 0, i32 2, i32 %storemerge89.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %storemerge89.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %if.end.i141.exynos_ehci_get_phy.exit.thread154_crit_edge, label %if.end.i141.for.body.i_crit_edge

if.end.i141.for.body.i_crit_edge:                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i141.exynos_ehci_get_phy.exit.thread154_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ehci_get_phy.exit.thread154

if.end8.i:                                        ; preds = %if.end9
  %14 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %phy_number.i, align 4
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call10.i = tail call ptr @of_get_next_available_child(ptr noundef %16, ptr noundef null) #5
  %cmp12.not90.i = icmp eq ptr %call10.i, null
  br i1 %cmp12.not90.i, label %if.end8.i.for.end43.i_crit_edge, label %if.end8.i.for.body13.i_crit_edge

if.end8.i.for.body13.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body13.i

if.end8.i.for.end43.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43.i

for.body13.i:                                     ; preds = %for.inc40.i.for.body13.i_crit_edge, %if.end8.i.for.body13.i_crit_edge
  %child.091.i = phi ptr [ %call42.i, %for.inc40.i.for.body13.i_crit_edge ], [ %call10.i, %if.end8.i.for.body13.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.091.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %phy_number.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i142 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i142, label %if.end16.i, label %for.body13.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge

for.body13.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge: ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ehci_get_phy.exit.thread.sink.split

if.end16.i:                                       ; preds = %for.body13.i
  %17 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp17.i = icmp sgt i32 %18, 2
  br i1 %cmp17.i, label %if.end16.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge, label %if.end22.i

if.end16.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ehci_get_phy.exit.thread.sink.split

if.end22.i:                                       ; preds = %if.end16.i
  %call23.i = call ptr @devm_of_phy_get(ptr noundef %dev, ptr noundef nonnull %child.091.i, ptr noundef null) #5
  %19 = ptrtoint ptr %phy_number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_number.i, align 4
  %arrayidx25.i = getelementptr %struct.exynos_ehci_hcd, ptr %priv, i32 0, i32 2, i32 %20
  %21 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23.i, ptr %arrayidx25.i, align 4
  %cmp.i78.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78.i, label %if.then27.i, label %if.end22.i.for.inc40.i_crit_edge

if.end22.i.for.inc40.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

if.then27.i:                                      ; preds = %if.end22.i
  %22 = ptrtoint ptr %call23.i to i32
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end36.i [
    i32 -517, label %exynos_ehci_get_phy.exit.thread.loopexit
    i32 -38, label %if.then27.i.for.inc40.i_crit_edge
    i32 -19, label %if.then27.i.for.inc40.i_crit_edge214
  ]

if.then27.i.for.inc40.i_crit_edge214:             ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

if.then27.i.for.inc40.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40.i

do.end36.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call23.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %24) #8
  call void @of_node_put(ptr noundef nonnull %child.091.i) #5
  br label %exynos_ehci_get_phy.exit

for.inc40.i:                                      ; preds = %if.then27.i.for.inc40.i_crit_edge, %if.then27.i.for.inc40.i_crit_edge214, %if.end22.i.for.inc40.i_crit_edge
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call42.i = call ptr @of_get_next_available_child(ptr noundef %26, ptr noundef nonnull %child.091.i) #5
  %cmp12.not.i = icmp eq ptr %call42.i, null
  br i1 %cmp12.not.i, label %for.inc40.i.for.end43.i_crit_edge, label %for.inc40.i.for.body13.i_crit_edge

for.inc40.i.for.body13.i_crit_edge:               ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.inc40.i.for.end43.i_crit_edge:                ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc40.i.for.end43.i_crit_edge, %if.end8.i.for.end43.i_crit_edge
  %legacy_phy.i = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %27 = ptrtoint ptr %legacy_phy.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %legacy_phy.i, align 4
  br label %exynos_ehci_get_phy.exit.thread154

exynos_ehci_get_phy.exit.thread.sink.split:       ; preds = %if.end16.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge, %for.body13.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.25, %for.body13.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge ], [ @.str.28, %if.end16.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge ]
  %retval.0.i144.ph.ph = phi i32 [ %call.i.i.i, %for.body13.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge ], [ -22, %if.end16.i.exynos_ehci_get_phy.exit.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink) #8
  br label %exynos_ehci_get_phy.exit.thread

exynos_ehci_get_phy.exit.thread.loopexit:         ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call23.i to i32
  br label %exynos_ehci_get_phy.exit.thread

exynos_ehci_get_phy.exit.thread:                  ; preds = %exynos_ehci_get_phy.exit.thread.loopexit, %exynos_ehci_get_phy.exit.thread.sink.split
  %retval.0.i144.ph = phi i32 [ %retval.0.i144.ph.ph, %exynos_ehci_get_phy.exit.thread.sink.split ], [ %28, %exynos_ehci_get_phy.exit.thread.loopexit ]
  call void @of_node_put(ptr noundef nonnull %child.091.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  br label %fail_clk

exynos_ehci_get_phy.exit.thread154:               ; preds = %for.end43.i, %if.end.i141.exynos_ehci_get_phy.exit.thread154_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  %call17 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call17, ptr %priv, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end27

exynos_ehci_get_phy.exit:                         ; preds = %do.end36.i, %if.then.i
  %retval.0.i144 = phi i32 [ %12, %if.then.i ], [ %24, %do.end36.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_number.i) #5
  br label %fail_clk

do.end23:                                         ; preds = %exynos_ehci_get_phy.exit.thread154
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %fail_clk

if.end27:                                         ; preds = %exynos_ehci_get_phy.exit.thread154
  %call.i145 = call i32 @clk_prepare(ptr noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end.i147, label %if.end27.fail_clk_crit_edge

if.end27.fail_clk_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_clk

if.end.i147:                                      ; preds = %if.end27
  %call1.i = call i32 @clk_enable(ptr noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call17) #5
  br label %fail_clk

if.end32:                                         ; preds = %if.end.i147
  %call33 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call35 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call33) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 0, i32 16
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call35, ptr %regs, align 4
  %cmp.i149 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %call35 to i32
  br label %fail_io

if.end41:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call33, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 0, i32 17
  %37 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call33, i32 0, i32 1
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end.i, align 4
  %40 = load i32, ptr %call33, align 4
  %sub.i = add i32 %39, 1
  %add.i = sub i32 %sub.i, %40
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 0, i32 18
  %41 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call43 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end41.fail_io_crit_edge, label %if.end45

if.end41.fail_io_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_io

if.end45:                                         ; preds = %if.end41
  %call47 = call fastcc i32 @exynos_ehci_phy_enable(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %fail_io

if.end54:                                         ; preds = %if.end45
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 1, i32 0, i32 18
  %44 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %caps, align 4
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i, align 8
  %of_node58 = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 2, i32 0, i32 9, i32 3, i32 1
  %47 = ptrtoint ptr %of_node58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %of_node58, align 4
  %legacy_phy = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %48 = ptrtoint ptr %legacy_phy to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %legacy_phy, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool59.not = icmp eq i8 %49, 0
  br i1 %tobool59.not, label %if.end54.do.body64_crit_edge, label %if.then60

if.end54.do.body64_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %of_node.i, align 8
  br label %do.body64

do.body64:                                        ; preds = %if.then60, %if.end54.do.body64_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 49155) #5, !srcloc !99
  %call68 = call i32 @usb_add_hcd(ptr noundef nonnull %call5, i32 noundef %call43, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  call fastcc void @exynos_ehci_phy_disable(ptr noundef %dev)
  %53 = ptrtoint ptr %of_node58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node58, align 4
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %of_node.i, align 8
  br label %fail_io

if.end75:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call5, align 8
  %call76 = call i32 @device_wakeup_enable(ptr noundef %57) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5, ptr %driver_data.i.i, align 4
  br label %cleanup

fail_io:                                          ; preds = %do.end73, %do.end52, %if.end41.fail_io_crit_edge, %if.then38
  %err.0 = phi i32 [ %34, %if.then38 ], [ %call47, %do.end52 ], [ %call68, %do.end73 ], [ %call43, %if.end41.fail_io_crit_edge ]
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 4
  call void @clk_disable(ptr noundef %60) #5
  call void @clk_unprepare(ptr noundef %60) #5
  br label %fail_clk

fail_clk:                                         ; preds = %fail_io, %if.then3.i, %if.end27.fail_clk_crit_edge, %do.end23, %exynos_ehci_get_phy.exit, %exynos_ehci_get_phy.exit.thread
  %err.1 = phi i32 [ %retval.0.i144, %exynos_ehci_get_phy.exit ], [ %32, %do.end23 ], [ %err.0, %fail_io ], [ %retval.0.i144.ph, %exynos_ehci_get_phy.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i145, %if.end27.fail_clk_crit_edge ]
  call void @usb_put_hcd(ptr noundef nonnull %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_clk, %if.end75, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail_clk ], [ 0, %if.end75 ], [ -12, %do.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ehci_remove(ptr nocapture noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
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
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 2, i32 0, i32 9, i32 4
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
  %arrayidx.1.i = getelementptr %struct.usb_hcd, ptr %6, i32 2, i32 0, i32 9, i32 5
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
  %arrayidx.2.i = getelementptr %struct.usb_hcd, ptr %6, i32 2, i32 0, i32 9, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge, label %if.then.2.i

for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ehci_phy_disable.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.2.i = tail call i32 @phy_power_off(ptr noundef %12) #5
  br label %exynos_ehci_phy_disable.exit

exynos_ehci_phy_disable.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  tail call void @usb_put_hcd(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

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
define internal fastcc i32 @exynos_ehci_phy_enable(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
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
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
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
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_ehci_phy_disable(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
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
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
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
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
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
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @exynos_ehci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
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
  %call3 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 0, i32 9, i32 4
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
  %arrayidx.1.i = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 0, i32 9, i32 5
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
  %arrayidx.2.i = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 0, i32 9, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge, label %if.then.2.i

for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_ehci_phy_disable.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.2.i = tail call i32 @phy_power_off(ptr noundef %13) #5
  br label %exynos_ehci_phy_disable.exit

exynos_ehci_phy_disable.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.exynos_ehci_phy_disable.exit_crit_edge
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %exynos_ehci_phy_disable.exit, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ehci_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @phy_power_on(ptr noundef %7) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end.for.inc.i_crit_edge ], [ %call6.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp.i = icmp eq i32 %ret.1.i, 0
  br i1 %cmp.i, label %for.body.i.1, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.usb_hcd, ptr %5, i32 2, i32 0, i32 9, i32 5
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
  %arrayidx.i.2 = getelementptr %struct.usb_hcd, ptr %5, i32 2, i32 0, i32 9, i32 5, i32 1
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
  br i1 %cmp.i.lcssa, label %do.body8, label %for.body10.i

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

do.body8:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 49155) #5, !srcloc !99
  %call11 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.i.lcssa, %do.end ], [ 0, %do.body8 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ehci_exynos__295_354_ehci_exynos_init6, !1, !"__initcall__kmod_ehci_exynos__295_354_ehci_exynos_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-exynos.c", i32 354, i32 1}
!2 = !{ptr @__exitcall_ehci_exynos_cleanup, !3, !"__exitcall_ehci_exynos_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-exynos.c", i32 360, i32 1}
!4 = !{ptr @__UNIQUE_ID_description296, !5, !"__UNIQUE_ID_description296", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-exynos.c", i32 362, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias297, !7, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-exynos.c", i32 363, i32 1}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-exynos.c", i32 364, i32 1}
!10 = !{ptr @__UNIQUE_ID_author299, !11, !"__UNIQUE_ID_author299", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-exynos.c", i32 365, i32 1}
!12 = !{ptr @__UNIQUE_ID_file300, !13, !"__UNIQUE_ID_file300", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/ehci-exynos.c", i32 366, i32 1}
!14 = !{ptr @__UNIQUE_ID_license301, !13, !"__UNIQUE_ID_license301", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/ehci-exynos.c", i32 350, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ehci_exynos_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ehci_exynos_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @hcd_name, !22, !"hcd_name", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-exynos.c", i32 35, i32 19}
!23 = !{ptr @exynos_ehci_hc_driver, !24, !"exynos_ehci_hc_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-exynos.c", i32 36, i32 39}
!25 = !{ptr @exynos_overrides, !26, !"exynos_overrides", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-exynos.c", i32 341, i32 43}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-exynos.c", i32 336, i32 11}
!29 = !{ptr @exynos_ehci_driver, !30, !"exynos_ehci_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ehci-exynos.c", i32 331, i32 31}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ehci-exynos.c", i32 174, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @exynos_ehci_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @exynos_ehci_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-exynos.c", i32 183, i32 46}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ehci-exynos.c", i32 186, i32 3}
!42 = !{ptr @exynos_ehci_probe._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @exynos_ehci_probe._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/ehci-exynos.c", i32 213, i32 3}
!46 = !{ptr @exynos_ehci_probe._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @exynos_ehci_probe._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/ehci-exynos.c", i32 233, i32 3}
!50 = !{ptr @exynos_ehci_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @exynos_ehci_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ehci-exynos.c", i32 141, i32 41}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/ehci-exynos.c", i32 146, i32 9}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/ehci-exynos.c", i32 148, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @exynos_setup_vbus_gpio._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_setup_vbus_gpio._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/host/ehci-exynos.c", i32 58, i32 54}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/ehci-exynos.c", i32 59, i32 12}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/host/ehci-exynos.c", i32 71, i32 37}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/ehci-exynos.c", i32 73, i32 4}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @exynos_ehci_get_phy._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @exynos_ehci_get_phy._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/ehci-exynos.c", i32 79, i32 4}
!74 = !{ptr @exynos_ehci_get_phy._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @exynos_ehci_get_phy._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/ehci-exynos.c", i32 92, i32 5}
!78 = !{ptr @exynos_ehci_get_phy._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @exynos_ehci_get_phy._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @exynos_ehci_match, !81, !"exynos_ehci_match", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/ehci-exynos.c", i32 324, i32 34}
!82 = !{ptr @exynos_ehci_pm_ops, !83, !"exynos_ehci_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/ehci-exynos.c", i32 318, i32 32}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/ehci-exynos.c", i32 302, i32 3}
!86 = !{ptr @exynos_ehci_resume._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @exynos_ehci_resume._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
!98 = !{i64 2155499715}
!99 = !{i64 6255031}
!100 = !{i64 2155503882}
