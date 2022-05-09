; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-da8xx.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-da8xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.ohci_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ohci_roothub_regs, [16 x i8] }
%struct.ohci_roothub_regs = type { i32, i32, i32, [15 x i32] }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.da8xx_ohci_hcd = type { ptr, ptr, ptr, ptr, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_ohci_da8xx__298_574_ohci_da8xx_init6 = internal global ptr @ohci_da8xx_init, section ".initcall6.init", align 4
@ohci_hcd_da8xx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ohci_da8xx_probe, ptr @ohci_da8xx_remove, ptr @usb_hcd_platform_shutdown, ptr @ohci_da8xx_suspend, ptr @ohci_da8xx_resume, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da8xx_ohci_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_da8xx_exit = internal global ptr @ohci_da8xx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [29 x i8] c"ohci_da8xx.description=DA8XX\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [44 x i8] c"ohci_da8xx.file=drivers/usb/host/ohci-da8xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [23 x i8] c"ohci_da8xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [37 x i8] c"ohci_da8xx.alias=platform:ohci-da8xx\00", section ".modinfo", align 1
@ohci_da8xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016%s: DA8XX\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ohci_da8xx_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/ohci-da8xx.c\00", [34 x i8] zeroinitializer }, align 32
@ohci_da8xx_init._entry_ptr = internal global ptr @ohci_da8xx_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ohci-da8xx\00", [21 x i8] zeroinitializer }, align 32
@ohci_da8xx_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@da8xx_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 32, ptr @ohci_da8xx_reset }, section ".init.rodata", align 4
@orig_ohci_hub_control = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@orig_ohci_hub_status_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ohci_da8xx_reset.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ohci_da8xx\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ohci_da8xx_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting USB controller\0A\00", [39 x i8] zeroinitializer }, align 32
@ocic_mask = internal global { i16, [30 x i8] } zeroinitializer, align 32
@ohci_da8xx_hub_status_data.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ohci_da8xx_hub_status_data\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"over-current indicator change on port 1\0A\00", [55 x i8] zeroinitializer }, align 32
@ohci_da8xx_hub_control.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ohci_da8xx_hub_control\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetPortStatus(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@ohci_da8xx_hub_control.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%sPortFeature(%u): %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Set\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Clear\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"POWER\00", [26 x i8] zeroinitializer }, align 32
@ohci_da8xx_hub_control.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"C_OVER_CURRENT\00", [17 x i8] zeroinitializer }, align 32
@ohci_da8xx_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 99, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci_da8xx_set_power\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ohci_da8xx_set_power._entry_ptr = internal global ptr @ohci_da8xx_set_power._entry, section ".printk_index", align 4
@ohci_da8xx_set_power._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 105, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed  to disable regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_da8xx_set_power._entry_ptr.22 = internal global ptr @ohci_da8xx_set_power._entry.20, section ".printk_index", align 4
@da8xx_ohci_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 392, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ohci_da8xx_probe\00", [47 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry_ptr = internal global ptr @ohci_da8xx_probe._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 400, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get phy.\0A\00", [44 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry_ptr.28 = internal global ptr @ohci_da8xx_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 412, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@ohci_da8xx_probe._entry_ptr.32 = internal global ptr @ohci_da8xx_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"oc\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OHCI over-current indicator\00", [36 x i8] zeroinitializer }, align 32
@ohci_da8xx_oc_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 203, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci_da8xx_oc_thread\00", [43 x i8] zeroinitializer }, align 32
@ohci_da8xx_oc_thread._entry_ptr = internal global ptr @ohci_da8xx_oc_thread._entry, section ".printk_index", align 4
@ohci_da8xx_register_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 222, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ohci_da8xx_register_notify\00", [37 x i8] zeroinitializer }, align 32
@ohci_da8xx_register_notify._entry_ptr = internal global ptr @ohci_da8xx_register_notify._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 8961, i64 8963, i64 41728]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 19]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"ohci_hcd_da8xx_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 534, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 554, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"orig_ohci_hub_control\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 33, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"orig_ohci_hub_status_data\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 35, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 235, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"ocic_mask\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 49, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 286, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 312, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 343, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 348, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 99, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 105, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"da8xx_ohci_ids\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 366, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 392, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 396, i32 44 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 400, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 404, i32 58 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 412, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 417, i32 53 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 433, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 203, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [33 x i8] c"../drivers/usb/host/ohci-da8xx.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 222, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ohci_da8xx_exit, ptr @__initcall__kmod_ohci_da8xx__298_574_ohci_da8xx_init6, ptr @ohci_da8xx_exit, ptr @ohci_da8xx_init._entry, ptr @ohci_da8xx_init._entry_ptr, ptr @ohci_da8xx_oc_thread._entry, ptr @ohci_da8xx_oc_thread._entry_ptr, ptr @ohci_da8xx_probe._entry, ptr @ohci_da8xx_probe._entry.26, ptr @ohci_da8xx_probe._entry.30, ptr @ohci_da8xx_probe._entry_ptr, ptr @ohci_da8xx_probe._entry_ptr.28, ptr @ohci_da8xx_probe._entry_ptr.32, ptr @ohci_da8xx_register_notify._entry, ptr @ohci_da8xx_register_notify._entry_ptr, ptr @ohci_da8xx_set_power._entry, ptr @ohci_da8xx_set_power._entry.20, ptr @ohci_da8xx_set_power._entry_ptr, ptr @ohci_da8xx_set_power._entry_ptr.22, ptr @ohci_hcd_da8xx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @orig_ohci_hub_control, ptr @orig_ohci_hub_status_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ocic_mask, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @da8xx_ohci_ids, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_da8xx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_ohci_hub_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_ohci_hub_status_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocic_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_set_power._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_ohci_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_oc_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_da8xx_register_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_da8xx_hc_driver, ptr noundef nonnull @da8xx_overrides) #6
  %0 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_da8xx_hc_driver, i32 0, i32 19), align 4
  store ptr %0, ptr @orig_ohci_hub_control, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_da8xx_hc_driver, i32 0, i32 18), align 4
  store ptr %1, ptr @orig_ohci_hub_status_data, align 4
  store ptr @ohci_da8xx_hub_status_data, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_da8xx_hc_driver, i32 0, i32 18), align 4
  store ptr @ohci_da8xx_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_da8xx_hc_driver, i32 0, i32 19), align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_hcd_da8xx_driver, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_da8xx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_hcd_da8xx_driver) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_hub_status_data(ptr noundef %hcd, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @orig_ohci_hub_status_data, align 4
  %call = tail call i32 %0(ptr noundef %hcd, ptr noundef %buf) #6
  %1 = load volatile i16, ptr @ocic_mask, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_da8xx_hub_status_data.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_da8xx_hub_status_data, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !105

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_da8xx_hub_status_data.__UNIQUE_ID_ddebug294, ptr noundef %4, ptr noundef nonnull @.str.8) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %spec.store.select = select i1 %tobool6.not, i32 1, i32 %call
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %7 = or i8 %6, 2
  store i8 %7, ptr %buf, align 1
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %length.0 = phi i32 [ %spec.store.select, %do.end ], [ %call, %entry.if.end11_crit_edge ]
  ret i32 %length.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #3 align 64 {
entry:
  %flags.i131 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %2 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %entry.sw.epilog93_crit_edge [
    i16 -23808, label %sw.bb
    i16 8963, label %entry.check_port_crit_edge
    i16 8961, label %sw.bb31
  ]

entry.check_port_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_port

entry.sw.epilog93_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog93

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp.not = icmp eq i16 %wIndex, 1
  br i1 %cmp.not, label %do.body, label %sw.bb.sw.epilog93_crit_edge

sw.bb.sw.epilog93_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog93

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_da8xx_hub_control, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !105

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef 1) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %portstatus.i = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 18, i32 3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portstatus.i) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %rh_state.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %rh_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rh_state.i, align 8
  br label %roothub_portstatus.exit

if.else.i:                                        ; preds = %do.end
  %7 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %flags.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 1, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and21.i = and i32 %7, -2032416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool3.not2.i = icmp eq i32 %and21.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not2.i
  br i1 %or.cond.i, label %if.else.i.roothub_portstatus.exit_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

if.else.i.roothub_portstatus.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %roothub_portstatus.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %portstatus6.i = getelementptr inbounds %struct.ohci_regs, ptr %11, i32 0, i32 18, i32 3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portstatus6.i) #6, !srcloc !106
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %and2.i = and i32 %13, -2032416
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.body.i.roothub_portstatus.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.roothub_portstatus.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %roothub_portstatus.exit

roothub_portstatus.exit:                          ; preds = %while.body.i.roothub_portstatus.exit_crit_edge, %if.else.i.roothub_portstatus.exit_crit_edge, %if.then.i
  %temp.1.i = phi i32 [ -1, %if.then.i ], [ %7, %if.else.i.roothub_portstatus.exit_crit_edge ], [ %13, %while.body.i.roothub_portstatus.exit_crit_edge ]
  %vbus_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 2
  %14 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbus_reg.i, align 4
  %tobool.not.i128 = icmp eq ptr %15, null
  br i1 %tobool.not.i128, label %roothub_portstatus.exit.ohci_da8xx_get_power.exit.thread_crit_edge, label %ohci_da8xx_get_power.exit

roothub_portstatus.exit.ohci_da8xx_get_power.exit.thread_crit_edge: ; preds = %roothub_portstatus.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ohci_da8xx_get_power.exit.thread

ohci_da8xx_get_power.exit:                        ; preds = %roothub_portstatus.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @regulator_is_enabled(ptr noundef nonnull %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool12.not = icmp eq i32 %call2.i, 0
  %and = and i32 %temp.1.i, -257
  %spec.select = select i1 %tobool12.not, i32 %and, i32 %temp.1.i
  br label %ohci_da8xx_get_power.exit.thread

ohci_da8xx_get_power.exit.thread:                 ; preds = %ohci_da8xx_get_power.exit, %roothub_portstatus.exit.ohci_da8xx_get_power.exit.thread_crit_edge
  %16 = phi i32 [ %temp.1.i, %roothub_portstatus.exit.ohci_da8xx_get_power.exit.thread_crit_edge ], [ %spec.select, %ohci_da8xx_get_power.exit ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i131) #6
  %17 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %flags.i131, align 4, !annotation !108
  %oc_gpio.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 4, i32 8
  %18 = ptrtoint ptr %oc_gpio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oc_gpio.i, align 4
  %tobool.not.i132 = icmp eq ptr %19, null
  br i1 %tobool.not.i132, label %if.end.i, label %if.then.i134

if.then.i134:                                     ; preds = %ohci_da8xx_get_power.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i133 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %19) #6
  br label %ohci_da8xx_get_oci.exit

if.end.i:                                         ; preds = %ohci_da8xx_get_power.exit.thread
  %20 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbus_reg.i, align 4
  %tobool3.not.i136 = icmp eq ptr %21, null
  br i1 %tobool3.not.i136, label %ohci_da8xx_get_oci.exit.thread, label %if.end5.i

ohci_da8xx_get_oci.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i131) #6
  br label %24

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @regulator_get_error_flags(ptr noundef nonnull %21, ptr noundef nonnull %flags.i131) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.ohci_da8xx_get_oci.exit_crit_edge

if.end5.i.ohci_da8xx_get_oci.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ohci_da8xx_get_oci.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i131, align 4
  %and.i137 = lshr i32 %23, 2
  %and.lobit.i = and i32 %and.i137, 1
  br label %ohci_da8xx_get_oci.exit

ohci_da8xx_get_oci.exit:                          ; preds = %if.end10.i, %if.end5.i.ohci_da8xx_get_oci.exit_crit_edge, %if.then.i134
  %retval.0.i138 = phi i32 [ %call2.i133, %if.then.i134 ], [ %call7.i, %if.end5.i.ohci_da8xx_get_oci.exit_crit_edge ], [ %and.lobit.i, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i131) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138)
  %cmp16 = icmp sgt i32 %retval.0.i138, 0
  %or = or i32 %16, 8
  %spec.select155 = select i1 %cmp16, i32 %or, i32 %16
  br label %24

24:                                               ; preds = %ohci_da8xx_get_oci.exit, %ohci_da8xx_get_oci.exit.thread
  %25 = phi i32 [ %16, %ohci_da8xx_get_oci.exit.thread ], [ %spec.select155, %ohci_da8xx_get_oci.exit ]
  %26 = load volatile i16, ptr @ocic_mask, align 2
  %27 = and i16 %26, 2
  %28 = zext i16 %27 to i32
  %29 = shl nuw nsw i32 %28, 18
  %30 = or i32 %29, %25
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %buf, align 1
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_port

check_port:                                       ; preds = %sw.bb31, %entry.check_port_crit_edge
  %tobool80.not = phi i1 [ true, %sw.bb31 ], [ false, %entry.check_port_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp33.not = icmp eq i16 %wIndex, 1
  br i1 %cmp33.not, label %if.end36, label %check_port.sw.epilog93_crit_edge

check_port.sw.epilog93_crit_edge:                 ; preds = %check_port
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog93

if.end36:                                         ; preds = %check_port
  %33 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %wValue, label %if.end36.sw.epilog93_crit_edge [
    i16 8, label %do.body39
    i16 19, label %do.body61
  ]

if.end36.sw.epilog93_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog93

do.body39:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_da8xx_hub_control, %if.then51)) #6
          to label %do.end56 [label %if.then51], !srcloc !105

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %tobool80.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, i32 noundef 1, ptr noundef nonnull @.str.14) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body39
  %34 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hcd, align 8
  %vbus_reg.i139 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 2
  %36 = ptrtoint ptr %vbus_reg.i139 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbus_reg.i139, align 4
  %tobool.not.i140 = icmp eq ptr %37, null
  br i1 %tobool.not.i140, label %do.end56.cleanup_crit_edge, label %if.end.i141

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i141:                                      ; preds = %do.end56
  br i1 %tobool80.not, label %if.else.i142, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i141
  %call4.i = tail call i32 @regulator_enable(ptr noundef nonnull %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.cleanup_crit_edge, label %do.end.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #9
  br label %cleanup

if.else.i142:                                     ; preds = %if.end.i141
  %call9.i = tail call i32 @regulator_disable(ptr noundef nonnull %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else.i142.cleanup_crit_edge, label %do.end14.i

if.else.i142.cleanup_crit_edge:                   ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14.i:                                       ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.21, i32 noundef %call9.i) #9
  br label %cleanup

do.body61:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_da8xx_hub_control, %if.then73)) #6
          to label %do.end79 [label %if.then73], !srcloc !105

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %cond75 = select i1 %tobool80.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond75, i32 noundef 1, ptr noundef nonnull @.str.15) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %do.body61
  %38 = load volatile i16, ptr @ocic_mask, align 2
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  %39 = or i16 %38, 2
  store volatile i16 %39, ptr @ocic_mask, align 2
  br label %cleanup

if.else:                                          ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  %40 = and i16 %38, -3
  store volatile i16 %40, ptr @ocic_mask, align 2
  br label %cleanup

sw.epilog93:                                      ; preds = %if.end36.sw.epilog93_crit_edge, %check_port.sw.epilog93_crit_edge, %sw.bb.sw.epilog93_crit_edge, %entry.sw.epilog93_crit_edge
  %41 = load ptr, ptr @orig_ohci_hub_control, align 4
  %call94 = tail call i32 %41(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog93, %if.else, %if.then81, %do.end14.i, %if.else.i142.cleanup_crit_edge, %do.end.i, %if.then2.i.cleanup_crit_edge, %do.end56.cleanup_crit_edge, %24
  %retval.0 = phi i32 [ %call94, %sw.epilog93 ], [ 0, %24 ], [ 0, %if.else ], [ 0, %if.then81 ], [ -32, %do.end.i ], [ -32, %do.end14.i ], [ 0, %do.end56.cleanup_crit_edge ], [ 0, %if.else.i142.cleanup_crit_edge ], [ 0, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_reset(ptr noundef %hcd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_da8xx_reset.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_da8xx_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !105

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_da8xx_reset.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @ohci_da8xx_enable(ptr noundef %hcd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %num_ports = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_ports, align 4
  %call8 = tail call i32 @ohci_setup(ptr noundef %hcd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %usb11_phy.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 1
  %5 = ptrtoint ptr %usb11_phy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb11_phy.i, align 4
  %call1.i = tail call i32 @phy_power_off(ptr noundef %6) #6
  %7 = ptrtoint ptr %usb11_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb11_phy.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %8) #6
  %usb11_clk.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 18
  %9 = ptrtoint ptr %usb11_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb11_clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %roothub = getelementptr inbounds %struct.ohci_regs, ptr %12, i32 0, i32 18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %roothub) #6, !srcloc !106
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %vbus_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 2
  %15 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbus_reg.i, align 4
  %tobool.not.i.not = icmp eq ptr %16, null
  %and = and i32 %14, -6913
  %or = or i32 %and, 256
  %rh_a.0 = select i1 %tobool.not.i.not, i32 %14, i32 %or
  %oc_gpio.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 4, i32 8
  %17 = ptrtoint ptr %oc_gpio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oc_gpio.i, align 4
  %tobool.not.i58 = icmp eq ptr %18, null
  %and20 = and i32 %rh_a.0, -6145
  %or21 = or i32 %and20, 2048
  %19 = select i1 %tobool.not.i58, i1 %tobool.not.i.not, i1 false
  %20 = select i1 %19, i32 %14, i32 %or21
  %21 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i62 = icmp eq ptr %24, null
  br i1 %tobool.not.i62, label %if.end11.if.end28_crit_edge, label %land.lhs.true.i

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true.i:                                  ; preds = %if.end11
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i63 = icmp eq i8 %26, 0
  br i1 %tobool1.not.i63, label %land.lhs.true.i.if.end28_crit_edge, label %if.then25

land.lhs.true.i.if.end28_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %and26 = and i32 %20, 16777215
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  %conv = zext i8 %28 to i32
  %shl = shl nuw i32 %conv, 24
  %or27 = or i32 %shl, %and26
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true.i.if.end28_crit_edge, %if.end11.if.end28_crit_edge
  %rh_a.2 = phi i32 [ %or27, %if.then25 ], [ %20, %if.end11.if.end28_crit_edge ], [ %20, %land.lhs.true.i.if.end28_crit_edge ]
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %roothub30 = getelementptr inbounds %struct.ohci_regs, ptr %30, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %rh_a.2) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %roothub30, i32 %31) #6, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call8, %if.end28 ], [ %call5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ohci_da8xx_enable(ptr nocapture noundef readonly %hcd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb11_clk = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %usb11_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb11_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %usb11_phy = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 1
  %2 = ptrtoint ptr %usb11_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb11_phy, align 4
  %call2 = tail call i32 @phy_init(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_phy_init_crit_edge

if.end.err_phy_init_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_phy_init

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %usb11_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb11_phy, align 4
  %call7 = tail call i32 @phy_power_on(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %err_phy_power_on

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_phy_power_on:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %usb11_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb11_phy, align 4
  %call12 = tail call i32 @phy_exit(ptr noundef %7) #6
  br label %err_phy_init

err_phy_init:                                     ; preds = %err_phy_power_on, %if.end.err_phy_init_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_phy_init_crit_edge ], [ %call7, %err_phy_power_on ]
  %8 = ptrtoint ptr %usb11_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb11_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_phy_init, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %err_phy_init ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %err_phy_init ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_error_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_da8xx_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 2, i32 0, i32 17
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %priv, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %usb11_clk = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 2, i32 0, i32 18
  %5 = ptrtoint ptr %usb11_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %usb11_clk, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then8.err_crit_edge, label %do.end

if.then8.err_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %err

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.25) #6
  %usb11_phy = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 2, i32 1
  %7 = ptrtoint ptr %usb11_phy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %usb11_phy, align 4
  %cmp.i144 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end13
  %cmp20.not = icmp eq ptr %call14, inttoptr (i32 -517 to ptr)
  br i1 %cmp20.not, label %if.then17.err_crit_edge, label %do.end24

if.then17.err_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #9
  br label %err

if.end26:                                         ; preds = %if.end13
  %call27 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.29) #6
  %vbus_reg = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 2, i32 2
  %9 = ptrtoint ptr %vbus_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %vbus_reg, align 4
  %cmp.i145 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then30, label %if.end26.if.end43_crit_edge

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then30:                                        ; preds = %if.end26
  %10 = ptrtoint ptr %call27 to i32
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %10, label %do.end41 [
    i32 -19, label %if.then34
    i32 -517, label %if.then30.err_crit_edge
  ]

if.then30.err_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %vbus_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vbus_reg, align 4
  br label %if.end43

do.end41:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  br label %err

if.end43:                                         ; preds = %if.then34, %if.end26.if.end43_crit_edge
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef 1) #6
  %oc_gpio = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 2, i32 4, i32 8
  %13 = ptrtoint ptr %oc_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call44, ptr %oc_gpio, align 4
  %cmp.i146 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call44 to i32
  br label %err

if.end50:                                         ; preds = %if.end43
  %tobool52.not = icmp eq ptr %call44, null
  br i1 %tobool52.not, label %if.end50.if.end63_crit_edge, label %if.then53

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then53:                                        ; preds = %if.end50
  %call55 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then53.err_crit_edge, label %if.end58

if.then53.err_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end58:                                         ; preds = %if.then53
  %call59 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call55, ptr noundef null, ptr noundef nonnull @ohci_da8xx_oc_thread, i32 noundef 8195, ptr noundef nonnull @.str.34, ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.if.end63_crit_edge, label %if.end58.err_crit_edge

if.end58.err_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end63:                                         ; preds = %if.end58.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %call64 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call65 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call64) #6
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 0, i32 16
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call65, ptr %regs, align 4
  %cmp.i147 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call65 to i32
  br label %err

if.end71:                                         ; preds = %if.end63
  %17 = ptrtoint ptr %call64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call64, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 0, i32 17
  %19 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call64, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %22 = load i32, ptr %call64, align 4
  %sub.i = add i32 %21, 1
  %add.i = sub i32 %sub.i, %22
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call2, i32 0, i32 18
  %23 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call73 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end71.err_crit_edge, label %if.end76

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end76:                                         ; preds = %if.end71
  %call77 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call2, i32 noundef %call73, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_crit_edge

if.end76.err_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end80:                                         ; preds = %if.end76
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call2, align 8
  %call81 = tail call i32 @device_wakeup_enable(ptr noundef %25) #6
  %call82 = tail call fastcc i32 @ohci_da8xx_register_notify(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end80.cleanup_crit_edge, label %err_remove_hcd

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_remove_hcd:                                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_remove_hcd(ptr noundef nonnull %call2) #6
  br label %err

err:                                              ; preds = %err_remove_hcd, %if.end76.err_crit_edge, %if.end71.err_crit_edge, %if.then68, %if.end58.err_crit_edge, %if.then53.err_crit_edge, %if.then47, %do.end41, %if.then30.err_crit_edge, %do.end24, %if.then17.err_crit_edge, %do.end, %if.then8.err_crit_edge
  %error.0 = phi i32 [ %6, %do.end ], [ -517, %if.then8.err_crit_edge ], [ %8, %do.end24 ], [ -517, %if.then17.err_crit_edge ], [ %14, %if.then47 ], [ %call59, %if.end58.err_crit_edge ], [ %16, %if.then68 ], [ %call77, %if.end76.err_crit_edge ], [ %call82, %err_remove_hcd ], [ %10, %do.end41 ], [ %10, %if.then30.err_crit_edge ], [ %call55, %if.then53.err_crit_edge ], [ -19, %if.end71.err_crit_edge ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end80.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %1) #6
  tail call void @usb_put_hcd(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %4, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %5 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9
  %7 = ptrtoint ptr %next_statechange to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_statechange, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %next_statechange, align 4
  %call4 = tail call i32 @ohci_suspend(ptr noundef %1, i1 noundef zeroext %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %usb11_phy.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  %11 = ptrtoint ptr %usb11_phy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb11_phy.i, align 4
  %call1.i = tail call i32 @phy_power_off(ptr noundef %12) #6
  %13 = ptrtoint ptr %usb11_phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb11_phy.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %14) #6
  %usb11_clk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %15 = ptrtoint ptr %usb11_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb11_clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  %state = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9
  %3 = ptrtoint ptr %next_statechange to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_statechange, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %next_statechange, align 4
  %call3 = tail call fastcc i32 @ohci_da8xx_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @ohci_resume(ptr noundef %1, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_oc_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %oc_gpio = getelementptr inbounds %struct.da8xx_ohci_hcd, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %oc_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oc_gpio, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %vbus_reg = getelementptr inbounds %struct.da8xx_ohci_hcd, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %vbus_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_reg, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %call3) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ohci_da8xx_register_notify(ptr noundef %hcd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %oc_gpio = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 4, i32 8
  %2 = ptrtoint ptr %oc_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oc_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %vbus_reg = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 2
  %4 = ptrtoint ptr %vbus_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus_reg, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end7_crit_edge, label %if.end

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end:                                           ; preds = %land.lhs.true
  %nb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 3
  %6 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ohci_da8xx_regulator_event, ptr %nb, align 4
  %call4 = tail call i32 @devm_regulator_register_notifier(ptr noundef nonnull %5, ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %call4) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.017 = phi i32 [ %call4, %do.end ], [ 0, %if.end.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ], [ 0, %land.lhs.true.if.end7_crit_edge ]
  ret i32 %ret.017
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_da8xx_regulator_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -16
  %0 = load volatile i16, ptr @ocic_mask, align 2
  %1 = or i16 %0, 2
  store volatile i16 %1, ptr @ocic_mask, align 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %vbus_reg.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 2
  %6 = ptrtoint ptr %vbus_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_reg.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call9.i = tail call i32 @regulator_disable(ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end_crit_edge, label %do.end14.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call9.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end14.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_ohci_da8xx__298_574_ohci_da8xx_init6, !1, !"__initcall__kmod_ohci_da8xx__298_574_ohci_da8xx_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 574, i32 1}
!2 = !{ptr @__exitcall_ohci_da8xx_exit, !3, !"__exitcall_ohci_da8xx_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 580, i32 1}
!4 = !{ptr @__UNIQUE_ID_description299, !5, !"__UNIQUE_ID_description299", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 581, i32 1}
!6 = !{ptr @__UNIQUE_ID_file300, !7, !"__UNIQUE_ID_file300", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 582, i32 1}
!8 = !{ptr @__UNIQUE_ID_license301, !7, !"__UNIQUE_ID_license301", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias302, !10, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 583, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 554, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ohci_da8xx_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ohci_da8xx_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ohci_da8xx_hc_driver, !19, !"ohci_da8xx_hc_driver", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 31, i32 39}
!20 = !{ptr @da8xx_overrides, !21, !"da8xx_overrides", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 526, i32 43}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 235, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ohci_da8xx_reset.__UNIQUE_ID_ddebug293, !23, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!27 = !{ptr @orig_ohci_hub_control, !28, !"orig_ohci_hub_control", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 33, i32 14}
!29 = !{ptr @orig_ohci_hub_status_data, !30, !"orig_ohci_hub_status_data", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 35, i32 14}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 286, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ohci_da8xx_hub_status_data.__UNIQUE_ID_ddebug294, !32, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!35 = !{ptr @ocic_mask, !36, !"ocic_mask", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 49, i32 21}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 312, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug295, !38, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 343, i32 4}
!43 = !{ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug296, !42, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!44 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ohci_da8xx_hub_control.__UNIQUE_ID_ddebug297, !48, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 348, i32 4}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 99, i32 4}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ohci_da8xx_set_power._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @ohci_da8xx_set_power._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 105, i32 4}
!59 = !{ptr @ohci_da8xx_set_power._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ohci_da8xx_set_power._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ohci_hcd_da8xx_driver, !62, !"ohci_hcd_da8xx_driver", i1 false, i1 false}
!62 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 534, i32 31}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 392, i32 4}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ohci_da8xx_probe._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ohci_da8xx_probe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 396, i32 44}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 400, i32 4}
!72 = !{ptr @ohci_da8xx_probe._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ohci_da8xx_probe._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 404, i32 58}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 412, i32 4}
!78 = !{ptr @ohci_da8xx_probe._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ohci_da8xx_probe._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 417, i32 53}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 433, i32 5}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 203, i32 4}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ohci_da8xx_oc_thread._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ohci_da8xx_oc_thread._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 222, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ohci_da8xx_register_notify._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ohci_da8xx_register_notify._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @da8xx_ohci_ids, !95, !"da8xx_ohci_ids", i1 false, i1 false}
!95 = !{!"../drivers/usb/host/ohci-da8xx.c", i32 366, i32 34}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2148733395, i64 2148733400, i64 2148733413, i64 2148733457, i64 2148733491, i64 2148733512}
!106 = !{i64 2067177}
!107 = !{i64 2155299730}
!108 = !{!"auto-init"}
!109 = !{i64 2155300100}
!110 = !{i64 2066759}
