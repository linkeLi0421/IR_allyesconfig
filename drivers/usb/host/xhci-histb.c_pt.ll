; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-histb.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-histb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.xhci_hcd_histb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_alias239 = internal constant [37 x i8] c"xhci_histb.alias=platform:xhci-histb\00", section ".modinfo", align 1
@__initcall__kmod_xhci_histb__240_402_xhci_histb_init6 = internal global ptr @xhci_histb_init, section ".initcall6.init", align 4
@histb_xhci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xhci_histb_probe, ptr @xhci_histb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @histb_xhci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_histb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xhci_histb_exit = internal global ptr @xhci_histb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [65 x i8] c"xhci_histb.description=HiSilicon STB xHCI Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [44 x i8] c"xhci_histb.file=drivers/usb/host/xhci-histb\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"xhci_histb.license=GPL v2\00", section ".modinfo", align 1
@xhci_histb_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_histb_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @xhci_histb_setup, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phys-names\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inno\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"combo\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xhci-histb\00", [21 x i8] zeroinitializer }, align 32
@histb_xhci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xhci_histb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xhci_histb_suspend, ptr @xhci_histb_resume, ptr @xhci_histb_suspend, ptr @xhci_histb_resume, ptr @xhci_histb_suspend, ptr @xhci_histb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@xhci_histb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 232, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get soft reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_histb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-histb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_histb_probe._entry_ptr = internal global ptr @xhci_histb_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb2-lpm-disable\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3-lpm-capable\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imod-interval-ns\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 90, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fail to get bus clk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xhci_histb_clks_get\00", [44 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry_ptr = internal global ptr @xhci_histb_clks_get._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utmi\00", [27 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.7, i32 96, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to get utmi clk\0A\00", [42 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry_ptr.19 = internal global ptr @xhci_histb_clks_get._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.7, i32 102, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to get pipe clk\0A\00", [42 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry_ptr.23 = internal global ptr @xhci_histb_clks_get._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.7, i32 108, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to get suspend clk\0A\00", [39 x i8] zeroinitializer }, align 32
@xhci_histb_clks_get._entry_ptr.27 = internal global ptr @xhci_histb_clks_get._entry.25, section ".printk_index", align 4
@xhci_histb_host_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 121, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable bus clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xhci_histb_host_enable\00", [41 x i8] zeroinitializer }, align 32
@xhci_histb_host_enable._entry_ptr = internal global ptr @xhci_histb_host_enable._entry, section ".printk_index", align 4
@xhci_histb_host_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 127, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable utmi clk\0A\00", [37 x i8] zeroinitializer }, align 32
@xhci_histb_host_enable._entry_ptr.32 = internal global ptr @xhci_histb_host_enable._entry.30, section ".printk_index", align 4
@xhci_histb_host_enable._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.7, i32 133, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable pipe clk\0A\00", [37 x i8] zeroinitializer }, align 32
@xhci_histb_host_enable._entry_ptr.35 = internal global ptr @xhci_histb_host_enable._entry.33, section ".printk_index", align 4
@xhci_histb_host_enable._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.7, i32 139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable suspend clk\0A\00", [34 x i8] zeroinitializer }, align 32
@xhci_histb_host_enable._entry_ptr.38 = internal global ptr @xhci_histb_host_enable._entry.36, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"histb_xhci_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 386, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 54, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 54, i32 49 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 63, i32 49 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 390, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"histb_xhci_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 379, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"xhci_histb_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 373, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 230, i32 50 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 232, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 274, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 277, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 282, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 88, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 90, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 94, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 96, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 100, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 102, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 106, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 108, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 121, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 127, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 133, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [33 x i8] c"../drivers/usb/host/xhci-histb.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 139, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_xhci_histb_exit, ptr @__initcall__kmod_xhci_histb__240_402_xhci_histb_init6, ptr @xhci_histb_clks_get._entry, ptr @xhci_histb_clks_get._entry.17, ptr @xhci_histb_clks_get._entry.21, ptr @xhci_histb_clks_get._entry.25, ptr @xhci_histb_clks_get._entry_ptr, ptr @xhci_histb_clks_get._entry_ptr.19, ptr @xhci_histb_clks_get._entry_ptr.23, ptr @xhci_histb_clks_get._entry_ptr.27, ptr @xhci_histb_exit, ptr @xhci_histb_host_enable._entry, ptr @xhci_histb_host_enable._entry.30, ptr @xhci_histb_host_enable._entry.33, ptr @xhci_histb_host_enable._entry.36, ptr @xhci_histb_host_enable._entry_ptr, ptr @xhci_histb_host_enable._entry_ptr.32, ptr @xhci_histb_host_enable._entry_ptr.35, ptr @xhci_histb_host_enable._entry_ptr.38, ptr @xhci_histb_probe._entry, ptr @xhci_histb_probe._entry_ptr, ptr @histb_xhci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @histb_xhci_of_match, ptr @xhci_histb_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_xhci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_xhci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_clks_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_clks_get._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_clks_get._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_clks_get._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_host_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_host_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_host_enable._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_histb_host_enable._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_histb_hc_driver, ptr noundef nonnull @xhci_histb_overrides) #8
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @histb_xhci_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xhci_histb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @histb_xhci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_setup(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_property_match_string(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 49664
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %11 = and i32 %10, -402653249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 49664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %11) #8, !srcloc !99
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %call7.i = tail call i32 @of_property_match_string(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.xhci_histb_config.exit_crit_edge

if.end.i.xhci_histb_config.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xhci_histb_config.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl12.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %15, i32 49856
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %17 = and i32 %16, -369098753
  %18 = or i32 %17, 301989888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %ctrl12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl12.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %20, i32 49856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %18) #8, !srcloc !99
  br label %xhci_histb_config.exit

xhci_histb_config.exit:                           ; preds = %if.then9.i, %if.end.i.xhci_histb_config.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %ctrl28.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %ctrl28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl28.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %22, i32 49416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 4131) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %ctrl28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl28.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %24, i32 49420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 4131) #8, !srcloc !99
  br label %if.end5

if.end5:                                          ; preds = %xhci_histb_config.exit, %entry.if.end5_crit_edge
  %call6 = tail call i32 @xhci_gen_setup(ptr noundef %hcd, ptr noundef nonnull @xhci_histb_quirks) #8
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xhci_histb_quirks(ptr nocapture noundef readnone %dev, ptr nocapture noundef %xhci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %quirks, align 8
  %or = or i64 %1, 65536
  store i64 %or, ptr %quirks, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !104
  %call = tail call i32 @usb_disabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #8
  %ctrl = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %ctrl, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i153 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %bus_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i153, ptr %bus_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i153, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end16.xhci_histb_clks_get.exit_crit_edge, label %if.end.i

if.end16.xhci_histb_clks_get.exit_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %xhci_histb_clks_get.exit

if.end.i:                                         ; preds = %if.end16
  %call6.i = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.16) #8
  %utmi_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %utmi_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %utmi_clk.i, align 4
  %cmp.i55.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55.i, label %if.end.i.xhci_histb_clks_get.exit_crit_edge, label %if.end15.i

if.end.i.xhci_histb_clks_get.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xhci_histb_clks_get.exit

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.20) #8
  %pipe_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.i, ptr %pipe_clk.i, align 4
  %cmp.i56.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i, label %if.end15.i.xhci_histb_clks_get.exit_crit_edge, label %if.end25.i

if.end15.i.xhci_histb_clks_get.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xhci_histb_clks_get.exit

if.end25.i:                                       ; preds = %if.end15.i
  %call26.i = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.24) #8
  %suspend_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %suspend_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26.i, ptr %suspend_clk.i, align 4
  %cmp.i57.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57.i, label %if.end25.i.xhci_histb_clks_get.exit_crit_edge, label %if.end25.i.if.end20_crit_edge

if.end25.i.if.end20_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end25.i.xhci_histb_clks_get.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xhci_histb_clks_get.exit

xhci_histb_clks_get.exit:                         ; preds = %if.end25.i.xhci_histb_clks_get.exit_crit_edge, %if.end15.i.xhci_histb_clks_get.exit_crit_edge, %if.end.i.xhci_histb_clks_get.exit_crit_edge, %if.end16.xhci_histb_clks_get.exit_crit_edge
  %.str.26.sink.i = phi ptr [ @.str.14, %if.end16.xhci_histb_clks_get.exit_crit_edge ], [ @.str.18, %if.end.i.xhci_histb_clks_get.exit_crit_edge ], [ @.str.22, %if.end15.i.xhci_histb_clks_get.exit_crit_edge ], [ @.str.26, %if.end25.i.xhci_histb_clks_get.exit_crit_edge ]
  %suspend_clk.sink.i = phi ptr [ %bus_clk.i, %if.end16.xhci_histb_clks_get.exit_crit_edge ], [ %utmi_clk.i, %if.end.i.xhci_histb_clks_get.exit_crit_edge ], [ %pipe_clk.i, %if.end15.i.xhci_histb_clks_get.exit_crit_edge ], [ %suspend_clk.i, %if.end25.i.xhci_histb_clks_get.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.26.sink.i) #11
  %10 = ptrtoint ptr %suspend_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend_clk.sink.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %xhci_histb_clks_get.exit.if.end20_crit_edge, label %xhci_histb_clks_get.exit.cleanup_crit_edge

xhci_histb_clks_get.exit.cleanup_crit_edge:       ; preds = %xhci_histb_clks_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xhci_histb_clks_get.exit.if.end20_crit_edge:      ; preds = %xhci_histb_clks_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %xhci_histb_clks_get.exit.if.end20_crit_edge, %if.end25.i.if.end20_crit_edge
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %soft_reset = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %soft_reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %soft_reset, align 4
  %cmp.i154 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  %14 = ptrtoint ptr %soft_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soft_reset, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i155 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  %is_prepared.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %17 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %18 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end27.device_enable_async_suspend.exit_crit_edge

if.end27.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i16 %bf.load.i, 16384
  %19 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end27.device_enable_async_suspend.exit_crit_edge
  %call.i157 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i158 = icmp eq i32 %call.i157, 0
  br i1 %cmp.i158, label %if.end32, label %device_enable_async_suspend.exit.disable_pm_crit_edge

device_enable_async_suspend.exit.disable_pm_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

if.end32:                                         ; preds = %device_enable_async_suspend.exit
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i161, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i161:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i161, %if.end32.dev_name.exit_crit_edge
  %retval.0.i162 = phi ptr [ %23, %if.end.i161 ], [ %21, %if.end32.dev_name.exit_crit_edge ]
  %call34 = call ptr @usb_create_hcd(ptr noundef nonnull @xhci_histb_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i162) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %dev_name.exit.disable_pm_crit_edge, label %if.end37

dev_name.exit.disable_pm_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

if.end37:                                         ; preds = %dev_name.exit
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call34, i32 0, i32 16
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %regs, align 4
  %27 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call34, i32 0, i32 17
  %31 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  %34 = load i32, ptr %28, align 4
  %sub.i = add i32 %33, 1
  %add.i = sub i32 %sub.i, %34
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call34, i32 0, i32 18
  %35 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %rsrc_len, align 4
  %hcd40 = getelementptr inbounds %struct.xhci_hcd_histb, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %hcd40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %hcd40, align 4
  %37 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call34, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call41 = call fastcc i32 @xhci_histb_host_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end37.put_hcd_crit_edge

if.end37.put_hcd_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_hcd

if.end44:                                         ; preds = %if.end37
  %call.i163 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %call34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i164, label %if.else.i, label %if.end44.hcd_to_xhci.exit_crit_edge

if.end44.hcd_to_xhci.exit_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %call34, i32 0, i32 25
  %40 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %if.end44.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %41, %if.else.i ], [ %call34, %if.end44.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %42 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call34, align 8
  %call48 = call i32 @device_wakeup_enable(ptr noundef %43) #8
  %44 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call34, ptr %hcd_priv.i, align 8
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i167 = icmp eq ptr %46, null
  br i1 %tobool.not.i167, label %if.end.i168, label %hcd_to_xhci.exit.dev_name.exit170_crit_edge

hcd_to_xhci.exit.dev_name.exit170_crit_edge:      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit170

if.end.i168:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit170

dev_name.exit170:                                 ; preds = %if.end.i168, %hcd_to_xhci.exit.dev_name.exit170_crit_edge
  %retval.0.i169 = phi ptr [ %48, %if.end.i168 ], [ %46, %hcd_to_xhci.exit.dev_name.exit170_crit_edge ]
  %call50 = call ptr @usb_create_shared_hcd(ptr noundef nonnull @xhci_histb_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i169, ptr noundef nonnull %call34) #8
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call50, ptr %shared_hcd, align 4
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %dev_name.exit170.disable_host_crit_edge, label %if.end54

dev_name.exit170.disable_host_crit_edge:          ; preds = %dev_name.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_host

if.end54:                                         ; preds = %dev_name.exit170
  %call.i171 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br i1 %call.i171, label %if.then56, label %if.end54.if.end57_crit_edge

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %50 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %quirks, align 8
  %or = or i64 %51, 536870912
  store i64 %or, ptr %quirks, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54.if.end57_crit_edge
  %call.i172 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br i1 %call.i172, label %if.then59, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %quirks60 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %52 = ptrtoint ptr %quirks60 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %quirks60, align 8
  %or61 = or i64 %53, 2048
  store i64 %or61, ptr %quirks60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57.if.end62_crit_edge
  %imod_interval = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %54 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 40000, ptr %imod_interval, align 4
  %call.i173 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %imod_interval, i32 noundef 1) #8
  %call65 = call i32 @usb_add_hcd(ptr noundef nonnull %call34, i32 noundef %call7, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.put_usb3_hcd_crit_edge

if.end62.put_usb3_hcd_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_usb3_hcd

if.end68:                                         ; preds = %if.end62
  %hcc_params = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %55 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hcc_params, align 8
  %shr = lshr i32 %56, 12
  %and = and i32 %shr, 15
  %shl = shl nuw nsw i32 2, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl)
  %cmp69 = icmp ugt i32 %shl, 3
  br i1 %cmp69, label %if.then70, label %if.end68.if.end72_crit_edge

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shared_hcd, align 4
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %can_do_streams to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %can_do_streams, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %can_do_streams, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68.if.end72_crit_edge
  %60 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shared_hcd, align 4
  %call74 = call i32 @usb_add_hcd(ptr noundef %61, i32 noundef %call7, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %dealloc_usb2_hcd

if.end77:                                         ; preds = %if.end72
  %62 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i175 = load i16, ptr %is_prepared.i, align 4
  %63 = and i16 %bf.load.i175, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %bf.cast.not.i176 = icmp eq i16 %63, 0
  br i1 %bf.cast.not.i176, label %if.then.i178, label %if.end77.device_enable_async_suspend.exit180_crit_edge

if.end77.device_enable_async_suspend.exit180_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_enable_async_suspend.exit180

if.then.i178:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i177 = or i16 %bf.load.i175, 16384
  %64 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %bf.set.i177, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit180

device_enable_async_suspend.exit180:              ; preds = %if.then.i178, %if.end77.device_enable_async_suspend.exit180_crit_edge
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  call void @pm_runtime_forbid(ptr noundef %dev1) #8
  br label %cleanup

dealloc_usb2_hcd:                                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  call void @usb_remove_hcd(ptr noundef nonnull %call34) #8
  br label %put_usb3_hcd

put_usb3_hcd:                                     ; preds = %dealloc_usb2_hcd, %if.end62.put_usb3_hcd_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end62.put_usb3_hcd_crit_edge ], [ %call74, %dealloc_usb2_hcd ]
  %65 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shared_hcd, align 4
  call void @usb_put_hcd(ptr noundef %66) #8
  br label %disable_host

disable_host:                                     ; preds = %put_usb3_hcd, %dev_name.exit170.disable_host_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_usb3_hcd ], [ -12, %dev_name.exit170.disable_host_crit_edge ]
  call fastcc void @xhci_histb_host_disable(ptr noundef nonnull %call.i)
  br label %put_hcd

put_hcd:                                          ; preds = %disable_host, %if.end37.put_hcd_crit_edge
  %ret.2 = phi i32 [ %call41, %if.end37.put_hcd_crit_edge ], [ %ret.1, %disable_host ]
  call void @usb_put_hcd(ptr noundef nonnull %call34) #8
  br label %disable_pm

disable_pm:                                       ; preds = %put_hcd, %dev_name.exit.disable_pm_crit_edge, %device_enable_async_suspend.exit.disable_pm_crit_edge
  %ret.3 = phi i32 [ %ret.2, %put_hcd ], [ -12, %dev_name.exit.disable_pm_crit_edge ], [ %call.i157, %device_enable_async_suspend.exit.disable_pm_crit_edge ]
  %call.i181 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_pm, %device_enable_async_suspend.exit180, %do.end, %xhci_histb_clks_get.exit.cleanup_crit_edge, %if.then13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then13 ], [ %16, %do.end ], [ %ret.3, %disable_pm ], [ 0, %device_enable_async_suspend.exit180 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %12, %xhci_histb_clks_get.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %shared_hcd3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared_hcd3, align 4
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %8 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xhc_state, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %xhc_state, align 4
  tail call void @usb_remove_hcd(ptr noundef %7) #8
  %10 = ptrtoint ptr %shared_hcd3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %shared_hcd3, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call6 = tail call i32 @device_wakeup_disable(ptr noundef %dev5) #8
  tail call void @usb_remove_hcd(ptr noundef %3) #8
  tail call void @usb_put_hcd(ptr noundef %7) #8
  %soft_reset.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soft_reset.i, align 4
  %call.i19 = tail call i32 @reset_control_assert(ptr noundef %12) #8
  %suspend_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %suspend_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %suspend_clk.i, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %pipe_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe_clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %utmi_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %utmi_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %utmi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %bus_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  tail call void @usb_put_hcd(ptr noundef %3) #8
  %call.i20 = tail call i32 @__pm_runtime_idle(ptr noundef %dev5, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev5, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_histb_host_enable(ptr nocapture noundef readonly %histb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 3
  %0 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %2 = ptrtoint ptr %histb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %histb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %utmi_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 4
  %4 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utmi_clk, align 4
  %call.i45 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.end.i49, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

if.end.i49:                                       ; preds = %if.end
  %call1.i47 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool2.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool2.not.i48, label %if.end8, label %if.then3.i50

if.then3.i50:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i50, %if.end.do.end6_crit_edge
  %retval.0.i51.ph = phi i32 [ %call1.i47, %if.then3.i50 ], [ %call.i45, %if.end.do.end6_crit_edge ]
  %6 = ptrtoint ptr %histb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %histb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #11
  br label %err_utmi_clk

if.end8:                                          ; preds = %if.end.i49
  %pipe_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 5
  %8 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_clk, align 4
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.i57:                                       ; preds = %if.end8
  %call1.i55 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool2.not.i56, label %if.end16, label %if.then3.i58

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then3.i58, %if.end8.do.end14_crit_edge
  %retval.0.i59.ph = phi i32 [ %call1.i55, %if.then3.i58 ], [ %call.i53, %if.end8.do.end14_crit_edge ]
  %10 = ptrtoint ptr %histb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %histb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.34) #11
  br label %err_pipe_clk

if.end16:                                         ; preds = %if.end.i57
  %suspend_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 6
  %12 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend_clk, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.end16.do.end22_crit_edge

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.end.i65:                                       ; preds = %if.end16
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end24, label %if.then3.i66

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i66, %if.end16.do.end22_crit_edge
  %retval.0.i67.ph = phi i32 [ %call1.i63, %if.then3.i66 ], [ %call.i61, %if.end16.do.end22_crit_edge ]
  %14 = ptrtoint ptr %histb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %histb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37) #11
  %16 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %err_pipe_clk

if.end24:                                         ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %soft_reset = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 7
  %18 = ptrtoint ptr %soft_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soft_reset, align 4
  %call25 = tail call i32 @reset_control_deassert(ptr noundef %19) #8
  br label %cleanup

err_pipe_clk:                                     ; preds = %do.end22, %do.end14
  %ret.0 = phi i32 [ %retval.0.i59.ph, %do.end14 ], [ %retval.0.i67.ph, %do.end22 ]
  %20 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %utmi_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  br label %err_utmi_clk

err_utmi_clk:                                     ; preds = %err_pipe_clk, %do.end6
  %ret.1 = phi i32 [ %retval.0.i51.ph, %do.end6 ], [ %ret.0, %err_pipe_clk ]
  %22 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %err_utmi_clk, %if.end24, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %err_utmi_clk ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !106
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !107
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_histb_host_disable(ptr nocapture noundef readonly %histb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_reset = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 7
  %0 = ptrtoint ptr %soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  %suspend_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 6
  %2 = ptrtoint ptr %suspend_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %pipe_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 5
  %4 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %utmi_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 4
  %6 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %utmi_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %bus_clk = getelementptr inbounds %struct.xhci_hcd_histb, ptr %histb, i32 0, i32 3
  %8 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i9 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i9, label %hcd_to_xhci.exit.device_may_wakeup.exit_crit_edge, label %land.rhs.i

hcd_to_xhci.exit.device_may_wakeup.exit_crit_edge: ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %8, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %hcd_to_xhci.exit.device_may_wakeup.exit_crit_edge
  %9 = phi i1 [ false, %hcd_to_xhci.exit.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %call4 = tail call i32 @xhci_suspend(ptr noundef %hcd_priv.i, i1 noundef zeroext %9) #8
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i11 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i11)
  %tobool.not.i12 = icmp sgt i16 %bf.load.i11, -1
  br i1 %tobool.not.i12, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit16

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

device_may_wakeup.exit16:                         ; preds = %device_may_wakeup.exit
  %wakeup.i13 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i13, align 8
  %tobool2.i14.not = icmp eq ptr %12, null
  br i1 %tobool2.i14.not, label %device_may_wakeup.exit16.if.then_crit_edge, label %device_may_wakeup.exit16.if.end_crit_edge

device_may_wakeup.exit16.if.end_crit_edge:        ; preds = %device_may_wakeup.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit16.if.then_crit_edge:       ; preds = %device_may_wakeup.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit16.if.then_crit_edge, %device_may_wakeup.exit.if.then_crit_edge
  %soft_reset.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soft_reset.i, align 4
  %call.i17 = tail call i32 @reset_control_assert(ptr noundef %14) #8
  %suspend_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %suspend_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %suspend_clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %pipe_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe_clk.i, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %utmi_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %utmi_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %utmi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  %bus_clk.i = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit16.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_histb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_histb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i8 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i8, label %hcd_to_xhci.exit.if.then_crit_edge, label %device_may_wakeup.exit

hcd_to_xhci.exit.if.then_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

device_may_wakeup.exit:                           ; preds = %hcd_to_xhci.exit
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %hcd_to_xhci.exit.if.then_crit_edge
  %call4 = tail call fastcc i32 @xhci_histb_host_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call5 = tail call i32 @xhci_resume(ptr noundef %hcd_priv.i, i1 noundef zeroext false) #8
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__UNIQUE_ID_alias239, !1, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-histb.c", i32 395, i32 1}
!2 = !{ptr @__initcall__kmod_xhci_histb__240_402_xhci_histb_init6, !3, !"__initcall__kmod_xhci_histb__240_402_xhci_histb_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-histb.c", i32 402, i32 1}
!4 = !{ptr @__exitcall_xhci_histb_exit, !5, !"__exitcall_xhci_histb_exit", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-histb.c", i32 408, i32 1}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-histb.c", i32 410, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-histb.c", i32 411, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @xhci_histb_hc_driver, !12, !"xhci_histb_hc_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/xhci-histb.c", i32 196, i32 39}
!13 = !{ptr @xhci_histb_overrides, !14, !"xhci_histb_overrides", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-histb.c", i32 192, i32 43}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-histb.c", i32 54, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/xhci-histb.c", i32 54, i32 49}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/xhci-histb.c", i32 63, i32 49}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/xhci-histb.c", i32 390, i32 11}
!23 = !{ptr @histb_xhci_driver, !24, !"histb_xhci_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/xhci-histb.c", i32 386, i32 31}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/xhci-histb.c", i32 230, i32 50}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/xhci-histb.c", i32 232, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xhci_histb_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @xhci_histb_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/host/xhci-histb.c", i32 274, i32 37}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/xhci-histb.c", i32 277, i32 37}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/xhci-histb.c", i32 282, i32 32}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-histb.c", i32 88, i32 37}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/xhci-histb.c", i32 90, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xhci_histb_clks_get._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @xhci_histb_clks_get._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/xhci-histb.c", i32 94, i32 38}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/xhci-histb.c", i32 96, i32 3}
!52 = !{ptr @xhci_histb_clks_get._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @xhci_histb_clks_get._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/xhci-histb.c", i32 100, i32 38}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/xhci-histb.c", i32 102, i32 3}
!58 = !{ptr @xhci_histb_clks_get._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @xhci_histb_clks_get._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci-histb.c", i32 106, i32 41}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/xhci-histb.c", i32 108, i32 3}
!64 = !{ptr @xhci_histb_clks_get._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @xhci_histb_clks_get._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/xhci-histb.c", i32 121, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xhci_histb_host_enable._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @xhci_histb_host_enable._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/xhci-histb.c", i32 127, i32 3}
!73 = !{ptr @xhci_histb_host_enable._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @xhci_histb_host_enable._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/xhci-histb.c", i32 133, i32 3}
!77 = !{ptr @xhci_histb_host_enable._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @xhci_histb_host_enable._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/host/xhci-histb.c", i32 139, i32 3}
!81 = !{ptr @xhci_histb_host_enable._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @xhci_histb_host_enable._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @histb_xhci_of_match, !84, !"histb_xhci_of_match", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/xhci-histb.c", i32 379, i32 34}
!85 = !{ptr @xhci_histb_pm_ops, !86, !"xhci_histb_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/usb/host/xhci-histb.c", i32 373, i32 32}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 6256558}
!97 = !{i64 2154604355}
!98 = !{i64 2154604830}
!99 = !{i64 6256140}
!100 = !{i64 2154605522}
!101 = !{i64 2154606587}
!102 = !{i64 2154607005}
!103 = !{i64 2154607435}
!104 = !{!"auto-init"}
!105 = !{i64 2148247344}
!106 = !{i64 732167, i64 732192, i64 732214, i64 732230, i64 732242, i64 732262, i64 732286, i64 732302, i64 732314}
!107 = !{i64 2148247532}
