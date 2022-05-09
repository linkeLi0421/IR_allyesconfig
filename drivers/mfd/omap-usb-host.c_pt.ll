; ModuleID = '/llk/IR_all_yes/drivers/mfd/omap-usb-host.c_pt.bc'
source_filename = "../drivers/mfd/omap-usb-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_hcd_omap = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }

@__UNIQUE_ID_author237 = internal constant [63 x i8] c"omap_usb_host.author=Keshava Munegowda <keshava_mgowda@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [51 x i8] c"omap_usb_host.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [40 x i8] c"omap_usb_host.alias=platform:usbhs_omap\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [45 x i8] c"omap_usb_host.file=drivers/mfd/omap-usb-host\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"omap_usb_host.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [77 x i8] c"omap_usb_host.description=usb host common core driver for omap EHCI and OHCI\00", section ".modinfo", align 1
@__initcall__kmod_omap_usb_host__243_871_omap_usbhs_drvinit5s = internal global ptr @omap_usbhs_drvinit, section ".initcall5s.init", align 4
@__exitcall_omap_usbhs_drvexit = internal global ptr @omap_usbhs_drvexit, section ".exitcall.exit", align 4
@usbhs_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usbhs_omap_probe, ptr @usbhs_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @usbhs_driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbhs_omap_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhsomap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@usbhs_driver_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbhs_omap\00", [21 x i8] zeroinitializer }, align 32
@usbhs_omap_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,usbhs-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@usbhsomap_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhs_runtime_suspend, ptr @usbhs_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhs_omap_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/omap-usb-host.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr = internal global ptr @usbhs_omap_probe._entry, section ".printk_index", align 4
@usbhs_omap_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 562, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Too many num_ports <%d> in platform_data. Max %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.8 = internal global ptr @usbhs_omap_probe._entry.5, section ".printk_index", align 4
@usbhs_omap_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.11 = internal global ptr @usbhs_omap_probe._entry.9, section ".printk_index", align 4
@usbhs_omap_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"USB HOST Rev:0x%x not recognized, assuming %d ports\0A\00", [43 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.15 = internal global ptr @usbhs_omap_probe._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhost_120m_fck\00", [47 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbhost_120m_fck failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.19 = internal global ptr @usbhs_omap_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"utmi_p1_gfclk\00", [18 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 671, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"utmi_p1_gfclk failed error:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.23 = internal global ptr @usbhs_omap_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"utmi_p2_gfclk\00", [18 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 678, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"utmi_p2_gfclk failed error:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.27 = internal global ptr @usbhs_omap_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"refclk_60m_ext_p1\00", [46 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"refclk_60m_ext_p1 failed error:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.31 = internal global ptr @usbhs_omap_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"refclk_60m_ext_p2\00", [46 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 692, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"refclk_60m_ext_p2 failed error:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.35 = internal global ptr @usbhs_omap_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"refclk_60m_int\00", [17 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"refclk_60m_int failed error:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.39 = internal global ptr @usbhs_omap_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_host_hs_utmi_p%d_clk\00", [39 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get clock : %s : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.43 = internal global ptr @usbhs_omap_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb_host_hs_hsic480m_p%d_clk\00", [35 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.46 = internal global ptr @usbhs_omap_probe._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_host_hs_hsic60m_p%d_clk\00", [36 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.49 = internal global ptr @usbhs_omap_probe._entry.48, section ".printk_index", align 4
@usbhs_omap_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xclk60mhsp1_ck set parent failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.52 = internal global ptr @usbhs_omap_probe._entry.50, section ".printk_index", align 4
@usbhs_omap_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 756, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"P0 init_60m_fclk set parent failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.55 = internal global ptr @usbhs_omap_probe._entry.53, section ".printk_index", align 4
@usbhs_omap_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.1, ptr @.str.2, i32 766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xclk60mhsp2_ck set parent failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.58 = internal global ptr @usbhs_omap_probe._entry.56, section ".printk_index", align 4
@usbhs_omap_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.1, ptr @.str.2, i32 774, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"P1 init_60m_fclk set parent failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.61 = internal global ptr @usbhs_omap_probe._entry.59, section ".printk_index", align 4
@usbhs_child_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ehci-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ohci-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 787, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create DT children: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.64 = internal global ptr @usbhs_omap_probe._entry.62, section ".printk_index", align 4
@usbhs_omap_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"omap_usbhs_alloc_children failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usbhs_omap_probe._entry_ptr.67 = internal global ptr @usbhs_omap_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-ports\00", [22 x i8] zeroinitializer }, align 32
@usbhs_omap_get_dt_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 484, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Too many num_ports <%d> in device tree. Max %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbhs_omap_get_dt_pdata\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbhs_omap_get_dt_pdata._entry_ptr = internal global ptr @usbhs_omap_get_dt_pdata._entry, section ".printk_index", align 4
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port%d-mode\00", [20 x i8] zeroinitializer }, align 32
@port_modes = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [40 x i8] zeroinitializer }, align 32
@usbhs_omap_get_dt_pdata._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.2, i32 504, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid port%d-mode \22%s\22 in device tree\0A\00", [55 x i8] zeroinitializer }, align 32
@usbhs_omap_get_dt_pdata._entry_ptr.75 = internal global ptr @usbhs_omap_get_dt_pdata._entry.73, section ".printk_index", align 4
@usbhs_omap_get_dt_pdata.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str.2, ptr @.str.76, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port%d-mode: %s -> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"single-ulpi-bypass\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci-tll\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci-hsic\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci-phy-6pin-datse0\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci-phy-6pin-dpdm\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci-phy-3pin-datse0\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci-phy-4pin-dpdm\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci-tll-6pin-datse0\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci-tll-6pin-dpdm\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci-tll-3pin-datse0\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci-tll-4pin-dpdm\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ohci-tll-2pin-datse0\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci-tll-2pin-dpdm\00", [45 x i8] zeroinitializer }, align 32
@omap_usbhs_init.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_usbhs_init\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"starting TI HSUSB Controller\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_usbhs_init.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.92, ptr @.str.2, ptr @.str.94, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UHH setup done, uhh_hostconfig=%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ehci\00", [27 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EHCI get resource IORESOURCE_MEM failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_usbhs_alloc_children\00", [38 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr = internal global ptr @omap_usbhs_alloc_children._entry, section ".printk_index", align 4
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci-irq\00", [23 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" EHCI get resource IORESOURCE_IRQ failed\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr.101 = internal global ptr @omap_usbhs_alloc_children._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ehci-omap\00", [22 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.97, ptr @.str.2, i32 220, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap_usbhs_alloc_child failed\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr.105 = internal global ptr @omap_usbhs_alloc_children._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ohci\00", [27 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.97, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OHCI get resource IORESOURCE_MEM failed\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr.109 = internal global ptr @omap_usbhs_alloc_children._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ohci-irq\00", [23 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.97, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OHCI get resource IORESOURCE_IRQ failed\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr.113 = internal global ptr @omap_usbhs_alloc_children._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ohci-omap3\00", [21 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.97, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_children._entry_ptr.116 = internal global ptr @omap_usbhs_alloc_children._entry.115, section ".printk_index", align 4
@omap_usbhs_alloc_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"platform_device_alloc %s failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_usbhs_alloc_child\00", [41 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_child._entry_ptr = internal global ptr @omap_usbhs_alloc_child._entry, section ".printk_index", align 4
@omap_usbhs_alloc_child._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"platform_device_add_resources failed\0A\00", [58 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_child._entry_ptr.121 = internal global ptr @omap_usbhs_alloc_child._entry.119, section ".printk_index", align 4
@omap_usbhs_alloc_child._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"platform_device_add_data failed\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_child._entry_ptr.124 = internal global ptr @omap_usbhs_alloc_child._entry.122, section ".printk_index", align 4
@usbhs_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_child._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"platform_device_add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_usbhs_alloc_child._entry_ptr.127 = internal global ptr @omap_usbhs_alloc_child._entry.125, section ".printk_index", align 4
@usbhs_omap_remove_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 810, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unregistering\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbhs_omap_remove_child\00", [40 x i8] zeroinitializer }, align 32
@usbhs_omap_remove_child._entry_ptr = internal global ptr @usbhs_omap_remove_child._entry, section ".printk_index", align 4
@usbhs_runtime_suspend.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbhs_runtime_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbhs_runtime_suspend\0A\00", [41 x i8] zeroinitializer }, align 32
@usbhs_runtime_resume.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.132, ptr @.str.2, ptr @.str.133, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhs_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbhs_runtime_resume\0A\00", [42 x i8] zeroinitializer }, align 32
@usbhs_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't enable port %d hsic60m clk:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@usbhs_runtime_resume._entry_ptr = internal global ptr @usbhs_runtime_resume._entry, section ".printk_index", align 4
@usbhs_runtime_resume._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.132, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't enable port %d hsic480m clk:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@usbhs_runtime_resume._entry_ptr.137 = internal global ptr @usbhs_runtime_resume._entry.135, section ".printk_index", align 4
@usbhs_runtime_resume._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.132, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't enable port %d clk : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@usbhs_runtime_resume._entry_ptr.140 = internal global ptr @usbhs_runtime_resume._entry.138, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 1349517568]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 1349517568]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"usbhs_omap_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 843, i32 31 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"usbhs_driver_name\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 106, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"usbhs_omap_dt_ids\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 835, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"usbhsomap_dev_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 830, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 556, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 561, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 568, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 610, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 624, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 656, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 659, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 668, i32 42 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 671, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 675, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 678, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 682, i32 43 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 685, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 689, i32 43 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 692, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 696, i32 42 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 699, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 708, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 717, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 723, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 727, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 733, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 737, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 747, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 755, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 765, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 773, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [24 x i8] c"usbhs_child_match_table\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 519, i32 34 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 787, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 794, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 478, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 483, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 495, i32 32 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"port_modes\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 128, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 503, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 508, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 514, i32 7 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 129, i32 34 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 130, i32 30 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 131, i32 30 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 132, i32 31 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 133, i32 42 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 134, i32 40 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 135, i32 42 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 136, i32 40 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 137, i32 42 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 138, i32 40 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 139, i32 42 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 140, i32 40 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 141, i32 42 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 142, i32 40 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 440, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 467, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 200, i32 59 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 202, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 208, i32 59 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 210, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 216, i32 32 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 220, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 225, i32 59 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 227, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 233, i32 59 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 235, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 241, i32 32 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 244, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 155, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 161, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 167, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [14 x i8] c"usbhs_dmamask\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 107, i32 12 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 177, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 810, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 337, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 284, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 297, i32 6 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 306, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.521 = private constant [31 x i8] c"../drivers/mfd/omap-usb-host.c\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 317, i32 6 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_omap_usbhs_drvexit, ptr @__initcall__kmod_omap_usb_host__243_871_omap_usbhs_drvinit5s, ptr @omap_usbhs_alloc_child._entry, ptr @omap_usbhs_alloc_child._entry.119, ptr @omap_usbhs_alloc_child._entry.122, ptr @omap_usbhs_alloc_child._entry.125, ptr @omap_usbhs_alloc_child._entry_ptr, ptr @omap_usbhs_alloc_child._entry_ptr.121, ptr @omap_usbhs_alloc_child._entry_ptr.124, ptr @omap_usbhs_alloc_child._entry_ptr.127, ptr @omap_usbhs_alloc_children._entry, ptr @omap_usbhs_alloc_children._entry.103, ptr @omap_usbhs_alloc_children._entry.107, ptr @omap_usbhs_alloc_children._entry.111, ptr @omap_usbhs_alloc_children._entry.115, ptr @omap_usbhs_alloc_children._entry.99, ptr @omap_usbhs_alloc_children._entry_ptr, ptr @omap_usbhs_alloc_children._entry_ptr.101, ptr @omap_usbhs_alloc_children._entry_ptr.105, ptr @omap_usbhs_alloc_children._entry_ptr.109, ptr @omap_usbhs_alloc_children._entry_ptr.113, ptr @omap_usbhs_alloc_children._entry_ptr.116, ptr @usbhs_omap_get_dt_pdata._entry, ptr @usbhs_omap_get_dt_pdata._entry.73, ptr @usbhs_omap_get_dt_pdata._entry_ptr, ptr @usbhs_omap_get_dt_pdata._entry_ptr.75, ptr @usbhs_omap_probe._entry, ptr @usbhs_omap_probe._entry.14, ptr @usbhs_omap_probe._entry.17, ptr @usbhs_omap_probe._entry.21, ptr @usbhs_omap_probe._entry.25, ptr @usbhs_omap_probe._entry.29, ptr @usbhs_omap_probe._entry.33, ptr @usbhs_omap_probe._entry.37, ptr @usbhs_omap_probe._entry.41, ptr @usbhs_omap_probe._entry.45, ptr @usbhs_omap_probe._entry.48, ptr @usbhs_omap_probe._entry.5, ptr @usbhs_omap_probe._entry.50, ptr @usbhs_omap_probe._entry.53, ptr @usbhs_omap_probe._entry.56, ptr @usbhs_omap_probe._entry.59, ptr @usbhs_omap_probe._entry.62, ptr @usbhs_omap_probe._entry.65, ptr @usbhs_omap_probe._entry.9, ptr @usbhs_omap_probe._entry_ptr, ptr @usbhs_omap_probe._entry_ptr.11, ptr @usbhs_omap_probe._entry_ptr.15, ptr @usbhs_omap_probe._entry_ptr.19, ptr @usbhs_omap_probe._entry_ptr.23, ptr @usbhs_omap_probe._entry_ptr.27, ptr @usbhs_omap_probe._entry_ptr.31, ptr @usbhs_omap_probe._entry_ptr.35, ptr @usbhs_omap_probe._entry_ptr.39, ptr @usbhs_omap_probe._entry_ptr.43, ptr @usbhs_omap_probe._entry_ptr.46, ptr @usbhs_omap_probe._entry_ptr.49, ptr @usbhs_omap_probe._entry_ptr.52, ptr @usbhs_omap_probe._entry_ptr.55, ptr @usbhs_omap_probe._entry_ptr.58, ptr @usbhs_omap_probe._entry_ptr.61, ptr @usbhs_omap_probe._entry_ptr.64, ptr @usbhs_omap_probe._entry_ptr.67, ptr @usbhs_omap_probe._entry_ptr.8, ptr @usbhs_omap_remove_child._entry, ptr @usbhs_omap_remove_child._entry_ptr, ptr @usbhs_runtime_resume._entry, ptr @usbhs_runtime_resume._entry.135, ptr @usbhs_runtime_resume._entry.138, ptr @usbhs_runtime_resume._entry_ptr, ptr @usbhs_runtime_resume._entry_ptr.137, ptr @usbhs_runtime_resume._entry_ptr.140, ptr @usbhs_omap_driver, ptr @usbhs_driver_name, ptr @usbhs_omap_dt_ids, ptr @usbhsomap_dev_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @usbhs_child_match_table, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @port_modes, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @usbhs_dmamask, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsomap_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_child_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_get_dt_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_get_dt_pdata._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_children._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_child._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_child._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usbhs_alloc_child._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_omap_remove_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_runtime_resume._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_runtime_resume._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usbhs_drvinit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usbhs_omap_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_usbhs_drvexit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @usbhs_omap_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_omap_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %resources.i = alloca [2 x %struct.resource], align 4
  %clkname = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup340_crit_edge, label %if.end

if.then.cleanup340_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup340

if.end:                                           ; preds = %if.then
  %call5 = tail call fastcc i32 @usbhs_omap_get_dt_pdata(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9.thread, label %if.end.cleanup340_crit_edge

if.end.cleanup340_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup340

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %platform_data, align 8
  br label %if.end12

if.end9:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %do.end, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  br label %cleanup340

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end9.thread
  %pdata.0557 = phi ptr [ %call.i, %if.end9.thread ], [ %4, %if.end9.if.end12_crit_edge ]
  %5 = ptrtoint ptr %pdata.0557 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdata.0557, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp sgt i32 %6, 3
  br i1 %cmp, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %6, i32 noundef 3) #9
  br label %cleanup340

if.end18:                                         ; preds = %if.end12
  %call.i539 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call.i539, null
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup340

if.end25:                                         ; preds = %if.end18
  %call26 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call27 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call26) #6
  %uhh_base = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 10
  %7 = ptrtoint ptr %uhh_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %uhh_base, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call27 to i32
  br label %cleanup340

if.end33:                                         ; preds = %if.end25
  %pdata34 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 11
  %9 = ptrtoint ptr %pdata34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdata.0557, ptr %pdata34, align 4
  %call35 = tail call i32 @omap_tll_init(ptr noundef nonnull %pdata.0557) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i539, ptr %driver_data.i.i, align 4
  %call.i540 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %11 = ptrtoint ptr %uhh_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uhh_base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !270
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %usbhs_rev = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 12
  %15 = ptrtoint ptr %usbhs_rev to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %usbhs_rev, align 4
  %call.i541 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  %16 = ptrtoint ptr %pdata.0557 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdata.0557, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i539 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call.i539, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end33
  %19 = ptrtoint ptr %usbhs_rev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usbhs_rev, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default [
    i32 16, label %sw.bb
    i32 1349517568, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i539 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %call.i539, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i539 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %call.i539, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call.i539 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %call.i539, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_omap_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_omap_probe, %if.then55)) #6
          to label %sw.epilog [label %if.then55], !srcloc !271

if.then55:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %usbhs_rev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usbhs_rev, align 4
  %27 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i539, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_omap_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %26, i32 noundef %28) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then55, %sw.default, %sw.bb47, %sw.bb
  %29 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i539, align 4
  %31 = ptrtoint ptr %pdata.0557 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %pdata.0557, align 4
  br label %if.end63

if.end63:                                         ; preds = %sw.epilog, %if.then42
  %32 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i539, align 4
  %mul = shl i32 %33, 2
  %call.i542 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #6
  %utmi_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 1
  %34 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i542, ptr %utmi_clk, align 4
  %call.i543 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #6
  %hsic480m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 3
  %35 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i543, ptr %hsic480m_clk, align 4
  %call.i544 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #6
  %hsic60m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 2
  %36 = ptrtoint ptr %hsic60m_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i544, ptr %hsic60m_clk, align 4
  %37 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %utmi_clk, align 4
  %tobool69.not = icmp eq ptr %38, null
  br i1 %tobool69.not, label %if.end63.do.end78_crit_edge, label %lor.lhs.false

if.end63.do.end78_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

lor.lhs.false:                                    ; preds = %if.end63
  %39 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsic480m_clk, align 4
  %tobool71.not = icmp eq ptr %40, null
  %tobool74.not = icmp eq ptr %call.i544, null
  %or.cond = select i1 %tobool71.not, i1 true, i1 %tobool74.not
  br i1 %or.cond, label %lor.lhs.false.do.end78_crit_edge, label %if.end79

lor.lhs.false.do.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

do.end78:                                         ; preds = %lor.lhs.false.do.end78_crit_edge, %if.end63.do.end78_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %err_mem

if.end79:                                         ; preds = %lor.lhs.false
  %ehci_logic_fck = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 9
  %41 = ptrtoint ptr %ehci_logic_fck to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -19 to ptr), ptr %ehci_logic_fck, align 4
  %init_60m_fclk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 8
  %42 = ptrtoint ptr %init_60m_fclk to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -19 to ptr), ptr %init_60m_fclk, align 4
  %utmi_p1_gfclk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 6
  %43 = ptrtoint ptr %utmi_p1_gfclk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -19 to ptr), ptr %utmi_p1_gfclk, align 4
  %utmi_p2_gfclk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 7
  %44 = ptrtoint ptr %utmi_p2_gfclk to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -19 to ptr), ptr %utmi_p2_gfclk, align 4
  %xclk60mhsp1_ck = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 4
  %45 = ptrtoint ptr %xclk60mhsp1_ck to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -19 to ptr), ptr %xclk60mhsp1_ck, align 4
  %xclk60mhsp2_ck = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %call.i539, i32 0, i32 5
  %46 = ptrtoint ptr %xclk60mhsp2_ck to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -19 to ptr), ptr %xclk60mhsp2_ck, align 4
  %47 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp87571 = icmp sgt i32 %48, 0
  br i1 %cmp87571, label %if.end79.for.body_crit_edge, label %if.end79.for.end_crit_edge

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end79.for.body_crit_edge
  %i.0572 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end79.for.body_crit_edge ]
  %49 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %utmi_clk, align 4
  %arrayidx = getelementptr ptr, ptr %50, i32 %i.0572
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -19 to ptr), ptr %arrayidx, align 4
  %52 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hsic480m_clk, align 4
  %arrayidx92 = getelementptr ptr, ptr %53, i32 %i.0572
  %54 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -19 to ptr), ptr %arrayidx92, align 4
  %55 = ptrtoint ptr %hsic60m_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hsic60m_clk, align 4
  %arrayidx95 = getelementptr ptr, ptr %56, i32 %i.0572
  %57 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -19 to ptr), ptr %arrayidx95, align 4
  %inc = add nuw nsw i32 %i.0572, 1
  %58 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call.i539, align 4
  %cmp87 = icmp slt i32 %inc, %59
  br i1 %cmp87, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end79.for.end_crit_edge
  %.lcssa570 = phi i32 [ %48, %if.end79.for.end_crit_edge ], [ %59, %for.body.for.end_crit_edge ]
  %60 = ptrtoint ptr %usbhs_rev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usbhs_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %61)
  %cmp97 = icmp eq i32 %61, 16
  br i1 %cmp97, label %for.cond99.preheader, label %if.end135

for.cond99.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa570)
  %cmp101575 = icmp sgt i32 %.lcssa570, 0
  br i1 %cmp101575, label %for.cond99.preheader.for.body102_crit_edge, label %for.cond99.preheader.initialize_crit_edge

for.cond99.preheader.initialize_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

for.cond99.preheader.for.body102_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.cond99.preheader.for.body102_crit_edge
  %need_logic_fck.0.off0577 = phi i1 [ %spec.select, %for.body102.for.body102_crit_edge ], [ false, %for.cond99.preheader.for.body102_crit_edge ]
  %i.1576 = phi i32 [ %inc119, %for.body102.for.body102_crit_edge ], [ 0, %for.cond99.preheader.for.body102_crit_edge ]
  %arrayidx103 = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata.0557, i32 0, i32 1, i32 %i.1576
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx103, align 4
  %.off = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %spec.select = select i1 %switch, i1 true, i1 %need_logic_fck.0.off0577
  %inc119 = add nuw nsw i32 %i.1576, 1
  %exitcond.not = icmp eq i32 %inc119, %.lcssa570
  br i1 %exitcond.not, label %for.end120, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body102

for.end120:                                       ; preds = %for.body102
  br i1 %spec.select, label %if.then122, label %for.end120.initialize_crit_edge

for.end120.initialize_crit_edge:                  ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

if.then122:                                       ; preds = %for.end120
  %call123 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #6
  %64 = ptrtoint ptr %ehci_logic_fck to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call123, ptr %ehci_logic_fck, align 4
  %cmp.i545 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i545, label %if.then127, label %if.then122.initialize_crit_edge

if.then122.initialize_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

if.then127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %call123 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %65) #9
  br label %err_mem

if.end135:                                        ; preds = %for.end
  %call136 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.20) #6
  %66 = ptrtoint ptr %utmi_p1_gfclk to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call136, ptr %utmi_p1_gfclk, align 4
  %cmp.i546 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i546, label %if.then140, label %if.end146

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %call136 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %67) #9
  br label %err_mem

if.end146:                                        ; preds = %if.end135
  %call147 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.24) #6
  %68 = ptrtoint ptr %utmi_p2_gfclk to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call147, ptr %utmi_p2_gfclk, align 4
  %cmp.i547 = icmp ugt ptr %call147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i547, label %if.then151, label %if.end157

if.then151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %call147 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %69) #9
  br label %err_mem

if.end157:                                        ; preds = %if.end146
  %call158 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #6
  %70 = ptrtoint ptr %xclk60mhsp1_ck to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call158, ptr %xclk60mhsp1_ck, align 4
  %cmp.i548 = icmp ugt ptr %call158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i548, label %if.then162, label %if.end168

if.then162:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call158 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %71) #9
  br label %err_mem

if.end168:                                        ; preds = %if.end157
  %call169 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.32) #6
  %72 = ptrtoint ptr %xclk60mhsp2_ck to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call169, ptr %xclk60mhsp2_ck, align 4
  %cmp.i549 = icmp ugt ptr %call169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i549, label %if.then173, label %if.end179

if.then173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %call169 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %73) #9
  br label %err_mem

if.end179:                                        ; preds = %if.end168
  %call180 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.36) #6
  %74 = ptrtoint ptr %init_60m_fclk to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call180, ptr %init_60m_fclk, align 4
  %cmp.i550 = icmp ugt ptr %call180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i550, label %if.then184, label %for.cond191.preheader

for.cond191.preheader:                            ; preds = %if.end179
  %75 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call.i539, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp193573 = icmp sgt i32 %76, 0
  br i1 %cmp193573, label %for.cond191.preheader.for.body195_crit_edge, label %for.cond191.preheader.for.end253_crit_edge

for.cond191.preheader.for.end253_crit_edge:       ; preds = %for.cond191.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end253

for.cond191.preheader.for.body195_crit_edge:      ; preds = %for.cond191.preheader
  br label %for.body195

if.then184:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call180 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %77) #9
  br label %err_mem

for.body195:                                      ; preds = %cleanup.for.body195_crit_edge, %for.cond191.preheader.for.body195_crit_edge
  %i.2574 = phi i32 [ %add, %cleanup.for.body195_crit_edge ], [ 0, %for.cond191.preheader.for.body195_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %clkname) #6
  %add = add nuw nsw i32 %i.2574, 1
  %78 = call ptr @memset(ptr %clkname, i32 255, i32 30)
  %call196 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname, i32 noundef 30, ptr noundef nonnull @.str.40, i32 noundef %add)
  %call198 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clkname) #6
  %79 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %utmi_clk, align 4
  %arrayidx200 = getelementptr ptr, ptr %80, i32 %i.2574
  %81 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call198, ptr %arrayidx200, align 4
  %82 = load ptr, ptr %utmi_clk, align 4
  %arrayidx202 = getelementptr ptr, ptr %82, i32 %i.2574
  %83 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx202, align 4
  %cmp.i551 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i551, label %for.body195.cleanup.thread_crit_edge, label %if.end212

for.body195.cleanup.thread_crit_edge:             ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end212:                                        ; preds = %for.body195
  %call215 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname, i32 noundef 30, ptr noundef nonnull @.str.44, i32 noundef %add)
  %call217 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clkname) #6
  %85 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hsic480m_clk, align 4
  %arrayidx219 = getelementptr ptr, ptr %86, i32 %i.2574
  %87 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call217, ptr %arrayidx219, align 4
  %88 = load ptr, ptr %hsic480m_clk, align 4
  %arrayidx221 = getelementptr ptr, ptr %88, i32 %i.2574
  %89 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx221, align 4
  %cmp.i552 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i552, label %if.end212.cleanup.thread_crit_edge, label %if.end231

if.end212.cleanup.thread_crit_edge:               ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end231:                                        ; preds = %if.end212
  %call234 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clkname, i32 noundef 30, ptr noundef nonnull @.str.47, i32 noundef %add)
  %call236 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clkname) #6
  %91 = ptrtoint ptr %hsic60m_clk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hsic60m_clk, align 4
  %arrayidx238 = getelementptr ptr, ptr %92, i32 %i.2574
  %93 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call236, ptr %arrayidx238, align 4
  %94 = load ptr, ptr %hsic60m_clk, align 4
  %arrayidx240 = getelementptr ptr, ptr %94, i32 %i.2574
  %95 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx240, align 4
  %cmp.i553 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i553, label %if.end231.cleanup.thread_crit_edge, label %cleanup

if.end231.cleanup.thread_crit_edge:               ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end231.cleanup.thread_crit_edge, %if.end212.cleanup.thread_crit_edge, %for.body195.cleanup.thread_crit_edge
  %.sink.in = phi ptr [ %84, %for.body195.cleanup.thread_crit_edge ], [ %90, %if.end212.cleanup.thread_crit_edge ], [ %96, %if.end231.cleanup.thread_crit_edge ]
  %.sink = ptrtoint ptr %.sink.in to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull %clkname, i32 noundef %.sink) #9
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %clkname) #6
  br label %err_mem

cleanup:                                          ; preds = %if.end231
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %clkname) #6
  %97 = ptrtoint ptr %call.i539 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call.i539, align 4
  %cmp193 = icmp slt i32 %add, %98
  br i1 %cmp193, label %cleanup.for.body195_crit_edge, label %cleanup.for.end253_crit_edge

cleanup.for.end253_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end253

cleanup.for.body195_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body195

for.end253:                                       ; preds = %cleanup.for.end253_crit_edge, %for.cond191.preheader.for.end253_crit_edge
  %port_mode254 = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %pdata.0557, i32 0, i32 1
  %99 = ptrtoint ptr %port_mode254 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port_mode254, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %100, label %for.end253.if.end286_crit_edge [
    i32 1, label %if.then258
    i32 2, label %if.then274
  ]

for.end253.if.end286_crit_edge:                   ; preds = %for.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

if.then258:                                       ; preds = %for.end253
  %102 = ptrtoint ptr %utmi_p1_gfclk to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %utmi_p1_gfclk, align 4
  %104 = ptrtoint ptr %xclk60mhsp1_ck to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xclk60mhsp1_ck, align 4
  %call261 = call i32 @clk_set_parent(ptr noundef %103, ptr noundef %105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %cmp262.not = icmp eq i32 %call261, 0
  br i1 %cmp262.not, label %if.then258.if.end286_crit_edge, label %do.end267

if.then258.if.end286_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

do.end267:                                        ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %call261) #9
  br label %err_mem

if.then274:                                       ; preds = %for.end253
  %106 = ptrtoint ptr %utmi_p1_gfclk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %utmi_p1_gfclk, align 4
  %108 = ptrtoint ptr %init_60m_fclk to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_60m_fclk, align 4
  %call277 = call i32 @clk_set_parent(ptr noundef %107, ptr noundef %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp278.not = icmp eq i32 %call277, 0
  br i1 %cmp278.not, label %if.then274.if.end286_crit_edge, label %do.end283

if.then274.if.end286_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

do.end283:                                        ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call277) #9
  br label %err_mem

if.end286:                                        ; preds = %if.then274.if.end286_crit_edge, %if.then258.if.end286_crit_edge, %for.end253.if.end286_crit_edge
  %arrayidx288 = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata.0557, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx288, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %111, label %if.end286.initialize_crit_edge [
    i32 1, label %if.then291
    i32 2, label %if.then307
  ]

if.end286.initialize_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

if.then291:                                       ; preds = %if.end286
  %113 = ptrtoint ptr %utmi_p2_gfclk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %utmi_p2_gfclk, align 4
  %115 = ptrtoint ptr %xclk60mhsp2_ck to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xclk60mhsp2_ck, align 4
  %call294 = call i32 @clk_set_parent(ptr noundef %114, ptr noundef %116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %cmp295.not = icmp eq i32 %call294, 0
  br i1 %cmp295.not, label %if.then291.initialize_crit_edge, label %do.end300

if.then291.initialize_crit_edge:                  ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

do.end300:                                        ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %call294) #9
  br label %err_mem

if.then307:                                       ; preds = %if.end286
  %117 = ptrtoint ptr %utmi_p2_gfclk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %utmi_p2_gfclk, align 4
  %119 = ptrtoint ptr %init_60m_fclk to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_60m_fclk, align 4
  %call310 = call i32 @clk_set_parent(ptr noundef %118, ptr noundef %120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %cmp311.not = icmp eq i32 %call310, 0
  br i1 %cmp311.not, label %if.then307.initialize_crit_edge, label %do.end316

if.then307.initialize_crit_edge:                  ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #8
  br label %initialize

do.end316:                                        ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %call310) #9
  br label %err_mem

initialize:                                       ; preds = %if.then307.initialize_crit_edge, %if.then291.initialize_crit_edge, %if.end286.initialize_crit_edge, %if.then122.initialize_crit_edge, %for.end120.initialize_crit_edge, %for.cond99.preheader.initialize_crit_edge
  call fastcc void @omap_usbhs_init(ptr noundef %dev1)
  %121 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %of_node, align 8
  %tobool321.not = icmp eq ptr %122, null
  br i1 %tobool321.not, label %if.else331, label %if.then322

if.then322:                                       ; preds = %initialize
  %call324 = call i32 @of_platform_populate(ptr noundef nonnull %122, ptr noundef nonnull @usbhs_child_match_table, ptr noundef null, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.then322.cleanup340_crit_edge, label %do.end329

if.then322.cleanup340_crit_edge:                  ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup340

do.end329:                                        ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %call324) #9
  br label %err_mem

if.else331:                                       ; preds = %initialize
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %123 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %resources.i) #6
  %call2.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.95) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.96) #9
  br label %do.end337

if.end.i:                                         ; preds = %if.else331
  %125 = call ptr @memcpy(ptr %resources.i, ptr %call2.i, i32 32)
  %call3.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.98) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.100) #9
  br label %do.end337

if.end9.i:                                        ; preds = %if.end.i
  %arrayidx10.i = getelementptr inbounds [2 x %struct.resource], ptr %resources.i, i32 0, i32 1
  %126 = call ptr @memcpy(ptr %arrayidx10.i, ptr %call3.i, i32 32)
  %call11.i = call fastcc ptr @omap_usbhs_alloc_child(ptr noundef nonnull @.str.102, ptr noundef nonnull %resources.i, ptr noundef %124, ptr noundef %dev1) #6
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end17.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.104) #9
  br label %do.end337

if.end17.i:                                       ; preds = %if.end9.i
  %call18.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.106) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.err_ehci.i_crit_edge, label %if.end24.i

if.end17.i.err_ehci.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ehci.i

if.end24.i:                                       ; preds = %if.end17.i
  %127 = call ptr @memcpy(ptr %resources.i, ptr %call18.i, i32 32)
  %call26.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.110) #6
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end24.i.err_ehci.i_crit_edge, label %if.end32.i

if.end24.i.err_ehci.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ehci.i

if.end32.i:                                       ; preds = %if.end24.i
  %128 = call ptr @memcpy(ptr %arrayidx10.i, ptr %call26.i, i32 32)
  %call35.i = call fastcc ptr @omap_usbhs_alloc_child(ptr noundef nonnull @.str.114, ptr noundef nonnull %resources.i, ptr noundef %124, ptr noundef %dev1) #6
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.end32.i.err_ehci.i_crit_edge, label %omap_usbhs_alloc_children.exit

if.end32.i.err_ehci.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ehci.i

err_ehci.i:                                       ; preds = %if.end32.i.err_ehci.i_crit_edge, %if.end24.i.err_ehci.i_crit_edge, %if.end17.i.err_ehci.i_crit_edge
  %.str.104.sink.i = phi ptr [ @.str.108, %if.end17.i.err_ehci.i_crit_edge ], [ @.str.112, %if.end24.i.err_ehci.i_crit_edge ], [ @.str.104, %if.end32.i.err_ehci.i_crit_edge ]
  %ret.0.i = phi i32 [ -19, %if.end17.i.err_ehci.i_crit_edge ], [ -19, %if.end24.i.err_ehci.i_crit_edge ], [ -12, %if.end32.i.err_ehci.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.104.sink.i) #9
  call void @platform_device_unregister(ptr noundef nonnull %call11.i) #6
  br label %do.end337

omap_usbhs_alloc_children.exit:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resources.i) #6
  br label %cleanup340

do.end337:                                        ; preds = %err_ehci.i, %do.end16.i, %do.end8.i, %do.end.i
  %retval.0.i554.ph = phi i32 [ -19, %do.end.i ], [ -19, %do.end8.i ], [ -12, %do.end16.i ], [ %ret.0.i, %err_ehci.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resources.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i554.ph) #9
  br label %err_mem

err_mem:                                          ; preds = %do.end337, %do.end329, %do.end316, %do.end300, %do.end283, %do.end267, %cleanup.thread, %if.then184, %if.then173, %if.then162, %if.then151, %if.then140, %if.then127, %do.end78
  %ret.3 = phi i32 [ %65, %if.then127 ], [ %call324, %do.end329 ], [ %retval.0.i554.ph, %do.end337 ], [ %67, %if.then140 ], [ %69, %if.then151 ], [ %71, %if.then162 ], [ %73, %if.then173 ], [ %77, %if.then184 ], [ %call261, %do.end267 ], [ %call294, %do.end300 ], [ %call310, %do.end316 ], [ %call277, %do.end283 ], [ -12, %do.end78 ], [ %.sink, %cleanup.thread ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup340

cleanup340:                                       ; preds = %err_mem, %omap_usbhs_alloc_children.exit, %if.then322.cleanup340_crit_edge, %if.then30, %do.end24, %do.end16, %do.end, %if.end.cleanup340_crit_edge, %if.then.cleanup340_crit_edge
  %retval.0 = phi i32 [ -19, %do.end16 ], [ %8, %if.then30 ], [ %ret.3, %err_mem ], [ -12, %do.end24 ], [ -19, %do.end ], [ -12, %if.then.cleanup340_crit_edge ], [ %call5, %if.end.cleanup340_crit_edge ], [ 0, %omap_usbhs_alloc_children.exit ], [ 0, %if.then322.cleanup340_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_omap_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @usbhs_omap_remove_child) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhs_omap_get_dt_pdata(ptr noundef %dev, ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  %prop = alloca [11 x i8], align 1
  %mode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef %pdata, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pdata, align 4
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 3
  br i1 %cmp, label %do.end, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %.pr, i32 noundef 3) #9
  br label %cleanup33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.060 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %prop) #6
  %4 = call ptr @memset(ptr %prop, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode, align 4, !annotation !272
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.060
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.060, 1
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop, i32 noundef 11, ptr noundef nonnull @.str.72, i32 noundef %add)
  %call9 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull %prop, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode, align 4
  %call13 = call i32 @match_string(ptr noundef nonnull @port_modes, i32 noundef 14, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %cleanup, label %do.body20

do.body20:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_omap_get_dt_pdata.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_omap_get_dt_pdata, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !271

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_omap_get_dt_pdata.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %i.060, ptr noundef %10, i32 noundef %call13) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body20
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call13, ptr %arrayidx, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %i.060, ptr noundef %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %prop) #6
  br label %cleanup33

for.inc:                                          ; preds = %do.end28, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %prop) #6
  %exitcond.not = icmp eq i32 %add, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  %single_ulpi_bypass = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %pdata, i32 0, i32 6
  %14 = ptrtoint ptr %single_ulpi_bypass to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %single_ulpi_bypass, align 4
  %bf.shl = select i1 %tobool.i.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %single_ulpi_bypass, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %cleanup, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ -19, %cleanup ], [ 0, %for.end ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_usbhs_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_usbhs_init.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_usbhs_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_usbhs_init.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.93) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %uhh_base = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %uhh_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uhh_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !270
  %5 = and i32 %4, -1006633089
  %6 = or i32 %5, 469762176
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %usbhs_rev = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %usbhs_rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usbhs_rev, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %9, label %sw.default [
    i32 16, label %sw.bb
    i32 1349517568, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.end
  %pdata1.i = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata1.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp68.i = icmp sgt i32 %14, 0
  %single_ulpi_bypass.i = getelementptr inbounds %struct.usbhs_omap_platform_data, ptr %12, i32 0, i32 6
  br i1 %cmp68.i, label %for.body.lr.ph.i, label %for.end.thread.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %arrayidx.peel.i = getelementptr %struct.usbhs_omap_platform_data, ptr %12, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.peel.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %16, label %sw.default.peel.i [
    i32 0, label %sw.bb.peel.i
    i32 1, label %sw.bb2.peel.i
  ]

sw.bb2.peel.i:                                    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.peel.i = load i8, ptr %single_ulpi_bypass.i, align 4
  %and5.peel.i = and i32 %7, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.peel.i)
  %tobool.not.peel97.i = icmp slt i8 %bf.load.peel.i, 0
  %spec.select.i = select i1 %tobool.not.peel97.i, i32 %7, i32 %and5.peel.i
  br label %for.inc.peel.i

sw.bb.peel.i:                                     ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.peel.i = and i32 %7, -289
  br label %for.inc.peel.i

sw.default.peel.i:                                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load11.peel.i = load i8, ptr %single_ulpi_bypass.i, align 4
  %20 = xor i8 %bf.load11.peel.i, -1
  %21 = lshr i8 %20, 7
  %.not.i = zext i8 %21 to i32
  %spec.select94.i = or i32 %7, %.not.i
  br label %for.inc.peel.i

for.inc.peel.i:                                   ; preds = %sw.default.peel.i, %sw.bb.peel.i, %sw.bb2.peel.i
  %reg.addr.1.peel.i = phi i32 [ %and.peel.i, %sw.bb.peel.i ], [ %spec.select.i, %sw.bb2.peel.i ], [ %spec.select94.i, %sw.default.peel.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %exitcond.peel.not.i = icmp eq i32 %14, 1
  br i1 %exitcond.peel.not.i, label %for.end.thread84.i, label %for.inc.peel.i.for.body.i_crit_edge

for.inc.peel.i.for.body.i_crit_edge:              ; preds = %for.inc.peel.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.inc.peel.i.for.body.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.inc.peel.i.for.body.i_crit_edge ]
  %reg.addr.069.i = phi i32 [ %reg.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %reg.addr.1.peel.i, %for.inc.peel.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usbhs_omap_platform_data, ptr %12, i32 0, i32 1, i32 %i.070.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %23, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 256, %i.070.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %reg.addr.069.i, %neg.i
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %for.body.i
  %25 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %single_ulpi_bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb2.i.for.inc.i_crit_edge

sw.bb2.i.for.inc.i_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %i.070.i, -1
  %shl6.i = shl i32 2048, %sub.i
  %neg7.i = xor i32 %shl6.i, -1
  %and8.i = and i32 %reg.addr.069.i, %neg7.i
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %26 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load11.i = load i8, ptr %single_ulpi_bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load11.i)
  %tobool14.not.i = icmp sgt i8 %bf.load11.i, -1
  br i1 %tobool14.not.i, label %if.else19.i, label %sw.default.i.for.inc.i_crit_edge

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else19.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub20.i = add nsw i32 %i.070.i, -1
  %shl21.i = shl i32 2048, %sub20.i
  %or22.i = or i32 %shl21.i, %reg.addr.069.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else19.i, %sw.default.i.for.inc.i_crit_edge, %if.else.i, %sw.bb2.i.for.inc.i_crit_edge, %sw.bb.i
  %reg.addr.1.i = phi i32 [ %reg.addr.069.i, %sw.default.i.for.inc.i_crit_edge ], [ %or22.i, %if.else19.i ], [ %reg.addr.069.i, %sw.bb2.i.for.inc.i_crit_edge ], [ %and8.i, %if.else.i ], [ %and.i, %sw.bb.i ]
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge, !llvm.loop !273

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %27 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load25.i = load i8, ptr %single_ulpi_bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load25.i)
  %tobool28.not.i = icmp sgt i8 %bf.load25.i, -1
  br i1 %tobool28.not.i, label %for.end.i.sw.epilog_crit_edge, label %for.end.i.for.body34.preheader.i_crit_edge

for.end.i.for.body34.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.preheader.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.end.thread84.i:                               ; preds = %for.inc.peel.i
  %28 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load2587.i = load i8, ptr %single_ulpi_bypass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load2587.i)
  %tobool28.not88.i = icmp sgt i8 %bf.load2587.i, -1
  br i1 %tobool28.not88.i, label %for.end.thread84.i.sw.epilog_crit_edge, label %for.end.thread84.i.for.body34.preheader.i_crit_edge

for.end.thread84.i.for.body34.preheader.i_crit_edge: ; preds = %for.end.thread84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.preheader.i

for.end.thread84.i.sw.epilog_crit_edge:           ; preds = %for.end.thread84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.end.thread.i:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %single_ulpi_bypass.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load2579.i = load i8, ptr %single_ulpi_bypass.i, align 4
  %bf.load2579.lobit.i = lshr i8 %bf.load2579.i, 7
  %30 = zext i8 %bf.load2579.lobit.i to i32
  %spec.select95.i = or i32 %7, %30
  br label %sw.epilog

for.body34.preheader.i:                           ; preds = %for.end.thread84.i.for.body34.preheader.i_crit_edge, %for.end.i.for.body34.preheader.i_crit_edge
  %reg.addr.0.lcssa8192.i = phi i32 [ %reg.addr.1.peel.i, %for.end.thread84.i.for.body34.preheader.i_crit_edge ], [ %reg.addr.1.i, %for.end.i.for.body34.preheader.i_crit_edge ]
  %or3093.i = or i32 %reg.addr.0.lcssa8192.i, 1
  br label %for.body34.i

for.cond31.i:                                     ; preds = %for.body34.i
  %inc42.i = add nuw nsw i32 %i.174.i, 1
  %exitcond76.not.i = icmp eq i32 %inc42.i, %14
  br i1 %exitcond76.not.i, label %for.cond31.i.sw.epilog_crit_edge, label %for.cond31.i.for.body34.i_crit_edge

for.cond31.i.for.body34.i_crit_edge:              ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.i

for.cond31.i.sw.epilog_crit_edge:                 ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body34.i:                                     ; preds = %for.cond31.i.for.body34.i_crit_edge, %for.body34.preheader.i
  %i.174.i = phi i32 [ %inc42.i, %for.cond31.i.for.body34.i_crit_edge ], [ 0, %for.body34.preheader.i ]
  %arrayidx36.i = getelementptr %struct.usbhs_omap_platform_data, ptr %12, i32 0, i32 1, i32 %i.174.i
  %31 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp37.i = icmp eq i32 %32, 1
  br i1 %cmp37.i, label %if.then38.i, label %for.cond31.i

if.then38.i:                                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %and39.i = and i32 %reg.addr.0.lcssa8192.i, -2
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  %pdata1.i48 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %pdata1.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata1.i48, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp28.i = icmp sgt i32 %36, 0
  br i1 %cmp28.i, label %sw.bb8.for.body.i53_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8.for.body.i53_crit_edge:                    ; preds = %sw.bb8
  br label %for.body.i53

for.body.i53:                                     ; preds = %for.inc.i60.for.body.i53_crit_edge, %sw.bb8.for.body.i53_crit_edge
  %i.030.i = phi i32 [ %inc.i58, %for.inc.i60.for.body.i53_crit_edge ], [ 0, %sw.bb8.for.body.i53_crit_edge ]
  %reg.addr.029.i = phi i32 [ %reg.addr.1.i57, %for.inc.i60.for.body.i53_crit_edge ], [ %7, %sw.bb8.for.body.i53_crit_edge ]
  %mul.i = shl nuw i32 %i.030.i, 1
  %shl.i49 = shl i32 196608, %mul.i
  %neg.i50 = xor i32 %shl.i49, -1
  %and.i51 = and i32 %reg.addr.029.i, %neg.i50
  %arrayidx.i52 = getelementptr %struct.usbhs_omap_platform_data, ptr %34, i32 0, i32 1, i32 %i.030.i
  %37 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i = icmp eq i32 %38, 2
  %pmode.off.i.i = add i32 %38, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %pmode.off.i.i)
  %switch.i.i = icmp ult i32 %pmode.off.i.i, 10
  %or.cond.i = or i1 %cmp2.i, %switch.i.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i56

if.then.i:                                        ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  %shl6.i54 = shl i32 65536, %mul.i
  %or.i = or i32 %and.i51, %shl6.i54
  br label %for.inc.i60

if.else.i56:                                      ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp9.i = icmp eq i32 %38, 3
  %or13.i = or i32 %shl.i49, %reg.addr.029.i
  %spec.select.i55 = select i1 %cmp9.i, i32 %or13.i, i32 %and.i51
  br label %for.inc.i60

for.inc.i60:                                      ; preds = %if.else.i56, %if.then.i
  %reg.addr.1.i57 = phi i32 [ %or.i, %if.then.i ], [ %spec.select.i55, %if.else.i56 ]
  %inc.i58 = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, %36
  br i1 %exitcond.not.i59, label %for.inc.i60.sw.epilog_crit_edge, label %for.inc.i60.for.body.i53_crit_edge

for.inc.i60.for.body.i53_crit_edge:               ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53

for.inc.i60.sw.epilog_crit_edge:                  ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %pdata1.i62 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %pdata1.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata1.i62, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp28.i63 = icmp sgt i32 %42, 0
  br i1 %cmp28.i63, label %sw.default.for.body.i75_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default.for.body.i75_crit_edge:                ; preds = %sw.default
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc.i86.for.body.i75_crit_edge, %sw.default.for.body.i75_crit_edge
  %i.030.i64 = phi i32 [ %inc.i84, %for.inc.i86.for.body.i75_crit_edge ], [ 0, %sw.default.for.body.i75_crit_edge ]
  %reg.addr.029.i65 = phi i32 [ %reg.addr.1.i83, %for.inc.i86.for.body.i75_crit_edge ], [ %7, %sw.default.for.body.i75_crit_edge ]
  %mul.i66 = shl nuw i32 %i.030.i64, 1
  %shl.i67 = shl i32 196608, %mul.i66
  %neg.i68 = xor i32 %shl.i67, -1
  %and.i69 = and i32 %reg.addr.029.i65, %neg.i68
  %arrayidx.i70 = getelementptr %struct.usbhs_omap_platform_data, ptr %40, i32 0, i32 1, i32 %i.030.i64
  %43 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i71 = icmp eq i32 %44, 2
  %pmode.off.i.i72 = add i32 %44, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %pmode.off.i.i72)
  %switch.i.i73 = icmp ult i32 %pmode.off.i.i72, 10
  %or.cond.i74 = or i1 %cmp2.i71, %switch.i.i73
  br i1 %or.cond.i74, label %if.then.i78, label %if.else.i82

if.then.i78:                                      ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #8
  %shl6.i76 = shl i32 65536, %mul.i66
  %or.i77 = or i32 %and.i69, %shl6.i76
  br label %for.inc.i86

if.else.i82:                                      ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp9.i79 = icmp eq i32 %44, 3
  %or13.i80 = or i32 %shl.i67, %reg.addr.029.i65
  %spec.select.i81 = select i1 %cmp9.i79, i32 %or13.i80, i32 %and.i69
  br label %for.inc.i86

for.inc.i86:                                      ; preds = %if.else.i82, %if.then.i78
  %reg.addr.1.i83 = phi i32 [ %or.i77, %if.then.i78 ], [ %spec.select.i81, %if.else.i82 ]
  %inc.i84 = add nuw nsw i32 %i.030.i64, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, %42
  br i1 %exitcond.not.i85, label %for.inc.i86.sw.epilog_crit_edge, label %for.inc.i86.for.body.i75_crit_edge

for.inc.i86.for.body.i75_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i75

for.inc.i86.sw.epilog_crit_edge:                  ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i86.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %for.inc.i60.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %if.then38.i, %for.cond31.i.sw.epilog_crit_edge, %for.end.thread.i, %for.end.thread84.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %and39.i, %if.then38.i ], [ %reg.addr.1.i, %for.end.i.sw.epilog_crit_edge ], [ %reg.addr.1.peel.i, %for.end.thread84.i.sw.epilog_crit_edge ], [ %spec.select95.i, %for.end.thread.i ], [ %7, %sw.bb8.sw.epilog_crit_edge ], [ %7, %sw.default.sw.epilog_crit_edge ], [ %reg.addr.1.i83, %for.inc.i86.sw.epilog_crit_edge ], [ %or3093.i, %for.cond31.i.sw.epilog_crit_edge ], [ %reg.addr.1.i57, %for.inc.i60.sw.epilog_crit_edge ]
  %45 = ptrtoint ptr %uhh_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uhh_base, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %add.ptr.i90 = getelementptr i8, ptr %46, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %47) #6, !srcloc !275
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_usbhs_init.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_usbhs_init, %if.then24)) #6
          to label %do.end27 [label %if.then24], !srcloc !271

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_usbhs_init.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %reg.0) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %sw.epilog
  %call.i91 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @omap_usbhs_alloc_child(ptr noundef %name, ptr noundef %res, ptr noundef %pdata, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_device_alloc(ptr noundef %name, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117, ptr noundef %name) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef %res, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.end.err_alloc_crit_edge

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_device_add_data(ptr noundef nonnull %call, ptr noundef %pdata, i32 noundef 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %if.end7.err_alloc_crit_edge

if.end7.err_alloc_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

if.end14:                                         ; preds = %if.end7
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @usbhs_dmamask, ptr %dma_mask, align 8
  %call17 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev15, i64 noundef 4294967295) #6
  %parent = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %parent, align 8
  %call19 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end14.cleanup_crit_edge, label %if.end14.err_alloc_crit_edge

if.end14.err_alloc_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_alloc:                                        ; preds = %if.end14.err_alloc_crit_edge, %if.end7.err_alloc_crit_edge, %if.end.err_alloc_crit_edge
  %.str.126.sink = phi ptr [ @.str.120, %if.end.err_alloc_crit_edge ], [ @.str.123, %if.end7.err_alloc_crit_edge ], [ @.str.126, %if.end14.err_alloc_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.126.sink) #9
  tail call void @platform_device_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call, %if.end14.cleanup_crit_edge ], [ null, %err_alloc ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_omap_remove_child(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.128) #9
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata1 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_runtime_suspend.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_runtime_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_runtime_suspend.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.131) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp52 = icmp sgt i32 %5, 0
  br i1 %cmp52, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %hsic60m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 2
  %hsic480m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 3
  %utmi_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %3, i32 0, i32 1, i32 %i.053
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %7, label %for.body.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %for.body.sw.bb17_crit_edge
  ]

for.body.sw.bb17_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %hsic60m_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsic60m_clk, align 4
  %arrayidx5 = getelementptr ptr, ptr %10, i32 %i.053
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.if.end10_crit_edge, label %if.then7

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %sw.bb.if.end10_crit_edge
  %13 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsic480m_clk, align 4
  %arrayidx11 = getelementptr ptr, ptr %14, i32 %i.053
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %cmp.i48 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %if.end10.sw.bb17_crit_edge, label %if.then13

if.end10.sw.bb17_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then13, %if.end10.sw.bb17_crit_edge, %for.body.sw.bb17_crit_edge
  %17 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %utmi_clk, align 4
  %arrayidx18 = getelementptr ptr, ptr %18, i32 %i.053
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %cmp.i49 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %sw.bb17.for.inc_crit_edge, label %if.then20

sw.bb17.for.inc_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %sw.bb17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %ehci_logic_fck = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %ehci_logic_fck to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ehci_logic_fck, align 4
  %cmp.i50 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %for.end.if.end27_crit_edge, label %if.then25

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end.if.end27_crit_edge
  %call28 = tail call i32 @omap_tll_disable(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata1 = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_runtime_resume.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_runtime_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_runtime_resume.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.133) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @omap_tll_enable(ptr noundef %3) #6
  %ehci_logic_fck = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ehci_logic_fck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ehci_logic_fck, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %do.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i:                                         ; preds = %if.then7
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %if.then3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then3.i, %if.end.i.if.end10_crit_edge, %if.then7.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp119 = icmp sgt i32 %7, 0
  br i1 %cmp119, label %for.body.lr.ph, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %hsic60m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 2
  %hsic480m_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 3
  %utmi_clk = getelementptr inbounds %struct.usbhs_hcd_omap, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbhs_omap_platform_data, ptr %3, i32 0, i32 1, i32 %i.0120
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %9, label %for.body.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %for.body.sw.bb37_crit_edge
  ]

for.body.sw.bb37_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %11 = ptrtoint ptr %hsic60m_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsic60m_clk, align 4
  %arrayidx11 = getelementptr ptr, ptr %12, i32 %i.0120
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %cmp.i82 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %sw.bb.if.end23_crit_edge, label %if.then13

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then13:                                        ; preds = %sw.bb
  %call.i83 = tail call i32 @clk_prepare(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i87, label %if.then13.do.end21_crit_edge

if.then13.do.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

if.end.i87:                                       ; preds = %if.then13
  %call1.i85 = tail call i32 @clk_enable(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool2.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool2.not.i86, label %if.end.i87.if.end23_crit_edge, label %if.then3.i88

if.end.i87.if.end23_crit_edge:                    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then3.i88:                                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then3.i88, %if.then13.do.end21_crit_edge
  %retval.0.i89.ph = phi i32 [ %call1.i85, %if.then3.i88 ], [ %call.i83, %if.then13.do.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %i.0120, i32 noundef %retval.0.i89.ph) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end.i87.if.end23_crit_edge, %sw.bb.if.end23_crit_edge
  %15 = ptrtoint ptr %hsic480m_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsic480m_clk, align 4
  %arrayidx24 = getelementptr ptr, ptr %16, i32 %i.0120
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx24, align 4
  %cmp.i91 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.end23.sw.bb37_crit_edge, label %if.then26

if.end23.sw.bb37_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

if.then26:                                        ; preds = %if.end23
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end.i96, label %if.then26.do.end34_crit_edge

if.then26.do.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.i96:                                       ; preds = %if.then26
  %call1.i94 = tail call i32 @clk_enable(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool2.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool2.not.i95, label %if.end.i96.sw.bb37_crit_edge, label %if.then3.i97

if.end.i96.sw.bb37_crit_edge:                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

if.then3.i97:                                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i97, %if.then26.do.end34_crit_edge
  %retval.0.i98.ph = phi i32 [ %call1.i94, %if.then3.i97 ], [ %call.i92, %if.then26.do.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.136, i32 noundef %i.0120, i32 noundef %retval.0.i98.ph) #9
  br label %sw.bb37

sw.bb37:                                          ; preds = %do.end34, %if.end.i96.sw.bb37_crit_edge, %if.end23.sw.bb37_crit_edge, %for.body.sw.bb37_crit_edge
  %19 = ptrtoint ptr %utmi_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %utmi_clk, align 4
  %arrayidx38 = getelementptr ptr, ptr %20, i32 %i.0120
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx38, align 4
  %cmp.i100 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %sw.bb37.for.inc_crit_edge, label %if.then40

sw.bb37.for.inc_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then40:                                        ; preds = %sw.bb37
  %call.i101 = tail call i32 @clk_prepare(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i105, label %if.then40.do.end48_crit_edge

if.then40.do.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.end.i105:                                      ; preds = %if.then40
  %call1.i103 = tail call i32 @clk_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool2.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool2.not.i104, label %if.end.i105.for.inc_crit_edge, label %if.then3.i106

if.end.i105.for.inc_crit_edge:                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3.i106:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i106, %if.then40.do.end48_crit_edge
  %retval.0.i107.ph = phi i32 [ %call1.i103, %if.then3.i106 ], [ %call.i101, %if.then40.do.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %i.0120, i32 noundef %retval.0.i107.ph) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end48, %if.end.i105.for.inc_crit_edge, %sw.bb37.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_tll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !125, !127, !129, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !172, !173, !175, !177, !179, !180, !181, !182, !184, !186, !187, !188, !190, !192, !193, !194, !196, !198, !199, !200, !202, !204, !205, !206, !208, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !232, !233, !234, !235, !237, !239, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !{ptr @__UNIQUE_ID_author237, !1, !"__UNIQUE_ID_author237", i1 false, i1 false}
!1 = !{!"../drivers/mfd/omap-usb-host.c", i32 853, i32 1}
!2 = !{ptr @__UNIQUE_ID_author238, !3, !"__UNIQUE_ID_author238", i1 false, i1 false}
!3 = !{!"../drivers/mfd/omap-usb-host.c", i32 854, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias239, !5, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!5 = !{!"../drivers/mfd/omap-usb-host.c", i32 855, i32 1}
!6 = !{ptr @__UNIQUE_ID_file240, !7, !"__UNIQUE_ID_file240", i1 false, i1 false}
!7 = !{!"../drivers/mfd/omap-usb-host.c", i32 856, i32 1}
!8 = !{ptr @__UNIQUE_ID_license241, !7, !"__UNIQUE_ID_license241", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description242, !10, !"__UNIQUE_ID_description242", i1 false, i1 false}
!10 = !{!"../drivers/mfd/omap-usb-host.c", i32 857, i32 1}
!11 = !{ptr @__initcall__kmod_omap_usb_host__243_871_omap_usbhs_drvinit5s, !12, !"__initcall__kmod_omap_usb_host__243_871_omap_usbhs_drvinit5s", i1 false, i1 false}
!12 = !{!"../drivers/mfd/omap-usb-host.c", i32 871, i32 1}
!13 = !{ptr @__exitcall_omap_usbhs_drvexit, !14, !"__exitcall_omap_usbhs_drvexit", i1 false, i1 false}
!14 = !{!"../drivers/mfd/omap-usb-host.c", i32 877, i32 1}
!15 = !{ptr @usbhs_omap_driver, !16, !"usbhs_omap_driver", i1 false, i1 false}
!16 = !{!"../drivers/mfd/omap-usb-host.c", i32 843, i32 31}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/omap-usb-host.c", i32 556, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @usbhs_omap_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @usbhs_omap_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/omap-usb-host.c", i32 561, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @usbhs_omap_probe._entry.5, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @usbhs_omap_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/omap-usb-host.c", i32 568, i32 3}
!32 = !{ptr @usbhs_omap_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @usbhs_omap_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/omap-usb-host.c", i32 610, i32 4}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usbhs_omap_probe.__UNIQUE_ID_ddebug236, !35, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!38 = !{ptr @usbhs_omap_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/mfd/omap-usb-host.c", i32 624, i32 3}
!40 = !{ptr @usbhs_omap_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/omap-usb-host.c", i32 656, i32 12}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/omap-usb-host.c", i32 659, i32 5}
!45 = !{ptr @usbhs_omap_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @usbhs_omap_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/omap-usb-host.c", i32 668, i32 42}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/omap-usb-host.c", i32 671, i32 3}
!51 = !{ptr @usbhs_omap_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usbhs_omap_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/omap-usb-host.c", i32 675, i32 42}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/omap-usb-host.c", i32 678, i32 3}
!57 = !{ptr @usbhs_omap_probe._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @usbhs_omap_probe._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/omap-usb-host.c", i32 682, i32 43}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/omap-usb-host.c", i32 685, i32 3}
!63 = !{ptr @usbhs_omap_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @usbhs_omap_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/omap-usb-host.c", i32 689, i32 43}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/omap-usb-host.c", i32 692, i32 3}
!69 = !{ptr @usbhs_omap_probe._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @usbhs_omap_probe._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/omap-usb-host.c", i32 696, i32 42}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/omap-usb-host.c", i32 699, i32 3}
!75 = !{ptr @usbhs_omap_probe._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @usbhs_omap_probe._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/omap-usb-host.c", i32 708, i32 5}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/omap-usb-host.c", i32 717, i32 4}
!81 = !{ptr @usbhs_omap_probe._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @usbhs_omap_probe._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/omap-usb-host.c", i32 723, i32 5}
!85 = !{ptr @usbhs_omap_probe._entry.45, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/mfd/omap-usb-host.c", i32 727, i32 4}
!87 = !{ptr @usbhs_omap_probe._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/omap-usb-host.c", i32 733, i32 5}
!90 = !{ptr @usbhs_omap_probe._entry.48, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/mfd/omap-usb-host.c", i32 737, i32 4}
!92 = !{ptr @usbhs_omap_probe._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/omap-usb-host.c", i32 747, i32 4}
!95 = !{ptr @usbhs_omap_probe._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @usbhs_omap_probe._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/omap-usb-host.c", i32 755, i32 4}
!99 = !{ptr @usbhs_omap_probe._entry.53, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @usbhs_omap_probe._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/omap-usb-host.c", i32 765, i32 4}
!103 = !{ptr @usbhs_omap_probe._entry.56, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @usbhs_omap_probe._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/omap-usb-host.c", i32 773, i32 4}
!107 = !{ptr @usbhs_omap_probe._entry.59, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @usbhs_omap_probe._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/omap-usb-host.c", i32 787, i32 4}
!111 = !{ptr @usbhs_omap_probe._entry.62, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @usbhs_omap_probe._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/omap-usb-host.c", i32 794, i32 4}
!115 = !{ptr @usbhs_omap_probe._entry.65, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usbhs_omap_probe._entry_ptr.67, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/omap-usb-host.c", i32 478, i32 35}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/omap-usb-host.c", i32 483, i32 3}
!121 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @usbhs_omap_get_dt_pdata._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @usbhs_omap_get_dt_pdata._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/omap-usb-host.c", i32 495, i32 32}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/omap-usb-host.c", i32 503, i32 4}
!129 = !{ptr @usbhs_omap_get_dt_pdata._entry.73, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @usbhs_omap_get_dt_pdata._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/omap-usb-host.c", i32 508, i32 3}
!133 = !{ptr @usbhs_omap_get_dt_pdata.__UNIQUE_ID_ddebug235, !132, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mfd/omap-usb-host.c", i32 514, i32 7}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mfd/omap-usb-host.c", i32 129, i32 34}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mfd/omap-usb-host.c", i32 130, i32 30}
!140 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/omap-usb-host.c", i32 131, i32 30}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mfd/omap-usb-host.c", i32 132, i32 31}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mfd/omap-usb-host.c", i32 133, i32 42}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mfd/omap-usb-host.c", i32 134, i32 40}
!148 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mfd/omap-usb-host.c", i32 135, i32 42}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mfd/omap-usb-host.c", i32 136, i32 40}
!152 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mfd/omap-usb-host.c", i32 137, i32 42}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mfd/omap-usb-host.c", i32 138, i32 40}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mfd/omap-usb-host.c", i32 139, i32 42}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mfd/omap-usb-host.c", i32 140, i32 40}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mfd/omap-usb-host.c", i32 141, i32 42}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mfd/omap-usb-host.c", i32 142, i32 40}
!164 = !{ptr @port_modes, !165, !"port_modes", i1 false, i1 false}
!165 = !{!"../drivers/mfd/omap-usb-host.c", i32 128, i32 27}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mfd/omap-usb-host.c", i32 440, i32 2}
!168 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @omap_usbhs_init.__UNIQUE_ID_ddebug233, !167, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mfd/omap-usb-host.c", i32 467, i32 2}
!172 = !{ptr @omap_usbhs_init.__UNIQUE_ID_ddebug234, !171, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!173 = !{ptr @usbhs_child_match_table, !174, !"usbhs_child_match_table", i1 false, i1 false}
!174 = !{!"../drivers/mfd/omap-usb-host.c", i32 519, i32 34}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mfd/omap-usb-host.c", i32 200, i32 59}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/omap-usb-host.c", i32 202, i32 3}
!179 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @omap_usbhs_alloc_children._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @omap_usbhs_alloc_children._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mfd/omap-usb-host.c", i32 208, i32 59}
!184 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mfd/omap-usb-host.c", i32 210, i32 3}
!186 = !{ptr @omap_usbhs_alloc_children._entry.99, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @omap_usbhs_alloc_children._entry_ptr.101, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.102, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mfd/omap-usb-host.c", i32 216, i32 32}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mfd/omap-usb-host.c", i32 220, i32 3}
!192 = !{ptr @omap_usbhs_alloc_children._entry.103, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @omap_usbhs_alloc_children._entry_ptr.105, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mfd/omap-usb-host.c", i32 225, i32 59}
!196 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mfd/omap-usb-host.c", i32 227, i32 3}
!198 = !{ptr @omap_usbhs_alloc_children._entry.107, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @omap_usbhs_alloc_children._entry_ptr.109, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.110, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mfd/omap-usb-host.c", i32 233, i32 59}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mfd/omap-usb-host.c", i32 235, i32 3}
!204 = !{ptr @omap_usbhs_alloc_children._entry.111, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @omap_usbhs_alloc_children._entry_ptr.113, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.114, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mfd/omap-usb-host.c", i32 241, i32 32}
!208 = !{ptr @omap_usbhs_alloc_children._entry.115, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../drivers/mfd/omap-usb-host.c", i32 244, i32 3}
!210 = !{ptr @omap_usbhs_alloc_children._entry_ptr.116, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.117, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mfd/omap-usb-host.c", i32 155, i32 3}
!213 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @omap_usbhs_alloc_child._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @omap_usbhs_alloc_child._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mfd/omap-usb-host.c", i32 161, i32 3}
!218 = !{ptr @omap_usbhs_alloc_child._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @omap_usbhs_alloc_child._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mfd/omap-usb-host.c", i32 167, i32 3}
!222 = !{ptr @omap_usbhs_alloc_child._entry.122, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @omap_usbhs_alloc_child._entry_ptr.124, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mfd/omap-usb-host.c", i32 177, i32 3}
!226 = !{ptr @omap_usbhs_alloc_child._entry.125, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @omap_usbhs_alloc_child._entry_ptr.127, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @usbhs_dmamask, !229, !"usbhs_dmamask", i1 false, i1 false}
!229 = !{!"../drivers/mfd/omap-usb-host.c", i32 107, i32 12}
!230 = !{ptr @.str.128, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mfd/omap-usb-host.c", i32 810, i32 2}
!232 = !{ptr @.str.129, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @usbhs_omap_remove_child._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @usbhs_omap_remove_child._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @usbhs_driver_name, !236, !"usbhs_driver_name", i1 false, i1 false}
!236 = !{!"../drivers/mfd/omap-usb-host.c", i32 106, i32 19}
!237 = !{ptr @usbhs_omap_dt_ids, !238, !"usbhs_omap_dt_ids", i1 false, i1 false}
!238 = !{!"../drivers/mfd/omap-usb-host.c", i32 835, i32 34}
!239 = !{ptr @usbhsomap_dev_pm_ops, !240, !"usbhsomap_dev_pm_ops", i1 false, i1 false}
!240 = !{!"../drivers/mfd/omap-usb-host.c", i32 830, i32 32}
!241 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mfd/omap-usb-host.c", i32 337, i32 2}
!243 = !{ptr @.str.131, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @usbhs_runtime_suspend.__UNIQUE_ID_ddebug232, !242, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!245 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mfd/omap-usb-host.c", i32 284, i32 2}
!247 = !{ptr @.str.133, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @usbhs_runtime_resume.__UNIQUE_ID_ddebug231, !246, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!249 = !{ptr @.str.134, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mfd/omap-usb-host.c", i32 297, i32 6}
!251 = !{ptr @usbhs_runtime_resume._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @usbhs_runtime_resume._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.136, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mfd/omap-usb-host.c", i32 306, i32 6}
!255 = !{ptr @usbhs_runtime_resume._entry.135, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @usbhs_runtime_resume._entry_ptr.137, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mfd/omap-usb-host.c", i32 317, i32 6}
!259 = !{ptr @usbhs_runtime_resume._entry.138, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @usbhs_runtime_resume._entry_ptr.140, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 1, !"min_enum_size", i32 4}
!263 = !{i32 8, !"branch-target-enforcement", i32 0}
!264 = !{i32 8, !"sign-return-address", i32 0}
!265 = !{i32 8, !"sign-return-address-all", i32 0}
!266 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!267 = !{i32 7, !"uwtable", i32 1}
!268 = !{i32 7, !"frame-pointer", i32 2}
!269 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!270 = !{i64 6318900}
!271 = !{i64 2148712598, i64 2148712603, i64 2148712616, i64 2148712660, i64 2148712694, i64 2148712715}
!272 = !{!"auto-init"}
!273 = distinct !{!273, !274}
!274 = !{!"llvm.loop.peeled.count", i32 1}
!275 = !{i64 6318482}
