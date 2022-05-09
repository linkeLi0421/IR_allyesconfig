; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ns2_phy_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work }
%struct.ns2_phy_data = type { ptr, ptr, i32 }

@__initcall__kmod_phy_bcm_ns2_usbdrd__292_422_ns2_drd_phy_driver_init6 = internal global ptr @ns2_drd_phy_driver_init, section ".initcall6.init", align 4
@ns2_drd_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ns2_drd_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns2_drd_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ns2_drd_phy_driver_exit = internal global ptr @ns2_drd_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias293 = internal constant [50 x i8] c"phy_bcm_ns2_usbdrd.alias=platform:bcm-ns2-drd-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [35 x i8] c"phy_bcm_ns2_usbdrd.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [60 x i8] c"phy_bcm_ns2_usbdrd.description=Broadcom NS2 USB2 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [64 x i8] c"phy_bcm_ns2_usbdrd.file=drivers/phy/broadcom/phy-bcm-ns2-usbdrd\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [34 x i8] c"phy_bcm_ns2_usbdrd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm-ns2-usbphy\00", [17 x i8] zeroinitializer }, align 32
@ns2_drd_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-drd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icfg\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst-ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crmu-ctrl\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb2-strap\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 328, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get ID GPIO\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns2_drd_phy_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr = internal global ptr @ns2_drd_phy_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 333, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get VBUS GPIO\0A\00", [39 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.14 = internal global ptr @ns2_drd_phy_probe._entry.12, section ".printk_index", align 4
@usb_extcon_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 339, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.17 = internal global ptr @ns2_drd_phy_probe._entry.15, section ".printk_index", align 4
@ns2_drd_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 345, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.20 = internal global ptr @ns2_drd_phy_probe._entry.18, section ".printk_index", align 4
@ns2_drd_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&driver->wq_extcon)->work)\00", [49 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&driver->wq_extcon)->timer\00", [35 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 357, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get ID IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.26 = internal global ptr @ns2_drd_phy_probe._entry.24, section ".printk_index", align 4
@ns2_drd_phy_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 363, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.28 = internal global ptr @ns2_drd_phy_probe._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_id\00", [25 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.8, i32 371, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request handler for ID IRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.32 = internal global ptr @ns2_drd_phy_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_vbus\00", [23 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str.8, i32 379, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request handler for VBUS IRQ\0A\00", [56 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.36 = internal global ptr @ns2_drd_phy_probe._entry.34, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @ns2_drd_phy_init, ptr null, ptr @ns2_drd_phy_poweron, ptr @ns2_drd_phy_poweroff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.8, i32 393, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create usb drd phy\0A\00", [34 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.39 = internal global ptr @ns2_drd_phy_probe._entry.37, section ".printk_index", align 4
@ns2_drd_phy_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.7, ptr @.str.8, i32 402, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register as phy provider\0A\00", [60 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.42 = internal global ptr @ns2_drd_phy_probe._entry.40, section ".printk_index", align 4
@ns2_drd_phy_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.7, ptr @.str.8, i32 408, ptr @.str.45, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Registered NS2 DRD Phy device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ns2_drd_phy_probe._entry_ptr.46 = internal global ptr @ns2_drd_phy_probe._entry.43, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@extcon_work.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.8, ptr @.str.49, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_bcm_ns2_usbdrd\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"extcon_work\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Host cable connected\0A\00", [42 x i8] zeroinitializer }, align 32
@extcon_work.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.8, ptr @.str.50, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cable disconnected\0A\00", [44 x i8] zeroinitializer }, align 32
@extcon_work.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.8, ptr @.str.51, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device cable connected\0A\00", [40 x i8] zeroinitializer }, align 32
@connect_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.8, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Invalid extcon event\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connect_change\00", [17 x i8] zeroinitializer }, align 32
@connect_change._entry_ptr = internal global ptr @connect_change._entry, section ".printk_index", align 4
@ns2_drd_phy_poweron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 166, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phy PLL lock failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ns2_drd_phy_poweron\00", [44 x i8] zeroinitializer }, align 32
@ns2_drd_phy_poweron._entry_ptr = internal global ptr @ns2_drd_phy_poweron._entry, section ".printk_index", align 4
@ns2_drd_phy_poweron._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 178, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@ns2_drd_phy_poweron._entry_ptr.57 = internal global ptr @ns2_drd_phy_poweron._entry.56, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"ns2_drd_phy_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 415, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 418, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"ns2_drd_phy_dt_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 284, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 309, i32 69 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 313, i32 72 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 317, i32 71 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 321, i32 72 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 326, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 328, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 331, i32 50 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 333, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"usb_extcon_cable\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 82, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 339, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 345, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 353, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 357, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 363, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 369, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 371, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 377, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 379, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 277, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 393, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 402, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 408, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 252, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 258, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 261, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 233, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 166, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private constant [45 x i8] c"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 178, i32 4 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ns2_drd_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_ns2_usbdrd__292_422_ns2_drd_phy_driver_init6, ptr @connect_change._entry, ptr @connect_change._entry_ptr, ptr @ns2_drd_phy_driver_exit, ptr @ns2_drd_phy_poweron._entry, ptr @ns2_drd_phy_poweron._entry.56, ptr @ns2_drd_phy_poweron._entry_ptr, ptr @ns2_drd_phy_poweron._entry_ptr.57, ptr @ns2_drd_phy_probe._entry, ptr @ns2_drd_phy_probe._entry.12, ptr @ns2_drd_phy_probe._entry.15, ptr @ns2_drd_phy_probe._entry.18, ptr @ns2_drd_phy_probe._entry.24, ptr @ns2_drd_phy_probe._entry.27, ptr @ns2_drd_phy_probe._entry.30, ptr @ns2_drd_phy_probe._entry.34, ptr @ns2_drd_phy_probe._entry.37, ptr @ns2_drd_phy_probe._entry.40, ptr @ns2_drd_phy_probe._entry.43, ptr @ns2_drd_phy_probe._entry_ptr, ptr @ns2_drd_phy_probe._entry_ptr.14, ptr @ns2_drd_phy_probe._entry_ptr.17, ptr @ns2_drd_phy_probe._entry_ptr.20, ptr @ns2_drd_phy_probe._entry_ptr.26, ptr @ns2_drd_phy_probe._entry_ptr.28, ptr @ns2_drd_phy_probe._entry_ptr.32, ptr @ns2_drd_phy_probe._entry_ptr.36, ptr @ns2_drd_phy_probe._entry_ptr.39, ptr @ns2_drd_phy_probe._entry_ptr.42, ptr @ns2_drd_phy_probe._entry_ptr.46, ptr @ns2_drd_phy_driver, ptr @.str, ptr @ns2_drd_phy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @usb_extcon_cable, ptr @.str.16, ptr @.str.19, ptr @ns2_drd_phy_probe.__key, ptr @.str.21, ptr @ns2_drd_phy_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @ops, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connect_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_poweron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_drd_phy_poweron._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns2_drd_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_drd_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns2_drd_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i262 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %data3 = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i262, ptr %data3, align 4
  %tobool5.not = icmp eq ptr %call.i262, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #5
  %idmdrd_rst_ctrl = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %idmdrd_rst_ctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %idmdrd_rst_ctrl, align 4
  %cmp.i263 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #5
  %crmu_usb2_ctrl = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %crmu_usb2_ctrl, align 4
  %cmp.i264 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i264, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.4) #5
  %usb2h_strap_reg = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %usb2h_strap_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %usb2h_strap_reg, align 4
  %cmp.i265 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call37 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 1) #5
  %id_gpiod = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call37, ptr %id_gpiod, align 4
  %cmp.i266 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %do.end, label %if.end43

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %10 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %id_gpiod, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %call45 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 1) #5
  %vbus_gpiod = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call45, ptr %vbus_gpiod, align 4
  %cmp.i267 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %14 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbus_gpiod, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %call55 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev1, ptr noundef nonnull @usb_extcon_cable) #5
  %edev = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call55, ptr %edev, align 4
  %cmp.i268 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %do.end61, label %if.end62

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %call64 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev1, ptr noundef %call55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %do.end68, label %if.end69

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %18 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %id_gpiod, align 4
  %call71 = tail call i32 @gpiod_set_debounce(ptr noundef %19, i32 noundef 20000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end69.do.body77_crit_edge

if.end69.do.body77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_jiffies = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %debounce_jiffies, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %if.end69.do.body77_crit_edge
  %wq_extcon = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %wq_extcon, i32 noundef 0) #5
  %21 = ptrtoint ptr %wq_extcon to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %wq_extcon, align 4
  %lockdep_map = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @ns2_drd_phy_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry85 = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %22 = ptrtoint ptr %entry85 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry85, ptr %entry85, align 4
  %prev.i = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry85, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @extcon_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @ns2_drd_phy_probe.__key.22) #5
  %25 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %id_gpiod, align 4
  %call97 = tail call i32 @gpiod_to_irq(ptr noundef %26) #5
  %id_irq = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %id_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call97, ptr %id_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp99 = icmp slt i32 %call97, 0
  br i1 %cmp99, label %do.end103, label %if.end105

do.end103:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  %28 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id_irq, align 4
  br label %cleanup

if.end105:                                        ; preds = %do.body77
  %30 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vbus_gpiod, align 4
  %call107 = tail call i32 @gpiod_to_irq(ptr noundef %31) #5
  %vbus_irq = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call107, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp109 = icmp slt i32 %call107, 0
  br i1 %cmp109, label %do.end113, label %if.end115

do.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  %33 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vbus_irq, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.end105
  %35 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id_irq, align 4
  %call.i269 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %36, ptr noundef nonnull @gpio_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp118 = icmp slt i32 %call.i269, 0
  br i1 %cmp118, label %do.end122, label %if.end123

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end123:                                        ; preds = %if.end115
  %37 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vbus_irq, align 4
  %call.i270 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %38, ptr noundef nonnull @gpio_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp126 = icmp slt i32 %call.i270, 0
  br i1 %cmp126, label %do.end130, label %if.end131

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #8
  br label %cleanup

if.end131:                                        ; preds = %if.end123
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i, align 4
  %40 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crmu_usb2_ctrl, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %43 = and i32 %42, -4195329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crmu_usb2_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #5, !srcloc !127
  %46 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data3, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call140 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %49, ptr noundef nonnull @ops) #5
  %phy = getelementptr inbounds %struct.ns2_phy_data, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call140, ptr %phy, align 4
  %cmp.i271 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %do.end146, label %if.end149

do.end146:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #8
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %cleanup

if.end149:                                        ; preds = %if.end131
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %47, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call140, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %47, ptr %driver_data.i.i, align 4
  %call152 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i272 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %do.end157, label %if.end159

do.end157:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #8
  %56 = ptrtoint ptr %call152 to i32
  br label %cleanup

if.end159:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.44) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %58 = load ptr, ptr @system_power_efficient_wq, align 4
  %debounce_jiffies164 = getelementptr inbounds %struct.ns2_phy_driver, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %debounce_jiffies164 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debounce_jiffies164, align 4
  %call.i274 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %wq_extcon, i32 noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %do.end157, %do.end146, %do.end130, %do.end122, %do.end113, %do.end103, %do.end68, %do.end61, %do.end51, %do.end, %if.then32, %if.then25, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then11 ], [ %4, %if.then18 ], [ %6, %if.then25 ], [ %8, %if.then32 ], [ %12, %do.end ], [ %16, %do.end51 ], [ -12, %do.end61 ], [ %call64, %do.end68 ], [ %29, %do.end103 ], [ %34, %do.end113 ], [ %call.i269, %do.end122 ], [ %call.i270, %do.end130 ], [ %53, %do.end146 ], [ %56, %do.end157 ], [ 0, %if.end159 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @extcon_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %id_gpiod = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_gpiod, align 4
  %call1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #5
  %vbus_gpiod = getelementptr i8, ptr %work, i32 -20
  %2 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_gpiod, align 4
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %edev = getelementptr i8, ptr %work, i32 -24
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 4
  %call4 = tail call i32 @extcon_set_state_sync(ptr noundef %5, i32 noundef 2, i1 noundef zeroext true) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_work.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_work, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !128

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @extcon_work.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.49) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then
  %data = getelementptr i8, ptr %work, i32 -28
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %new_state = getelementptr inbounds %struct.ns2_phy_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %new_state, align 4
  tail call fastcc void @connect_change(ptr noundef %add.ptr)
  br label %if.end62

if.else:                                          ; preds = %entry
  %or.cond77 = select i1 %tobool.not.not, i1 %tobool3.not, i1 false
  br i1 %or.cond77, label %if.then14, label %if.else35

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %edev15 = getelementptr i8, ptr %work, i32 -24
  %9 = ptrtoint ptr %edev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edev15, align 4
  %call16 = tail call i32 @extcon_set_state_sync(ptr noundef %10, i32 noundef 2, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %edev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev15, align 4
  %call18 = tail call i32 @extcon_set_state_sync(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_work.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_work, %if.then31)) #5
          to label %if.end62 [label %if.then31], !srcloc !128

if.then31:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @extcon_work.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.50) #5
  br label %if.end62

if.else35:                                        ; preds = %if.else
  %or.cond78 = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond78, label %if.else35.if.end62_crit_edge, label %if.then39

if.else35.if.end62_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then39:                                        ; preds = %if.else35
  %edev40 = getelementptr i8, ptr %work, i32 -24
  %13 = ptrtoint ptr %edev40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edev40, align 4
  %call41 = tail call i32 @extcon_set_state_sync(ptr noundef %14, i32 noundef 1, i1 noundef zeroext true) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_work.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_work, %if.then54)) #5
          to label %do.end57 [label %if.then54], !srcloc !128

if.then54:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @extcon_work.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.51) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %if.then39
  %data58 = getelementptr i8, ptr %work, i32 -28
  %15 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data58, align 4
  %new_state59 = getelementptr inbounds %struct.ns2_phy_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %new_state59 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %new_state59, align 4
  tail call fastcc void @connect_change(ptr noundef %add.ptr)
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %if.else35.if.end62_crit_edge, %if.then31, %if.then14, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %wq_extcon = getelementptr inbounds %struct.ns2_phy_driver, ptr %dev_id, i32 0, i32 11
  %debounce_jiffies = getelementptr inbounds %struct.ns2_phy_driver, ptr %dev_id, i32 0, i32 10
  %1 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debounce_jiffies, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %wq_extcon, i32 noundef %2) #5
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @connect_change(ptr nocapture noundef readonly %driver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ns2_phy_driver, ptr %driver, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %new_state = getelementptr inbounds %struct.ns2_phy_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_state, align 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !124
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %7, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #5, !srcloc !127
  %or = or i32 %and, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #5, !srcloc !127
  %15 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %18 = or i32 %17, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %18) #5, !srcloc !127
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and24 = and i32 %7, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %and24)
  %22 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver, align 4
  %add.ptr29 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %21) #5, !srcloc !127
  %or31 = or i32 %and24, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %25 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver, align 4
  %add.ptr36 = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %24) #5, !srcloc !127
  %usb2h_strap_reg = getelementptr inbounds %struct.ns2_phy_driver, ptr %driver, i32 0, i32 3
  %27 = ptrtoint ptr %usb2h_strap_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb2h_strap_reg, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %30 = or i32 %29, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %usb2h_strap_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb2h_strap_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !127
  %33 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver, align 4
  %add.ptr50 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %36 = and i32 %35, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver, align 4
  %add.ptr59 = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %36) #5, !srcloc !127
  br label %sw.epilog

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end62, %sw.bb23, %sw.bb
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  %new_state = getelementptr inbounds %struct.ns2_phy_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %9 = and i32 %6, -1006632961
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %val.0.v = select i1 %cmp, i32 12, i32 48
  %val.0 = or i32 %val.0.v, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #5, !srcloc !127
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_poweron(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %new_state = getelementptr inbounds %struct.ns2_phy_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 28
  br i1 %cmp, label %do.body, label %do.body34

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117964800) #5, !srcloc !127
  %idmdrd_rst_ctrl = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %idmdrd_rst_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idmdrd_rst_ctrl, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %idmdrd_rst_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %idmdrd_rst_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !127
  %crmu_usb2_ctrl = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crmu_usb2_ctrl, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %17 = or i32 %16, 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crmu_usb2_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !127
  %20 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crmu_usb2_ctrl, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %23 = or i32 %22, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crmu_usb2_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !127
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 1000000
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr2.i = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not4.i = icmp eq i32 %29, 0
  br i1 %tobool.not4.i, label %do.body.land.lhs.true.i_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.land.lhs.true.i_crit_edge:                ; preds = %do.body
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.body.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %34 = and i32 %33, 16777216
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.cleanup_crit_edge

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr11.i = getelementptr i8, ptr %36, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool25.not.i = icmp eq i32 %38, 0
  br i1 %tobool25.not.i, label %do.end33, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end33:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.54) #8
  br label %cleanup

do.body34:                                        ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50855936) #5, !srcloc !127
  %crmu_usb2_ctrl41 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %crmu_usb2_ctrl41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crmu_usb2_ctrl41, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %42 = or i32 %41, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %crmu_usb2_ctrl41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crmu_usb2_ctrl41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #5, !srcloc !127
  %call.i116 = tail call i64 @ktime_get() #5
  %add.i.i117 = add i64 %call.i116, 1000000
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %add.ptr2.i118 = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i118) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not4.i119 = icmp eq i32 %48, 0
  br i1 %tobool.not4.i119, label %do.body34.land.lhs.true.i122_crit_edge, label %do.body34.if.end57_crit_edge

do.body34.if.end57_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.body34.land.lhs.true.i122_crit_edge:           ; preds = %do.body34
  br label %land.lhs.true.i122

land.lhs.true.i122:                               ; preds = %cond.false.i125.land.lhs.true.i122_crit_edge, %do.body34.land.lhs.true.i122_crit_edge
  %call5.i120 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i120, i64 %add.i.i117)
  %cmp3.i.i121 = icmp sgt i64 %call5.i120, %add.i.i117
  br i1 %cmp3.i.i121, label %for.end.i129, label %cond.false.i125

cond.false.i125:                                  ; preds = %land.lhs.true.i122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #5
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add.ptr.i123 = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %53 = and i32 %52, 16777216
  %tobool.not.i124 = icmp eq i32 %53, 0
  br i1 %tobool.not.i124, label %cond.false.i125.land.lhs.true.i122_crit_edge, label %cond.false.i125.if.end57_crit_edge

cond.false.i125.if.end57_crit_edge:               ; preds = %cond.false.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

cond.false.i125.land.lhs.true.i122_crit_edge:     ; preds = %cond.false.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i122

for.end.i129:                                     ; preds = %land.lhs.true.i122
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %add.ptr11.i126 = getelementptr i8, ptr %55, i32 24
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i126) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool25.not.i127 = icmp eq i32 %57, 0
  br i1 %tobool25.not.i127, label %do.end55, label %for.end.i129.if.end57_crit_edge

for.end.i129.if.end57_crit_edge:                  ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end55:                                         ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.end57:                                         ; preds = %for.end.i129.if.end57_crit_edge, %cond.false.i125.if.end57_crit_edge, %do.body34.if.end57_crit_edge
  %idmdrd_rst_ctrl60 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %idmdrd_rst_ctrl60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %idmdrd_rst_ctrl60, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  %61 = and i32 %60, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %idmdrd_rst_ctrl60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %idmdrd_rst_ctrl60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #5, !srcloc !127
  %usb2h_strap_reg = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %usb2h_strap_reg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %usb2h_strap_reg, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %67 = or i32 %66, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %usb2h_strap_reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb2h_strap_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #5, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end55, %do.end33, %for.end.i.cleanup_crit_edge, %cond.false.i.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end33 ], [ -110, %do.end55 ], [ 0, %if.end57 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %cond.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_poweroff(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %crmu_usb2_ctrl = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crmu_usb2_ctrl, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %7 = and i32 %6, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crmu_usb2_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !127
  %10 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crmu_usb2_ctrl, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  %13 = and i32 %12, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %crmu_usb2_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crmu_usb2_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !127
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %19 = and i32 %18, -2080374785
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #5, !srcloc !127
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_phy_bcm_ns2_usbdrd__292_422_ns2_drd_phy_driver_init6, !1, !"__initcall__kmod_phy_bcm_ns2_usbdrd__292_422_ns2_drd_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 422, i32 1}
!2 = !{ptr @__exitcall_ns2_drd_phy_driver_exit, !1, !"__exitcall_ns2_drd_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias293, !4, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 424, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 425, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 426, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 427, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 418, i32 11}
!14 = !{ptr @ns2_drd_phy_driver, !15, !"ns2_drd_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 415, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 309, i32 69}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 313, i32 72}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 317, i32 71}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 321, i32 72}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 326, i32 48}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 328, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ns2_drd_phy_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ns2_drd_phy_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 331, i32 50}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 333, i32 3}
!38 = !{ptr @ns2_drd_phy_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ns2_drd_phy_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 339, i32 3}
!42 = !{ptr @ns2_drd_phy_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ns2_drd_phy_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 345, i32 3}
!46 = !{ptr @ns2_drd_phy_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ns2_drd_phy_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ns2_drd_phy_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 353, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ns2_drd_phy_probe.__key.22, !49, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 357, i32 3}
!55 = !{ptr @ns2_drd_phy_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ns2_drd_phy_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ns2_drd_phy_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 363, i32 3}
!59 = !{ptr @ns2_drd_phy_probe._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 369, i32 11}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 371, i32 3}
!64 = !{ptr @ns2_drd_phy_probe._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ns2_drd_phy_probe._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 377, i32 11}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 379, i32 3}
!70 = !{ptr @ns2_drd_phy_probe._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ns2_drd_phy_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 393, i32 3}
!74 = !{ptr @ns2_drd_phy_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ns2_drd_phy_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 402, i32 3}
!78 = !{ptr @ns2_drd_phy_probe._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ns2_drd_phy_probe._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 408, i32 2}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ns2_drd_phy_probe._entry.43, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ns2_drd_phy_probe._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @usb_extcon_cable, !86, !"usb_extcon_cable", i1 false, i1 false}
!86 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 82, i32 27}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 252, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @extcon_work.__UNIQUE_ID_ddebug289, !88, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 258, i32 3}
!94 = !{ptr @extcon_work.__UNIQUE_ID_ddebug290, !93, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 261, i32 3}
!97 = !{ptr @extcon_work.__UNIQUE_ID_ddebug291, !96, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 233, i32 3}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @connect_change._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @connect_change._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @ops, !104, !"ops", i1 false, i1 false}
!104 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 277, i32 29}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 166, i32 4}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ns2_drd_phy_poweron._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ns2_drd_phy_poweron._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ns2_drd_phy_poweron._entry.56, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 178, i32 4}
!112 = !{ptr @ns2_drd_phy_poweron._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ns2_drd_phy_dt_ids, !114, !"ns2_drd_phy_dt_ids", i1 false, i1 false}
!114 = !{!"../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c", i32 284, i32 34}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 4883246}
!125 = !{i64 2155303155}
!126 = !{i64 2155303542}
!127 = !{i64 4882828}
!128 = !{i64 2148766214, i64 2148766219, i64 2148766232, i64 2148766276, i64 2148766310, i64 2148766331}
!129 = !{i64 2155272036}
!130 = !{i64 2155272603}
!131 = !{i64 2155273353}
!132 = !{i64 2155274069}
!133 = !{i64 2155274380}
!134 = !{i64 2155275132}
!135 = !{i64 2155275882}
!136 = !{i64 2155276577}
!137 = !{i64 2155276881}
!138 = !{i64 2155277593}
!139 = !{i64 2155277904}
!140 = !{i64 2155256768}
!141 = !{i64 2155257671}
!142 = !{i64 2155262137}
!143 = !{i64 2155262439}
!144 = !{i64 2155263126}
!145 = !{i64 2155263513}
!146 = !{i64 2155264199}
!147 = !{i64 2155264586}
!148 = !{i64 2155255105}
!149 = !{i64 2155255643}
!150 = !{i64 2155267367}
!151 = !{i64 2155267670}
!152 = !{i64 2155270027}
!153 = !{i64 2155270329}
!154 = !{i64 2155271020}
!155 = !{i64 2155271324}
!156 = !{i64 2155258362}
!157 = !{i64 2155258665}
!158 = !{i64 2155259351}
!159 = !{i64 2155259654}
!160 = !{i64 2155260365}
!161 = !{i64 2155261012}
