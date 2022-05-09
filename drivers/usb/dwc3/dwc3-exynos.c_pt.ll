; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-exynos.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dwc3_exynos_driverdata = type { [4 x ptr], i32, i32 }
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
%struct.dwc3_exynos = type { ptr, ptr, [4 x ptr], i32, i32, ptr, ptr }

@__initcall__kmod_dwc3_exynos__288_254_dwc3_exynos_driver_init6 = internal global ptr @dwc3_exynos_driver_init, section ".initcall6.init", align 4
@dwc3_exynos_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_exynos_probe, ptr @dwc3_exynos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_exynos_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_exynos_driver_exit = internal global ptr @dwc3_exynos_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"dwc3_exynos.author=Anton Tikhomirov <av.tikhomirov@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [46 x i8] c"dwc3_exynos.file=drivers/usb/dwc3/dwc3-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [27 x i8] c"dwc3_exynos.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"dwc3_exynos.description=DesignWare USB3 Exynos Glue Layer\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-dwc3\00", [20 x i8] zeroinitializer }, align 32
@exynos_dwc3_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_drvdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@dwc3_exynos_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 73, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc3_exynos_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/dwc3/dwc3-exynos.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry_ptr = internal global ptr @dwc3_exynos_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd33\00", [26 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable VDD33 supply\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry_ptr.9 = internal global ptr @dwc3_exynos_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd10\00", [26 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable VDD10 supply\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry_ptr.13 = internal global ptr @dwc3_exynos_probe._entry.11, section ".printk_index", align 4
@dwc3_exynos_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add dwc3 core\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry_ptr.16 = internal global ptr @dwc3_exynos_probe._entry.14, section ".printk_index", align 4
@dwc3_exynos_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no device node, failed to add dwc3 core\0A\00", [55 x i8] zeroinitializer }, align 32
@dwc3_exynos_probe._entry_ptr.19 = internal global ptr @dwc3_exynos_probe._entry.17, section ".printk_index", align 4
@exynos5250_drvdata = internal constant { %struct.dwc3_exynos_driverdata, [40 x i8] } { %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.20, ptr null, ptr null, ptr null], i32 1, i32 -1 }, [40 x i8] zeroinitializer }, align 32
@exynos5433_drvdata = internal constant { %struct.dwc3_exynos_driverdata, [40 x i8] } { %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], i32 4, i32 1 }, [40 x i8] zeroinitializer }, align 32
@exynos7_drvdata = internal constant { %struct.dwc3_exynos_driverdata, [40 x i8] } { %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.20, ptr @.str.25, ptr @.str.26, ptr null], i32 3, i32 1 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usbdrd30\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"susp_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pipe_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phyclk\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbdrd30_susp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbdrd30_axius_clk\00", [45 x i8] zeroinitializer }, align 32
@dwc3_exynos_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.27, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc3_exynos_resume\00", [45 x i8] zeroinitializer }, align 32
@dwc3_exynos_resume._entry_ptr = internal global ptr @dwc3_exynos_resume._entry, section ".printk_index", align 4
@dwc3_exynos_resume._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.27, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dwc3_exynos_resume._entry_ptr.29 = internal global ptr @dwc3_exynos_resume._entry.28, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"dwc3_exynos_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 244, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 248, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"exynos_dwc3_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 177, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"dwc3_exynos_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 235, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 72, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 90, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 97, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 108, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 115, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 119, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"exynos5250_drvdata\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 159, i32 44 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"exynos5433_drvdata\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 165, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"exynos7_drvdata\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 171, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 160, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 166, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 166, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 166, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 166, i32 50 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 172, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 172, i32 50 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private constant [34 x i8] c"../drivers/usb/dwc3/dwc3-exynos.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 219, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_dwc3_exynos_driver_exit, ptr @__initcall__kmod_dwc3_exynos__288_254_dwc3_exynos_driver_init6, ptr @dwc3_exynos_driver_exit, ptr @dwc3_exynos_probe._entry, ptr @dwc3_exynos_probe._entry.11, ptr @dwc3_exynos_probe._entry.14, ptr @dwc3_exynos_probe._entry.17, ptr @dwc3_exynos_probe._entry.7, ptr @dwc3_exynos_probe._entry_ptr, ptr @dwc3_exynos_probe._entry_ptr.13, ptr @dwc3_exynos_probe._entry_ptr.16, ptr @dwc3_exynos_probe._entry_ptr.19, ptr @dwc3_exynos_probe._entry_ptr.9, ptr @dwc3_exynos_resume._entry, ptr @dwc3_exynos_resume._entry.28, ptr @dwc3_exynos_resume._entry_ptr, ptr @dwc3_exynos_resume._entry_ptr.29, ptr @dwc3_exynos_driver, ptr @.str, ptr @exynos_dwc3_match, ptr @dwc3_exynos_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @exynos5250_drvdata, ptr @exynos5433_drvdata, ptr @exynos7_drvdata, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dwc3_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_drvdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_drvdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_drvdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_exynos_resume._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_exynos_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_exynos_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_exynos_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_exynos_driverdata, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clks, align 4
  %num_clks4 = getelementptr inbounds %struct.dwc3_exynos, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %num_clks4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_clks4, align 4
  %clk_names5 = getelementptr inbounds %struct.dwc3_exynos, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %clk_names5, align 4
  %suspend_clk_idx = getelementptr inbounds %struct.dwc3_exynos_driverdata, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %suspend_clk_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %suspend_clk_idx, align 4
  %suspend_clk_idx6 = getelementptr inbounds %struct.dwc3_exynos, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %suspend_clk_idx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %suspend_clk_idx6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp201 = icmp sgt i32 %4, 0
  br i1 %cmp201, label %if.end.for.body_crit_edge, label %for.cond21.preheaderthread-pre-split

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond21.preheaderthread-pre-split:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %num_clks4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %num_clks4, align 4
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.inc.for.cond21.preheader_crit_edge, %for.cond21.preheaderthread-pre-split
  %12 = phi i32 [ %.pr, %for.cond21.preheaderthread-pre-split ], [ %26, %for.inc.for.cond21.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23203 = icmp sgt i32 %12, 0
  br i1 %cmp23203, label %for.cond21.preheader.for.body24_crit_edge, label %for.cond21.preheader.for.end36_crit_edge

for.cond21.preheader.for.end36_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end36

for.cond21.preheader.for.body24_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0202 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_names5, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.0202
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %16) #4
  %arrayidx10 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %i.0202
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %arrayidx10, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_names5, align 4
  %arrayidx16 = getelementptr ptr, ptr %19, i32 %i.0202
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %21) #7
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx10, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0202, 1
  %25 = ptrtoint ptr %num_clks4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clks4, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond21.preheader_crit_edge

for.inc.for.cond21.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond21.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body24:                                       ; preds = %for.inc34.for.body24_crit_edge, %for.cond21.preheader.for.body24_crit_edge
  %i.1204 = phi i32 [ %inc35, %for.inc34.for.body24_crit_edge ], [ 0, %for.cond21.preheader.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %i.1204
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx26, align 4
  %call.i182 = tail call i32 @clk_prepare(ptr noundef %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body24.clk_prepare_enable.exit_crit_edge

for.body24.clk_prepare_enable.exit_crit_edge:     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body24
  %call1.i = tail call i32 @clk_enable(ptr noundef %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %28) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body24.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call.i182, %for.body24.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1204)
  %cmp30208.not = icmp eq i32 %i.1204, 0
  br i1 %cmp30208.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.while.body_crit_edge

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %i.2209 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1204, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.2209, -1
  %arrayidx32 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %dec
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx32, align 4
  tail call void @clk_disable(ptr noundef %30) #4
  tail call void @clk_unprepare(ptr noundef %30) #4
  %cmp30 = icmp sgt i32 %i.2209, 1
  br i1 %cmp30, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

for.inc34:                                        ; preds = %if.end.i
  %inc35 = add nuw nsw i32 %i.1204, 1
  %31 = ptrtoint ptr %num_clks4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_clks4, align 4
  %cmp23 = icmp slt i32 %inc35, %32
  br i1 %cmp23, label %for.inc34.for.body24_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end36

for.inc34.for.body24_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %for.cond21.preheader.for.end36_crit_edge
  %33 = ptrtoint ptr %suspend_clk_idx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %suspend_clk_idx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp38 = icmp sgt i32 %34, -1
  br i1 %cmp38, label %if.then39, label %for.end36.if.end44_crit_edge

for.end36.if.end44_crit_edge:                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then39:                                        ; preds = %for.end36
  %arrayidx42 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %34
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx42, align 4
  %call.i183 = tail call i32 @clk_prepare(ptr noundef %36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool.not.i184, label %if.end.i187, label %if.then39.if.end44_crit_edge

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.end.i187:                                      ; preds = %if.then39
  %call1.i185 = tail call i32 @clk_enable(ptr noundef %36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185)
  %tobool2.not.i186 = icmp eq i32 %call1.i185, 0
  br i1 %tobool2.not.i186, label %if.end.i187.if.end44_crit_edge, label %if.then3.i188

if.end.i187.if.end44_crit_edge:                   ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then3.i188:                                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %36) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then3.i188, %if.end.i187.if.end44_crit_edge, %if.then39.if.end44_crit_edge, %for.end36.if.end44_crit_edge
  %call45 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  %vdd33 = getelementptr inbounds %struct.dwc3_exynos, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %vdd33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call45, ptr %vdd33, align 4
  %cmp.i191 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %call45 to i32
  br label %vdd33_err

if.end51:                                         ; preds = %if.end44
  %call53 = tail call i32 @regulator_enable(ptr noundef %call45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %vdd33_err

if.end59:                                         ; preds = %if.end51
  %call60 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #4
  %vdd10 = getelementptr inbounds %struct.dwc3_exynos, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %vdd10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call60, ptr %vdd10, align 4
  %cmp.i192 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %call60 to i32
  br label %vdd10_err

if.end66:                                         ; preds = %if.end59
  %call68 = tail call i32 @regulator_enable(ptr noundef %call60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end74, label %do.end73

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  br label %vdd10_err

if.end74:                                         ; preds = %if.end66
  %tobool75.not = icmp eq ptr %1, null
  br i1 %tobool75.not, label %if.end74.populate_err_crit_edge, label %if.then76

if.end74.populate_err_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %populate_err

if.then76:                                        ; preds = %if.end74
  %call77 = tail call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then76.cleanup_crit_edge, label %if.then76.populate_err_crit_edge

if.then76.populate_err_crit_edge:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %populate_err

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

populate_err:                                     ; preds = %if.then76.populate_err_crit_edge, %if.end74.populate_err_crit_edge
  %.str.18.sink = phi ptr [ @.str.15, %if.then76.populate_err_crit_edge ], [ @.str.18, %if.end74.populate_err_crit_edge ]
  %ret.0 = phi i32 [ %call77, %if.then76.populate_err_crit_edge ], [ -19, %if.end74.populate_err_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.18.sink) #7
  %41 = ptrtoint ptr %vdd10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdd10, align 4
  %call89 = tail call i32 @regulator_disable(ptr noundef %42) #4
  br label %vdd10_err

vdd10_err:                                        ; preds = %populate_err, %do.end73, %if.then63
  %ret.1 = phi i32 [ %40, %if.then63 ], [ %call68, %do.end73 ], [ %ret.0, %populate_err ]
  %43 = ptrtoint ptr %vdd33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdd33, align 4
  %call91 = tail call i32 @regulator_disable(ptr noundef %44) #4
  br label %vdd33_err

vdd33_err:                                        ; preds = %vdd10_err, %do.end58, %if.then48
  %ret.2 = phi i32 [ %38, %if.then48 ], [ %call53, %do.end58 ], [ %ret.1, %vdd10_err ]
  %45 = ptrtoint ptr %num_clks4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clks4, align 4
  %i.3205 = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.3205)
  %cmp94206 = icmp sgt i32 %i.3205, -1
  br i1 %cmp94206, label %vdd33_err.for.body95_crit_edge, label %vdd33_err.for.end100_crit_edge

vdd33_err.for.end100_crit_edge:                   ; preds = %vdd33_err
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end100

vdd33_err.for.body95_crit_edge:                   ; preds = %vdd33_err
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %vdd33_err.for.body95_crit_edge
  %i.3207 = phi i32 [ %i.3, %for.body95.for.body95_crit_edge ], [ %i.3205, %vdd33_err.for.body95_crit_edge ]
  %arrayidx97 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %i.3207
  %47 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx97, align 4
  tail call void @clk_disable(ptr noundef %48) #4
  tail call void @clk_unprepare(ptr noundef %48) #4
  %i.3 = add nsw i32 %i.3207, -1
  %cmp94 = icmp sgt i32 %i.3207, 0
  br i1 %cmp94, label %for.body95.for.body95_crit_edge, label %for.body95.for.end100_crit_edge

for.body95.for.end100_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end100

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body95

for.end100:                                       ; preds = %for.body95.for.end100_crit_edge, %vdd33_err.for.end100_crit_edge
  %49 = ptrtoint ptr %suspend_clk_idx6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %suspend_clk_idx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp102 = icmp sgt i32 %50, -1
  br i1 %cmp102, label %if.then103, label %for.end100.cleanup_crit_edge

for.end100.cleanup_crit_edge:                     ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then103:                                       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx106 = getelementptr %struct.dwc3_exynos, ptr %call.i, i32 0, i32 2, i32 %50
  %51 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx106, align 4
  tail call void @clk_disable(ptr noundef %52) #4
  tail call void @clk_unprepare(ptr noundef %52) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %for.end100.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %while.body.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then76.cleanup_crit_edge ], [ %ret.2, %if.then103 ], [ %ret.2, %for.end100.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @dwc3_exynos_remove_child) #4
  %num_clks = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %i.017 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.017)
  %cmp18 = icmp sgt i32 %i.017, -1
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.017, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dwc3_exynos, ptr %1, i32 0, i32 2, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %i.0 = add nsw i32 %i.019, -1
  %cmp = icmp sgt i32 %i.019, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %suspend_clk_idx = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %suspend_clk_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %suspend_clk_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2 = icmp sgt i32 %7, -1
  br i1 %cmp2, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5 = getelementptr %struct.dwc3_exynos, ptr %1, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %vdd33 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %vdd33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdd33, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %11) #4
  %vdd10 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %vdd10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd10, align 4
  %call7 = tail call i32 @regulator_disable(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_remove_child(ptr noundef %dev, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %i.08 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.08)
  %cmp9 = icmp sgt i32 %i.08, -1
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.08, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dwc3_exynos, ptr %1, i32 0, i32 2, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %i.0 = add nsw i32 %i.010, -1
  %cmp = icmp sgt i32 %i.010, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %vdd33 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %vdd33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd33, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %7) #4
  %vdd10 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %vdd10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd10, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vdd33 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vdd33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd33, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %vdd10 = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vdd10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd10, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  %num_clks = getelementptr inbounds %struct.dwc3_exynos, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp41 = icmp sgt i32 %7, 0
  br i1 %cmp41, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dwc3_exynos, ptr %1, i32 0, i32 2, i32 %i.042
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.042)
  %cmp1243.not = icmp eq i32 %i.042, 0
  br i1 %cmp1243.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.while.body_crit_edge

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %i.144 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.042, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.144, -1
  %arrayidx14 = getelementptr %struct.dwc3_exynos, ptr %1, i32 0, i32 2, i32 %dec
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  %cmp12 = icmp sgt i32 %i.144, 1
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.042, 1
  %12 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.8, %entry.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.12.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %retval.0.i, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_dwc3_exynos__288_254_dwc3_exynos_driver_init6, !1, !"__initcall__kmod_dwc3_exynos__288_254_dwc3_exynos_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_dwc3_exynos_driver_exit, !1, !"__exitcall_dwc3_exynos_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 258, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 248, i32 11}
!12 = !{ptr @dwc3_exynos_driver, !13, !"dwc3_exynos_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 244, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 72, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwc3_exynos_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dwc3_exynos_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 90, i32 42}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 97, i32 3}
!26 = !{ptr @dwc3_exynos_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwc3_exynos_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 101, i32 42}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 108, i32 3}
!32 = !{ptr @dwc3_exynos_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dwc3_exynos_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 115, i32 4}
!36 = !{ptr @dwc3_exynos_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dwc3_exynos_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 119, i32 3}
!40 = !{ptr @dwc3_exynos_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dwc3_exynos_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @exynos_dwc3_match, !43, !"exynos_dwc3_match", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 177, i32 34}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 160, i32 17}
!46 = !{ptr @exynos5250_drvdata, !47, !"exynos5250_drvdata", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 159, i32 44}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 166, i32 17}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 166, i32 25}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 166, i32 37}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 166, i32 50}
!56 = !{ptr @exynos5433_drvdata, !57, !"exynos5433_drvdata", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 165, i32 44}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 172, i32 29}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 172, i32 50}
!62 = !{ptr @exynos7_drvdata, !63, !"exynos7_drvdata", i1 false, i1 false}
!63 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 171, i32 44}
!64 = !{ptr @dwc3_exynos_dev_pm_ops, !65, !"dwc3_exynos_dev_pm_ops", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 235, i32 32}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 214, i32 3}
!68 = !{ptr @dwc3_exynos_resume._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dwc3_exynos_resume._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dwc3_exynos_resume._entry.28, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc3/dwc3-exynos.c", i32 219, i32 3}
!72 = !{ptr @dwc3_exynos_resume._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
