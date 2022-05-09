; ModuleID = '/llk/IR_all_yes/drivers/usb/host/r8a66597-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/r8a66597-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.r8a66597_platdata = type { ptr, i16, i8 }
%struct.r8a66597 = type { %struct.spinlock, ptr, ptr, ptr, %struct.r8a66597_device, [2 x %struct.r8a66597_root_hub], [10 x %struct.list_head], %struct.timer_list, [10 x %struct.r8a66597_timers], i16, i16, i16, [10 x i8], i8, i32, %struct.list_head, [4 x i32], i8 }
%struct.r8a66597_device = type { i16, i16, i16, i16, i16, [10 x i8], i8, i32, ptr, i32, %struct.list_head }
%struct.r8a66597_root_hub = type { i32, i16, i32, ptr }
%struct.r8a66597_timers = type { %struct.timer_list, %struct.timer_list, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.r8a66597_pipe_info = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.r8a66597_pipe = type { %struct.r8a66597_pipe_info, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.r8a66597_td = type { ptr, ptr, %struct.list_head, i16, i16, i32, i16, i16, i8 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__UNIQUE_ID_description237 = internal constant [61 x i8] c"r8a66597_hcd.description=R8A66597 USB Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [48 x i8] c"r8a66597_hcd.file=drivers/usb/host/r8a66597-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [25 x i8] c"r8a66597_hcd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [38 x i8] c"r8a66597_hcd.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [41 x i8] c"r8a66597_hcd.alias=platform:r8a66597_hcd\00", section ".modinfo", align 1
@__initcall__kmod_r8a66597_hcd__258_2522_r8a66597_driver_init6 = internal global ptr @r8a66597_driver_init, section ".initcall6.init", align 4
@r8a66597_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @r8a66597_probe, ptr @r8a66597_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r8a66597_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_r8a66597_driver_exit = internal global ptr @r8a66597_driver_exit, section ".exitcall.exit", align 4
@hcd_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r8a66597_hcd\00", [19 x i8] zeroinitializer }, align 32
@r8a66597_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @r8a66597_suspend, ptr @r8a66597_resume, ptr null, ptr null, ptr @r8a66597_suspend, ptr @r8a66597_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"platform_get_resource error.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r8a66597_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/host/r8a66597-hcd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr = internal global ptr @r8a66597_probe._entry, section ".printk_index", align 4
@r8a66597_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"platform_get_resource IORESOURCE_IRQ error.\0A\00", [51 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.7 = internal global ptr @r8a66597_probe._entry.5, section ".printk_index", align 4
@r8a66597_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap error.\0A\00", [16 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.10 = internal global ptr @r8a66597_probe._entry.8, section ".printk_index", align 4
@r8a66597_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 2438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.13 = internal global ptr @r8a66597_probe._entry.11, section ".printk_index", align 4
@r8a66597_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @hcd_name, ptr null, i32 1312, ptr @r8a66597_irq, i32 32, ptr null, ptr @r8a66597_start, ptr null, ptr null, ptr @r8a66597_stop, ptr null, ptr @r8a66597_get_frame, ptr @r8a66597_urb_enqueue, ptr @r8a66597_urb_dequeue, ptr null, ptr null, ptr @r8a66597_endpoint_disable, ptr null, ptr @r8a66597_hub_status_data, ptr @r8a66597_hub_control, ptr @r8a66597_bus_suspend, ptr @r8a66597_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 2447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create hcd\0A\00", [42 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.16 = internal global ptr @r8a66597_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usb%d\00", [26 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 2461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get clock \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.20 = internal global ptr @r8a66597_probe._entry.18, section ".printk_index", align 4
@r8a66597_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&r8a66597->lock\00", [16 x i8] zeroinitializer }, align 32
@r8a66597_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&r8a66597->rh_timer)\00", [42 x i8] zeroinitializer }, align 32
@r8a66597_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&r8a66597->timers[i].td)\00", [38 x i8] zeroinitializer }, align 32
@r8a66597_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&r8a66597->timers[i].interval)\00", [32 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 2493, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to add hcd\0A\00", [45 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.30 = internal global ptr @r8a66597_probe._entry.28, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@disable_r8a66597_pipe_all.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r8a66597_hcd\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disable_r8a66597_pipe_all\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable_pipe\0A\00", [18 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@free_usb_address.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"free_usb_address\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_addr: addr=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013r8a66597: invalid type.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_transfer\00", [17 x i8] zeroinitializer }, align 32
@start_transfer._entry_ptr = internal global ptr @start_transfer._entry, section ".printk_index", align 4
@alloc_usb_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"External hub limit reached.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_usb_address\00", [46 x i8] zeroinitializer }, align 32
@alloc_usb_address._entry_ptr = internal global ptr @alloc_usb_address._entry, section ".printk_index", align 4
@alloc_usb_address.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"alloc_address: r8a66597_addr=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@alloc_usb_address._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cannot communicate with a USB device more than 10.(%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@alloc_usb_address._entry_ptr.43 = internal global ptr @alloc_usb_address._entry.41, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_port_number._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013r8a66597: Illegal root port number.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_port_number\00", [16 x i8] zeroinitializer }, align 32
@get_port_number._entry_ptr = internal global ptr @get_port_number._entry, section ".printk_index", align 4
@get_r8a66597_usb_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013r8a66597: unknown speed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_r8a66597_usb_speed\00", [41 x i8] zeroinitializer }, align 32
@get_r8a66597_usb_speed._entry_ptr = internal global ptr @get_r8a66597_usb_speed._entry, section ".printk_index", align 4
@r8a66597_reg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013r8a66597: register%lx, loop %x is timeout\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r8a66597_reg_wait\00", [46 x i8] zeroinitializer }, align 32
@r8a66597_reg_wait._entry_ptr = internal global ptr @r8a66597_reg_wait._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@packet_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013r8a66597: out fifo not ready (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"packet_write\00", [19 x i8] zeroinitializer }, align 32
@packet_write._entry_ptr = internal global ptr @packet_write._entry, section ".printk_index", align 4
@packet_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013r8a66597: in fifo not ready (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"packet_read\00", [20 x i8] zeroinitializer }, align 32
@packet_read._entry_ptr = internal global ptr @packet_read._entry, section ".printk_index", align 4
@__const.set_pipe_reg_addr.fifoaddr = private unnamed_addr constant [3 x i32] [i32 24, i32 28, i32 20], align 4
@__const.set_pipe_reg_addr.fifosel = private unnamed_addr constant [3 x i32] [i32 40, i32 44, i32 32], align 4
@__const.set_pipe_reg_addr.fifoctr = private unnamed_addr constant [3 x i32] [i32 42, i32 46, i32 34], align 4
@get_empty_pipenum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013r8a66597: Illegal type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_empty_pipenum\00", [46 x i8] zeroinitializer }, align 32
@get_empty_pipenum._entry_ptr = internal global ptr @get_empty_pipenum._entry, section ".printk_index", align 4
@get_r8a66597_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.56, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_r8a66597_type\00", [46 x i8] zeroinitializer }, align 32
@get_r8a66597_type._entry_ptr = internal global ptr @get_r8a66597_type._entry, section ".printk_index", align 4
@get_bufnum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013r8a66597: Illegal pipenum (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_bufnum\00", [21 x i8] zeroinitializer }, align 32
@get_bufnum._entry_ptr = internal global ptr @get_bufnum._entry, section ".printk_index", align 4
@get_buf_bsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.59, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_buf_bsize\00", [18 x i8] zeroinitializer }, align 32
@get_buf_bsize._entry_ptr = internal global ptr @get_buf_bsize._entry, section ".printk_index", align 4
@enable_r8a66597_pipe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_r8a66597_pipe\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable_pipe:\0A\00", [18 x i8] zeroinitializer }, align 32
@enable_r8a66597_pipe_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 776, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"address %d, EndpointAddress 0x%02x use DMA FIFO\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enable_r8a66597_pipe_dma\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@enable_r8a66597_pipe_dma._entry_ptr = internal global ptr @enable_r8a66597_pipe_dma._entry, section ".printk_index", align 4
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@get_r8a66597_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013r8a66597: get_r8a66597_device fail.(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_r8a66597_device\00", [44 x i8] zeroinitializer }, align 32
@get_r8a66597_device._entry_ptr = internal global ptr @get_r8a66597_device._entry, section ".printk_index", align 4
@r8a66597_bus_suspend.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 2, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r8a66597_bus_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@r8a66597_bus_suspend.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 2, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"suspend port = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@r8a66597_bus_resume.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.71, ptr @.str.2, ptr @.str.69, i8 2, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r8a66597_bus_resume\00", [44 x i8] zeroinitializer }, align 32
@r8a66597_bus_resume.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 2, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resume port = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@r8a66597_clock_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013r8a66597: reg access fail.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r8a66597_clock_enable\00", [42 x i8] zeroinitializer }, align 32
@r8a66597_clock_enable._entry_ptr = internal global ptr @r8a66597_clock_enable._entry, section ".printk_index", align 4
@r8a66597_clock_enable._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r8a66597_clock_enable._entry_ptr.76 = internal global ptr @r8a66597_clock_enable._entry.75, section ".printk_index", align 4
@r8a66597_clock_enable._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r8a66597_clock_enable._entry_ptr.78 = internal global ptr @r8a66597_clock_enable._entry.77, section ".printk_index", align 4
@get_xtal_from_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.81, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013r8a66597: platdata clock is wrong.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_xtal_from_pdata\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/r8a66597.h\00", [36 x i8] zeroinitializer }, align 32
@get_xtal_from_pdata._entry_ptr = internal global ptr @get_xtal_from_pdata._entry, section ".printk_index", align 4
@r8a66597_suspend.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.82, ptr @.str.2, ptr @.str.69, i8 2, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r8a66597_suspend\00", [47 x i8] zeroinitializer }, align 32
@r8a66597_resume.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.83, ptr @.str.2, ptr @.str.69, i8 2, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r8a66597_resume\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 105, i64 225]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.90 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 16, i64 45, i64 105, i64 210, i64 225]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 16, i64 45, i64 105, i64 210, i64 225]
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"r8a66597_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2513, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 39, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"r8a66597_dev_pm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2371, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2415, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2422, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2433, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2438, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"r8a66597_hc_driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2305, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2447, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2457, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2460, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2469, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2470, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2482, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2483, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2493, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 881, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 411, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1219, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 374, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 386, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 395, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 253, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 274, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 443, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1399, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1324, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 682, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 712, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 731, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 747, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 802, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 771, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2048, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2249, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2258, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2280, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2289, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 89, i32 5 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 99, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 113, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [31 x i8] c"../drivers/usb/host/r8a66597.h\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 313, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2345, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [35 x i8] c"../drivers/usb/host/r8a66597-hcd.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 2363, i32 2 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_r8a66597_driver_exit, ptr @__initcall__kmod_r8a66597_hcd__258_2522_r8a66597_driver_init6, ptr @alloc_usb_address._entry, ptr @alloc_usb_address._entry.41, ptr @alloc_usb_address._entry_ptr, ptr @alloc_usb_address._entry_ptr.43, ptr @enable_r8a66597_pipe_dma._entry, ptr @enable_r8a66597_pipe_dma._entry_ptr, ptr @get_buf_bsize._entry, ptr @get_buf_bsize._entry_ptr, ptr @get_bufnum._entry, ptr @get_bufnum._entry_ptr, ptr @get_empty_pipenum._entry, ptr @get_empty_pipenum._entry_ptr, ptr @get_port_number._entry, ptr @get_port_number._entry_ptr, ptr @get_r8a66597_device._entry, ptr @get_r8a66597_device._entry_ptr, ptr @get_r8a66597_type._entry, ptr @get_r8a66597_type._entry_ptr, ptr @get_r8a66597_usb_speed._entry, ptr @get_r8a66597_usb_speed._entry_ptr, ptr @get_xtal_from_pdata._entry, ptr @get_xtal_from_pdata._entry_ptr, ptr @packet_read._entry, ptr @packet_read._entry_ptr, ptr @packet_write._entry, ptr @packet_write._entry_ptr, ptr @r8a66597_clock_enable._entry, ptr @r8a66597_clock_enable._entry.75, ptr @r8a66597_clock_enable._entry.77, ptr @r8a66597_clock_enable._entry_ptr, ptr @r8a66597_clock_enable._entry_ptr.76, ptr @r8a66597_clock_enable._entry_ptr.78, ptr @r8a66597_driver_exit, ptr @r8a66597_probe._entry, ptr @r8a66597_probe._entry.11, ptr @r8a66597_probe._entry.14, ptr @r8a66597_probe._entry.18, ptr @r8a66597_probe._entry.28, ptr @r8a66597_probe._entry.5, ptr @r8a66597_probe._entry.8, ptr @r8a66597_probe._entry_ptr, ptr @r8a66597_probe._entry_ptr.10, ptr @r8a66597_probe._entry_ptr.13, ptr @r8a66597_probe._entry_ptr.16, ptr @r8a66597_probe._entry_ptr.20, ptr @r8a66597_probe._entry_ptr.30, ptr @r8a66597_probe._entry_ptr.7, ptr @r8a66597_reg_wait._entry, ptr @r8a66597_reg_wait._entry_ptr, ptr @start_transfer._entry, ptr @start_transfer._entry_ptr, ptr @r8a66597_driver, ptr @hcd_name, ptr @r8a66597_dev_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @r8a66597_hc_driver, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @r8a66597_probe.__key, ptr @.str.21, ptr @r8a66597_probe.__key.22, ptr @.str.23, ptr @r8a66597_probe.__key.24, ptr @.str.25, ptr @r8a66597_probe.__key.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_usb_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_usb_address._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_port_number._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_r8a66597_usb_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_reg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_empty_pipenum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_r8a66597_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_bufnum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_buf_bsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_r8a66597_pipe_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_r8a66597_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_clock_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_clock_enable._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_clock_enable._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_xtal_from_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @r8a66597_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @r8a66597_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_name) #10
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %clk_name, align 8
  %call = tail call i32 @usb_disabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %1 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call5, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 15
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call15 = tail call ptr @ioremap(i32 noundef %6, i32 noundef %add.i) #10
  %cmp = icmp eq ptr %call15, null
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 8
  %cmp23 = icmp eq ptr %10, null
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.12) #13
  br label %if.then115

if.end29:                                         ; preds = %if.end21
  %call31 = tail call ptr @usb_create_hcd(ptr noundef nonnull @r8a66597_hc_driver, ptr noundef %dev20, ptr noundef nonnull @hcd_name) #10
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.15) #13
  br label %if.then115

if.end38:                                         ; preds = %if.end29
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 30
  %11 = call ptr @memset(ptr %hcd_priv.i, i32 0, i32 1312)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hcd_priv.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp42 = icmp eq i32 %and, 8
  %irq_sense_low = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 3, i32 0, i32 9, i32 5, i32 3
  %16 = ptrtoint ptr %irq_sense_low to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %irq_sense_low, align 4
  %bf.shl = select i1 %cmp42, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %irq_sense_low, align 4
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load44 = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load44)
  %tobool45.not = icmp sgt i8 %bf.load44, -1
  br i1 %tobool45.not, label %if.end38.do.body64_crit_edge, label %if.then46

if.end38.do.body64_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

if.then46:                                        ; preds = %if.end38
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %19)
  %call50 = call ptr @clk_get(ptr noundef %dev20, ptr noundef nonnull %clk_name) #10
  %clk = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 0, i32 9, i32 1, i32 4
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call50, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clean_up.thread196, label %if.then46.do.body64_crit_edge

if.then46.do.body64_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

clean_up.thread196:                               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.19, ptr noundef nonnull %clk_name) #13
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @usb_put_hcd(ptr noundef nonnull %call31) #10
  br label %if.then115

do.body64:                                        ; preds = %if.then46.do.body64_crit_edge, %if.end38.do.body64_crit_edge
  %.sink = phi i32 [ 1, %if.then46.do.body64_crit_edge ], [ 2, %if.end38.do.body64_crit_edge ]
  %max_root_hub = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 3, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %max_root_hub, align 4
  call void @__raw_spin_lock_init(ptr noundef %hcd_priv.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @r8a66597_probe.__key, i16 noundef signext 3) #10
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 5, i32 1
  call void @init_timer_key(ptr noundef %rh_timer, ptr noundef nonnull @r8a66597_timer, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @r8a66597_probe.__key.22) #10
  %reg71 = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 0, i32 9, i32 1, i32 3
  %25 = ptrtoint ptr %reg71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %reg71, align 4
  %call72 = call fastcc i32 @r8a66597_clock_enable(ptr noundef %hcd_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.body64.clean_up3_crit_edge, label %if.end76

do.body64.clean_up3_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up3

if.end76:                                         ; preds = %do.body64
  call fastcc void @disable_controller(ptr noundef %hcd_priv.i)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end76
  %i.0199 = phi i32 [ 0, %if.end76 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %i.0199
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %i.0199, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx79 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 8, i32 %i.0199
  %r8a6659780 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 8, i32 %i.0199, i32 2
  %28 = ptrtoint ptr %r8a6659780 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hcd_priv.i, ptr %r8a6659780, align 4
  call void @init_timer_key(ptr noundef %arrayidx79, ptr noundef nonnull @r8a66597_td_timer, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @r8a66597_probe.__key.24) #10
  %interval = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 8, i32 %i.0199, i32 1
  call void @init_timer_key(ptr noundef %interval, ptr noundef nonnull @r8a66597_interval_timer, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @r8a66597_probe.__key.26) #10
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %child_device = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 3, i32 0, i32 9, i32 3, i32 1
  %29 = ptrtoint ptr %child_device to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %child_device, ptr %child_device, align 4
  %prev.i184 = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 3, i32 0, i32 9, i32 4
  %30 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %child_device, ptr %prev.i184, align 4
  %31 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call1, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 17
  %33 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rsrc_start, align 8
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 0, i32 14
  %34 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load92 = load i16, ptr %has_tt, align 4
  %bf.set94 = or i16 %bf.load92, 256
  store i16 %bf.set94, ptr %has_tt, align 4
  %call95 = call i32 @usb_add_hcd(ptr noundef nonnull %call31, i32 noundef %2, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96.not = icmp eq i32 %call95, 0
  br i1 %cmp96.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.29) #13
  br label %clean_up3

if.end103:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call31, align 8
  %call104 = call i32 @device_wakeup_enable(ptr noundef %36) #10
  br label %cleanup

clean_up3:                                        ; preds = %do.end101, %do.body64.clean_up3_crit_edge
  %ret.0 = phi i32 [ %call72, %do.body64.clean_up3_crit_edge ], [ %call95, %do.end101 ]
  %37 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata, align 4
  %on_chip106 = getelementptr inbounds %struct.r8a66597_platdata, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %on_chip106 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load107 = load i8, ptr %on_chip106, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load107)
  %tobool110.not = icmp sgt i8 %bf.load107, -1
  br i1 %tobool110.not, label %clean_up3.clean_up_crit_edge, label %if.then111

clean_up3.clean_up_crit_edge:                     ; preds = %clean_up3
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up

if.then111:                                       ; preds = %clean_up3
  call void @__sanitizer_cov_trace_pc() #12
  %clk112 = getelementptr inbounds %struct.usb_hcd, ptr %call31, i32 1, i32 0, i32 9, i32 1, i32 4
  %40 = ptrtoint ptr %clk112 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk112, align 4
  call void @clk_put(ptr noundef %41) #10
  br label %clean_up

clean_up:                                         ; preds = %if.then111, %clean_up3.clean_up_crit_edge
  call void @usb_put_hcd(ptr noundef nonnull %call31) #10
  br label %if.then115

if.then115:                                       ; preds = %clean_up, %clean_up.thread196, %if.then33, %do.end27
  %ret.2195 = phi i32 [ %ret.0, %clean_up ], [ %23, %clean_up.thread196 ], [ -12, %if.then33 ], [ -19, %do.end27 ]
  call void @iounmap(ptr noundef nonnull %call15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end103, %if.then16, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end103 ], [ -19, %entry.cleanup_crit_edge ], [ %ret.2195, %if.then115 ], [ -19, %if.then3 ], [ -19, %if.then7 ], [ -12, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  %rh_timer = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @del_timer_sync(ptr noundef %rh_timer) #10
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #10
  %reg = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %3) #10
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -212
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %max_root_hub = getelementptr i8, ptr %t, i32 1068
  %0 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp614.not = icmp eq i32 %1, 0
  br i1 %cmp614.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg.i.i = getelementptr i8, ptr %t, i32 -168
  %bus_suspended.i.i = getelementptr i8, ptr %t, i32 1096
  %add.ptr.i63.i.i = getelementptr i8, ptr %t, i32 -812
  br label %for.body

for.body:                                         ; preds = %r8a66597_root_hub_control.exit.for.body_crit_edge, %for.body.lr.ph
  %port.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %r8a66597_root_hub_control.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %add.ptr, i32 0, i32 5, i32 %port.015
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end6.i_crit_edge, label %if.then.i

for.body.if.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.015)
  %cmp.i.i = icmp eq i32 %port.015, 0
  %cond.i.i = select i1 %cmp.i.i, i32 8, i32 10
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %cond.i.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %7 = and i16 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 0
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %cond.i.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10
  br i1 %cmp.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %11 = and i16 %10, -20481
  %12 = or i16 %11, 4096
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %14, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %12) #10, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %15, 1
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i.i) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then.i
  %16 = lshr i16 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i66.i = and i32 %18, -1537
  store i32 %and.i66.i, ptr %arrayidx.i, align 4
  %trunc.i.i = trunc i16 %16 to i3
  %19 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i.i, label %if.else.i.r8a66597_usb_connect.exit.i_crit_edge [
    i3 3, label %if.else.i.if.end10.sink.split.i.i_crit_edge
    i3 1, label %if.then7.i.i
  ]

if.else.i.if.end10.sink.split.i.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split.i.i

if.else.i.r8a66597_usb_connect.exit.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_usb_connect.exit.i

if.then7.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split.i.i

if.end10.sink.split.i.i:                          ; preds = %if.then7.i.i, %if.else.i.if.end10.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 512, %if.then7.i.i ], [ 1024, %if.else.i.if.end10.sink.split.i.i_crit_edge ]
  %or9.i.i = or i32 %.sink.i.i, %and.i66.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or9.i.i, ptr %arrayidx.i, align 4
  br label %r8a66597_usb_connect.exit.i

r8a66597_usb_connect.exit.i:                      ; preds = %if.end10.sink.split.i.i, %if.else.i.r8a66597_usb_connect.exit.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %and12.i.i = and i32 %22, -19
  %or14.i.i = or i32 %and12.i.i, 2
  store i32 %or14.i.i, ptr %arrayidx.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %r8a66597_usb_connect.exit.i, %if.then5.i, %for.body.if.end6.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %and8.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.015)
  %cmp.i67.i = icmp eq i32 %port.015, 0
  %cond.i68.i = select i1 %cmp.i67.i, i32 66, i32 68
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %26, i32 %cond.i68.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70.i, i16 -9) #10, !srcloc !200
  %cond.i72.i = select i1 %cmp.i67.i, i32 50, i32 52
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i74.i = getelementptr i8, ptr %28, i32 %cond.i72.i
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i74.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %30 = or i16 %29, 8
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i76.i = getelementptr i8, ptr %32, i32 %cond.i72.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i76.i, i16 %30) #10, !srcloc !200
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end13.i_crit_edge
  %scount.i = getelementptr %struct.r8a66597, ptr %add.ptr, i32 0, i32 5, i32 %port.015, i32 2
  %33 = ptrtoint ptr %scount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14.i = icmp sgt i32 %34, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end13.i.r8a66597_root_hub_control.exit_crit_edge

if.end13.i.r8a66597_root_hub_control.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_root_hub_control.exit

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.015)
  %cmp.i77.i = icmp eq i32 %port.015, 0
  %cond.i78.i = select i1 %cmp.i77.i, i32 4, i32 6
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %36, i32 %cond.i78.i
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i80.i) #10, !srcloc !197
  %38 = lshr i16 %37, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %39 = and i16 %38, 3
  %old_syssts.i = getelementptr %struct.r8a66597, ptr %add.ptr, i32 0, i32 5, i32 %port.015, i32 1
  %40 = ptrtoint ptr %old_syssts.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %old_syssts.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp24.i = icmp eq i16 %39, %41
  br i1 %cmp24.i, label %if.then26.i, label %if.else34.i

if.then26.i:                                      ; preds = %if.then16.i
  %42 = ptrtoint ptr %scount.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scount.i, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %scount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp29.i = icmp eq i32 %dec.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.else32.i

if.then31.i:                                      ; preds = %if.then26.i
  %trunc.i = trunc i16 %38 to i2
  %44 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.84)
  switch i2 %trunc.i, label %if.then31.i.if.end14.i.i_crit_edge [
    i2 0, label %if.then.i.i
    i2 1, label %if.then6.i.i
    i2 -2, label %if.then12.i.i
  ]

if.then31.i.if.end14.i.i_crit_edge:               ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then.i.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i.i.i = select i1 %cmp.i77.i, i32 66, i32 68
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i82.i = getelementptr i8, ptr %46, i32 %cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i82.i, i16 -9) #10, !srcloc !200
  %cond.i41.i.i = select i1 %cmp.i77.i, i32 50, i32 52
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i83.i = getelementptr i8, ptr %48, i32 %cond.i41.i.i
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i83.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %50 = or i16 %49, 8
  %51 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %52, i32 %cond.i41.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %50) #10, !srcloc !200
  br label %r8a66597_check_syssts.exit.i

if.then6.i.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i43.i.i = select i1 %cmp.i77.i, i32 0, i32 2
  %53 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %54, i32 %cond.i43.i.i
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i45.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %56 = or i16 %55, -32768
  %57 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i47.i.i = getelementptr i8, ptr %58, i32 %cond.i43.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i47.i.i, i16 %56) #10, !srcloc !200
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i49.i.i = select i1 %cmp.i77.i, i32 0, i32 2
  %59 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i51.i.i = getelementptr i8, ptr %60, i32 %cond.i49.i.i
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i51.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %62 = and i16 %61, 32767
  %63 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i52.i.i = getelementptr i8, ptr %64, i32 %cond.i49.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i52.i.i, i16 %62) #10, !srcloc !200
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.then6.i.i, %if.then31.i.if.end14.i.i_crit_edge
  %cond.i54.i.i = select i1 %cmp.i77.i, i32 66, i32 68
  %65 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %66, i32 %cond.i54.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i56.i.i, i16 -17) #10, !srcloc !200
  %cond.i58.i.i = select i1 %cmp.i77.i, i32 50, i32 52
  %67 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i60.i.i = getelementptr i8, ptr %68, i32 %cond.i58.i.i
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i60.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %70 = or i16 %69, 16
  %71 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i62.i.i = getelementptr i8, ptr %72, i32 %cond.i58.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i62.i.i, i16 %70) #10, !srcloc !200
  %73 = ptrtoint ptr %bus_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i = load i8, ptr %bus_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end14.i.i.r8a66597_check_syssts.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.r8a66597_check_syssts.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_check_syssts.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_hcd_resume_root_hub(ptr noundef %add.ptr.i63.i.i) #10
  br label %r8a66597_check_syssts.exit.i

r8a66597_check_syssts.exit.i:                     ; preds = %if.then17.i.i, %if.end14.i.i.r8a66597_check_syssts.exit.i_crit_edge, %if.then.i.i
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #10
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i63.i.i) #10
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #10
  br label %r8a66597_root_hub_control.exit

if.else32.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %add.i85.i = add i32 %74, 1
  %call1.i86.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i85.i) #10
  br label %r8a66597_root_hub_control.exit

if.else34.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %scount.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 5, ptr %scount.i, align 4
  %76 = ptrtoint ptr %old_syssts.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %39, ptr %old_syssts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.i88.i = add i32 %77, 1
  %call1.i89.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i88.i) #10
  br label %r8a66597_root_hub_control.exit

r8a66597_root_hub_control.exit:                   ; preds = %if.else34.i, %if.else32.i, %r8a66597_check_syssts.exit.i, %if.end13.i.r8a66597_root_hub_control.exit_crit_edge
  %inc = add nuw i32 %port.015, 1
  %78 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_root_hub, align 4
  %cmp6 = icmp ult i32 %inc, %79
  br i1 %cmp6, label %r8a66597_root_hub_control.exit.for.body_crit_edge, label %r8a66597_root_hub_control.exit.for.end_crit_edge

r8a66597_root_hub_control.exit.for.end_crit_edge: ; preds = %r8a66597_root_hub_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

r8a66597_root_hub_control.exit.for.body_crit_edge: ; preds = %r8a66597_root_hub_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %r8a66597_root_hub_control.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r8a66597_clock_enable(ptr nocapture noundef readonly %r8a66597) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body10.preheader, label %if.then

do.body10.preheader:                              ; preds = %entry
  %reg.i67 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  br label %do.body10

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %4) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond6.do.body_crit_edge, %clk_prepare_enable.exit
  %i.0 = phi i32 [ 0, %clk_prepare_enable.exit ], [ %inc, %do.cond6.do.body_crit_edge ]
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 4) #10, !srcloc !200
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %i.0)
  %exitcond = icmp eq i32 %i.0, 1001
  br i1 %exitcond, label %do.end, label %do.cond6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %cleanup

do.cond6:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %i.0, 1
  %10 = and i16 %9, 4
  %cmp7.not.not = icmp eq i16 %10, 0
  br i1 %cmp7.not.not, label %do.cond6.do.body_crit_edge, label %do.end9

do.cond6.do.body_crit_edge:                       ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end9:                                          ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1024) #10, !srcloc !200
  br label %cleanup

do.body10:                                        ; preds = %do.cond22.do.body10_crit_edge, %do.body10.preheader
  %i.1 = phi i32 [ %inc12, %do.cond22.do.body10_crit_edge ], [ 0, %do.body10.preheader ]
  %13 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 256) #10, !srcloc !200
  %15 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i67, align 4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %i.1)
  %exitcond77 = icmp eq i32 %i.1, 1001
  br i1 %exitcond77, label %do.end18, label %do.cond22

do.end18:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %cleanup

do.cond22:                                        ; preds = %do.body10
  %inc12 = add nuw nsw i32 %i.1, 1
  %18 = and i16 %17, 256
  %cmp25.not.not = icmp eq i16 %18, 0
  br i1 %cmp25.not.not, label %do.cond22.do.body10_crit_edge, label %do.end27

do.cond22.do.body10_crit_edge:                    ; preds = %do.cond22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.end27:                                         ; preds = %do.cond22
  %19 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i67, align 4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %22 = and i16 %21, -257
  %23 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #10, !srcloc !200
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 4
  %xtal.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %xtal.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %switch.tableidx = add nsw i32 %bf.cast.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 3
  br i1 %28, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  br label %get_xtal_from_pdata.exit

switch.lookup:                                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = shl i16 %switch.idx.cast, 14
  br label %get_xtal_from_pdata.exit

get_xtal_from_pdata.exit:                         ; preds = %switch.lookup, %do.end.i
  %clock.0.i = phi i16 [ 0, %do.end.i ], [ %switch.idx.mult, %switch.lookup ]
  %29 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i67, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %32 = and i16 %31, -193
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %or10.i = or i16 %33, %clock.0.i
  %34 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %36 = tail call i16 @llvm.bswap.i16(i16 %or10.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %36) #10, !srcloc !200
  %37 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i67, align 4
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %40 = or i16 %39, 32
  %41 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #10, !srcloc !200
  br label %do.body30

do.body30:                                        ; preds = %do.cond42.do.body30_crit_edge, %get_xtal_from_pdata.exit
  %i.2 = phi i32 [ 0, %get_xtal_from_pdata.exit ], [ %inc32, %do.cond42.do.body30_crit_edge ]
  tail call void @msleep(i32 noundef 1) #10
  %43 = ptrtoint ptr %reg.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i67, align 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %i.2)
  %exitcond78 = icmp eq i32 %i.2, 501
  br i1 %exitcond78, label %do.end38, label %do.cond42

do.end38:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %cleanup

do.cond42:                                        ; preds = %do.body30
  %inc32 = add nuw nsw i32 %i.2, 1
  %46 = and i16 %45, 4
  %cmp45.not.not = icmp eq i16 %46, 0
  br i1 %cmp45.not.not, label %do.cond42.do.body30_crit_edge, label %do.cond42.cleanup_crit_edge

do.cond42.cleanup_crit_edge:                      ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond42.do.body30_crit_edge:                    ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

cleanup:                                          ; preds = %do.cond42.cleanup_crit_edge, %do.end38, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end18 ], [ -6, %do.end38 ], [ 0, %do.end9 ], [ 0, %do.cond42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_controller(ptr nocapture noundef readonly %r8a66597) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #10, !srcloc !200
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %3, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14, i16 0) #10, !srcloc !200
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %5, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 0) #10, !srcloc !200
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18, i16 0) #10, !srcloc !200
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i20, i16 0) #10, !srcloc !200
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22, i16 0) #10, !srcloc !200
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 0) #10, !srcloc !200
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %15, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26, i16 0) #10, !srcloc !200
  %max_root_hub = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 14
  %16 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27.not = icmp eq i32 %17, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdata.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %r8a66597_disable_port.exit.for.body_crit_edge, %for.body.lr.ph
  %port.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %r8a66597_disable_port.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.028)
  %cmp.i.i = icmp eq i32 %port.028, 0
  %cond.i.i = select i1 %cmp.i.i, i32 50, i32 52
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !200
  %cond.i20.i = select i1 %cmp.i.i, i32 66, i32 68
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %21, i32 %cond.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i, i16 0) #10, !srcloc !200
  %22 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %25(i32 noundef %port.028, i32 noundef 0) #10
  br label %do.body.i.preheader

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i.i.i = select i1 %cmp.i.i, i32 8, i32 10
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %27, i32 %cond.i.i.i
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %29 = and i16 %28, -3
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i15.i.i = getelementptr i8, ptr %31, i32 %cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i15.i.i, i16 %29) #10, !srcloc !200
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.else.i.i, %if.then.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %33, i32 60
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i24.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 137438720) #10
  %36 = and i16 %34, 4096
  %cmp.not.i = icmp eq i16 %36, 0
  br i1 %cmp.not.i, label %r8a66597_disable_port.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

r8a66597_disable_port.exit:                       ; preds = %do.body.i
  %cond.i26.i = select i1 %cmp.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %cond.i26.i
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = select i1 %cmp.i.i, i16 -97, i16 -33
  %and.i.i = and i16 %40, %neg.i.i
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %42, i32 %cond.i26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %43 = tail call i16 @llvm.bswap.i16(i16 %and.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %43) #10, !srcloc !200
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %45, i32 %cond.i26.i
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i30.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %47 = and i16 %46, 32767
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i32.i = getelementptr i8, ptr %49, i32 %cond.i26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i32.i, i16 %47) #10, !srcloc !200
  %inc = add nuw i32 %port.028, 1
  %50 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_root_hub, align 4
  %cmp = icmp ult i32 %inc, %51
  br i1 %cmp, label %r8a66597_disable_port.exit.for.body_crit_edge, label %r8a66597_disable_port.exit.for.end_crit_edge

r8a66597_disable_port.exit.for.end_crit_edge:     ; preds = %r8a66597_disable_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

r8a66597_disable_port.exit.for.body_crit_edge:    ; preds = %r8a66597_disable_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %r8a66597_disable_port.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %53) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %55 = and i16 %54, -5
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 %55) #10, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #10
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %59 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata.i, align 4
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 2
  %62 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %63) #10
  tail call void @clk_unprepare(ptr noundef %63) #10
  br label %r8a66597_clock_disable.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %67 = and i16 %66, -9
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %67) #10, !srcloc !200
  %70 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i, align 4
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %73 = and i16 %72, -33
  %74 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %73) #10, !srcloc !200
  %76 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i, align 4
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %77) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %79 = and i16 %78, -257
  %80 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 %79) #10, !srcloc !200
  br label %r8a66597_clock_disable.exit

r8a66597_clock_disable.exit:                      ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_td_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a665971 = getelementptr inbounds %struct.r8a66597_timers, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %r8a665971 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a665971, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %timeout_map = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %timeout_map, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %pprev.i.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.end17, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %8, i32 -8
  %tobool19.not152 = icmp eq ptr %add.ptr.i, null
  %tobool19.not = or i1 %cmp.i.not.i, %tobool19.not152
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = and i16 %3, -2
  %9 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv26, ptr %timeout_map, align 2
  br label %for.inc

if.end27:                                         ; preds = %if.end17.9.if.end27_crit_edge, %if.end17.8.if.end27_crit_edge, %if.end17.7.if.end27_crit_edge, %if.end17.6.if.end27_crit_edge, %if.end17.5.if.end27_crit_edge, %if.end17.4.if.end27_crit_edge, %if.end17.3.if.end27_crit_edge, %if.end17.2.if.end27_crit_edge, %if.end17.1.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %conv7159.lcssa = phi i32 [ 0, %if.end17.if.end27_crit_edge ], [ 1, %if.end17.1.if.end27_crit_edge ], [ 2, %if.end17.2.if.end27_crit_edge ], [ 3, %if.end17.3.if.end27_crit_edge ], [ 4, %if.end17.4.if.end27_crit_edge ], [ 5, %if.end17.5.if.end27_crit_edge ], [ 6, %if.end17.6.if.end27_crit_edge ], [ 7, %if.end17.7.if.end27_crit_edge ], [ 8, %if.end17.8.if.end27_crit_edge ], [ 9, %if.end17.9.if.end27_crit_edge ]
  %.lcssa163 = phi i16 [ %3, %if.end17.if.end27_crit_edge ], [ %79, %if.end17.1.if.end27_crit_edge ], [ %87, %if.end17.2.if.end27_crit_edge ], [ %95, %if.end17.3.if.end27_crit_edge ], [ %103, %if.end17.4.if.end27_crit_edge ], [ %111, %if.end17.5.if.end27_crit_edge ], [ %119, %if.end17.6.if.end27_crit_edge ], [ %127, %if.end17.7.if.end27_crit_edge ], [ %135, %if.end17.8.if.end27_crit_edge ], [ %143, %if.end17.9.if.end27_crit_edge ]
  %shl.lcssa = phi i16 [ -2, %if.end17.if.end27_crit_edge ], [ -3, %if.end17.1.if.end27_crit_edge ], [ -5, %if.end17.2.if.end27_crit_edge ], [ -9, %if.end17.3.if.end27_crit_edge ], [ -17, %if.end17.4.if.end27_crit_edge ], [ -33, %if.end17.5.if.end27_crit_edge ], [ -65, %if.end17.6.if.end27_crit_edge ], [ -129, %if.end17.7.if.end27_crit_edge ], [ -257, %if.end17.8.if.end27_crit_edge ], [ -513, %if.end17.9.if.end27_crit_edge ]
  %arrayidx.i.lcssa = phi ptr [ %arrayidx.i, %if.end17.if.end27_crit_edge ], [ %arrayidx.i.1, %if.end17.1.if.end27_crit_edge ], [ %arrayidx.i.2, %if.end17.2.if.end27_crit_edge ], [ %arrayidx.i.3, %if.end17.3.if.end27_crit_edge ], [ %arrayidx.i.4, %if.end17.4.if.end27_crit_edge ], [ %arrayidx.i.5, %if.end17.5.if.end27_crit_edge ], [ %arrayidx.i.6, %if.end17.6.if.end27_crit_edge ], [ %arrayidx.i.7, %if.end17.7.if.end27_crit_edge ], [ %arrayidx.i.8, %if.end17.8.if.end27_crit_edge ], [ %arrayidx.i.9, %if.end17.9.if.end27_crit_edge ]
  %.lcssa = phi ptr [ %8, %if.end17.if.end27_crit_edge ], [ %84, %if.end17.1.if.end27_crit_edge ], [ %92, %if.end17.2.if.end27_crit_edge ], [ %100, %if.end17.3.if.end27_crit_edge ], [ %108, %if.end17.4.if.end27_crit_edge ], [ %116, %if.end17.5.if.end27_crit_edge ], [ %124, %if.end17.6.if.end27_crit_edge ], [ %132, %if.end17.7.if.end27_crit_edge ], [ %140, %if.end17.8.if.end27_crit_edge ], [ %148, %if.end17.9.if.end27_crit_edge ]
  %add.ptr.i.lcssa = phi ptr [ %add.ptr.i, %if.end17.if.end27_crit_edge ], [ %add.ptr.i.1, %if.end17.1.if.end27_crit_edge ], [ %add.ptr.i.2, %if.end17.2.if.end27_crit_edge ], [ %add.ptr.i.3, %if.end17.3.if.end27_crit_edge ], [ %add.ptr.i.4, %if.end17.4.if.end27_crit_edge ], [ %add.ptr.i.5, %if.end17.5.if.end27_crit_edge ], [ %add.ptr.i.6, %if.end17.6.if.end27_crit_edge ], [ %add.ptr.i.7, %if.end17.7.if.end27_crit_edge ], [ %add.ptr.i.8, %if.end17.8.if.end27_crit_edge ], [ %add.ptr.i.9, %if.end17.9.if.end27_crit_edge ]
  %urb = getelementptr i8, ptr %.lcssa, i32 -4
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  br i1 %tobool28.not, label %if.end30, label %do.end9.i

do.end9.i:                                        ; preds = %if.end27
  %pipenum.i = getelementptr i8, ptr %.lcssa, i32 10
  %14 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pipenum.i, align 2
  %idxprom.i106 = zext i16 %15 to i32
  %arrayidx.i107 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 %idxprom.i106
  %16 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i107, align 4
  %cmp.i.not.i108 = icmp eq ptr %17, %arrayidx.i107
  br i1 %cmp.i.not.i108, label %do.end9.i.for.end_crit_edge, label %land.lhs.true.i

do.end9.i.for.end_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.i:                                  ; preds = %do.end9.i
  %pipe.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %18 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe.i, align 4
  %shr.mask.i = and i32 %19, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, -2147483648
  %and14.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool15.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.for.end_crit_edge, label %if.then16.i

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %idxprom.i106
  %20 = trunc i32 %shl.i to i16
  %conv19.i = or i16 %.lcssa163, %20
  %21 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv19.i, ptr %timeout_map, align 2
  %22 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb, align 4
  %pipe21.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %pipe21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipe21.i, align 4
  %26 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pipenum.i, align 2
  %idxprom25.i = zext i16 %27 to i32
  %arrayidx26.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 %idxprom25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %switch.i = icmp sgt i32 %25, -1
  %..i = select i1 %switch.i, i32 30, i32 50
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %..i) #10
  %add.i = add i32 %call2.i.i, %28
  %call29.i = tail call i32 @mod_timer(ptr noundef %arrayidx26.i, i32 noundef %add.i) #10
  br label %for.end

if.end30:                                         ; preds = %if.end27
  %29 = ptrtoint ptr %add.ptr.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.lcssa, align 4
  tail call fastcc void @pipe_stop(ptr noundef %1, ptr noundef %30)
  %prev.i2.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 %conv7159.lcssa, i32 1
  %address = getelementptr i8, ptr %.lcssa, i32 16
  br label %do.body32

do.body32:                                        ; preds = %land.rhs.do.body32_crit_edge, %if.end30
  %31 = phi ptr [ %.lcssa, %if.end30 ], [ %45, %land.rhs.do.body32_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body32.__list_del_entry.exit.i_crit_edge

do.body32.__list_del_entry.exit.i_crit_edge:      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.body32.__list_del_entry.exit.i_crit_edge
  %38 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %31, ptr noundef %39, ptr noundef %arrayidx.i.lcssa) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %31, ptr %prev.i2.i, align 4
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i.lcssa, ptr %31, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %31, ptr %39, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %44 = ptrtoint ptr %arrayidx.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %arrayidx.i.lcssa, align 4
  %cmp.i.not.i111 = icmp eq ptr %45, %arrayidx.i.lcssa
  %add.ptr.i112 = getelementptr i8, ptr %45, i32 -8
  %tobool36.not153 = icmp eq ptr %add.ptr.i112, null
  %tobool36.not = or i1 %cmp.i.not.i111, %tobool36.not153
  br i1 %tobool36.not, label %do.end55.thread, label %do.cond39

do.end55.thread:                                  ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call56150 = tail call fastcc i32 @start_transfer(ptr noundef %1, ptr noundef nonnull %add.ptr.i.lcssa)
  br label %if.then59

do.cond39:                                        ; preds = %list_move_tail.exit
  %cmp40.not = icmp eq ptr %.lcssa, %45
  br i1 %cmp40.not, label %do.cond39.do.end55_crit_edge, label %land.lhs.true

do.cond39.do.end55_crit_edge:                     ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

land.lhs.true:                                    ; preds = %do.cond39
  %46 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %address, align 4
  %address43 = getelementptr i8, ptr %45, i32 16
  %48 = ptrtoint ptr %address43 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %address43, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp45 = icmp eq i16 %47, %49
  br i1 %cmp45, label %land.rhs, label %land.lhs.true.do.end55_crit_edge

land.lhs.true.do.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

land.rhs:                                         ; preds = %land.lhs.true
  %50 = ptrtoint ptr %add.ptr.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.lcssa, align 4
  %epnum = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %epnum to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %epnum, align 4
  %54 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i112, align 4
  %epnum51 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %epnum51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %epnum51, align 4
  %cmp53 = icmp eq i16 %53, %57
  br i1 %cmp53, label %land.rhs.do.body32_crit_edge, label %land.rhs.do.end55_crit_edge

land.rhs.do.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

land.rhs.do.body32_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.end55:                                         ; preds = %land.rhs.do.end55_crit_edge, %land.lhs.true.do.end55_crit_edge, %do.cond39.do.end55_crit_edge
  %.lcssa161 = phi ptr [ %.lcssa, %do.cond39.do.end55_crit_edge ], [ %45, %land.lhs.true.do.end55_crit_edge ], [ %45, %land.rhs.do.end55_crit_edge ]
  %call56 = tail call fastcc i32 @start_transfer(ptr noundef %1, ptr noundef nonnull %add.ptr.i112)
  %cmp57 = icmp eq ptr %.lcssa, %.lcssa161
  br i1 %cmp57, label %do.end55.if.then59_crit_edge, label %do.end9.i120

do.end55.if.then59_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %do.end55.if.then59_crit_edge, %do.end55.thread
  %58 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %timeout_map, align 2
  %conv66 = and i16 %59, %shl.lcssa
  store i16 %conv66, ptr %timeout_map, align 2
  br label %for.end

do.end9.i120:                                     ; preds = %do.end55
  %pipenum.i116 = getelementptr i8, ptr %.lcssa161, i32 10
  %60 = ptrtoint ptr %pipenum.i116 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pipenum.i116, align 2
  %idxprom.i117 = zext i16 %61 to i32
  %arrayidx.i118 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 %idxprom.i117
  %62 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx.i118, align 4
  %cmp.i.not.i119 = icmp eq ptr %63, %arrayidx.i118
  br i1 %cmp.i.not.i119, label %do.end9.i120.for.end_crit_edge, label %land.lhs.true.i128

do.end9.i120.for.end_crit_edge:                   ; preds = %do.end9.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.i128:                               ; preds = %do.end9.i120
  %urb.i121 = getelementptr i8, ptr %.lcssa161, i32 -4
  %64 = ptrtoint ptr %urb.i121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urb.i121, align 4
  %pipe.i122 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %pipe.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pipe.i122, align 4
  %shr.mask.i123 = and i32 %67, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i123)
  %cmp.i124 = icmp eq i32 %shr.mask.i123, -2147483648
  %and14.i125 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i125)
  %tobool15.not.i126 = icmp eq i32 %and14.i125, 0
  %or.cond.i127 = or i1 %cmp.i124, %tobool15.not.i126
  br i1 %or.cond.i127, label %land.lhs.true.i128.for.end_crit_edge, label %if.then16.i137

land.lhs.true.i128.for.end_crit_edge:             ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16.i137:                                   ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i129 = shl nuw i32 1, %idxprom.i117
  %68 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %timeout_map, align 2
  %70 = trunc i32 %shl.i129 to i16
  %conv19.i131 = or i16 %69, %70
  store i16 %conv19.i131, ptr %timeout_map, align 2
  %71 = ptrtoint ptr %urb.i121 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %urb.i121, align 4
  %pipe21.i132 = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %pipe21.i132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pipe21.i132, align 4
  %75 = ptrtoint ptr %pipenum.i116 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %pipenum.i116, align 2
  %idxprom25.i135 = zext i16 %76 to i32
  %arrayidx26.i136 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 %idxprom25.i135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %switch.i133 = icmp sgt i32 %74, -1
  %..i134 = select i1 %switch.i133, i32 30, i32 50
  %call2.i.i142 = tail call i32 @__msecs_to_jiffies(i32 noundef %..i134) #10
  %add.i145 = add i32 %call2.i.i142, %77
  %call29.i146 = tail call i32 @mod_timer(ptr noundef %arrayidx26.i136, i32 noundef %add.i145) #10
  br label %for.end

for.inc:                                          ; preds = %if.then20, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %78 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %timeout_map, align 2
  %80 = and i16 %79, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not.1 = icmp eq i16 %80, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %pprev.i.i.1 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %pprev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %pprev.i.i.1, align 4
  %tobool.not.i.i.not.1 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i.not.1, label %if.end17.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end17.1:                                       ; preds = %if.end.1
  %arrayidx.i.1 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %arrayidx.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %84, %arrayidx.i.1
  %add.ptr.i.1 = getelementptr i8, ptr %84, i32 -8
  %tobool19.not152.1 = icmp eq ptr %add.ptr.i.1, null
  %tobool19.not.1 = or i1 %cmp.i.not.i.1, %tobool19.not152.1
  br i1 %tobool19.not.1, label %if.then20.1, label %if.end17.1.if.end27_crit_edge

if.end17.1.if.end27_crit_edge:                    ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.1:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.1 = and i16 %79, -3
  %85 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv26.1, ptr %timeout_map, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %86 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %timeout_map, align 2
  %88 = and i16 %87, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool.not.2 = icmp eq i16 %88, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %pprev.i.i.2 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %pprev.i.i.2, align 4
  %tobool.not.i.i.not.2 = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.not.2, label %if.end17.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end17.2:                                       ; preds = %if.end.2
  %arrayidx.i.2 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 2
  %91 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %arrayidx.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %92, %arrayidx.i.2
  %add.ptr.i.2 = getelementptr i8, ptr %92, i32 -8
  %tobool19.not152.2 = icmp eq ptr %add.ptr.i.2, null
  %tobool19.not.2 = or i1 %cmp.i.not.i.2, %tobool19.not152.2
  br i1 %tobool19.not.2, label %if.then20.2, label %if.end17.2.if.end27_crit_edge

if.end17.2.if.end27_crit_edge:                    ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.2:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.2 = and i16 %87, -5
  %93 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv26.2, ptr %timeout_map, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then20.2, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %94 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %timeout_map, align 2
  %96 = and i16 %95, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool.not.3 = icmp eq i16 %96, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %pprev.i.i.3 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 3, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %pprev.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %pprev.i.i.3, align 4
  %tobool.not.i.i.not.3 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i.not.3, label %if.end17.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end17.3:                                       ; preds = %if.end.3
  %arrayidx.i.3 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 3
  %99 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %arrayidx.i.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %100, %arrayidx.i.3
  %add.ptr.i.3 = getelementptr i8, ptr %100, i32 -8
  %tobool19.not152.3 = icmp eq ptr %add.ptr.i.3, null
  %tobool19.not.3 = or i1 %cmp.i.not.i.3, %tobool19.not152.3
  br i1 %tobool19.not.3, label %if.then20.3, label %if.end17.3.if.end27_crit_edge

if.end17.3.if.end27_crit_edge:                    ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.3:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.3 = and i16 %95, -9
  %101 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv26.3, ptr %timeout_map, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then20.3, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %102 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %timeout_map, align 2
  %104 = and i16 %103, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.4 = icmp eq i16 %104, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %pprev.i.i.4 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 4, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %pprev.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %pprev.i.i.4, align 4
  %tobool.not.i.i.not.4 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.not.4, label %if.end17.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end17.4:                                       ; preds = %if.end.4
  %arrayidx.i.4 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 4
  %107 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %arrayidx.i.4, align 4
  %cmp.i.not.i.4 = icmp eq ptr %108, %arrayidx.i.4
  %add.ptr.i.4 = getelementptr i8, ptr %108, i32 -8
  %tobool19.not152.4 = icmp eq ptr %add.ptr.i.4, null
  %tobool19.not.4 = or i1 %cmp.i.not.i.4, %tobool19.not152.4
  br i1 %tobool19.not.4, label %if.then20.4, label %if.end17.4.if.end27_crit_edge

if.end17.4.if.end27_crit_edge:                    ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.4:                                      ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.4 = and i16 %103, -17
  %109 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv26.4, ptr %timeout_map, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then20.4, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %110 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %timeout_map, align 2
  %112 = and i16 %111, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.5 = icmp eq i16 %112, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %pprev.i.i.5 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 5, i32 0, i32 0, i32 1
  %113 = ptrtoint ptr %pprev.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %pprev.i.i.5, align 4
  %tobool.not.i.i.not.5 = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.not.5, label %if.end17.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end17.5:                                       ; preds = %if.end.5
  %arrayidx.i.5 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 5
  %115 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %arrayidx.i.5, align 4
  %cmp.i.not.i.5 = icmp eq ptr %116, %arrayidx.i.5
  %add.ptr.i.5 = getelementptr i8, ptr %116, i32 -8
  %tobool19.not152.5 = icmp eq ptr %add.ptr.i.5, null
  %tobool19.not.5 = or i1 %cmp.i.not.i.5, %tobool19.not152.5
  br i1 %tobool19.not.5, label %if.then20.5, label %if.end17.5.if.end27_crit_edge

if.end17.5.if.end27_crit_edge:                    ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.5:                                      ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.5 = and i16 %111, -33
  %117 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv26.5, ptr %timeout_map, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then20.5, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %118 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %timeout_map, align 2
  %120 = and i16 %119, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.6 = icmp eq i16 %120, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %pprev.i.i.6 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 6, i32 0, i32 0, i32 1
  %121 = ptrtoint ptr %pprev.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %pprev.i.i.6, align 4
  %tobool.not.i.i.not.6 = icmp eq ptr %122, null
  br i1 %tobool.not.i.i.not.6, label %if.end17.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end17.6:                                       ; preds = %if.end.6
  %arrayidx.i.6 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 6
  %123 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %arrayidx.i.6, align 4
  %cmp.i.not.i.6 = icmp eq ptr %124, %arrayidx.i.6
  %add.ptr.i.6 = getelementptr i8, ptr %124, i32 -8
  %tobool19.not152.6 = icmp eq ptr %add.ptr.i.6, null
  %tobool19.not.6 = or i1 %cmp.i.not.i.6, %tobool19.not152.6
  br i1 %tobool19.not.6, label %if.then20.6, label %if.end17.6.if.end27_crit_edge

if.end17.6.if.end27_crit_edge:                    ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.6:                                      ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.6 = and i16 %119, -65
  %125 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv26.6, ptr %timeout_map, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then20.6, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %126 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %timeout_map, align 2
  %128 = and i16 %127, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool.not.7 = icmp eq i16 %128, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  %pprev.i.i.7 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 7, i32 0, i32 0, i32 1
  %129 = ptrtoint ptr %pprev.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile ptr, ptr %pprev.i.i.7, align 4
  %tobool.not.i.i.not.7 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.not.7, label %if.end17.7, label %if.end.7.for.inc.7_crit_edge

if.end.7.for.inc.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.end17.7:                                       ; preds = %if.end.7
  %arrayidx.i.7 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 7
  %131 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %arrayidx.i.7, align 4
  %cmp.i.not.i.7 = icmp eq ptr %132, %arrayidx.i.7
  %add.ptr.i.7 = getelementptr i8, ptr %132, i32 -8
  %tobool19.not152.7 = icmp eq ptr %add.ptr.i.7, null
  %tobool19.not.7 = or i1 %cmp.i.not.i.7, %tobool19.not152.7
  br i1 %tobool19.not.7, label %if.then20.7, label %if.end17.7.if.end27_crit_edge

if.end17.7.if.end27_crit_edge:                    ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.7:                                      ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.7 = and i16 %127, -129
  %133 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv26.7, ptr %timeout_map, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then20.7, %if.end.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %134 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %timeout_map, align 2
  %136 = and i16 %135, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool.not.8 = icmp eq i16 %136, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.end.8:                                         ; preds = %for.inc.7
  %pprev.i.i.8 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 8, i32 0, i32 0, i32 1
  %137 = ptrtoint ptr %pprev.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %pprev.i.i.8, align 4
  %tobool.not.i.i.not.8 = icmp eq ptr %138, null
  br i1 %tobool.not.i.i.not.8, label %if.end17.8, label %if.end.8.for.inc.8_crit_edge

if.end.8.for.inc.8_crit_edge:                     ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.end17.8:                                       ; preds = %if.end.8
  %arrayidx.i.8 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 8
  %139 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %arrayidx.i.8, align 4
  %cmp.i.not.i.8 = icmp eq ptr %140, %arrayidx.i.8
  %add.ptr.i.8 = getelementptr i8, ptr %140, i32 -8
  %tobool19.not152.8 = icmp eq ptr %add.ptr.i.8, null
  %tobool19.not.8 = or i1 %cmp.i.not.i.8, %tobool19.not152.8
  br i1 %tobool19.not.8, label %if.then20.8, label %if.end17.8.if.end27_crit_edge

if.end17.8.if.end27_crit_edge:                    ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.8:                                      ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.8 = and i16 %135, -257
  %141 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv26.8, ptr %timeout_map, align 2
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then20.8, %if.end.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %142 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %timeout_map, align 2
  %144 = and i16 %143, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool.not.9 = icmp eq i16 %144, 0
  br i1 %tobool.not.9, label %for.inc.8.for.end_crit_edge, label %if.end.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.9:                                         ; preds = %for.inc.8
  %pprev.i.i.9 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 9, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %pprev.i.i.9 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %pprev.i.i.9, align 4
  %tobool.not.i.i.not.9 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i.not.9, label %if.end17.9, label %if.end.9.for.end_crit_edge

if.end.9.for.end_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end17.9:                                       ; preds = %if.end.9
  %arrayidx.i.9 = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 9
  %147 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %arrayidx.i.9, align 4
  %cmp.i.not.i.9 = icmp eq ptr %148, %arrayidx.i.9
  %add.ptr.i.9 = getelementptr i8, ptr %148, i32 -8
  %tobool19.not152.9 = icmp eq ptr %add.ptr.i.9, null
  %tobool19.not.9 = or i1 %cmp.i.not.i.9, %tobool19.not152.9
  br i1 %tobool19.not.9, label %if.then20.9, label %if.end17.9.if.end27_crit_edge

if.end17.9.if.end27_crit_edge:                    ; preds = %if.end17.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.9:                                      ; preds = %if.end17.9
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.9 = and i16 %143, -513
  %149 = ptrtoint ptr %timeout_map to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv26.9, ptr %timeout_map, align 2
  br label %for.end

for.end:                                          ; preds = %if.then20.9, %if.end.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %if.then16.i137, %land.lhs.true.i128.for.end_crit_edge, %do.end9.i120.for.end_crit_edge, %if.then59, %if.then16.i, %land.lhs.true.i.for.end_crit_edge, %do.end9.i.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_interval_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a665971 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %r8a665971 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a665971, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %interval_map = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %interval_map to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %interval_map, align 4
  %conv10 = zext i16 %3 to i32
  %shl = shl nuw i32 1, %indvars.iv
  %and = and i32 %shl, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %pprev.i.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 %indvars.iv, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %if.end16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 6, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %tobool18.not33 = icmp eq ptr %add.ptr.i, null
  %tobool18.not = or i1 %cmp.i.not.i, %tobool18.not33
  br i1 %tobool18.not, label %if.end16.for.inc_crit_edge, label %if.then19

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call fastcc i32 @start_transfer(ptr noundef %1, ptr noundef nonnull %add.ptr.i)
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end16.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_irq(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hcd_priv.i) #10
  %reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %4, i32 66
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i131) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %7, i32 68
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i133) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i135) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %13, i32 50
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i137) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %16, i32 52
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i139) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %18 = and i16 %17, %8
  %19 = and i16 %14, %5
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = and i16 %11, %2
  %22 = shl i16 %21, 8
  %23 = and i16 %22, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then:                                          ; preds = %entry
  %24 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv18 = zext i16 %24 to i32
  %and19 = and i32 %conv18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i141, i16 -9) #10, !srcloc !200
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 52
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %30 = and i16 %29, -9
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %30) #10, !srcloc !200
  %arrayidx.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 7
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %34, i32 6
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i143) #10, !srcloc !197
  %36 = lshr i16 %35, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %37 = and i16 %36, 3
  %old_syssts.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10
  %38 = ptrtoint ptr %old_syssts.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %old_syssts.i, align 4
  %scount.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 1
  %39 = ptrtoint ptr %scount.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %scount.i, align 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %or7.i = or i32 %41, 65537
  store i32 %or7.i, ptr %arrayidx.i, align 4
  %rh_timer.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %42, 1
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %rh_timer.i.i, i32 noundef %add.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %and23 = and i32 %conv18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.if.end26_crit_edge, label %if.then25

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %44, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i145, i16 -17) #10, !srcloc !200
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i147 = getelementptr i8, ptr %46, i32 52
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i147) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %48 = and i16 %47, -17
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i149 = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i149, i16 %48) #10, !srcloc !200
  %dev1.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 2
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i, align 4
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %hcd_priv.i, ptr noundef %52) #10
  tail call fastcc void @free_usb_address(ptr noundef %hcd_priv.i, ptr noundef %52, i32 noundef 0) #10
  %arrayidx.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 7
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 6
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %56 = lshr i16 %55, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %57 = and i16 %56, 3
  %old_syssts.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10
  %58 = ptrtoint ptr %old_syssts.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %old_syssts.i.i, align 4
  %scount.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 1
  %59 = ptrtoint ptr %scount.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %scount.i.i, align 4
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %and5.i.i = and i32 %61, -65538
  %or7.i.i = or i32 %and5.i.i, 65536
  store i32 %or7.i.i, ptr %arrayidx.i.i, align 4
  %rh_timer.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %62, 1
  %call1.i.i.i = tail call i32 @mod_timer(ptr noundef %rh_timer.i.i.i, i32 noundef %add.i.i.i) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  %and28 = and i32 %conv18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %64, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i151, i16 -65) #10, !srcloc !200
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %66, i32 52
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i153) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %68 = and i16 %67, -65
  %69 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i155 = getelementptr i8, ptr %70, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i155, i16 %68) #10, !srcloc !200
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge, %entry.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool34.not = icmp eq i16 %19, 0
  br i1 %tobool34.not, label %if.end33.if.end63_crit_edge, label %if.then35

if.end33.if.end63_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then35:                                        ; preds = %if.end33
  %conv36 = zext i16 %20 to i32
  %and37 = and i32 %conv36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then35.if.end40_crit_edge, label %if.then39

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %72, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i158, i16 -9) #10, !srcloc !200
  %73 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %74, i32 50
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i160) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %76 = and i16 %75, -9
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i162 = getelementptr i8, ptr %78, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i162, i16 %76) #10, !srcloc !200
  %arrayidx.i163 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %79 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %80, i32 4
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i165) #10, !srcloc !197
  %82 = lshr i16 %81, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %83 = and i16 %82, 3
  %old_syssts.i166 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 2
  %84 = ptrtoint ptr %old_syssts.i166 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %old_syssts.i166, align 4
  %scount.i167 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 3
  %85 = ptrtoint ptr %scount.i167 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %scount.i167, align 4
  %86 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i163, align 4
  %or7.i170 = or i32 %87, 65537
  store i32 %or7.i170, ptr %arrayidx.i163, align 4
  %rh_timer.i.i171 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %add.i.i172 = add i32 %88, 1
  %call1.i.i173 = tail call i32 @mod_timer(ptr noundef %rh_timer.i.i171, i32 noundef %add.i.i172) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then35.if.end40_crit_edge
  %and42 = and i32 %conv36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %90, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i175, i16 -17) #10, !srcloc !200
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %92, i32 50
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i177) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %94 = and i16 %93, -17
  %95 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i179 = getelementptr i8, ptr %96, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i179, i16 %94) #10, !srcloc !200
  %dev1.i180 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 6
  %97 = ptrtoint ptr %dev1.i180 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev1.i180, align 4
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %hcd_priv.i, ptr noundef %98) #10
  tail call fastcc void @free_usb_address(ptr noundef %hcd_priv.i, ptr noundef %98, i32 noundef 0) #10
  %arrayidx.i.i181 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %99 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i183 = getelementptr i8, ptr %100, i32 4
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i183) #10, !srcloc !197
  %102 = lshr i16 %101, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %103 = and i16 %102, 3
  %old_syssts.i.i184 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 2
  %104 = ptrtoint ptr %old_syssts.i.i184 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %old_syssts.i.i184, align 4
  %scount.i.i185 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 3
  %105 = ptrtoint ptr %scount.i.i185 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 5, ptr %scount.i.i185, align 4
  %106 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i181, align 4
  %and5.i.i186 = and i32 %107, -65538
  %or7.i.i187 = or i32 %and5.i.i186, 65536
  store i32 %or7.i.i187, ptr %arrayidx.i.i181, align 4
  %rh_timer.i.i.i188 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i189 = add i32 %108, 1
  %call1.i.i.i190 = tail call i32 @mod_timer(ptr noundef %rh_timer.i.i.i188, i32 noundef %add.i.i.i189) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  %and47 = and i32 %conv36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end51_crit_edge, label %if.then49

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %110, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i192, i16 -65) #10, !srcloc !200
  %111 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %112, i32 50
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i194) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %114 = and i16 %113, -65
  %115 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i196 = getelementptr i8, ptr %116, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i196, i16 %114) #10, !srcloc !200
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45.if.end51_crit_edge
  %and53 = and i32 %conv36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  %117 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %118, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i199, i16 -8193) #10, !srcloc !200
  %arrayidx.i.i200 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 3
  %119 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %arrayidx.i.i200, align 4
  %cmp.i.not.i.i = icmp eq ptr %120, %arrayidx.i.i200
  %add.ptr.i.i201 = getelementptr i8, ptr %120, i32 -8
  %tobool.not10.i = icmp eq ptr %add.ptr.i.i201, null
  %tobool.not.i = or i1 %cmp.i.not.i.i, %tobool.not10.i
  br i1 %tobool.not.i, label %if.then55.get_urb_error.exit_crit_edge, label %if.then.i

if.then55.get_urb_error.exit_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_urb_error.exit

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i.i201, align 4
  %pipectr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pipectr.i, align 4
  %125 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %126, i32 %124
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %128 = and i16 %127, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %cmp.i = icmp eq i16 %128, 0
  %..i = select i1 %cmp.i, i32 -104, i32 -32
  br label %get_urb_error.exit

get_urb_error.exit:                               ; preds = %if.then.i, %if.then55.get_urb_error.exit_crit_edge
  %retval.1.i = phi i32 [ %..i, %if.then.i ], [ 0, %if.then55.get_urb_error.exit_crit_edge ]
  tail call fastcc void @check_next_phase(ptr noundef %hcd_priv.i, i32 noundef %retval.1.i)
  br label %if.end57

if.end57:                                         ; preds = %get_urb_error.exit, %if.end51.if.end57_crit_edge
  %and59 = and i32 %conv36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end63_crit_edge, label %if.then61

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %130, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i204, i16 -4097) #10, !srcloc !200
  tail call fastcc void @check_next_phase(ptr noundef %hcd_priv.i, i32 noundef 0)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end57.if.end63_crit_edge, %if.end33.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool64.not = icmp eq i16 %23, 0
  br i1 %tobool64.not, label %if.end63.if.end81_crit_edge, label %if.then65

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then65:                                        ; preds = %if.end63
  %conv66 = zext i16 %23 to i32
  %and67 = and i32 %conv66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then65.if.end70_crit_edge, label %if.then69

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %if.then65
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i206 = getelementptr i8, ptr %132, i32 70
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i206) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %134 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %135, i32 54
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i67.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %137 = and i16 %136, %133
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #10
  %conv4.i = zext i16 %138 to i32
  %neg.i = xor i16 %138, -1
  %139 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %140, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %141 = tail call i16 @llvm.bswap.i16(i16 %neg.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i69.i, i16 %141) #10, !srcloc !200
  %and7.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i207 = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i207, label %if.then69.for.body.i.preheader_crit_edge, label %if.then.i210

if.then69.for.body.i.preheader_crit_edge:         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then.i210:                                     ; preds = %if.then69
  %arrayidx.i.i208 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 3
  %142 = ptrtoint ptr %arrayidx.i.i208 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %arrayidx.i.i208, align 4
  %cmp.i.not.i.i209 = icmp eq ptr %143, %arrayidx.i.i208
  %add.ptr.i70.i = getelementptr i8, ptr %143, i32 -8
  %tobool9.not75.i = icmp eq ptr %add.ptr.i70.i, null
  %tobool9.not.i = or i1 %cmp.i.not.i.i209, %tobool9.not75.i
  br i1 %tobool9.not.i, label %if.then.i210.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i210.if.else.i_crit_edge:                 ; preds = %if.then.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i210
  %type.i = getelementptr i8, ptr %143, i32 8
  %144 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %145)
  %cmp.i211 = icmp eq i16 %145, 105
  br i1 %cmp.i211, label %if.then12.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @packet_read(ptr noundef %hcd_priv.i, i16 noundef zeroext 0) #10
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i210.if.else.i_crit_edge
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then12.i
  tail call fastcc void @check_next_phase(ptr noundef %hcd_priv.i, i32 noundef 0) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i, %if.then69.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %shl.i = shl nuw nsw i32 1, %indvars.iv.i
  %and21.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then23.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %for.body.i
  %arrayidx.i71.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %indvars.iv.i
  %146 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %arrayidx.i71.i, align 4
  %cmp.i.not.i72.i = icmp eq ptr %147, %arrayidx.i71.i
  %add.ptr.i73.i = getelementptr i8, ptr %147, i32 -8
  %tobool25.not76.i = icmp eq ptr %add.ptr.i73.i, null
  %tobool25.not.i = or i1 %cmp.i.not.i72.i, %tobool25.not76.i
  br i1 %tobool25.not.i, label %if.then23.i.for.inc.i_crit_edge, label %if.end30.i, !prof !201

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end30.i:                                       ; preds = %if.then23.i
  %type31.i = getelementptr i8, ptr %147, i32 8
  %148 = ptrtoint ptr %type31.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %type31.i, align 4
  %150 = zext i16 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %149, label %if.end30.i.for.inc.i_crit_edge [
    i16 105, label %if.then35.i
    i16 225, label %if.then41.i
  ]

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = trunc i32 %indvars.iv.i to i16
  tail call fastcc void @packet_read(ptr noundef %hcd_priv.i, i16 noundef zeroext %151) #10
  br label %for.inc.i

if.then41.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = trunc i32 %indvars.iv.i to i16
  tail call fastcc void @packet_write(ptr noundef %hcd_priv.i, i16 noundef zeroext %152) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then41.i, %if.then35.i, %if.end30.i.for.inc.i_crit_edge, %if.then23.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.if.end70_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end70_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end70:                                         ; preds = %for.inc.i.if.end70_crit_edge, %if.then65.if.end70_crit_edge
  %and72 = and i32 %conv66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end75_crit_edge, label %if.then74

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then74:                                        ; preds = %if.end70
  %153 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %154, i32 74
  %155 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i213) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %156 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %157, i32 58
  %158 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i65.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %159 = and i16 %158, %155
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #10
  %conv4.i214 = zext i16 %160 to i32
  %neg.i215 = xor i16 %160, -1
  %161 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg.i, align 4
  %add.ptr.i67.i216 = getelementptr i8, ptr %162, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %163 = tail call i16 @llvm.bswap.i16(i16 %neg.i215) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i67.i216, i16 %163) #10, !srcloc !200
  %and7.i217 = and i32 %conv4.i214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i217)
  %tobool.not.i218 = icmp eq i32 %and7.i217, 0
  br i1 %tobool.not.i218, label %if.then74.for.body.i233.preheader_crit_edge, label %if.then.i219

if.then74.for.body.i233.preheader_crit_edge:      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i233.preheader

if.then.i219:                                     ; preds = %if.then74
  %pdata.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %164 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pdata.i.i.i, align 4
  %on_chip.i.i.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %on_chip.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load.i.i.i = load i8, ptr %on_chip.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %..i.i.i = select i1 %tobool.not.i.i.i, i16 1024, i16 2048
  %167 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %168, i32 32
  %169 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !197
  %170 = tail call i16 @llvm.bswap.i16(i16 %169) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i.i = xor i16 %..i.i.i, -16
  %and.i.i.i = and i16 %170, %neg.i.i.i
  %or10.i.i.i = or i16 %and.i.i.i, %..i.i.i
  %171 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %172, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %173 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %173) #10, !srcloc !200
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %if.then.i219
  %i.0.i.i.i = phi i32 [ 0, %if.then.i219 ], [ %inc.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %174 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %175, i32 32
  %176 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i2.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %i.0.i.i.i, 1000001
  br i1 %exitcond.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %cfifo_change.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748) #10
  %178 = and i16 %176, 3840
  %cmp8.not.i.i.i = icmp eq i16 %178, 0
  br i1 %cmp8.not.i.i.i, label %if.end.i.i.i.cfifo_change.exit.i_crit_edge, label %if.end.i.i.i.do.body.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

if.end.i.i.i.cfifo_change.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfifo_change.exit.i

cfifo_change.exit.i:                              ; preds = %if.end.i.i.i.cfifo_change.exit.i_crit_edge, %do.end.i.i.i
  %arrayidx.i.i220 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 3
  %179 = ptrtoint ptr %arrayidx.i.i220 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %arrayidx.i.i220, align 4
  %cmp.i.not.i.i221 = icmp eq ptr %180, %arrayidx.i.i220
  %add.ptr.i68.i = getelementptr i8, ptr %180, i32 -8
  %tobool9.not86.i = icmp eq ptr %add.ptr.i68.i, null
  %tobool9.not.i222 = or i1 %cmp.i.not.i.i221, %tobool9.not86.i
  br i1 %tobool9.not.i222, label %cfifo_change.exit.i.if.end.i227_crit_edge, label %land.lhs.true.i224

cfifo_change.exit.i.if.end.i227_crit_edge:        ; preds = %cfifo_change.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i227

land.lhs.true.i224:                               ; preds = %cfifo_change.exit.i
  %type.i223 = getelementptr i8, ptr %180, i32 8
  %181 = ptrtoint ptr %type.i223 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %type.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 225, i16 %182)
  %cmp.not.i = icmp eq i16 %182, 225
  br i1 %cmp.not.i, label %land.lhs.true.i224.if.end.i227_crit_edge, label %if.then12.i226

land.lhs.true.i224.if.end.i227_crit_edge:         ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i227

if.then12.i226:                                   ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i225 = getelementptr i8, ptr %184, i32 48
  %185 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i225) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %186 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i69.i = getelementptr i8, ptr %187, i32 48
  %188 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i69.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %189 = and i16 %188, -8
  %190 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i70.i = getelementptr i8, ptr %191, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i70.i, i16 %189) #10, !srcloc !200
  %192 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %193, i32 58
  %194 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %195 = and i16 %194, -257
  %196 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i.i = getelementptr i8, ptr %197, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i.i, i16 %195) #10, !srcloc !200
  %198 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %199, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i, i16 %185) #10, !srcloc !200
  br label %if.end.i227

if.end.i227:                                      ; preds = %if.then12.i226, %land.lhs.true.i224.if.end.i227_crit_edge, %cfifo_change.exit.i.if.end.i227_crit_edge
  tail call fastcc void @check_next_phase(ptr noundef %hcd_priv.i, i32 noundef 0) #10
  br label %for.body.i233.preheader

for.body.i233.preheader:                          ; preds = %if.end.i227, %if.then74.for.body.i233.preheader_crit_edge
  br label %for.body.i233

for.body.i233:                                    ; preds = %for.inc.i241.for.body.i233_crit_edge, %for.body.i233.preheader
  %indvars.iv.i229 = phi i32 [ %indvars.iv.next.i239, %for.inc.i241.for.body.i233_crit_edge ], [ 1, %for.body.i233.preheader ]
  %shl.i230 = shl nuw nsw i32 1, %indvars.iv.i229
  %and21.i231 = and i32 %shl.i230, %conv4.i214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i231)
  %tobool22.not.i232 = icmp eq i32 %and21.i231, 0
  br i1 %tobool22.not.i232, label %for.body.i233.for.inc.i241_crit_edge, label %if.then23.i237

for.body.i233.for.inc.i241_crit_edge:             ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i241

if.then23.i237:                                   ; preds = %for.body.i233
  %arrayidx.i71.i234 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %indvars.iv.i229
  %200 = ptrtoint ptr %arrayidx.i71.i234 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %arrayidx.i71.i234, align 4
  %cmp.i.not.i72.i235 = icmp eq ptr %201, %arrayidx.i71.i234
  %add.ptr.i73.i236 = getelementptr i8, ptr %201, i32 -8
  %tobool26.not87.i = icmp eq ptr %add.ptr.i73.i236, null
  %tobool26.not.i = or i1 %cmp.i.not.i72.i235, %tobool26.not87.i
  br i1 %tobool26.not.i, label %if.then23.i237.for.inc.i241_crit_edge, label %if.end31.i, !prof !201

if.then23.i237.for.inc.i241_crit_edge:            ; preds = %if.then23.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i241

if.end31.i:                                       ; preds = %if.then23.i237
  %202 = ptrtoint ptr %add.ptr.i73.i236 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr.i73.i236, align 4
  %pipectr.i238 = getelementptr inbounds %struct.r8a66597_pipe, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %pipectr.i238 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pipectr.i238, align 4
  %206 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %207, i32 %205
  %208 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i76.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %209 = and i16 %208, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %cmp35.i = icmp eq i16 %209, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end31.i.for.inc.i241_crit_edge

if.end31.i.for.inc.i241_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i241

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i78.i = getelementptr i8, ptr %211, i32 48
  %212 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i78.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %213 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i79.i = getelementptr i8, ptr %214, i32 48
  %215 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i79.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %216 = and i16 %215, -8
  %217 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i80.i = getelementptr i8, ptr %218, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i80.i, i16 %216) #10, !srcloc !200
  %conv1.i.i = trunc i32 %shl.i230 to i16
  %219 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i81.i = getelementptr i8, ptr %220, i32 58
  %221 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i81.i) #10, !srcloc !197
  %222 = tail call i16 @llvm.bswap.i16(i16 %221) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i82.i = xor i16 %conv1.i.i, -1
  %and.i7.i83.i = and i16 %222, %neg.i.i82.i
  %223 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i84.i = getelementptr i8, ptr %224, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %225 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i83.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i84.i, i16 %225) #10, !srcloc !200
  %226 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i85.i = getelementptr i8, ptr %227, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i85.i, i16 %212) #10, !srcloc !200
  %228 = trunc i32 %indvars.iv.i229 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext %228) #10
  %urb.i = getelementptr i8, ptr %201, i32 -4
  %229 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %urb.i, align 4
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef nonnull %add.ptr.i73.i236, i16 noundef zeroext %228, ptr noundef %230, i32 noundef 0) #10
  br label %for.inc.i241

for.inc.i241:                                     ; preds = %if.then37.i, %if.end31.i.for.inc.i241_crit_edge, %if.then23.i237.for.inc.i241_crit_edge, %for.body.i233.for.inc.i241_crit_edge
  %indvars.iv.next.i239 = add nuw nsw i32 %indvars.iv.i229, 1
  %exitcond.not.i240 = icmp eq i32 %indvars.iv.next.i239, 10
  br i1 %exitcond.not.i240, label %for.inc.i241.if.end75_crit_edge, label %for.inc.i241.for.body.i233_crit_edge

for.inc.i241.for.body.i233_crit_edge:             ; preds = %for.inc.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i233

for.inc.i241.if.end75_crit_edge:                  ; preds = %for.inc.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end75:                                         ; preds = %for.inc.i241.if.end75_crit_edge, %if.end70.if.end75_crit_edge
  %and77 = and i32 %conv66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end81_crit_edge, label %if.then79

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then79:                                        ; preds = %if.end75
  %231 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i243 = getelementptr i8, ptr %232, i32 72
  %233 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i243) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %234 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %235, i32 56
  %236 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i52.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %237 = and i16 %236, %233
  %238 = tail call i16 @llvm.bswap.i16(i16 %237) #10
  %conv4.i244 = zext i16 %238 to i32
  %neg.i245 = xor i16 %238, -1
  %239 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %240, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %241 = tail call i16 @llvm.bswap.i16(i16 %neg.i245) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54.i, i16 %241) #10, !srcloc !200
  %and7.i246 = and i32 %conv4.i244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i246)
  %tobool.not.i247 = icmp eq i32 %and7.i246, 0
  br i1 %tobool.not.i247, label %if.then79.for.body.i273.preheader_crit_edge, label %if.then.i258

if.then79.for.body.i273.preheader_crit_edge:      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i273.preheader

if.then.i258:                                     ; preds = %if.then79
  %pdata.i.i.i248 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %242 = ptrtoint ptr %pdata.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdata.i.i.i248, align 4
  %on_chip.i.i.i249 = getelementptr inbounds %struct.r8a66597_platdata, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %on_chip.i.i.i249 to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load.i.i.i250 = load i8, ptr %on_chip.i.i.i249, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i250)
  %tobool.not.i.i.i251 = icmp sgt i8 %bf.load.i.i.i250, -1
  %..i.i.i252 = select i1 %tobool.not.i.i.i251, i16 1024, i16 2048
  %245 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i253 = getelementptr i8, ptr %246, i32 32
  %247 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i253) #10, !srcloc !197
  %248 = tail call i16 @llvm.bswap.i16(i16 %247) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i.i254 = xor i16 %..i.i.i252, -16
  %and.i.i.i255 = and i16 %248, %neg.i.i.i254
  %or10.i.i.i256 = or i16 %and.i.i.i255, %..i.i.i252
  %249 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i257 = getelementptr i8, ptr %250, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %251 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i256) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i257, i16 %251) #10, !srcloc !200
  br label %do.body.i.i.i262

do.body.i.i.i262:                                 ; preds = %if.end.i.i.i267.do.body.i.i.i262_crit_edge, %if.then.i258
  %i.0.i.i.i259 = phi i32 [ 0, %if.then.i258 ], [ %inc.i.i.i265, %if.end.i.i.i267.do.body.i.i.i262_crit_edge ]
  %252 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i2.i.i260 = getelementptr i8, ptr %253, i32 32
  %254 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i2.i.i260) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i.i259)
  %exitcond.i.i.i261 = icmp eq i32 %i.0.i.i.i259, 1000001
  br i1 %exitcond.i.i.i261, label %do.end.i.i.i264, label %if.end.i.i.i267

do.end.i.i.i264:                                  ; preds = %do.body.i.i.i262
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %cfifo_change.exit.i269

if.end.i.i.i267:                                  ; preds = %do.body.i.i.i262
  %inc.i.i.i265 = add nuw nsw i32 %i.0.i.i.i259, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748) #10
  %256 = and i16 %254, 3840
  %cmp8.not.i.i.i266 = icmp eq i16 %256, 0
  br i1 %cmp8.not.i.i.i266, label %if.end.i.i.i267.cfifo_change.exit.i269_crit_edge, label %if.end.i.i.i267.do.body.i.i.i262_crit_edge

if.end.i.i.i267.do.body.i.i.i262_crit_edge:       ; preds = %if.end.i.i.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i262

if.end.i.i.i267.cfifo_change.exit.i269_crit_edge: ; preds = %if.end.i.i.i267
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfifo_change.exit.i269

cfifo_change.exit.i269:                           ; preds = %if.end.i.i.i267.cfifo_change.exit.i269_crit_edge, %do.end.i.i.i264
  %arrayidx.i.i.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10, i32 0, i32 3
  %257 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %258, %arrayidx.i.i.i
  %add.ptr.i.i.i268 = getelementptr i8, ptr %258, i32 -8
  %tobool.not10.i.i = icmp eq ptr %add.ptr.i.i.i268, null
  %tobool.not.i.i = or i1 %cmp.i.not.i.i.i, %tobool.not10.i.i
  br i1 %tobool.not.i.i, label %cfifo_change.exit.i269.get_urb_error.exit.i_crit_edge, label %if.then.i.i

cfifo_change.exit.i269.get_urb_error.exit.i_crit_edge: ; preds = %cfifo_change.exit.i269
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_urb_error.exit.i

if.then.i.i:                                      ; preds = %cfifo_change.exit.i269
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %add.ptr.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %add.ptr.i.i.i268, align 4
  %pipectr.i.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %260, i32 0, i32 4
  %261 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %pipectr.i.i, align 4
  %263 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %264, i32 %262
  %265 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %266 = and i16 %265, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %266)
  %cmp.i.i = icmp eq i16 %266, 0
  %..i.i = select i1 %cmp.i.i, i32 -104, i32 -32
  br label %get_urb_error.exit.i

get_urb_error.exit.i:                             ; preds = %if.then.i.i, %cfifo_change.exit.i269.get_urb_error.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %..i.i, %if.then.i.i ], [ 0, %cfifo_change.exit.i269.get_urb_error.exit.i_crit_edge ]
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext 0) #10
  tail call fastcc void @check_next_phase(ptr noundef %hcd_priv.i, i32 noundef %retval.1.i.i) #10
  br label %for.body.i273.preheader

for.body.i273.preheader:                          ; preds = %get_urb_error.exit.i, %if.then79.for.body.i273.preheader_crit_edge
  br label %for.body.i273

for.body.i273:                                    ; preds = %for.inc.i279.for.body.i273_crit_edge, %for.body.i273.preheader
  %indvars.iv.i271 = phi i32 [ %indvars.iv.next.i277, %for.inc.i279.for.body.i273_crit_edge ], [ 1, %for.body.i273.preheader ]
  %shl.i272 = shl nuw nsw i32 1, %indvars.iv.i271
  %and15.i = and i32 %shl.i272, %conv4.i244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %for.body.i273.for.inc.i279_crit_edge, label %if.then17.i

for.body.i273.for.inc.i279_crit_edge:             ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i279

if.then17.i:                                      ; preds = %for.body.i273
  %arrayidx.i.i274 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %indvars.iv.i271
  %267 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile ptr, ptr %arrayidx.i.i274, align 4
  %cmp.i.not.i.i275 = icmp eq ptr %268, %arrayidx.i.i274
  %add.ptr.i55.i = getelementptr i8, ptr %268, i32 -8
  %tobool19.not69.i = icmp eq ptr %add.ptr.i55.i, null
  %tobool19.not.i = or i1 %cmp.i.not.i.i275, %tobool19.not69.i
  br i1 %tobool19.not.i, label %if.then17.i.for.inc.i279_crit_edge, label %if.end24.i, !prof !201

if.then17.i.for.inc.i279_crit_edge:               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i279

if.end24.i:                                       ; preds = %if.then17.i
  %269 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile ptr, ptr %arrayidx.i.i274, align 4
  %cmp.i.not.i.i57.i = icmp eq ptr %270, %arrayidx.i.i274
  %add.ptr.i.i58.i = getelementptr i8, ptr %270, i32 -8
  %tobool.not10.i59.i = icmp eq ptr %add.ptr.i.i58.i, null
  %tobool.not.i60.i = or i1 %cmp.i.not.i.i57.i, %tobool.not10.i59.i
  br i1 %tobool.not.i60.i, label %if.end24.i.get_urb_error.exit68.i_crit_edge, label %if.then.i66.i

if.end24.i.get_urb_error.exit68.i_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_urb_error.exit68.i

if.then.i66.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %271 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %add.ptr.i.i58.i, align 4
  %pipectr.i61.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %272, i32 0, i32 4
  %273 = ptrtoint ptr %pipectr.i61.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %pipectr.i61.i, align 4
  %275 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i63.i = getelementptr i8, ptr %276, i32 %274
  %277 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i63.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %278 = and i16 %277, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %cmp.i64.i = icmp eq i16 %278, 0
  %..i65.i = select i1 %cmp.i64.i, i32 -104, i32 -32
  br label %get_urb_error.exit68.i

get_urb_error.exit68.i:                           ; preds = %if.then.i66.i, %if.end24.i.get_urb_error.exit68.i_crit_edge
  %retval.1.i67.i = phi i32 [ %..i65.i, %if.then.i66.i ], [ 0, %if.end24.i.get_urb_error.exit68.i_crit_edge ]
  %279 = trunc i32 %indvars.iv.i271 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext %279) #10
  %280 = ptrtoint ptr %add.ptr.i55.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %add.ptr.i55.i, align 4
  tail call fastcc void @pipe_stop(ptr noundef %hcd_priv.i, ptr noundef %281) #10
  %urb.i276 = getelementptr i8, ptr %268, i32 -4
  %282 = ptrtoint ptr %urb.i276 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %urb.i276, align 4
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef nonnull %add.ptr.i55.i, i16 noundef zeroext %279, ptr noundef %283, i32 noundef %retval.1.i67.i) #10
  br label %for.inc.i279

for.inc.i279:                                     ; preds = %get_urb_error.exit68.i, %if.then17.i.for.inc.i279_crit_edge, %for.body.i273.for.inc.i279_crit_edge
  %indvars.iv.next.i277 = add nuw nsw i32 %indvars.iv.i271, 1
  %exitcond.not.i278 = icmp eq i32 %indvars.iv.next.i277, 10
  br i1 %exitcond.not.i278, label %for.inc.i279.if.end81_crit_edge, label %for.inc.i279.for.body.i273_crit_edge

for.inc.i279.for.body.i273_crit_edge:             ; preds = %for.inc.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i273

for.inc.i279.if.end81_crit_edge:                  ; preds = %for.inc.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end81:                                         ; preds = %for.inc.i279.if.end81_crit_edge, %if.end75.if.end81_crit_edge, %if.end63.if.end81_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %hcd_priv.i) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_start(ptr nocapture noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  %call1 = tail call fastcc i32 @enable_controller(ptr noundef %hcd_priv.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_stop(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call fastcc void @disable_controller(ptr noundef %hcd_priv.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_get_frame(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %3 = and i16 %2, -253
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #2 align 64 {
entry:
  %array.i.i = alloca [10 x i16], align 2
  %info.i = alloca %struct.r8a66597_pipe_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe.i, align 4
  %4 = and i32 %3, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i120 = icmp eq i32 %4, 0
  br i1 %cmp.i120, label %if.then.i121, label %if.end.i122

if.then.i121:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  br label %get_urb_to_r8a66597_dev.exit

if.end.i122:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit

get_urb_to_r8a66597_dev.exit:                     ; preds = %if.end.i122, %if.then.i121
  %retval.0.i123 = phi ptr [ %device0.i, %if.then.i121 ], [ %8, %if.end.i122 ]
  %tobool.not = icmp eq ptr %retval.0.i123, null
  br i1 %tobool.not, label %get_urb_to_r8a66597_dev.exit.error_not_linked_crit_edge, label %if.end

get_urb_to_r8a66597_dev.exit.error_not_linked_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_not_linked

if.end:                                           ; preds = %get_urb_to_r8a66597_dev.exit
  %call7 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.error_not_linked_crit_edge

if.end.error_not_linked_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_not_linked

if.end10:                                         ; preds = %if.end
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hcpriv, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then12:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 48) #14
  %12 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %hcpriv, align 4
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.then12.if.then71_crit_edge, label %if.end18

if.then12.if.then71_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

if.end18:                                         ; preds = %if.then12
  %pipenum1.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pipenum1.i, align 4
  %fifoaddr3.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %fifoaddr3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 20, ptr %fifoaddr3.i, align 8
  %fifosel6.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %fifosel6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %fifosel6.i, align 4
  %fifoctr9.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %fifoctr9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 34, ptr %fifoctr9.i, align 8
  %conv10.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp11.i = icmp eq i16 %14, 0
  br i1 %cmp11.i, label %if.end16.thread.i, label %if.end16.i

if.end16.thread.i:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %pipectr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 96, ptr %pipectr.i, align 4
  br label %if.else32.i

if.end16.i:                                       ; preds = %if.end18
  %sub.i = shl nuw nsw i32 %conv10.i, 1
  %add.i = add nuw nsw i32 %sub.i, 110
  %pipectr15.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %pipectr15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %pipectr15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %14)
  %cmp21.i = icmp ult i16 %14, 6
  br i1 %cmp21.i, label %if.then23.i, label %if.end16.i.if.else32.i_crit_edge

if.end16.i.if.else32.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.i

if.then23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub25.i = shl nuw nsw i32 %conv10.i, 2
  %add27.i = add nuw nsw i32 %sub25.i, 140
  %pipetre.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %pipetre.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add27.i, ptr %pipetre.i, align 8
  %add31.i = add nuw nsw i32 %sub25.i, 142
  br label %set_pipe_reg_addr.exit

if.else32.i:                                      ; preds = %if.end16.i.if.else32.i_crit_edge, %if.end16.thread.i
  %pipetre33.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %pipetre33.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pipetre33.i, align 8
  br label %set_pipe_reg_addr.exit

set_pipe_reg_addr.exit:                           ; preds = %if.else32.i, %if.then23.i
  %.sink.i = phi i32 [ 0, %if.else32.i ], [ %add31.i, %if.then23.i ]
  %pipetrn34.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %pipetrn34.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %pipetrn34.i, align 4
  %23 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe.i, align 4
  %25 = and i32 %24, 491520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not = icmp eq i32 %25, 0
  br i1 %tobool20.not, label %set_pipe_reg_addr.exit.if.end23_crit_edge, label %if.then21

set_pipe_reg_addr.exit.if.end23_crit_edge:        ; preds = %set_pipe_reg_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %set_pipe_reg_addr.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i) #10
  %26 = call ptr @memset(ptr %info.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %array.i.i) #10
  %27 = getelementptr inbounds [10 x i16], ptr %array.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [10 x i16], ptr %array.i.i, i32 0, i32 2
  %29 = call ptr @memset(ptr %array.i.i, i32 0, i32 20)
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bmAttributes.i.i.i, align 1
  %32 = and i8 %31, 3
  %and.i.i.i = zext i8 %32 to i32
  %33 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and.i.i.i, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb8.i.i
    i32 1, label %sw.bb26.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then21
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool.not.i.i = icmp sgt i8 %35, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 4, ptr %array.i.i, align 2
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 3, ptr %array.i.i, align 2
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 5, ptr %27, align 2
  br label %sw.epilog.thread.i.i

sw.bb8.i.i:                                       ; preds = %if.then21
  %bEndpointAddress.i78.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %bEndpointAddress.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bEndpointAddress.i78.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool10.not.i.i = icmp sgt i8 %40, -1
  br i1 %tobool10.not.i.i, label %if.else21.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 6, ptr %array.i.i, align 2
  %42 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 7, ptr %27, align 2
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 8, ptr %28, align 2
  br label %sw.epilog.thread.i.i

if.else21.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 9, ptr %array.i.i, align 2
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.then21
  %bEndpointAddress.i80.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %bEndpointAddress.i80.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bEndpointAddress.i80.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool28.not.i.i = icmp sgt i8 %46, -1
  br i1 %tobool28.not.i.i, label %if.else33.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %array.i.i, align 2
  br label %sw.epilog.i.i

if.else33.i.i:                                    ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %array.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %array.i.i, align 2
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %get_empty_pipenum.exit.i

sw.epilog.thread.i.i:                             ; preds = %if.then11.i.i, %if.else.i.i
  %.ph.i.i = phi i16 [ 5, %if.else.i.i ], [ 7, %if.then11.i.i ]
  %49 = ptrtoint ptr %array.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %array.i.i, align 2
  br label %while.body.i.i.preheader

sw.epilog.i.i:                                    ; preds = %if.else33.i.i, %if.then29.i.i, %if.else21.i.i, %if.then.i.i
  %51 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %51)
  %.pr.i.i = load i16, ptr %27, align 2
  %52 = ptrtoint ptr %array.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %array.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i.i)
  %cmp.not83.i.i = icmp eq i16 %.pr.i.i, 0
  br i1 %cmp.not83.i.i, label %sw.epilog.i.i.get_empty_pipenum.exit.i_crit_edge, label %sw.epilog.i.i.while.body.i.i.preheader_crit_edge

sw.epilog.i.i.while.body.i.i.preheader_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.preheader

sw.epilog.i.i.get_empty_pipenum.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_pipenum.exit.i

while.body.i.i.preheader:                         ; preds = %sw.epilog.i.i.while.body.i.i.preheader_crit_edge, %sw.epilog.thread.i.i
  %.ph = phi i16 [ %.pr.i.i, %sw.epilog.i.i.while.body.i.i.preheader_crit_edge ], [ %.ph.i.i, %sw.epilog.thread.i.i ]
  %min.085.i.i.ph = phi i16 [ %53, %sw.epilog.i.i.while.body.i.i.preheader_crit_edge ], [ %50, %sw.epilog.thread.i.i ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %54 = phi i16 [ %60, %while.body.i.i.while.body.i.i_crit_edge ], [ %.ph, %while.body.i.i.preheader ]
  %min.085.i.i = phi i16 [ %spec.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %min.085.i.i.ph, %while.body.i.i.preheader ]
  %i.084.i.i = phi i16 [ %inc58.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 1, %while.body.i.i.preheader ]
  %conv.i.i = zext i16 %54 to i32
  %idxprom43.i.i = zext i16 %min.085.i.i to i32
  %arrayidx44.i.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 12, i32 %idxprom43.i.i
  %55 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx44.i.i, align 1
  %arrayidx50.i.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 12, i32 %conv.i.i
  %57 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx50.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %58)
  %cmp52.i.i = icmp ugt i8 %56, %58
  %spec.select.i.i = select i1 %cmp52.i.i, i16 %54, i16 %min.085.i.i
  %inc58.i.i = add i16 %i.084.i.i, 1
  %idxprom40.i.i = zext i16 %inc58.i.i to i32
  %arrayidx41.i.i = getelementptr [10 x i16], ptr %array.i.i, i32 0, i32 %idxprom40.i.i
  %59 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx41.i.i, align 2
  %cmp.not.i.i = icmp eq i16 %60, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.get_empty_pipenum.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.get_empty_pipenum.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_pipenum.exit.i

get_empty_pipenum.exit.i:                         ; preds = %while.body.i.i.get_empty_pipenum.exit.i_crit_edge, %sw.epilog.i.i.get_empty_pipenum.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i16 [ 0, %do.end.i.i ], [ %53, %sw.epilog.i.i.get_empty_pipenum.exit.i_crit_edge ], [ %spec.select.i.i, %while.body.i.i.get_empty_pipenum.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %array.i.i) #10
  %pipenum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 1
  %61 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %retval.0.i.i, ptr %pipenum.i, align 4
  %62 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pipe.i, align 4
  %64 = and i32 %63, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i.i = icmp eq i32 %64, 0
  br i1 %cmp.i.i.i, label %get_empty_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i_crit_edge, label %cond.false.i.i

get_empty_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i_crit_edge: ; preds = %get_empty_pipenum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_urb_to_r8a66597_addr.exit.i

cond.false.i.i:                                   ; preds = %get_empty_pipenum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %65 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 4
  br label %get_urb_to_r8a66597_addr.exit.i

get_urb_to_r8a66597_addr.exit.i:                  ; preds = %cond.false.i.i, %get_empty_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i_crit_edge
  %cond.i.i = phi i16 [ %70, %cond.false.i.i ], [ 0, %get_empty_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i_crit_edge ]
  %address.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 2
  %71 = ptrtoint ptr %address.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %cond.i.i, ptr %address.i, align 2
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bEndpointAddress.i.i, align 1
  %74 = and i8 %73, 15
  %conv.i = zext i8 %74 to i16
  %epnum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 3
  %75 = ptrtoint ptr %epnum.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i, ptr %epnum.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %78 = and i16 %77, -249
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #10
  %maxpacket.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 4
  %80 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %maxpacket.i, align 2
  %81 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bmAttributes.i.i.i, align 1
  %trunc.i = trunc i8 %82 to i2
  %83 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.87)
  switch i2 %trunc.i, label %do.end.i38.i [
    i2 -2, label %get_urb_to_r8a66597_addr.exit.i.get_r8a66597_type.exit.i_crit_edge
    i2 -1, label %sw.bb1.i.i
    i2 1, label %sw.bb2.i.i
  ]

get_urb_to_r8a66597_addr.exit.i.get_r8a66597_type.exit.i_crit_edge: ; preds = %get_urb_to_r8a66597_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_r8a66597_type.exit.i

sw.bb1.i.i:                                       ; preds = %get_urb_to_r8a66597_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_r8a66597_type.exit.i

sw.bb2.i.i:                                       ; preds = %get_urb_to_r8a66597_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_r8a66597_type.exit.i

do.end.i38.i:                                     ; preds = %get_urb_to_r8a66597_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %get_r8a66597_type.exit.i

get_r8a66597_type.exit.i:                         ; preds = %do.end.i38.i, %sw.bb2.i.i, %sw.bb1.i.i, %get_urb_to_r8a66597_addr.exit.i.get_r8a66597_type.exit.i_crit_edge
  %cmp.i124 = phi i1 [ true, %get_urb_to_r8a66597_addr.exit.i.get_r8a66597_type.exit.i_crit_edge ], [ false, %sw.bb1.i.i ], [ false, %sw.bb2.i.i ], [ false, %do.end.i38.i ]
  %r8a66597_type.0.i.i = phi i16 [ 16384, %get_urb_to_r8a66597_addr.exit.i.get_r8a66597_type.exit.i_crit_edge ], [ -32768, %sw.bb1.i.i ], [ -16384, %sw.bb2.i.i ], [ 0, %do.end.i38.i ]
  %type.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 5
  %84 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %r8a66597_type.0.i.i, ptr %type.i, align 4
  %conv.i40.i = zext i16 %retval.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i)
  %cmp.i.i = icmp eq i16 %retval.0.i.i, 0
  br i1 %cmp.i.i, label %get_bufnum.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %get_r8a66597_type.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %retval.0.i.i)
  %cmp6.i.i = icmp ult i16 %retval.0.i.i, 6
  br i1 %cmp6.i.i, label %land.lhs.true.i46.i, label %land.lhs.true16.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %retval.0.i.i)
  %cmp18.i.i = icmp ult i16 %retval.0.i.i, 10
  br i1 %cmp18.i.i, label %land.lhs.true13.i.thread.i, label %do.end.i48.i

land.lhs.true13.i.thread.i:                       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add23.i.i = add nsw i16 %retval.0.i.i, -2
  %bufnum646669.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 6
  %85 = ptrtoint ptr %bufnum646669.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %add23.i.i, ptr %bufnum646669.i, align 2
  br label %get_buf_bsize.exit.i

get_bufnum.exit.i:                                ; preds = %get_r8a66597_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bufnum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 6
  %86 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %bufnum.i, align 2
  br label %get_buf_bsize.exit.i

land.lhs.true.i46.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i125 = shl nuw nsw i16 %retval.0.i.i, 4
  %add.i.i = add nsw i16 %sub.i.i125, -8
  %bufnum64.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 6
  %87 = ptrtoint ptr %bufnum64.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %add.i.i, ptr %bufnum64.i, align 2
  br label %get_buf_bsize.exit.i

do.end.i48.i:                                     ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv.i40.i) #13
  %bufnum6466.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 6
  %88 = ptrtoint ptr %bufnum6466.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %bufnum6466.i, align 2
  %call.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv.i40.i) #13
  br label %get_buf_bsize.exit.i

get_buf_bsize.exit.i:                             ; preds = %do.end.i48.i, %land.lhs.true.i46.i, %get_bufnum.exit.i, %land.lhs.true13.i.thread.i
  %buf_bsize.0.i.i = phi i16 [ 0, %do.end.i48.i ], [ 3, %get_bufnum.exit.i ], [ 7, %land.lhs.true.i46.i ], [ 0, %land.lhs.true13.i.thread.i ]
  %buf_bsize.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 7
  %89 = ptrtoint ptr %buf_bsize.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %buf_bsize.0.i.i, ptr %buf_bsize.i, align 4
  br i1 %cmp.i124, label %if.then.i126, label %if.else.i127

if.then.i126:                                     ; preds = %get_buf_bsize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %interval.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 8
  %90 = ptrtoint ptr %interval.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %interval.i, align 2
  br label %init_pipe_info.exit

if.else.i127:                                     ; preds = %get_buf_bsize.exit.i
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %91 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bInterval.i, align 1
  %dev.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp.i49.i = icmp eq i32 %96, 3
  br i1 %cmp.i49.i, label %if.then.i50.i, label %if.else7.i.i

if.then.i50.i:                                    ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %92)
  %cmp1.i.i = icmp ugt i8 %92, 7
  br i1 %cmp1.i.i, label %if.then.i50.i.get_interval.exit.i_crit_edge, label %if.else.i55.i

if.then.i50.i.get_interval.exit.i_crit_edge:      ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_interval.exit.i

if.else.i55.i:                                    ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i51.i = zext i8 %92 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i52.i = icmp eq i8 %92, 0
  %sub.i53.i = add nsw i16 %conv.i51.i, -1
  %spec.select.i54.i = select i1 %tobool.not.i52.i, i16 0, i16 %sub.i53.i
  br label %get_interval.exit.i

if.else7.i.i:                                     ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %92)
  %cmp9.i.i = icmp ugt i8 %92, -128
  br i1 %cmp9.i.i, label %if.else7.i.i.get_interval.exit.i_crit_edge, label %for.body.preheader.i.i

if.else7.i.i.get_interval.exit.i_crit_edge:       ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_interval.exit.i

for.body.preheader.i.i:                           ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %92)
  %97 = icmp eq i8 %92, 3
  %time.1.1.i.i = select i1 %97, i16 2, i16 1
  %98 = add i8 %92, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %98)
  %99 = icmp ult i8 %98, 3
  %time.1.2.i.i = select i1 %99, i16 4, i16 %time.1.1.i.i
  %100 = add i8 %92, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %100)
  %101 = icmp ult i8 %100, 7
  %time.1.3.i.i = select i1 %101, i16 8, i16 %time.1.2.i.i
  %102 = add i8 %92, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %102)
  %103 = icmp ult i8 %102, 15
  %time.1.4.i.i = select i1 %103, i16 16, i16 %time.1.3.i.i
  %104 = add i8 %92, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %104)
  %105 = icmp ult i8 %104, 31
  %time.1.5.i.i = select i1 %105, i16 32, i16 %time.1.4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %92)
  %cmp16.6.i.i = icmp ugt i8 %92, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %92)
  %cmp20.6.i.i = icmp ne i8 %92, -128
  %106 = and i1 %cmp16.6.i.i, %cmp20.6.i.i
  %time.1.6.i.i = select i1 %106, i16 64, i16 %time.1.5.i.i
  br label %get_interval.exit.i

get_interval.exit.i:                              ; preds = %for.body.preheader.i.i, %if.else7.i.i.get_interval.exit.i_crit_edge, %if.else.i55.i, %if.then.i50.i.get_interval.exit.i_crit_edge
  %time.2.i.i = phi i16 [ %spec.select.i54.i, %if.else.i55.i ], [ 7, %if.then.i50.i.get_interval.exit.i_crit_edge ], [ 7, %if.else7.i.i.get_interval.exit.i_crit_edge ], [ %time.1.6.i.i, %for.body.preheader.i.i ]
  %interval16.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 8
  %107 = ptrtoint ptr %interval16.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %time.2.i.i, ptr %interval16.i, align 2
  %108 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %109)
  %cmp.i56.i = icmp ult i32 %109, 1073741824
  br i1 %cmp.i56.i, label %get_interval.exit.i.init_pipe_info.exit_crit_edge, label %if.end.i.i

get_interval.exit.i.init_pipe_info.exit_crit_edge: ; preds = %get_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_pipe_info.exit

if.end.i.i:                                       ; preds = %get_interval.exit.i
  %110 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %96, label %do.end.i.i.i [
    i32 1, label %if.end.i.i.if.else.i60.i_crit_edge
    i32 2, label %if.end.i.i.if.else.i60.i_crit_edge202
    i32 3, label %for.cond.preheader.i.i
  ]

if.end.i.i.if.else.i60.i_crit_edge202:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i60.i

if.end.i.i.if.else.i60.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i60.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp619.i.i = icmp ugt i8 %92, 1
  br i1 %cmp619.i.i, label %for.body.preheader.i59.i, label %for.cond.preheader.i.i.init_pipe_info.exit_crit_edge

for.cond.preheader.i.i.init_pipe_info.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_pipe_info.exit

for.body.preheader.i59.i:                         ; preds = %for.cond.preheader.i.i
  %conv5.i.i = zext i8 %92 to i32
  %111 = add nsw i32 %conv5.i.i, -2
  br label %for.body.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %if.else.i60.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i59.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i59.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %time.021.i.i = phi i32 [ 1, %for.body.preheader.i59.i ], [ %mul.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %time.021.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.i.i, %111
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i.i = mul i32 %time.021.i.i, 250
  %phi.bo22.i.i = udiv i32 %phi.bo.i.i, 1000
  br label %init_pipe_info.exit

if.else.i60.i:                                    ; preds = %do.end.i.i.i, %if.end.i.i.if.else.i60.i_crit_edge, %if.end.i.i.if.else.i60.i_crit_edge202
  %conv9.i.i = zext i8 %92 to i32
  br label %init_pipe_info.exit

init_pipe_info.exit:                              ; preds = %if.else.i60.i, %for.end.loopexit.i.i, %for.cond.preheader.i.i.init_pipe_info.exit_crit_edge, %get_interval.exit.i.init_pipe_info.exit_crit_edge, %if.then.i126
  %storemerge.i = phi i32 [ 0, %if.then.i126 ], [ 0, %get_interval.exit.i.init_pipe_info.exit_crit_edge ], [ %conv9.i.i, %if.else.i60.i ], [ 0, %for.cond.preheader.i.i.init_pipe_info.exit_crit_edge ], [ %phi.bo22.i.i, %for.end.loopexit.i.i ]
  %112 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %storemerge.i, ptr %info.i, align 4
  %113 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bEndpointAddress.i.i, align 1
  %.lobit.i = lshr i8 %114, 7
  %115 = zext i8 %.lobit.i to i16
  %116 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %info.i, i32 0, i32 9
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %115, ptr %116, align 4
  call fastcc void @enable_r8a66597_pipe(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef %1, ptr noundef nonnull %info.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i) #10
  br label %if.end23

if.end23:                                         ; preds = %init_pipe_info.exit, %set_pipe_reg_addr.exit.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %118 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pipe.i, align 4
  %120 = and i32 %119, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i.i129 = icmp eq i32 %120, 0
  br i1 %cmp.i.i129, label %if.then.i.i130, label %if.end.i.i132

if.then.i.i130:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  br label %get_urb_to_r8a66597_dev.exit.i

if.end.i.i132:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i131 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %121 = ptrtoint ptr %dev.i.i131 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i.i131, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 15, i32 8
  %123 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit.i

get_urb_to_r8a66597_dev.exit.i:                   ; preds = %if.end.i.i132, %if.then.i.i130
  %retval.0.i.i133 = phi ptr [ %device0.i.i, %if.then.i.i130 ], [ %124, %if.end.i.i132 ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i133, null
  br i1 %tobool.not.i, label %get_urb_to_r8a66597_dev.exit.i.if.end29_crit_edge, label %land.lhs.true.i

get_urb_to_r8a66597_dev.exit.i.if.end29_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true.i:                                  ; preds = %get_urb_to_r8a66597_dev.exit.i
  %125 = ptrtoint ptr %retval.0.i.i133 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %retval.0.i.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool1.not.i = icmp eq i16 %126, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end29_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %state.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i133, i32 0, i32 7
  %127 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %128)
  %cmp.not.i = icmp eq i32 %128, 7
  br i1 %cmp.not.i, label %land.lhs.true2.i.if.end29_crit_edge, label %land.lhs.true4.i

land.lhs.true2.i.if.end29_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %dev5.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %129 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev5.i, align 4
  %state6.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %state6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %132)
  %cmp7.i = icmp eq i32 %132, 7
  br i1 %cmp7.i, label %if.then28, label %land.lhs.true4.i.if.end29_crit_edge

land.lhs.true4.i.if.end29_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true4.i
  br i1 %cmp.i.i129, label %if.then.i.i139, label %if.end.i.i142

if.then.i.i139:                                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i138 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  br label %init_pipe_config.exit

if.end.i.i142:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev5.i, align 4
  %driver_data.i.i.i141 = getelementptr inbounds %struct.usb_device, ptr %134, i32 0, i32 15, i32 8
  %135 = ptrtoint ptr %driver_data.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %driver_data.i.i.i141, align 4
  br label %init_pipe_config.exit

init_pipe_config.exit:                            ; preds = %if.end.i.i142, %if.then.i.i139
  %retval.0.i.i143 = phi ptr [ %device0.i.i138, %if.then.i.i139 ], [ %136, %if.end.i.i142 ]
  %state.i144 = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i143, i32 0, i32 7
  %137 = ptrtoint ptr %state.i144 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 7, ptr %state.i144, align 4
  br label %if.end29

if.end29:                                         ; preds = %init_pipe_config.exit, %land.lhs.true4.i.if.end29_crit_edge, %land.lhs.true2.i.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %get_urb_to_r8a66597_dev.exit.i.if.end29_crit_edge
  %138 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pipe.i, align 4
  %140 = and i32 %139, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp.i147 = icmp eq i32 %140, 0
  br i1 %cmp.i147, label %if.then.i151, label %if.end29.set_address_zero.exit_crit_edge

if.end29.set_address_zero.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_address_zero.exit

if.then.i151:                                     ; preds = %if.end29
  %dev.i148 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %141 = ptrtoint ptr %dev.i148 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i148, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %devpath.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %devpath.i, align 1
  %145 = and i8 %144, 15
  %and.i.i = zext i8 %145 to i32
  %sub.i.i149 = add nuw nsw i32 %and.i.i, 65535
  %conv2.i.i = and i32 %sub.i.i149, 65535
  %max_root_hub.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %146 = ptrtoint ptr %max_root_hub.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_root_hub.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %conv2.i.i)
  %cmp.not.i.i150 = icmp ugt i32 %147, %conv2.i.i
  br i1 %cmp.not.i.i150, label %if.then.i151.get_port_number.exit.i_crit_edge, label %do.end.i.i153

if.then.i151.get_port_number.exit.i_crit_edge:    ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_port_number.exit.i

do.end.i.i153:                                    ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %get_port_number.exit.i

get_port_number.exit.i:                           ; preds = %do.end.i.i153, %if.then.i151.get_port_number.exit.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.usb_device, ptr %142, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx8.i.i, align 1
  %150 = and i8 %149, 15
  %151 = ptrtoint ptr %dev.i148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i148, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %speed.i, align 4
  %switch.tableidx = add i32 %154, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %155 = icmp ult i32 %switch.tableidx, 3
  br i1 %155, label %switch.lookup, label %do.end.i12.i

do.end.i12.i:                                     ; preds = %get_port_number.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %get_r8a66597_usb_speed.exit.i

switch.lookup:                                    ; preds = %get_port_number.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.mult = shl i32 %switch.tableidx, 6
  %switch.offset = add i32 %switch.idx.mult, 64
  br label %get_r8a66597_usb_speed.exit.i

get_r8a66597_usb_speed.exit.i:                    ; preds = %switch.lookup, %do.end.i12.i
  %usbspd.0.i.i = phi i32 [ 0, %do.end.i12.i ], [ %switch.offset, %switch.lookup ]
  %156 = ptrtoint ptr %dev.i148 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i148, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_device, ptr %157, i32 0, i32 11
  %158 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i156 = icmp eq ptr %159, null
  br i1 %tobool.not.i.i156, label %get_r8a66597_usb_speed.exit.i.if.end.i.i160_crit_edge, label %land.lhs.true.i.i158

get_r8a66597_usb_speed.exit.i.if.end.i.i160_crit_edge: ; preds = %get_r8a66597_usb_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i160

land.lhs.true.i.i158:                             ; preds = %get_r8a66597_usb_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp.not.i13.i = icmp eq i32 %161, 1
  %spec.select.i.i157 = select i1 %cmp.not.i13.i, ptr %157, ptr %159
  br label %if.end.i.i160

if.end.i.i160:                                    ; preds = %land.lhs.true.i.i158, %get_r8a66597_usb_speed.exit.i.if.end.i.i160_crit_edge
  %udev.addr.0.i.i = phi ptr [ %157, %get_r8a66597_usb_speed.exit.i.if.end.i.i160_crit_edge ], [ %spec.select.i.i157, %land.lhs.true.i.i158 ]
  %driver_data.i.i.i159 = getelementptr inbounds %struct.usb_device, ptr %udev.addr.0.i.i, i32 0, i32 15, i32 8
  %162 = ptrtoint ptr %driver_data.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %driver_data.i.i.i159, align 4
  %tobool4.not.i.i = icmp eq ptr %163, null
  br i1 %tobool4.not.i.i, label %if.end.i.i160.get_parent_r8a66597_address.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i160.get_parent_r8a66597_address.exit.i_crit_edge: ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_parent_r8a66597_address.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %163, align 4
  %166 = and i16 %165, 255
  %phi.cast16.i = zext i16 %166 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast16.i, 11
  br label %get_parent_r8a66597_address.exit.i

get_parent_r8a66597_address.exit.i:               ; preds = %if.then5.i.i, %if.end.i.i160.get_parent_r8a66597_address.exit.i_crit_edge
  %retval.0.i.i161 = phi i32 [ %phi.bo.i, %if.then5.i.i ], [ 0, %if.end.i.i160.get_parent_r8a66597_address.exit.i_crit_edge ]
  %conv2.i14.i = zext i8 %150 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i14.i, 8
  %and.i15.i = and i32 %sub.i.i149, 1
  %or.i.i = or i32 %shl3.i.i, %and.i15.i
  %or6.i.i = or i32 %usbspd.0.i.i, %or.i.i
  %or7.i.i = or i32 %retval.0.i.i161, %or6.i.i
  %conv8.i.i = trunc i32 %or7.i.i to i16
  %reg.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %167 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %168, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %169 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %169) #10, !srcloc !200
  br label %set_address_zero.exit

set_address_zero.exit:                            ; preds = %get_parent_r8a66597_address.exit.i, %if.end29.set_address_zero.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %170 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %170, i32 noundef 2848, i32 noundef 32) #14
  %cmp.i163 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i163, label %set_address_zero.exit.if.then71_crit_edge, label %if.end.i165

set_address_zero.exit.if.then71_crit_edge:        ; preds = %set_address_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

if.end.i165:                                      ; preds = %set_address_zero.exit
  %171 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pipe.i, align 4
  %173 = and i32 %172, 491520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i.i164 = icmp eq i32 %173, 0
  br i1 %cmp.i.i164, label %if.end.i165.r8a66597_get_pipenum.exit.i_crit_edge, label %if.else.i.i166

if.end.i165.r8a66597_get_pipenum.exit.i_crit_edge: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_get_pipenum.exit.i

if.else.i.i166:                                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hcpriv, align 4
  %pipenum.i.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %pipenum.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %pipenum.i.i, align 4
  br label %r8a66597_get_pipenum.exit.i

r8a66597_get_pipenum.exit.i:                      ; preds = %if.else.i.i166, %if.end.i165.r8a66597_get_pipenum.exit.i_crit_edge
  %retval.0.i.i167 = phi i16 [ %177, %if.else.i.i166 ], [ 0, %if.end.i165.r8a66597_get_pipenum.exit.i_crit_edge ]
  %pipenum2.i = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 4
  %178 = ptrtoint ptr %pipenum2.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %retval.0.i.i167, ptr %pipenum2.i, align 2
  %179 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hcpriv, align 4
  %181 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %call7.i.i.i, align 8
  %urb3.i = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %urb3.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %urb, ptr %urb3.i, align 4
  %183 = and i32 %172, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp.i.i.i168 = icmp eq i32 %183, 0
  br i1 %cmp.i.i.i168, label %r8a66597_get_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i176_crit_edge, label %cond.false.i.i171

r8a66597_get_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i176_crit_edge: ; preds = %r8a66597_get_pipenum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_urb_to_r8a66597_addr.exit.i176

cond.false.i.i171:                                ; preds = %r8a66597_get_pipenum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i169 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %184 = ptrtoint ptr %dev.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i.i.i169, align 4
  %driver_data.i.i.i.i170 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15, i32 8
  %186 = ptrtoint ptr %driver_data.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %driver_data.i.i.i.i170, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %187, align 4
  br label %get_urb_to_r8a66597_addr.exit.i176

get_urb_to_r8a66597_addr.exit.i176:               ; preds = %cond.false.i.i171, %r8a66597_get_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i176_crit_edge
  %cond.i.i172 = phi i16 [ %189, %cond.false.i.i171 ], [ 0, %r8a66597_get_pipenum.exit.i.get_urb_to_r8a66597_addr.exit.i176_crit_edge ]
  %address.i173 = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 6
  %190 = ptrtoint ptr %address.i173 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %cond.i.i172, ptr %address.i173, align 8
  %dev.i174 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %191 = ptrtoint ptr %dev.i174 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i174, align 4
  %193 = lshr i32 %172, 15
  %and.i.i175 = and i32 %193, 15
  %194 = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i.not.i = icmp eq i32 %194, 0
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %192, i32 0, i32 22, i32 %and.i.i175
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %192, i32 0, i32 21, i32 %and.i.i175
  %ep.0.in.i.i = select i1 %tobool.not.i.not.i, ptr %arrayidx.i.i, ptr %arrayidx57.i.i
  %195 = ptrtoint ptr %ep.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %ep.0.i.i = load ptr, ptr %ep.0.in.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %ep.0.i.i, null
  br i1 %tobool59.not.i.i, label %get_urb_to_r8a66597_addr.exit.i176.usb_maxpacket.exit.i_crit_edge, label %if.end61.i.i

get_urb_to_r8a66597_addr.exit.i176.usb_maxpacket.exit.i_crit_edge: ; preds = %get_urb_to_r8a66597_addr.exit.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_maxpacket.exit.i

if.end61.i.i:                                     ; preds = %get_urb_to_r8a66597_addr.exit.i176
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i, i32 0, i32 4
  %196 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %198 = and i16 %197, -249
  %199 = tail call i16 @llvm.bswap.i16(i16 %198) #10
  br label %usb_maxpacket.exit.i

usb_maxpacket.exit.i:                             ; preds = %if.end61.i.i, %get_urb_to_r8a66597_addr.exit.i176.usb_maxpacket.exit.i_crit_edge
  %retval.0.i41.i = phi i16 [ %199, %if.end61.i.i ], [ 0, %get_urb_to_r8a66597_addr.exit.i176.usb_maxpacket.exit.i_crit_edge ]
  %maxpacket.i177 = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 7
  %200 = ptrtoint ptr %maxpacket.i177 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %retval.0.i41.i, ptr %maxpacket.i177, align 2
  %shr.mask.i = and i32 %172, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp10.i = icmp eq i32 %shr.mask.i, -2147483648
  %type.i178 = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 3
  %. = select i1 %tobool.not.i.not.i, i16 225, i16 105
  %.sink = select i1 %cmp10.i, i16 45, i16 %.
  %201 = ptrtoint ptr %type.i178 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %.sink, ptr %type.i178, align 8
  %queue.i = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 2
  %202 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.r8a66597_td, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %203 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %204 = ptrtoint ptr %pipenum2.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %pipenum2.i, align 2
  %idxprom = zext i16 %205 to i32
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %idxprom
  %206 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i180.not = icmp eq ptr %207, %arrayidx
  %prev.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %idxprom, i32 1
  %208 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev.i, align 4
  %call.i.i182 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue.i, ptr noundef %209, ptr noundef %arrayidx) #10
  br i1 %call.i.i182, label %if.end.i.i183, label %usb_maxpacket.exit.i.list_add_tail.exit_crit_edge

usb_maxpacket.exit.i.list_add_tail.exit_crit_edge: ; preds = %usb_maxpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i183:                                    ; preds = %usb_maxpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %queue.i, ptr %prev.i, align 4
  %211 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %arrayidx, ptr %queue.i, align 8
  %212 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %209, ptr %prev.i.i, align 4
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %queue.i, ptr %209, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i183, %usb_maxpacket.exit.i.list_add_tail.exit_crit_edge
  %hcpriv43 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %214 = ptrtoint ptr %hcpriv43 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call7.i.i.i, ptr %hcpriv43, align 4
  br i1 %cmp.i180.not, label %if.then45, label %do.end9.i

if.then45:                                        ; preds = %list_add_tail.exit
  %215 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %call7.i.i.i, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool47.not = icmp eq i32 %218, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %pipenum2.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %pipenum2.i, align 2
  %conv50 = zext i16 %220 to i32
  %shl = shl nuw i32 1, %conv50
  %interval_map = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 1, i32 4, i32 3
  %221 = ptrtoint ptr %interval_map to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %interval_map, align 4
  %223 = trunc i32 %shl to i16
  %conv52 = or i16 %222, %223
  store i16 %conv52, ptr %interval_map, align 4
  %interval = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 8, i32 %conv50, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %224 = load volatile i32, ptr @jiffies, align 128
  %225 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %216, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %226) #10
  %add = add i32 %call2.i, %224
  %call60 = tail call i32 @mod_timer(ptr noundef %interval, i32 noundef %add) #10
  br label %error_not_linked

if.else:                                          ; preds = %if.then45
  %call61 = tail call fastcc i32 @start_transfer(ptr noundef %hcd_priv.i, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.else.error_not_linked_crit_edge

if.else.error_not_linked_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_not_linked

if.then64:                                        ; preds = %if.else
  %call.i.i184 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue.i) #10
  br i1 %call.i.i184, label %if.end.i.i186, label %if.then64.list_del.exit_crit_edge

if.then64.list_del.exit_crit_edge:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i186:                                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %prev.i.i, align 4
  %229 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %queue.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %228, ptr %prev1.i.i.i, align 4
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile ptr %230, ptr %228, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i186, %if.then64.list_del.exit_crit_edge
  %233 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr inttoptr (i32 256 to ptr), ptr %queue.i, align 8
  %234 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then71

do.end9.i:                                        ; preds = %list_add_tail.exit
  %235 = ptrtoint ptr %pipenum2.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %pipenum2.i, align 2
  %idxprom.i = zext i16 %236 to i32
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %idxprom.i
  %237 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %238, %arrayidx.i
  br i1 %cmp.i.not.i, label %do.end9.i.error_not_linked_crit_edge, label %land.lhs.true.i193

do.end9.i.error_not_linked_crit_edge:             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_not_linked

land.lhs.true.i193:                               ; preds = %do.end9.i
  %239 = ptrtoint ptr %urb3.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %urb3.i, align 4
  %pipe.i190 = getelementptr inbounds %struct.urb, ptr %240, i32 0, i32 10
  %241 = ptrtoint ptr %pipe.i190 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %pipe.i190, align 4
  %shr.mask.i191 = and i32 %242, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i191)
  %cmp.i192 = icmp eq i32 %shr.mask.i191, -2147483648
  %and14.i = and i32 %242, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = or i1 %cmp.i192, %tobool15.not.i
  br i1 %or.cond.i, label %land.lhs.true.i193.error_not_linked_crit_edge, label %if.then16.i

land.lhs.true.i193.error_not_linked_crit_edge:    ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_not_linked

if.then16.i:                                      ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %idxprom.i
  %timeout_map.i = getelementptr inbounds %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 10
  %243 = ptrtoint ptr %timeout_map.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %timeout_map.i, align 2
  %245 = trunc i32 %shl.i to i16
  %conv19.i = or i16 %244, %245
  store i16 %conv19.i, ptr %timeout_map.i, align 2
  %246 = ptrtoint ptr %pipe.i190 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pipe.i190, align 4
  %arrayidx26.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 8, i32 %idxprom.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %248 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %247)
  %switch.i = icmp sgt i32 %247, -1
  %..i = select i1 %switch.i, i32 30, i32 50
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %..i) #10
  %add.i197 = add i32 %call2.i.i, %248
  %call29.i = tail call i32 @mod_timer(ptr noundef %arrayidx26.i, i32 noundef %add.i197) #10
  br label %error_not_linked

if.then71:                                        ; preds = %list_del.exit, %set_address_zero.exit.if.then71_crit_edge, %if.then12.if.then71_crit_edge
  %ret.0 = phi i32 [ %call61, %list_del.exit ], [ -12, %if.then12.if.then71_crit_edge ], [ -12, %set_address_zero.exit.if.then71_crit_edge ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  br label %error_not_linked

error_not_linked:                                 ; preds = %if.then71, %if.then16.i, %land.lhs.true.i193.error_not_linked_crit_edge, %do.end9.i.error_not_linked_crit_edge, %if.else.error_not_linked_crit_edge, %if.then48, %if.end.error_not_linked_crit_edge, %get_urb_to_r8a66597_dev.exit.error_not_linked_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end.error_not_linked_crit_edge ], [ %ret.0, %if.then71 ], [ -19, %get_urb_to_r8a66597_dev.exit.error_not_linked_crit_edge ], [ 0, %if.then48 ], [ 0, %if.else.error_not_linked_crit_edge ], [ 0, %do.end9.i.error_not_linked_crit_edge ], [ 0, %land.lhs.true.i193.error_not_linked_crit_edge ], [ 0, %if.then16.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end.done_crit_edge, label %if.then8

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @pipe_stop(ptr noundef %hcd_priv.i, ptr noundef %3)
  %pipenum = getelementptr inbounds %struct.r8a66597_td, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext %5)
  %6 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pipenum, align 2
  %reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 48
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 48
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %14 = and i16 %13, -8
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %14) #10, !srcloc !200
  %conv.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %18, i32 58
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !197
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %20, %neg.i.i
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %22, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %23 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %23) #10, !srcloc !200
  %24 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %10) #10, !srcloc !200
  %26 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pipenum, align 2
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef nonnull %1, i16 noundef zeroext %27, ptr noundef %urb, i32 noundef %status)
  br label %done

done:                                             ; preds = %if.then8, %if.end.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_endpoint_disable(ptr noundef %hcd, ptr nocapture noundef %hep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipenum1 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipenum1, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp9 = icmp eq i16 %3, 0
  br i1 %cmp9, label %if.end.cleanup.sink.split_crit_edge, label %if.end15

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end
  tail call fastcc void @pipe_stop(ptr noundef %hcd_priv.i, ptr noundef nonnull %1)
  tail call fastcc void @pipe_irq_disable(ptr noundef %hcd_priv.i, i16 noundef zeroext %3)
  %reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 48
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %10 = and i16 %9, -8
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %10) #10, !srcloc !200
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %14, i32 58
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !197
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %16, %neg.i.i
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %18, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %19 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %19) #10, !srcloc !200
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %6) #10, !srcloc !200
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 6, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 -8
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i, !prof !201
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %urb18 = getelementptr inbounds %struct.r8a66597_td, ptr %spec.select.i, i32 0, i32 1
  %24 = ptrtoint ptr %urb18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %urb.0 = phi ptr [ %25, %if.then17 ], [ null, %if.end15.if.end19_crit_edge ]
  tail call fastcc void @finish_request(ptr noundef %hcd_priv.i, ptr noundef %spec.select.i, i16 noundef zeroext %3, ptr noundef %urb.0, i32 noundef -108)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19, %if.end.cleanup.sink.split_crit_edge
  %26 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hcpriv, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_hub_status_data(ptr noundef %hcd, ptr nocapture noundef %buf) #2 align 64 {
entry:
  %now_map.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now_map.i) #10
  %0 = call ptr @memset(ptr %now_map.i, i32 0, i32 16)
  tail call void @mutex_lock_nested(ptr noundef nonnull @usb_bus_idr_lock, i32 noundef 0) #10
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %1 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %busnum.i, align 8
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @usb_bus_idr, i32 noundef %2) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.r8a66597_check_detect_child.exit_crit_edge, label %land.lhs.true.i

entry.r8a66597_check_detect_child.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_check_detect_child.exit

land.lhs.true.i:                                  ; preds = %entry
  %root_hub.i = getelementptr inbounds %struct.usb_bus, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %root_hub.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root_hub.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.r8a66597_check_detect_child.exit_crit_edge, label %if.then.i

land.lhs.true.i.r8a66597_check_detect_child.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_check_detect_child.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call fastcc void @collect_usb_address_map(ptr noundef nonnull %4, ptr noundef nonnull %now_map.i) #10
  %child_device.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc21.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.08.i.i = phi i32 [ 0, %if.then.i ], [ %inc22.i.i, %for.inc21.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 16, i32 %i.08.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr i32, ptr %now_map.i, i32 %i.08.i.i
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc21.i.i_crit_edge, label %for.cond2.preheader.i.i

for.body.i.i.for.inc21.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i.i

for.cond2.preheader.i.i:                          ; preds = %for.body.i.i
  %mul.i.i = shl i32 %i.08.i.i, 5
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc.i.i.for.body4.i.i_crit_edge, %for.cond2.preheader.i.i
  %j.06.i.i = phi i32 [ 0, %for.cond2.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %j.06.i.i
  %and.i.i = and i32 %shl.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %for.body4.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

for.body4.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body4.i.i
  %add.i.i = add nuw nsw i32 %j.06.i.i, %mul.i.i
  %and10.i.i = and i32 %shl.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i.udiv12.i.i = lshr i32 %add.i.i, 5
  %rem2.i.i.i = and i32 %add.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem2.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 16, i32 %div.i.udiv12.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %10, %shl.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  %call15.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.else.i.i
  %.pn.in.i.i.i = phi ptr [ %child_device.i.i.i, %if.else.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %child_device.i.i.i
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %usb_address.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %12 = ptrtoint ptr %usb_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_address.i.i.i, align 4
  %cmp1.not.i.i.i = icmp eq i32 %13, %add.i.i
  br i1 %cmp1.not.i.i.i, label %cleanup.loopexit.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

do.end.i.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %add.i.i) #13
  br label %get_r8a66597_device.exit.i.i

cleanup.loopexit.i.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -36
  br label %get_r8a66597_device.exit.i.i

get_r8a66597_device.exit.i.i:                     ; preds = %cleanup.loopexit.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ %dev.0.le.i.i.i, %cleanup.loopexit.i.i.i ]
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %hcd_priv.i, ptr noundef %retval.0.i.i.i) #10
  tail call fastcc void @free_usb_address(ptr noundef %hcd_priv.i, ptr noundef %retval.0.i.i.i, i32 noundef 0) #10
  %div.i1.udiv13.i.i = lshr i32 %add.i.i, 5
  %rem2.i2.i.i = and i32 %add.i.i, 31
  %shl.i3.i.i = shl nuw i32 1, %rem2.i2.i.i
  %neg.i.i.i = xor i32 %shl.i3.i.i, -1
  %arrayidx.i4.i.i = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 16, i32 %div.i1.udiv13.i.i
  %14 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i4.i.i, align 4
  %and.i.i.i = and i32 %15, %neg.i.i.i
  store i32 %and.i.i.i, ptr %arrayidx.i4.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call15.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %get_r8a66597_device.exit.i.i, %if.then12.i.i, %for.body4.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc21.i.i_crit_edge, label %for.inc.i.i.for.body4.i.i_crit_edge

for.inc.i.i.for.body4.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i

for.inc.i.i.for.inc21.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i.i

for.inc21.i.i:                                    ; preds = %for.inc.i.i.for.inc21.i.i_crit_edge, %for.body.i.i.for.inc21.i.i_crit_edge
  %inc22.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond11.not.i.i = icmp eq i32 %inc22.i.i, 4
  br i1 %exitcond11.not.i.i, label %for.inc21.i.i.r8a66597_check_detect_child.exit_crit_edge, label %for.inc21.i.i.for.body.i.i_crit_edge

for.inc21.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc21.i.i.r8a66597_check_detect_child.exit_crit_edge: ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_check_detect_child.exit

r8a66597_check_detect_child.exit:                 ; preds = %for.inc21.i.i.r8a66597_check_detect_child.exit_crit_edge, %land.lhs.true.i.r8a66597_check_detect_child.exit_crit_edge, %entry.r8a66597_check_detect_child.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now_map.i) #10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buf, align 1
  %max_root_hub = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp625.not = icmp eq i32 %18, 0
  br i1 %cmp625.not, label %r8a66597_check_detect_child.exit.for.end_crit_edge, label %r8a66597_check_detect_child.exit.for.body_crit_edge

r8a66597_check_detect_child.exit.for.body_crit_edge: ; preds = %r8a66597_check_detect_child.exit
  br label %for.body

r8a66597_check_detect_child.exit.for.end_crit_edge: ; preds = %r8a66597_check_detect_child.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %r8a66597_check_detect_child.exit.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %r8a66597_check_detect_child.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %i.026
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %20)
  %tobool.not = icmp ult i32 %20, 65536
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 2, %i.026
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf, align 1
  %23 = trunc i32 %shl to i8
  %conv9 = or i8 %22, %23
  store i8 %conv9, ptr %buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %24 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_root_hub, align 4
  %cmp6 = icmp ult i32 %inc, %25
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %r8a66597_check_detect_child.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp12 = icmp ne i8 %27, 0
  %conv13 = zext i1 %cmp12 to i32
  ret i32 %conv13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %conv = zext i16 %wIndex to i32
  %and = and i32 %conv, 255
  %sub = add nsw i32 %and, -1
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %0 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %typeReq, label %entry.error_crit_edge [
    i16 8193, label %entry.sw.bb_crit_edge
    i16 8195, label %entry.sw.bb_crit_edge104
    i16 8961, label %sw.bb10
    i16 -24570, label %sw.bb30
    i16 -24576, label %sw.bb31
    i16 -23808, label %sw.bb32
    i16 8963, label %sw.bb40
  ]

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge104
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog69_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb.sw.epilog69_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog69

sw.bb10:                                          ; preds = %entry
  %max_root_hub = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp12 = icmp uge i32 %2, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %cmp15.not = icmp eq i16 %wLength, 0
  %or.cond = and i1 %cmp15.not, %cmp12
  br i1 %or.cond, label %if.end18, label %sw.bb10.error_crit_edge

sw.bb10.error_crit_edge:                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end18:                                         ; preds = %sw.bb10
  %conv19 = zext i16 %wValue to i32
  %3 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %wValue, label %if.end18.error_crit_edge [
    i16 1, label %sw.bb20
    i16 2, label %if.end18.sw.epilog26_crit_edge
    i16 8, label %sw.bb23
    i16 17, label %if.end18.sw.epilog26_crit_edge105
    i16 18, label %if.end18.sw.epilog26_crit_edge106
    i16 16, label %if.end18.sw.epilog26_crit_edge107
    i16 19, label %if.end18.sw.epilog26_crit_edge108
    i16 20, label %if.end18.sw.epilog26_crit_edge109
  ]

if.end18.sw.epilog26_crit_edge109:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.sw.epilog26_crit_edge108:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.sw.epilog26_crit_edge107:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.sw.epilog26_crit_edge106:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.sw.epilog26_crit_edge105:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.sw.epilog26_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb20:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and22 = and i32 %5, -257
  store i32 %and22, ptr %arrayidx, align 4
  br label %sw.epilog26

sw.bb23:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r8a66597_port_power(ptr noundef %hcd_priv.i, i32 noundef %sub, i32 noundef 0)
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.bb23, %sw.bb20, %if.end18.sw.epilog26_crit_edge, %if.end18.sw.epilog26_crit_edge105, %if.end18.sw.epilog26_crit_edge106, %if.end18.sw.epilog26_crit_edge107, %if.end18.sw.epilog26_crit_edge108, %if.end18.sw.epilog26_crit_edge109
  %shl = shl nuw nsw i32 1, %conv19
  %neg = xor i32 %shl, -1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and29 = and i32 %7, %neg
  store i32 %and29, ptr %arrayidx, align 4
  br label %sw.epilog69

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 41, ptr %bDescriptorType.i, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %9 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %max_root_hub.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %max_root_hub.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_root_hub.i, align 4
  %conv.i = trunc i32 %11 to i8
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %bNbrPorts.i, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 9, ptr %buf, align 1
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bPwrOn2PwrGood.i, align 1
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 4352, ptr %wHubCharacteristics.i, align 1
  %16 = load i32, ptr %max_root_hub.i, align 4
  %notmask.i = shl nsw i32 -1, %16
  %17 = trunc i32 %notmask.i to i8
  %sub.tr.i = xor i8 %17, -1
  %conv3.i = shl i8 %sub.tr.i, 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %u.i, align 1
  %arrayidx6.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx6.i, align 1
  br label %sw.epilog69

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf, align 1
  br label %sw.epilog69

sw.bb32:                                          ; preds = %entry
  %max_root_hub34 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %max_root_hub34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_root_hub34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp35 = icmp ult i32 %22, %conv
  br i1 %cmp35, label %sw.bb32.error_crit_edge, label %if.end38

sw.bb32.error_crit_edge:                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end38:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf, align 4
  br label %sw.epilog69

sw.bb40:                                          ; preds = %entry
  %max_root_hub42 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %max_root_hub42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_root_hub42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp43 = icmp uge i32 %28, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %cmp48.not = icmp eq i16 %wLength, 0
  %or.cond103 = and i1 %cmp48.not, %cmp43
  br i1 %or.cond103, label %if.end51, label %sw.bb40.error_crit_edge

sw.bb40.error_crit_edge:                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end51:                                         ; preds = %sw.bb40
  %conv52 = zext i16 %wValue to i32
  %29 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %wValue, label %if.end51.error_crit_edge [
    i16 2, label %if.end51.sw.epilog63_crit_edge
    i16 8, label %sw.bb53
    i16 4, label %sw.bb55
  ]

if.end51.sw.epilog63_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog63

if.end51.error_crit_edge:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb53:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r8a66597_port_power(ptr noundef %hcd_priv.i, i32 noundef %sub, i32 noundef 1)
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %or = or i32 %31, 256
  store i32 %or, ptr %arrayidx, align 4
  br label %sw.epilog63

sw.bb55:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %dev56 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 3
  %32 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev56, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %or58 = or i32 %35, 16
  store i32 %or58, ptr %arrayidx, align 4
  tail call fastcc void @disable_r8a66597_pipe_all(ptr noundef %hcd_priv.i, ptr noundef %33)
  tail call fastcc void @free_usb_address(ptr noundef %hcd_priv.i, ptr noundef %33, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp eq i32 %sub, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 10
  tail call fastcc void @r8a66597_mdfy(ptr noundef %hcd_priv.i, i16 noundef zeroext 64, i16 noundef zeroext 80, i32 noundef %cond.i)
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 5
  %call61 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add) #10
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %sw.bb55, %sw.bb53, %if.end51.sw.epilog63_crit_edge
  %shl65 = shl nuw nsw i32 1, %conv52
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %or67 = or i32 %38, %shl65
  store i32 %or67, ptr %arrayidx, align 4
  br label %sw.epilog69

error:                                            ; preds = %if.end51.error_crit_edge, %sw.bb40.error_crit_edge, %sw.bb32.error_crit_edge, %if.end18.error_crit_edge, %sw.bb10.error_crit_edge, %sw.bb.error_crit_edge, %entry.error_crit_edge
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %error, %sw.epilog63, %if.end38, %sw.bb31, %sw.bb30, %sw.epilog26, %sw.bb.sw.epilog69_crit_edge
  %ret.0 = phi i32 [ -32, %error ], [ 0, %sw.epilog63 ], [ 0, %if.end38 ], [ 0, %sw.bb31 ], [ 0, %sw.bb30 ], [ 0, %sw.epilog26 ], [ 0, %sw.bb.sw.epilog69_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_bus_suspend(ptr nocapture noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_bus_suspend.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_bus_suspend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_bus_suspend.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max_root_hub = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp73.not = icmp eq i32 %3, 0
  br i1 %cmp73.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %port.074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.074)
  %cmp.i = icmp eq i32 %port.074, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %do.body9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_bus_suspend.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_bus_suspend, %if.then21)) #10
          to label %do.end27 [label %if.then21], !srcloc !202

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %port.074, i32 3
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  %udev23 = getelementptr inbounds %struct.r8a66597_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %udev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_bus_suspend.__UNIQUE_ID_ddebug253, ptr noundef %dev24, ptr noundef nonnull @.str.70, i32 noundef %port.074) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body9
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %cond.i
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %13 = and i16 %12, -4097
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %13) #10, !srcloc !200
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %or = or i32 %17, 4
  store i32 %or, ptr %arrayidx, align 4
  %dev29 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %port.074, i32 3
  %18 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev29, align 4
  %udev30 = getelementptr inbounds %struct.r8a66597_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %udev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev30, align 4
  %do_remote_wakeup = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 40
  %22 = ptrtoint ptr %do_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %do_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %do.end27.cleanup_crit_edge, label %if.then32

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 3) #10
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %24, i32 %cond.i
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i61) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %26 = or i16 %25, -32768
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i62 = getelementptr i8, ptr %28, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i62, i16 %26) #10, !srcloc !200
  %cond.i64 = select i1 %cmp.i, i32 66, i32 68
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %cond.i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -65) #10, !srcloc !200
  %cond.i66 = select i1 %cmp.i, i32 50, i32 52
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %32, i32 %cond.i66
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %34 = or i16 %33, 64
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i70 = getelementptr i8, ptr %36, i32 %cond.i66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i70, i16 %34) #10, !srcloc !200
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.end27.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %port.074, 1
  %37 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_root_hub, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %bus_suspended = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 5, i32 3
  %39 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load37 = load i8, ptr %bus_suspended, align 4
  %bf.set = or i8 %bf.load37, -128
  store i8 %bf.set, ptr %bus_suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_bus_resume(ptr nocapture noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_bus_resume.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_bus_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_bus_resume.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.71) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max_root_hub = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56.not = icmp eq i32 %3, 0
  br i1 %cmp56.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %reg.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %port.057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.057)
  %cmp.i = icmp eq i32 %port.057, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %do.body9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_bus_resume.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_bus_resume, %if.then21)) #10
          to label %do.end27 [label %if.then21], !srcloc !202

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr %struct.r8a66597, ptr %hcd_priv.i, i32 0, i32 5, i32 %port.057, i32 3
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  %udev23 = getelementptr inbounds %struct.r8a66597_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %udev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_bus_resume.__UNIQUE_ID_ddebug255, ptr noundef %dev24, ptr noundef nonnull @.str.72, i32 noundef %port.057) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and29 = and i32 %11, -262149
  %or = or i32 %and29, 262144
  store i32 %or, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %cond.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %15 = and i16 %14, -12289
  %16 = or i16 %15, 8192
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %16) #10, !srcloc !200
  tail call void @msleep(i32 noundef 40) #10
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %20, i32 %cond.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %22 = and i16 %21, -12289
  %23 = or i16 %22, 4096
  %24 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i53 = getelementptr i8, ptr %25, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i53, i16 %23) #10, !srcloc !200
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %port.057, 1
  %26 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_root_hub, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r8a66597_mdfy(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %val, i16 noundef zeroext %pat, i32 noundef %offset) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg = xor i16 %pat, -1
  %and = and i16 %3, %neg
  %or10 = or i16 %and, %val
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %6 = tail call i16 @llvm.bswap.i16(i16 %or10) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 %6) #10, !srcloc !200
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_next_phase(ptr noundef %r8a66597, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %tobool.not59 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.i.not.i, %tobool.not59
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !201

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb4 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb4, align 4
  %type = getelementptr i8, ptr %1, i32 8
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %5, label %if.end.lor.lhs.false_crit_edge [
    i16 105, label %if.end.sw.bb_crit_edge
    i16 225, label %if.end.sw.bb_crit_edge60
    i16 45, label %sw.bb10
    i16 210, label %if.end.if.then28_crit_edge
  ]

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.sw.bb_crit_edge60:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge60
  %pipe.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %8)
  %cmp.i = icmp ult i32 %8, 1073741824
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end3.i_crit_edge

sw.bb.if.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i:                                        ; preds = %sw.bb
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 24
  %9 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_of_packets.i, align 4
  %iso_cnt.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %iso_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iso_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp1.i = icmp eq i32 %10, %12
  br i1 %cmp1.i, label %if.then.i.lor.lhs.false.sink.split_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i.lor.lhs.false.sink.split_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.sink.split

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %sw.bb.if.end3.i_crit_edge
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_buffer_length.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4.not.i = icmp ugt i32 %14, %16
  br i1 %cmp4.not.i, label %check_transfer_finish.exit, label %if.end3.i.lor.lhs.false.sink.split_crit_edge

if.end3.i.lor.lhs.false.sink.split_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.sink.split

check_transfer_finish.exit:                       ; preds = %if.end3.i
  %short_packet.i = getelementptr i8, ptr %1, i32 20
  %17 = ptrtoint ptr %short_packet.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %short_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %18 = icmp ult i8 %bf.load.i, 64
  br i1 %18, label %check_transfer_finish.exit.lor.lhs.false_crit_edge, label %check_transfer_finish.exit.lor.lhs.false.sink.split_crit_edge

check_transfer_finish.exit.lor.lhs.false.sink.split_crit_edge: ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.sink.split

check_transfer_finish.exit.lor.lhs.false_crit_edge: ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb10:                                          ; preds = %if.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_buffer_length, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp = icmp eq i32 %20, %22
  br i1 %cmp, label %sw.bb10.lor.lhs.false.sink.split_crit_edge, label %if.else

sw.bb10.lor.lhs.false.sink.split_crit_edge:       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.sink.split

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %pipe = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe, align 4
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %. = select i1 %tobool14.not, i16 225, i16 105
  br label %lor.lhs.false.sink.split

lor.lhs.false.sink.split:                         ; preds = %if.else, %sw.bb10.lor.lhs.false.sink.split_crit_edge, %check_transfer_finish.exit.lor.lhs.false.sink.split_crit_edge, %if.end3.i.lor.lhs.false.sink.split_crit_edge, %if.then.i.lor.lhs.false.sink.split_crit_edge
  %.sink = phi i16 [ 210, %if.end3.i.lor.lhs.false.sink.split_crit_edge ], [ 210, %if.then.i.lor.lhs.false.sink.split_crit_edge ], [ 210, %check_transfer_finish.exit.lor.lhs.false.sink.split_crit_edge ], [ 210, %sw.bb10.lor.lhs.false.sink.split_crit_edge ], [ %., %if.else ]
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink, ptr %type, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.sink.split, %check_transfer_finish.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp24.not = icmp eq i32 %status, 0
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %unlinked = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %if.else29, label %lor.lhs.false26.if.then28_crit_edge

lor.lhs.false26.if.then28_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false26.if.then28_crit_edge, %lor.lhs.false.if.then28_crit_edge, %if.end.if.then28_crit_edge
  tail call fastcc void @finish_request(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i, i16 noundef zeroext 0, ptr noundef %3, i32 noundef %status)
  br label %cleanup

if.else29:                                        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call fastcc i32 @start_transfer(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_r8a66597_pipe_all(ptr noundef %r8a66597, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %check_ep0.077 = phi i32 [ 0, %for.cond.preheader ], [ %check_ep0.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597_device, ptr %dev, i32 0, i32 5, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_ep0.077)
  %tobool5.not = icmp eq i32 %check_ep0.077, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.then6.if.end7_crit_edge, label %if.then6.for.cond.i_crit_edge

if.then6.for.cond.i_crit_edge:                    ; preds = %if.then6
  br label %for.cond.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then6.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %5, %if.then6.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %.pn.in.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.end7_crit_edge, label %for.body.i

for.cond.i.if.end7_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.body.i:                                       ; preds = %for.cond.i
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %address7.i = getelementptr i8, ptr %.pn.in.i, i32 16
  %7 = ptrtoint ptr %address7.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %address7.i, align 4
  %cmp9.not.i = icmp eq i16 %8, %3
  br i1 %cmp9.not.i, label %if.end12.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end12.i:                                       ; preds = %for.body.i
  %td.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %urb13.i = getelementptr i8, ptr %.pn.in.i, i32 -4
  %9 = ptrtoint ptr %urb13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb13.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_del.exit.i_crit_edge

if.end12.i.list_del.exit.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end12.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %td.0.le.i) #10
  %tobool15.not.i = icmp eq ptr %10, null
  br i1 %tobool15.not.i, label %list_del.exit.i.if.end7_crit_edge, label %if.then16.i

list_del.exit.i.if.end7_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then16.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r8a66597_urb_done(ptr noundef %r8a66597, ptr noundef nonnull %10, i32 noundef -19) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then16.i, %list_del.exit.i.if.end7_crit_edge, %for.cond.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %arrayidx14 = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 12, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  %sub = sub i8 %22, %20
  store i8 %sub, ptr %arrayidx14, align 1
  store i8 0, ptr %arrayidx, align 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dev, align 4
  %arrayidx.i50 = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.i50, align 4
  %cmp.i.not.i51 = icmp eq ptr %26, %arrayidx.i50
  br i1 %cmp.i.not.i51, label %if.end7.for.inc_crit_edge, label %if.end7.for.cond.i54_crit_edge

if.end7.for.cond.i54_crit_edge:                   ; preds = %if.end7
  br label %for.cond.i54

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.i54:                                     ; preds = %for.body.i58.for.cond.i54_crit_edge, %if.end7.for.cond.i54_crit_edge
  %.pn.in.i52 = phi ptr [ %.pn.i55, %for.body.i58.for.cond.i54_crit_edge ], [ %26, %if.end7.for.cond.i54_crit_edge ]
  %cmp.not.i53 = icmp eq ptr %.pn.in.i52, %arrayidx.i50
  br i1 %cmp.not.i53, label %for.cond.i54.for.inc_crit_edge, label %for.body.i58

for.cond.i54.for.inc_crit_edge:                   ; preds = %for.cond.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i58:                                     ; preds = %for.cond.i54
  %27 = ptrtoint ptr %.pn.in.i52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i55 = load ptr, ptr %.pn.in.i52, align 4
  %address7.i56 = getelementptr i8, ptr %.pn.in.i52, i32 16
  %28 = ptrtoint ptr %address7.i56 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %address7.i56, align 4
  %cmp9.not.i57 = icmp eq i16 %29, %24
  br i1 %cmp9.not.i57, label %if.end12.i62, label %for.body.i58.for.cond.i54_crit_edge

for.body.i58.for.cond.i54_crit_edge:              ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i54

if.end12.i62:                                     ; preds = %for.body.i58
  %td.0.le.i59 = getelementptr i8, ptr %.pn.in.i52, i32 -8
  %urb13.i60 = getelementptr i8, ptr %.pn.in.i52, i32 -4
  %30 = ptrtoint ptr %urb13.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb13.i60, align 4
  %call.i.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i52) #10
  br i1 %call.i.i.i61, label %if.end.i.i.i65, label %if.end12.i62.list_del.exit.i68_crit_edge

if.end12.i62.list_del.exit.i68_crit_edge:         ; preds = %if.end12.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i68

if.end.i.i.i65:                                   ; preds = %if.end12.i62
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i63 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i52, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i63, align 4
  %34 = ptrtoint ptr %.pn.in.i52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in.i52, align 4
  %prev1.i.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i64, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i68

list_del.exit.i68:                                ; preds = %if.end.i.i.i65, %if.end12.i62.list_del.exit.i68_crit_edge
  %38 = ptrtoint ptr %.pn.in.i52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i52, align 4
  %prev.i.i66 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i52, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i66, align 4
  tail call void @kfree(ptr noundef %td.0.le.i59) #10
  %tobool15.not.i67 = icmp eq ptr %31, null
  br i1 %tobool15.not.i67, label %list_del.exit.i68.for.inc_crit_edge, label %if.then16.i69

list_del.exit.i68.for.inc_crit_edge:              ; preds = %list_del.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then16.i69:                                    ; preds = %list_del.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r8a66597_urb_done(ptr noundef %r8a66597, ptr noundef nonnull %31, i32 noundef -19) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then16.i69, %list_del.exit.i68.for.inc_crit_edge, %for.cond.i54.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %check_ep0.2 = phi i32 [ %check_ep0.077, %for.body.for.inc_crit_edge ], [ 1, %if.end7.for.inc_crit_edge ], [ 1, %list_del.exit.i68.for.inc_crit_edge ], [ 1, %if.then16.i69 ], [ 1, %for.cond.i54.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_r8a66597_pipe_all.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@disable_r8a66597_pipe_all, %if.then24)) #10
          to label %do.end [label %if.then24], !srcloc !202

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 8
  %40 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_r8a66597_pipe_all.__UNIQUE_ID_ddebug245, ptr noundef %dev25, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %dma_map = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 6
  %42 = ptrtoint ptr %dma_map to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dma_map, align 4
  %neg = xor i8 %43, -1
  %dma_map28 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 13
  %44 = ptrtoint ptr %dma_map28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dma_map28, align 4
  %and = and i8 %45, %neg
  store i8 %and, ptr %dma_map28, align 4
  store i8 0, ptr %dma_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_usb_address(ptr nocapture noundef %r8a66597, ptr noundef %dev, i32 noundef %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_usb_address.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@free_usb_address, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !202

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_usb_address.__UNIQUE_ID_ddebug243, ptr noundef %dev5, ptr noundef nonnull @.str.35, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %state = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %state, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dev, align 4
  %conv8 = zext i16 %6 to i32
  %shl = shl nuw i32 1, %conv8
  %address_map = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 9
  %7 = ptrtoint ptr %address_map to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %address_map, align 4
  %9 = trunc i32 %shl to i16
  %10 = xor i16 %9, -1
  %conv10 = and i16 %8, %10
  store i16 %conv10, ptr %address_map, align 4
  store i16 0, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool12.not = icmp eq i32 %reset, 0
  br i1 %tobool12.not, label %do.end.if.end16_crit_edge, label %if.then13

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %udev14 = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev14, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.end.if.end16_crit_edge
  %device_list = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del.exit_crit_edge

if.end16.list_del.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end16.list_del.exit_crit_edge
  %20 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %device_list, align 4
  %prev.i = getelementptr inbounds %struct.r8a66597_device, ptr %dev, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %dev) #10
  %max_root_hub = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 14
  %22 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42.not = icmp eq i32 %23, 0
  br i1 %cmp42.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %port.043, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %port.043 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %list_del.exit.for.body_crit_edge ]
  %dev18 = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 %port.043, i32 3
  %24 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev18, align 4
  %cmp19 = icmp eq ptr %25, %dev
  br i1 %cmp19, label %if.then21, label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dev18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r8a66597_urb_done(ptr noundef %r8a66597, ptr noundef %urb, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shr.mask = and i32 %1, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, -2147483648
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr23 = getelementptr i8, ptr %3, i32 %5
  %cmp424 = icmp ult ptr %3, %add.ptr23
  br i1 %cmp424, label %if.then.for.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %ptr.025 = phi ptr [ %add.ptr8, %for.body.for.body_crit_edge ], [ %3, %if.then.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %ptr.025 to i32
  %sub = add i32 %7, 1073741824
  %shr5 = lshr i32 %sub, 12
  %add.ptr7 = getelementptr %struct.page, ptr %6, i32 %shr5
  tail call void @flush_dcache_page(ptr noundef %add.ptr7) #10
  %add.ptr8 = getelementptr i8, ptr %ptr.025, i32 4096
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %cmp4 = icmp ult ptr %add.ptr8, %add.ptr
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %r8a66597, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef %urb) #10
  tail call void @_raw_spin_unlock(ptr noundef %r8a66597) #10
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef %urb, i32 noundef %status) #10
  tail call void @_raw_spin_lock(ptr noundef %r8a66597) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_request(ptr noundef %r8a66597, ptr noundef %td, i16 noundef zeroext %pipenum, ptr noundef %urb, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %pipenum to i32
  %shl = shl nuw i32 1, %conv
  %timeout_map = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 10
  %0 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %timeout_map, align 2
  %2 = trunc i32 %shl to i16
  %3 = xor i16 %2, -1
  %conv2 = and i16 %1, %3
  store i16 %conv2, ptr %timeout_map, align 2
  %tobool.not = icmp eq ptr %td, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then, !prof !201

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %set_address = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 8
  %4 = ptrtoint ptr %set_address to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %set_address, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %unlinked = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 1
  %6 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %8 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup_packet, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw i32 1, %conv9
  %address_map = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 9
  %12 = ptrtoint ptr %address_map to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %address_map, align 4
  %14 = trunc i32 %shl10 to i16
  %15 = xor i16 %14, -1
  %conv14 = and i16 %13, %15
  store i16 %conv14, ptr %address_map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %lor.lhs.false.if.end_crit_edge, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %td, align 4
  %pipectr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipectr.i, align 4
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %23 = and i16 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  %pipe.i.i6.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %24 = ptrtoint ptr %pipe.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipe.i.i6.i, align 4
  %26 = and i32 %25, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i7.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  br i1 %cmp.i.i7.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %27 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit.i.i

get_urb_to_r8a66597_dev.exit.i.i:                 ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %device0.i.i.i, %if.then.i.i.i ], [ %30, %if.end.i.i.i ]
  %tobool.not.i.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %get_urb_to_r8a66597_dev.exit.i.i.pipe_toggle_save.exit_crit_edge, label %if.end.i.i

get_urb_to_r8a66597_dev.exit.i.i.pipe_toggle_save.exit_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_toggle_save.exit

if.end.i.i:                                       ; preds = %get_urb_to_r8a66597_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %ep_out_toggle.i.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i.i, i32 0, i32 4
  %ep_in_toggle.i.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i.i, i32 0, i32 3
  %cond.i.i.i = select i1 %tobool1.not.i.i.i, ptr %ep_out_toggle.i.i.i, ptr %ep_in_toggle.i.i.i
  %shr.i.i = lshr i32 %25, 15
  %31 = trunc i32 %shr.i.i to i8
  %conv.i.i = and i8 %31, 15
  %conv9.i.i = zext i8 %conv.i.i to i16
  %shl10.i.i = shl nuw i16 1, %conv9.i.i
  %32 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cond.i.i.i, align 2
  %or.i.i = or i16 %33, %shl10.i.i
  store i16 %or.i.i, ptr %cond.i.i.i, align 2
  br label %pipe_toggle_save.exit

if.else.i:                                        ; preds = %if.end
  br i1 %cmp.i.i7.i, label %if.then.i.i9.i, label %if.end.i.i12.i

if.then.i.i9.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i8.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit.i20.i

if.end.i.i12.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i10.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %34 = ptrtoint ptr %dev.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i10.i, align 4
  %driver_data.i.i.i11.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i11.i, align 4
  br label %get_urb_to_r8a66597_dev.exit.i20.i

get_urb_to_r8a66597_dev.exit.i20.i:               ; preds = %if.end.i.i12.i, %if.then.i.i9.i
  %retval.0.i.i13.i = phi ptr [ %device0.i.i8.i, %if.then.i.i9.i ], [ %37, %if.end.i.i12.i ]
  %tobool.not.i.i14.i = icmp eq ptr %retval.0.i.i13.i, null
  br i1 %tobool.not.i.i14.i, label %get_urb_to_r8a66597_dev.exit.i20.i.pipe_toggle_save.exit_crit_edge, label %if.end.i25.i

get_urb_to_r8a66597_dev.exit.i20.i.pipe_toggle_save.exit_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_toggle_save.exit

if.end.i25.i:                                     ; preds = %get_urb_to_r8a66597_dev.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i15.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15.i)
  %tobool1.not.i.i16.i = icmp eq i32 %and.i.i15.i, 0
  %ep_out_toggle.i.i18.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i13.i, i32 0, i32 4
  %ep_in_toggle.i.i17.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i13.i, i32 0, i32 3
  %cond.i.i19.i = select i1 %tobool1.not.i.i16.i, ptr %ep_out_toggle.i.i18.i, ptr %ep_in_toggle.i.i17.i
  %shr.i21.i = lshr i32 %25, 15
  %38 = trunc i32 %shr.i21.i to i8
  %conv.i22.i = and i8 %38, 15
  %conv9.i23.i = zext i8 %conv.i22.i to i16
  %shl10.i24.i = shl nuw i16 1, %conv9.i23.i
  %neg.i.i = xor i16 %shl10.i24.i, -1
  %39 = ptrtoint ptr %cond.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cond.i.i19.i, align 2
  %and12.i.i = and i16 %40, %neg.i.i
  store i16 %and12.i.i, ptr %cond.i.i19.i, align 2
  br label %pipe_toggle_save.exit

pipe_toggle_save.exit:                            ; preds = %if.end.i25.i, %get_urb_to_r8a66597_dev.exit.i20.i.pipe_toggle_save.exit_crit_edge, %if.end.i.i, %get_urb_to_r8a66597_dev.exit.i.i.pipe_toggle_save.exit_crit_edge
  %queue = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i78, label %pipe_toggle_save.exit.list_del.exit_crit_edge

pipe_toggle_save.exit.list_del.exit_crit_edge:    ; preds = %pipe_toggle_save.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i78:                                     ; preds = %pipe_toggle_save.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i78, %pipe_toggle_save.exit.list_del.exit_crit_edge
  %47 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %td) #10
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit, %entry.if.end15_crit_edge
  %arrayidx16 = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 %conv
  %49 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %arrayidx16, align 4
  %cmp.i.not = icmp eq ptr %50, %arrayidx16
  %tobool21.not = icmp eq ptr %urb, null
  br i1 %tobool21.not, label %if.end15.if.end36_crit_edge, label %if.then28, !prof !201

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then28:                                        ; preds = %if.end15
  %pipe29 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %51 = ptrtoint ptr %pipe29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pipe29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %52)
  %cmp31 = icmp ult i32 %52, 1073741824
  br i1 %cmp31, label %if.then33, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i79 = getelementptr i8, ptr %r8a66597, i32 44
  %53 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %54, i32 76
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i80) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %56 = and i16 %55, -253
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #10
  %and.i = zext i16 %57 to i32
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %58 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i, ptr %start_frame, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then28.if.end35_crit_edge
  tail call fastcc void @r8a66597_urb_done(ptr noundef %r8a66597, ptr noundef nonnull %urb, i32 noundef %status)
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end15.if.end36_crit_edge
  br i1 %cmp.i.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  %59 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %arrayidx16, align 4
  %cmp.i.not.i = icmp eq ptr %60, %arrayidx16
  %add.ptr.i81 = getelementptr i8, ptr %60, i32 -8
  %tobool40.not87 = icmp eq ptr %add.ptr.i81, null
  %tobool40.not = or i1 %cmp.i.not.i, %tobool40.not87
  br i1 %tobool40.not, label %if.then38.cleanup_crit_edge, label %do.end9.i, !prof !201

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9.i:                                        ; preds = %if.then38
  %call51 = tail call fastcc i32 @start_transfer(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i81)
  %pipenum.i = getelementptr i8, ptr %60, i32 10
  %61 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pipenum.i, align 2
  %idxprom.i83 = zext i16 %62 to i32
  %arrayidx.i84 = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 %idxprom.i83
  %63 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %arrayidx.i84, align 4
  %cmp.i.not.i85 = icmp eq ptr %64, %arrayidx.i84
  br i1 %cmp.i.not.i85, label %do.end9.i.cleanup_crit_edge, label %land.lhs.true.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end9.i
  %urb.i = getelementptr i8, ptr %60, i32 -4
  %65 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %urb.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pipe.i, align 4
  %shr.mask.i = and i32 %68, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp.i86 = icmp eq i32 %shr.mask.i, -2147483648
  %and14.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = or i1 %cmp.i86, %tobool15.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then16.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %idxprom.i83
  %69 = ptrtoint ptr %timeout_map to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %timeout_map, align 2
  %71 = trunc i32 %shl.i to i16
  %conv19.i = or i16 %70, %71
  store i16 %conv19.i, ptr %timeout_map, align 2
  %72 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %urb.i, align 4
  %pipe21.i = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %pipe21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pipe21.i, align 4
  %76 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pipenum.i, align 2
  %idxprom25.i = zext i16 %77 to i32
  %arrayidx26.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 8, i32 %idxprom25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %switch.i = icmp sgt i32 %75, -1
  %..i = select i1 %switch.i, i32 30, i32 50
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %..i) #10
  %add.i = add i32 %call2.i.i, %78
  %call29.i = tail call i32 @mod_timer(ptr noundef %arrayidx26.i, i32 noundef %add.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %land.lhs.true.i.cleanup_crit_edge, %do.end9.i.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_transfer(ptr noundef %r8a66597, ptr noundef %td) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %td, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !201

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/r8a66597-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #10, !srcloc !203
  unreachable

do.end7:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %1, label %do.end26 [
    i16 45, label %sw.bb
    i16 105, label %sw.bb22
    i16 225, label %sw.bb23
    i16 210, label %sw.bb24
  ]

sw.bb:                                            ; preds = %do.end7
  %urb = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 1
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setup_packet, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = and i8 %8, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end21_crit_edge

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true.i:                                  ; preds = %sw.bb
  %arrayidx2.i = getelementptr i8, ptr %6, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp4.i = icmp eq i8 %11, 5
  br i1 %cmp4.i, label %if.then9, label %land.lhs.true.i.if.end21_crit_edge

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %land.lhs.true.i
  %set_address = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 8
  %12 = ptrtoint ptr %set_address to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %set_address, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %set_address, align 4
  %call11 = tail call fastcc zeroext i8 @alloc_usb_address(ptr noundef %r8a66597, ptr noundef %4)
  %13 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb, align 4
  %setup_packet13 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %setup_packet13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setup_packet13, align 4
  %arrayidx = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call11, ptr %arrayidx, align 1
  %18 = load ptr, ptr %urb, align 4
  %setup_packet15 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %setup_packet15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %setup_packet15, align 4
  %arrayidx16 = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  br i1 %cmp, label %if.then9.return_crit_edge, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end21:                                         ; preds = %if.then9.if.end21_crit_edge, %land.lhs.true.i.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  %23 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb, align 4
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %setup_packet.i, align 4
  %address.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 6
  %27 = ptrtoint ptr %address.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %address.i, align 4
  %shl.i = shl i16 %28, 12
  %maxpacket.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 7
  %29 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %maxpacket.i, align 2
  %or.i = or i16 %shl.i, %30
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %33 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %33) #10, !srcloc !200
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %35, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 -12289) #10, !srcloc !200
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %26, align 2
  %38 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %39, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %37) #10, !srcloc !200
  %arrayidx.1.i = getelementptr i16, ptr %26, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.1.i, align 2
  %42 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i15.1.i = getelementptr i8, ptr %43, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.1.i, i16 %41) #10, !srcloc !200
  %arrayidx.2.i = getelementptr i16, ptr %26, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.2.i, align 2
  %46 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i15.2.i = getelementptr i8, ptr %47, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.2.i, i16 %45) #10, !srcloc !200
  %arrayidx.3.i = getelementptr i16, ptr %26, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.3.i, align 2
  %50 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i15.3.i = getelementptr i8, ptr %51, i32 90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.3.i, i16 %49) #10, !srcloc !200
  %52 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %53, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17.i, i16 64) #10, !srcloc !200
  br label %return

sw.bb22:                                          ; preds = %do.end7
  %urb1.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 1
  %54 = ptrtoint ptr %urb1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %urb1.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pipe.i, align 4
  %shr.mask.i = and i32 %57, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp.i42 = icmp eq i32 %shr.mask.i, -2147483648
  br i1 %cmp.i42, label %if.then.i, label %if.else.i44

if.then.i:                                        ; preds = %sw.bb22
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %58 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 92
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %61 = and i16 %60, -4097
  %62 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %63, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %61) #10, !srcloc !200
  %64 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %65, i32 32
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %67 = and i16 %66, -12033
  %68 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i70.i = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i70.i, i16 %67) #10, !srcloc !200
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then.i
  %i.0.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %70 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %71, i32 32
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i72.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %r8a66597_reg_wait.exit.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #10
  %74 = and i16 %72, 3840
  %cmp8.not.i.i = icmp eq i16 %74, 0
  br i1 %cmp8.not.i.i, label %if.end.i.i.r8a66597_reg_wait.exit.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end.i.i.r8a66597_reg_wait.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit.i

r8a66597_reg_wait.exit.i:                         ; preds = %if.end.i.i.r8a66597_reg_wait.exit.i_crit_edge, %do.end.i.i
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 20
  %75 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp2.i = icmp eq i32 %76, 0
  br i1 %cmp2.i, label %if.then3.i, label %r8a66597_reg_wait.exit.i.if.end.i_crit_edge

r8a66597_reg_wait.exit.i.if.end.i_crit_edge:      ; preds = %r8a66597_reg_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %r8a66597_reg_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %td, align 4
  %pipectr1.i.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %pipectr1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pipectr1.i.i, align 4
  %81 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %82, i32 %80
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %84 = or i16 %83, -32768
  %85 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %86, i32 %80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %84) #10, !srcloc !200
  %87 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %88, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43, i16 64) #10, !srcloc !200
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %r8a66597_reg_wait.exit.i.if.end.i_crit_edge
  %pipenum.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 4
  %89 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pipenum.i, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %r8a66597, i16 noundef zeroext %90) #10
  br label %if.end29.sink.split.i

if.else.i44:                                      ; preds = %sw.bb22
  %actual_length7.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 20
  %91 = ptrtoint ptr %actual_length7.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %actual_length7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp8.i = icmp eq i32 %92, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i44.return_crit_edge

if.else.i44.return_crit_edge:                     ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then9.i:                                       ; preds = %if.else.i44
  %pipenum10.i = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 4
  %93 = ptrtoint ptr %pipenum10.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %pipenum10.i, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %r8a66597, i16 noundef zeroext %94) #10
  tail call fastcc void @pipe_setting(ptr noundef %r8a66597, ptr noundef nonnull %td) #10
  %95 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %96) #10
  %97 = ptrtoint ptr %pipenum10.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %pipenum10.i, align 2
  %conv.i = zext i16 %98 to i32
  %shl.i45 = shl nuw i32 1, %conv.i
  %99 = trunc i32 %shl.i45 to i16
  %conv13.i = xor i16 %99, -1
  %reg.i74.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %100 = ptrtoint ptr %reg.i74.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i74.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %101, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv13.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i75.i, i16 %102) #10, !srcloc !200
  %103 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %td, align 4
  %pipetre.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %pipetre.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pipetre.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i, label %if.then9.i.if.end29.sink.split.i_crit_edge, label %if.then15.i

if.then9.i.if.end29.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.sink.split.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %reg.i74.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i74.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %108, i32 %106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i77.i, i16 1) #10, !srcloc !200
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 19
  %109 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %transfer_buffer_length.i, align 4
  %maxpacket.i46 = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 7
  %111 = ptrtoint ptr %maxpacket.i46 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %maxpacket.i46, align 2
  %conv18.i = zext i16 %112 to i32
  %add.i = add i32 %110, -1
  %sub.i = add i32 %add.i, %conv18.i
  %div.i = udiv i32 %sub.i, %conv18.i
  %conv21.i = trunc i32 %div.i to i16
  %113 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %td, align 4
  %pipetrn.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %pipetrn.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pipetrn.i, align 4
  %117 = ptrtoint ptr %reg.i74.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg.i74.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %118, i32 %116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %119 = tail call i16 @llvm.bswap.i16(i16 %conv21.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i79.i, i16 %119) #10, !srcloc !200
  %120 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %td, align 4
  %pipetre24.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %pipetre24.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pipetre24.i, align 4
  %124 = ptrtoint ptr %reg.i74.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg.i74.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %125, i32 %123
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i81.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %127 = or i16 %126, 2
  %128 = ptrtoint ptr %reg.i74.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i74.i, align 4
  %add.ptr.i12.i82.i = getelementptr i8, ptr %129, i32 %123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i82.i, i16 %127) #10, !srcloc !200
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.then15.i, %if.then9.i.if.end29.sink.split.i_crit_edge, %if.end.i
  %pipenum10.sink.i = phi ptr [ %pipenum.i, %if.end.i ], [ %pipenum10.i, %if.then15.i ], [ %pipenum10.i, %if.then9.i.if.end29.sink.split.i_crit_edge ]
  %130 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_start(ptr noundef %r8a66597, ptr noundef %131) #10
  %132 = ptrtoint ptr %pipenum10.sink.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %pipenum10.sink.i, align 2
  tail call fastcc void @pipe_irq_enable(ptr noundef %r8a66597, ptr noundef %55, i16 noundef zeroext %133) #10
  br label %return

sw.bb23:                                          ; preds = %do.end7
  %urb1.i47 = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 1
  %134 = ptrtoint ptr %urb1.i47 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %urb1.i47, align 4
  %pipe.i48 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %pipe.i48 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pipe.i48, align 4
  %shr.mask.i49 = and i32 %137, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i49)
  %cmp.i50 = icmp eq i32 %shr.mask.i49, -2147483648
  br i1 %cmp.i50, label %if.then.i52, label %if.else.i53

if.then.i52:                                      ; preds = %sw.bb23
  %138 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %139) #10
  %reg.i.i95 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %140 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %141, i32 92
  %142 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i96) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %143 = or i16 %142, 4096
  %144 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i12.i98 = getelementptr i8, ptr %145, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i98, i16 %143) #10, !srcloc !200
  %146 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %147, i32 32
  %148 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i92) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %149 = and i16 %148, -12033
  %150 = or i16 %149, 8192
  %151 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i12.i94 = getelementptr i8, ptr %152, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i94, i16 %150) #10, !srcloc !200
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i90.do.body.i_crit_edge, %if.then.i52
  %i.0.i = phi i32 [ 0, %if.then.i52 ], [ %inc.i, %if.end.i90.do.body.i_crit_edge ]
  %153 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %154, i32 32
  %155 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i89) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 1000001
  br i1 %exitcond.i, label %do.end.i, label %if.end.i90

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %r8a66597_reg_wait.exit

if.end.i90:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748) #10
  %157 = and i16 %155, 3840
  %cmp8.not.i = icmp eq i16 %157, 0
  br i1 %cmp8.not.i, label %if.end.i90.r8a66597_reg_wait.exit_crit_edge, label %if.end.i90.do.body.i_crit_edge

if.end.i90.do.body.i_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i90.r8a66597_reg_wait.exit_crit_edge:      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit

r8a66597_reg_wait.exit:                           ; preds = %if.end.i90.r8a66597_reg_wait.exit_crit_edge, %do.end.i
  %actual_length.i51 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 20
  %158 = ptrtoint ptr %actual_length.i51 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %actual_length.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp3.i = icmp eq i32 %159, 0
  br i1 %cmp3.i, label %if.then4.i, label %r8a66597_reg_wait.exit.if.end15.i_crit_edge

r8a66597_reg_wait.exit.if.end15.i_crit_edge:      ; preds = %r8a66597_reg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then4.i:                                       ; preds = %r8a66597_reg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %td, align 4
  %pipectr1.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %pipectr1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pipectr1.i, align 4
  %164 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %165, i32 %163
  %166 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %167 = or i16 %166, -32768
  %168 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i12.i.i85 = getelementptr i8, ptr %169, i32 %163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i85, i16 %167) #10, !srcloc !200
  %170 = ptrtoint ptr %reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %reg.i.i95, align 4
  %add.ptr.i84 = getelementptr i8, ptr %171, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i84, i16 64) #10, !srcloc !200
  br label %if.end15.i

if.else.i53:                                      ; preds = %sw.bb23
  %actual_length6.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 20
  %172 = ptrtoint ptr %actual_length6.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %actual_length6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp7.i = icmp eq i32 %173, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i53.if.end9.i_crit_edge

if.else.i53.if.end9.i_crit_edge:                  ; preds = %if.else.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.else.i53
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pipe_setting(ptr noundef %r8a66597, ptr noundef nonnull %td) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.else.i53.if.end9.i_crit_edge
  %174 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %td, align 4
  %pipetre.i54 = getelementptr inbounds %struct.r8a66597_pipe, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %pipetre.i54 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pipetre.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i55 = icmp eq i32 %177, 0
  br i1 %tobool.not.i55, label %if.end9.i.if.end15.i_crit_edge, label %if.then11.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i81 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %178 = ptrtoint ptr %reg.i.i81 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg.i.i81, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %179, i32 %177
  %180 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i82) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %181 = and i16 %180, -3
  %182 = ptrtoint ptr %reg.i.i81 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg.i.i81, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %183, i32 %177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %181) #10, !srcloc !200
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end15.i_crit_edge, %if.then4.i, %r8a66597_reg_wait.exit.if.end15.i_crit_edge
  %pipenum.i56 = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 4
  %184 = ptrtoint ptr %pipenum.i56 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %pipenum.i56, align 2
  %conv.i57 = zext i16 %185 to i32
  %shl.i58 = shl nuw i32 1, %conv.i57
  %186 = trunc i32 %shl.i58 to i16
  %conv16.i = xor i16 %186, -1
  %reg.i79 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %187 = ptrtoint ptr %reg.i79 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg.i79, align 4
  %add.ptr.i80 = getelementptr i8, ptr %188, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %189 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i80, i16 %189) #10, !srcloc !200
  %190 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %td, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %r8a66597, ptr noundef %191) #10
  %192 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %td, align 4
  %fifoctr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %fifoctr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %fifoctr.i, align 4
  %196 = ptrtoint ptr %reg.i79 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg.i79, align 4
  %add.ptr.i = getelementptr i8, ptr %197, i32 %195
  %198 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %199 = and i16 %198, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %cmp21.i = icmp eq i16 %199, 0
  %200 = ptrtoint ptr %pipenum.i56 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %pipenum.i56, align 2
  br i1 %cmp21.i, label %if.then25.i, label %if.else27.i, !prof !201

if.then25.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pipe_irq_enable(ptr noundef %r8a66597, ptr noundef %135, i16 noundef zeroext %201) #10
  br label %prepare_packet_write.exit

if.else27.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @packet_write(ptr noundef %r8a66597, i16 noundef zeroext %201) #10
  br label %prepare_packet_write.exit

prepare_packet_write.exit:                        ; preds = %if.else27.i, %if.then25.i
  %202 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_start(ptr noundef %r8a66597, ptr noundef %203) #10
  br label %return

sw.bb24:                                          ; preds = %do.end7
  %urb1.i59 = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 1
  %204 = ptrtoint ptr %urb1.i59 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %urb1.i59, align 4
  %206 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %td, align 4
  %pipectr1.i.i60 = getelementptr inbounds %struct.r8a66597_pipe, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %pipectr1.i.i60 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %pipectr1.i.i60, align 4
  %reg.i.i4.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %210 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i5.i.i61 = getelementptr i8, ptr %211, i32 %209
  %212 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i.i61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %213 = or i16 %212, -32768
  %214 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i.i.i62 = getelementptr i8, ptr %215, i32 %209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i62, i16 %213) #10, !srcloc !200
  %216 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %217) #10
  %setup_packet.i63 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 21
  %218 = ptrtoint ptr %setup_packet.i63 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %setup_packet.i63, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %221)
  %tobool.not.i64 = icmp sgt i8 %221, -1
  %222 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %223, i32 92
  %224 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i33.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i64, label %if.else.i77, label %if.then.i66

if.then.i66:                                      ; preds = %sw.bb24
  %225 = or i16 %224, 4096
  %226 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i.i65 = getelementptr i8, ptr %227, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i65, i16 %225) #10, !srcloc !200
  %228 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %229, i32 32
  %230 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i22.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %231 = and i16 %230, -12033
  %232 = or i16 %231, 8192
  %233 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i24.i = getelementptr i8, ptr %234, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i24.i, i16 %232) #10, !srcloc !200
  br label %do.body.i.i69

do.body.i.i69:                                    ; preds = %if.end.i.i74.do.body.i.i69_crit_edge, %if.then.i66
  %i.0.i.i67 = phi i32 [ 0, %if.then.i66 ], [ %inc.i.i72, %if.end.i.i74.do.body.i.i69_crit_edge ]
  %235 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %236, i32 32
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i26.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i67)
  %exitcond.i.i68 = icmp eq i32 %i.0.i.i67, 1000001
  br i1 %exitcond.i.i68, label %do.end.i.i71, label %if.end.i.i74

do.end.i.i71:                                     ; preds = %do.body.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %r8a66597_reg_wait.exit.i76

if.end.i.i74:                                     ; preds = %do.body.i.i69
  %inc.i.i72 = add nuw nsw i32 %i.0.i.i67, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %238(i32 noundef 214748) #10
  %239 = and i16 %237, 3840
  %cmp8.not.i.i73 = icmp eq i16 %239, 0
  br i1 %cmp8.not.i.i73, label %if.end.i.i74.r8a66597_reg_wait.exit.i76_crit_edge, label %if.end.i.i74.do.body.i.i69_crit_edge

if.end.i.i74.do.body.i.i69_crit_edge:             ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i69

if.end.i.i74.r8a66597_reg_wait.exit.i76_crit_edge: ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit.i76

r8a66597_reg_wait.exit.i76:                       ; preds = %if.end.i.i74.r8a66597_reg_wait.exit.i76_crit_edge, %do.end.i.i71
  %240 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %241, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i75, i16 -257) #10, !srcloc !200
  %242 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %243, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.i, i16 192) #10, !srcloc !200
  %244 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %245, i32 48
  %246 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i30.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %247 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %248, i32 48
  %249 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %250 = and i16 %249, -8
  %251 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i.i31.i = getelementptr i8, ptr %252, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i31.i, i16 %250) #10, !srcloc !200
  %253 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %254, i32 58
  %255 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %256 = or i16 %255, 256
  %257 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i7.i.i = getelementptr i8, ptr %258, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i.i, i16 %256) #10, !srcloc !200
  %259 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %260, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i.i, i16 %246) #10, !srcloc !200
  br label %prepare_status_packet.exit

if.else.i77:                                      ; preds = %sw.bb24
  %261 = and i16 %224, -4097
  %262 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i35.i = getelementptr i8, ptr %263, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i35.i, i16 %261) #10, !srcloc !200
  %264 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %265, i32 32
  %266 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i37.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %267 = and i16 %266, -12033
  %268 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i39.i = getelementptr i8, ptr %269, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i39.i, i16 %267) #10, !srcloc !200
  br label %do.body.i44.i

do.body.i44.i:                                    ; preds = %if.end.i50.i.do.body.i44.i_crit_edge, %if.else.i77
  %i.0.i41.i = phi i32 [ 0, %if.else.i77 ], [ %inc.i47.i, %if.end.i50.i.do.body.i44.i_crit_edge ]
  %270 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %271, i32 32
  %272 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i42.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i41.i)
  %exitcond.i43.i = icmp eq i32 %i.0.i41.i, 1000001
  br i1 %exitcond.i43.i, label %do.end.i46.i, label %if.end.i50.i

do.end.i46.i:                                     ; preds = %do.body.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %r8a66597_reg_wait.exit51.i

if.end.i50.i:                                     ; preds = %do.body.i44.i
  %inc.i47.i = add nuw nsw i32 %i.0.i41.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 214748) #10
  %274 = and i16 %272, 3840
  %cmp8.not.i49.i = icmp eq i16 %274, 0
  br i1 %cmp8.not.i49.i, label %if.end.i50.i.r8a66597_reg_wait.exit51.i_crit_edge, label %if.end.i50.i.do.body.i44.i_crit_edge

if.end.i50.i.do.body.i44.i_crit_edge:             ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i44.i

if.end.i50.i.r8a66597_reg_wait.exit51.i_crit_edge: ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit51.i

r8a66597_reg_wait.exit51.i:                       ; preds = %if.end.i50.i.r8a66597_reg_wait.exit51.i_crit_edge, %do.end.i46.i
  %275 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %276, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i, i16 64) #10, !srcloc !200
  %277 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %278, i32 48
  %279 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i55.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %280 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i.i56.i = getelementptr i8, ptr %281, i32 48
  %282 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i56.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %283 = and i16 %282, -8
  %284 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i.i57.i = getelementptr i8, ptr %285, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i57.i, i16 %283) #10, !srcloc !200
  %286 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i6.i58.i = getelementptr i8, ptr %287, i32 54
  %288 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i58.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %289 = or i16 %288, 256
  %290 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i7.i60.i = getelementptr i8, ptr %291, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i60.i, i16 %289) #10, !srcloc !200
  %292 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i9.i61.i = getelementptr i8, ptr %293, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i61.i, i16 %279) #10, !srcloc !200
  br label %prepare_status_packet.exit

prepare_status_packet.exit:                       ; preds = %r8a66597_reg_wait.exit51.i, %r8a66597_reg_wait.exit.i76
  %294 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i63.i = getelementptr i8, ptr %295, i32 48
  %296 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i63.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %297 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i.i64.i = getelementptr i8, ptr %298, i32 48
  %299 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i64.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %300 = and i16 %299, -8
  %301 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i.i65.i = getelementptr i8, ptr %302, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i65.i, i16 %300) #10, !srcloc !200
  %303 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i.i6.i66.i = getelementptr i8, ptr %304, i32 56
  %305 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i66.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %306 = or i16 %305, 256
  %307 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i12.i7.i68.i = getelementptr i8, ptr %308, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i68.i, i16 %306) #10, !srcloc !200
  %309 = ptrtoint ptr %reg.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %reg.i.i4.i.i, align 4
  %add.ptr.i9.i69.i = getelementptr i8, ptr %310, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i69.i, i16 %296) #10, !srcloc !200
  %311 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %td, align 4
  tail call fastcc void @pipe_start(ptr noundef %r8a66597, ptr noundef %312) #10
  br label %return

do.end26:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %return

return:                                           ; preds = %do.end26, %prepare_status_packet.exit, %prepare_packet_write.exit, %if.end29.sink.split.i, %if.else.i44.return_crit_edge, %if.end21, %if.then9.return_crit_edge
  %retval.0 = phi i32 [ -32, %if.then9.return_crit_edge ], [ 0, %do.end26 ], [ 0, %prepare_status_packet.exit ], [ 0, %prepare_packet_write.exit ], [ 0, %if.end21 ], [ 0, %if.else.i44.return_crit_edge ], [ 0, %if.end29.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @alloc_usb_address(ptr noundef %r8a66597, ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %devpath) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 4
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe.i, align 4
  %4 = and i32 %3, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i63 = icmp eq i32 %4, 0
  br i1 %cmp.i63, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit

get_urb_to_r8a66597_dev.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i64 = phi ptr [ %device0.i, %if.then.i ], [ %6, %if.end.i ]
  %tobool5.not = icmp eq ptr %retval.0.i64, null
  br i1 %tobool5.not, label %get_urb_to_r8a66597_dev.exit.if.end7_crit_edge, label %land.lhs.true

get_urb_to_r8a66597_dev.exit.if.end7_crit_edge:   ; preds = %get_urb_to_r8a66597_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %get_urb_to_r8a66597_dev.exit
  %state = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i64, i32 0, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp = icmp ugt i32 %8, 5
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %retval.0.i64 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %retval.0.i64, align 4
  %conv = trunc i16 %10 to i8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %get_urb_to_r8a66597_dev.exit.if.end7_crit_edge
  %address_map = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 9
  %11 = ptrtoint ptr %address_map to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %address_map, align 4
  %conv11 = zext i16 %12 to i32
  %and = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end7.do.body16_crit_edge, label %for.inc

if.end7.do.body16_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body16:                                        ; preds = %for.inc.8.do.body16_crit_edge, %for.inc.7.do.body16_crit_edge, %for.inc.6.do.body16_crit_edge, %for.inc.5.do.body16_crit_edge, %for.inc.4.do.body16_crit_edge, %for.inc.3.do.body16_crit_edge, %for.inc.2.do.body16_crit_edge, %for.inc.1.do.body16_crit_edge, %for.inc.do.body16_crit_edge, %if.end7.do.body16_crit_edge
  %conv875.lcssa = phi i32 [ 1, %if.end7.do.body16_crit_edge ], [ 2, %for.inc.do.body16_crit_edge ], [ 3, %for.inc.1.do.body16_crit_edge ], [ 4, %for.inc.2.do.body16_crit_edge ], [ 5, %for.inc.3.do.body16_crit_edge ], [ 6, %for.inc.4.do.body16_crit_edge ], [ 7, %for.inc.5.do.body16_crit_edge ], [ 8, %for.inc.6.do.body16_crit_edge ], [ 9, %for.inc.7.do.body16_crit_edge ], [ 10, %for.inc.8.do.body16_crit_edge ]
  %shl.lcssa = phi i16 [ 2, %if.end7.do.body16_crit_edge ], [ 4, %for.inc.do.body16_crit_edge ], [ 8, %for.inc.1.do.body16_crit_edge ], [ 16, %for.inc.2.do.body16_crit_edge ], [ 32, %for.inc.3.do.body16_crit_edge ], [ 64, %for.inc.4.do.body16_crit_edge ], [ 128, %for.inc.5.do.body16_crit_edge ], [ 256, %for.inc.6.do.body16_crit_edge ], [ 512, %for.inc.7.do.body16_crit_edge ], [ 1024, %for.inc.8.do.body16_crit_edge ]
  %13 = trunc i32 %conv875.lcssa to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_usb_address.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_usb_address, %if.then21)) #10
          to label %do.end27 [label %if.then21], !srcloc !202

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alloc_usb_address.__UNIQUE_ID_ddebug242, ptr noundef %dev23, ptr noundef nonnull @.str.40, i32 noundef %conv875.lcssa) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body16
  %16 = ptrtoint ptr %address_map to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %address_map, align 4
  %conv32 = or i16 %17, %shl.lcssa
  store i16 %conv32, ptr %address_map, align 4
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %18 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup_packet.i, align 4
  %arrayidx.i = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 44) #14
  %cmp.i65 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i65, label %do.end27.cleanup_crit_edge, label %if.end.i67

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i67:                                       ; preds = %do.end27
  %conv.i = zext i8 %21 to i32
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %driver_data.i.i66 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15, i32 8
  %25 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %driver_data.i.i66, align 4
  %26 = load ptr, ptr %dev1, align 4
  %udev.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %udev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %udev.i, align 4
  %28 = trunc i32 %conv875.lcssa to i16
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %call7.i.i.i, align 8
  %usb_address6.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %usb_address6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %usb_address6.i, align 8
  %state.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %state.i, align 8
  %ep_in_toggle.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %ep_in_toggle.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %ep_in_toggle.i, align 2
  %ep_out_toggle.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %ep_out_toggle.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %ep_out_toggle.i, align 8
  %device_list.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %device_list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %device_list.i, ptr %device_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %device_list.i, ptr %prev.i.i, align 8
  %child_device.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 15
  %prev.i56.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i56.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_list.i, ptr noundef %37, ptr noundef %child_device.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i67.list_add_tail.exit.i_crit_edge

if.end.i67.list_add_tail.exit.i_crit_edge:        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %device_list.i, ptr %prev.i56.i, align 4
  %39 = ptrtoint ptr %device_list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %child_device.i, ptr %device_list.i, align 4
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i.i, align 8
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %device_list.i, ptr %37, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i67.list_add_tail.exit.i_crit_edge
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  %root_port.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 2
  %hub_port.i = getelementptr inbounds %struct.r8a66597_device, ptr %call7.i.i.i, i32 0, i32 1
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %devpath.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %devpath.i, align 1
  %46 = and i8 %45, 15
  %and.i.i = zext i8 %46 to i16
  %sub.i.i = add nsw i16 %and.i.i, -1
  %47 = ptrtoint ptr %root_port.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %sub.i.i, ptr %root_port.i, align 4
  %conv2.i.i = zext i16 %sub.i.i to i32
  %max_root_hub.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 14
  %48 = ptrtoint ptr %max_root_hub.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_root_hub.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv2.i.i)
  %cmp.not.i.i = icmp ugt i32 %49, %conv2.i.i
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.if.then7.i.i_crit_edge, label %do.end.i.i

list_add_tail.exit.i.if.then7.i.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

do.end.i.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %do.end.i.i, %list_add_tail.exit.i.if.then7.i.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.usb_device, ptr %43, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx8.i.i, align 1
  %52 = and i8 %51, 15
  %conv11.i.i = zext i8 %52 to i16
  %53 = ptrtoint ptr %hub_port.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv11.i.i, ptr %hub_port.i, align 2
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %55, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i57.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i57.not.i, label %if.then13.i, label %if.then7.i.i.if.end17.i_crit_edge

if.then7.i.i.if.end17.i_crit_edge:                ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %root_port.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %root_port.i, align 4
  %idxprom.i = zext i16 %59 to i32
  %dev16.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 %idxprom.i, i32 3
  %60 = ptrtoint ptr %dev16.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %dev16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.then7.i.i.if.end17.i_crit_edge
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %call7.i.i.i, align 8
  %63 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %speed.i, align 4
  %switch.tableidx = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %67 = icmp ult i32 %switch.tableidx, 3
  br i1 %67, label %switch.lookup, label %do.end.i59.i

do.end.i59.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %get_r8a66597_usb_speed.exit.i

switch.lookup:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = shl i16 %switch.idx.cast, 6
  %switch.offset = add i16 %switch.idx.mult, 64
  br label %get_r8a66597_usb_speed.exit.i

get_r8a66597_usb_speed.exit.i:                    ; preds = %switch.lookup, %do.end.i59.i
  %usbspd.0.i.i = phi i16 [ 0, %do.end.i59.i ], [ %switch.offset, %switch.lookup ]
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i60.i = icmp eq ptr %71, null
  br i1 %tobool.not.i60.i, label %get_r8a66597_usb_speed.exit.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

get_r8a66597_usb_speed.exit.i.if.end.i.i_crit_edge: ; preds = %get_r8a66597_usb_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %get_r8a66597_usb_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.not.i61.i = icmp eq i32 %73, 1
  %spec.select.i.i = select i1 %cmp.not.i61.i, ptr %69, ptr %71
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %get_r8a66597_usb_speed.exit.i.if.end.i.i_crit_edge
  %udev.addr.0.i.i = phi ptr [ %69, %get_r8a66597_usb_speed.exit.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_device, ptr %udev.addr.0.i.i, i32 0, i32 15, i32 8
  %74 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %75, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.make_r8a66597_device.exit_crit_edge, label %if.then5.i.i

if.end.i.i.make_r8a66597_device.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_r8a66597_device.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %75, align 4
  %phi.bo.i = shl i16 %77, 11
  br label %make_r8a66597_device.exit

make_r8a66597_device.exit:                        ; preds = %if.then5.i.i, %if.end.i.i.make_r8a66597_device.exit_crit_edge
  %retval.0.i.i = phi i16 [ %phi.bo.i, %if.then5.i.i ], [ 0, %if.end.i.i.make_r8a66597_device.exit_crit_edge ]
  %78 = ptrtoint ptr %hub_port.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %hub_port.i, align 2
  %80 = ptrtoint ptr %root_port.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %root_port.i, align 4
  %82 = shl i16 %62, 1
  %83 = and i16 %82, 510
  %narrow.i = add nuw nsw i16 %83, 208
  %add.i.i = zext i16 %narrow.i to i32
  %84 = shl i16 %79, 8
  %85 = and i16 %81, 1
  %or.i.i = or i16 %retval.0.i.i, %usbspd.0.i.i
  %or6.i.i = or i16 %or.i.i, %84
  %or7.i.i = or i16 %or6.i.i, %85
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %86 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %88 = tail call i16 @llvm.bswap.i16(i16 %or7.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %88) #10, !srcloc !200
  br label %cleanup

for.inc:                                          ; preds = %if.end7
  %and.1 = and i32 %conv11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool13.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool13.not.1, label %for.inc.do.body16_crit_edge, label %for.inc.1

for.inc.do.body16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %conv11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool13.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool13.not.2, label %for.inc.1.do.body16_crit_edge, label %for.inc.2

for.inc.1.do.body16_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %conv11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool13.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool13.not.3, label %for.inc.2.do.body16_crit_edge, label %for.inc.3

for.inc.2.do.body16_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %conv11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool13.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool13.not.4, label %for.inc.3.do.body16_crit_edge, label %for.inc.4

for.inc.3.do.body16_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %conv11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool13.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool13.not.5, label %for.inc.4.do.body16_crit_edge, label %for.inc.5

for.inc.4.do.body16_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %conv11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool13.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool13.not.6, label %for.inc.5.do.body16_crit_edge, label %for.inc.6

for.inc.5.do.body16_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i32 %conv11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool13.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool13.not.7, label %for.inc.6.do.body16_crit_edge, label %for.inc.7

for.inc.6.do.body16_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i32 %conv11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool13.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool13.not.8, label %for.inc.7.do.body16_crit_edge, label %for.inc.8

for.inc.7.do.body16_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i32 %conv11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool13.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool13.not.9, label %for.inc.8.do.body16_crit_edge, label %for.inc.9

for.inc.8.do.body16_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %89 = ptrtoint ptr %address_map to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %address_map, align 4
  %conv44 = zext i16 %90 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.42, i32 noundef %conv44) #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.9, %make_r8a66597_device.exit, %do.end27.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv, %if.then6 ], [ 0, %for.inc.9 ], [ %13, %make_r8a66597_device.exit ], [ 0, %do.end27.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_disable(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %6 = and i16 %5, -8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %6) #10, !srcloc !200
  %conv.i = zext i16 %pipenum to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %10, i32 54
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !197
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %12, %neg.i.i
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %14, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %15) #10, !srcloc !200
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %2) #10, !srcloc !200
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i5) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %24 = and i16 %23, -8
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i6 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i6, i16 %24) #10, !srcloc !200
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i10 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i10) #10, !srcloc !197
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %and.i7.i12 = and i16 %30, %neg.i.i
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i13 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %33 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i12) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i13, i16 %33) #10, !srcloc !200
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i14 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i14, i16 %20) #10, !srcloc !200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_start(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipectr = getelementptr inbounds %struct.r8a66597_pipe, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipectr, align 4
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  %5 = lshr i16 %4, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %pipenum = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %pipe, i32 0, i32 1
  %6 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pipenum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp ne i16 %7, 0
  %conv3 = zext i1 %cmp to i32
  %.lobit = and i16 %5, 1
  %8 = zext i16 %.lobit to i32
  %and8 = and i32 %conv3, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipectr, align 4
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %14 = and i16 %13, -769
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %16, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %14) #10, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipectr, align 4
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %22 = and i16 %21, -769
  %23 = or i16 %22, 256
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19 = getelementptr i8, ptr %25, i32 %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19, i16 %23) #10, !srcloc !200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_enable(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %urb, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp = icmp eq i16 %pipenum, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 48
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %8 = and i16 %7, -8
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %8) #10, !srcloc !200
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %12, i32 58
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %14 = or i16 %13, 256
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %16, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %14) #10, !srcloc !200
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %4) #10, !srcloc !200
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %reg.i.i14 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %19 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %20, i32 48
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i15) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %22 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %23, i32 48
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i16) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %25 = and i16 %24, -8
  %26 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i12.i.i17 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i17, i16 %25) #10, !srcloc !200
  %conv.i18 = zext i16 %pipenum to i32
  %shl.i19 = shl nuw i32 1, %conv.i18
  %conv1.i20 = trunc i32 %shl.i19 to i16
  %28 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i.i6.i21 = getelementptr i8, ptr %29, i32 54
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i21) #10, !srcloc !197
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i.i22 = or i16 %31, %conv1.i20
  %32 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i12.i7.i23 = getelementptr i8, ptr %33, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %34 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i22) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i23, i16 %34) #10, !srcloc !200
  %35 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i14, align 4
  %add.ptr.i9.i24 = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i24, i16 %21) #10, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pipe2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %38)
  %cmp4 = icmp ult i32 %38, 1073741824
  br i1 %cmp4, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i25 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %39 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %40, i32 48
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i26) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %42 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i.i.i27 = getelementptr i8, ptr %43, i32 48
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i27) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %45 = and i16 %44, -8
  %46 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i12.i.i28 = getelementptr i8, ptr %47, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i28, i16 %45) #10, !srcloc !200
  %conv.i29 = zext i16 %pipenum to i32
  %shl.i30 = shl nuw i32 1, %conv.i29
  %conv1.i31 = trunc i32 %shl.i30 to i16
  %48 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i.i6.i32 = getelementptr i8, ptr %49, i32 56
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i32) #10, !srcloc !197
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i.i33 = or i16 %51, %conv1.i31
  %52 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i12.i7.i34 = getelementptr i8, ptr %53, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %54 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i33) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i34, i16 %54) #10, !srcloc !200
  %55 = ptrtoint ptr %reg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i25, align 4
  %add.ptr.i9.i35 = getelementptr i8, ptr %56, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i35, i16 %41) #10, !srcloc !200
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_setting(ptr noundef %r8a66597, ptr nocapture noundef readonly %td) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  %pipenum = getelementptr inbounds %struct.r8a66597_td, ptr %td, i32 0, i32 4
  %2 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipenum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.if.end44_crit_edge, label %if.then

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td, align 4
  %pdata.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %6 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i.i, align 4
  %on_chip.i.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %on_chip.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %on_chip.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %..i.i = select i1 %tobool.not.i.i, i16 1024, i16 2048
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %9 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 32
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %..i.i, -16
  %and.i.i = and i16 %12, %neg.i.i
  %or10.i.i = or i16 %and.i.i, %..i.i
  %13 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %15) #10, !srcloc !200
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then
  %i.0.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %17, i32 32
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i2.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %cfifo_change.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %20 = and i16 %18, 3840
  %cmp8.not.i.i = icmp eq i16 %20, 0
  br i1 %cmp8.not.i.i, label %if.end.i.i.cfifo_change.exit_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end.i.i.cfifo_change.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfifo_change.exit

cfifo_change.exit:                                ; preds = %if.end.i.i.cfifo_change.exit_crit_edge, %do.end.i.i
  %pipenum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pipenum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i = icmp eq i16 %22, 0
  br i1 %cmp.i, label %cfifo_change.exit.pipe_buffer_setting.exit_crit_edge, label %if.end.i

cfifo_change.exit.pipe_buffer_setting.exit_crit_edge: ; preds = %cfifo_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_buffer_setting.exit

if.end.i:                                         ; preds = %cfifo_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %22 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %sub.i, 110
  %23 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i68 = getelementptr i8, ptr %24, i32 %add.i
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i68) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %26 = or i16 %25, 2
  %27 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i69 = getelementptr i8, ptr %28, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i69, i16 %26) #10, !srcloc !200
  %29 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pipenum.i, align 4
  %conv5.i = zext i16 %30 to i32
  %sub6.i = shl nuw nsw i32 %conv5.i, 1
  %add8.i = add nuw nsw i32 %sub6.i, 110
  %31 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %32, i32 %add8.i
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i67.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %34 = and i16 %33, -3
  %35 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i68.i = getelementptr i8, ptr %36, i32 %add8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i68.i, i16 %34) #10, !srcloc !200
  %37 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pipenum.i, align 4
  %39 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %41 = tail call i16 @llvm.bswap.i16(i16 %38) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %41) #10, !srcloc !200
  %dir_in.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  %spec.select.i = select i1 %tobool.not.i, i16 16, i16 0
  %type.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %45)
  %cmp15.i = icmp eq i16 %45, 16384
  %spec.select65.i = select i1 %tobool.not.i, i16 16, i16 640
  %val.1.i = select i1 %cmp15.i, i16 %spec.select65.i, i16 %spec.select.i
  %epnum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 3
  %46 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %epnum.i, align 4
  %or2863.i = or i16 %47, %45
  %or3064.i = or i16 %or2863.i, %val.1.i
  %48 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %49, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %50 = tail call i16 @llvm.bswap.i16(i16 %or3064.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70.i, i16 %50) #10, !srcloc !200
  %buf_bsize.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 7
  %51 = ptrtoint ptr %buf_bsize.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %buf_bsize.i, align 4
  %shl.i = shl i16 %52, 10
  %bufnum.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 6
  %53 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bufnum.i, align 2
  %or34.i = or i16 %shl.i, %54
  %55 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %56, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %57 = tail call i16 @llvm.bswap.i16(i16 %or34.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72.i, i16 %57) #10, !srcloc !200
  %address.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %address.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %address.i, align 2
  %shl37.i = shl i16 %59, 12
  %maxpacket.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 4
  %60 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %maxpacket.i, align 2
  %or39.i = or i16 %shl37.i, %61
  %62 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %63, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %64 = tail call i16 @llvm.bswap.i16(i16 %or39.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i74.i, i16 %64) #10, !srcloc !200
  %interval.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %5, i32 0, i32 8
  %65 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %interval.i, align 2
  %67 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %68, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %69 = tail call i16 @llvm.bswap.i16(i16 %66) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i76.i, i16 %69) #10, !srcloc !200
  br label %pipe_buffer_setting.exit

pipe_buffer_setting.exit:                         ; preds = %if.end.i, %cfifo_change.exit.pipe_buffer_setting.exit_crit_edge
  %dev = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %72 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe4, align 4
  %and = lshr i32 %73, 7
  %and.lobit = and i32 %and, 1
  %74 = xor i32 %and.lobit, 1
  %arrayidx = getelementptr %struct.usb_device, ptr %71, i32 0, i32 10, i32 %74
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %73, 15
  %and6 = and i32 %shr, 15
  %77 = shl nuw nsw i32 1, %and6
  %78 = and i32 %77, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool9.not = icmp ne i32 %78, 0
  %shr11.mask = and i32 %73, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr11.mask)
  %cmp13 = icmp eq i32 %shr11.mask, -2147483648
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %pipe_buffer_setting.exit.if.end_crit_edge, label %if.then15

pipe_buffer_setting.exit.if.end_crit_edge:        ; preds = %pipe_buffer_setting.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then15:                                        ; preds = %pipe_buffer_setting.exit
  %79 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %td, align 4
  %pipectr1.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %pipectr1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pipectr1.i, align 4
  %83 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %84, i32 %82
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %86 = or i16 %85, 1
  %87 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %88, i32 %82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %86) #10, !srcloc !200
  %89 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pipe4, align 4
  %91 = and i32 %90, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i71

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit.i

if.end.i.i71:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_device, ptr %93, i32 0, i32 15, i32 8
  %94 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit.i

get_urb_to_r8a66597_dev.exit.i:                   ; preds = %if.end.i.i71, %if.then.i.i
  %retval.0.i.i = phi ptr [ %device0.i.i, %if.then.i.i ], [ %95, %if.end.i.i71 ]
  %tobool.not.i.i72 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i.i72, label %get_urb_to_r8a66597_dev.exit.i.pipe_toggle_set.exit_crit_edge, label %if.end.i75

get_urb_to_r8a66597_dev.exit.i.pipe_toggle_set.exit_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_toggle_set.exit

if.end.i75:                                       ; preds = %get_urb_to_r8a66597_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i73 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool1.not.i.i = icmp eq i32 %and.i.i73, 0
  %ep_out_toggle.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i, i32 0, i32 4
  %ep_in_toggle.i.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i, i32 0, i32 3
  %cond.i.i = select i1 %tobool1.not.i.i, ptr %ep_out_toggle.i.i, ptr %ep_in_toggle.i.i
  %shr.i = lshr i32 %90, 15
  %96 = trunc i32 %shr.i to i8
  %conv.i74 = and i8 %96, 15
  %conv9.i = zext i8 %conv.i74 to i16
  %shl10.i = shl nuw i16 1, %conv9.i
  %neg.i = xor i16 %shl10.i, -1
  %97 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %cond.i.i, align 2
  %and12.i = and i16 %98, %neg.i
  store i16 %and12.i, ptr %cond.i.i, align 2
  br label %pipe_toggle_set.exit

pipe_toggle_set.exit:                             ; preds = %if.end.i75, %get_urb_to_r8a66597_dev.exit.i.pipe_toggle_set.exit_crit_edge
  %99 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %td, align 4
  %tobool.not.i76 = icmp eq ptr %100, null
  br i1 %tobool.not.i76, label %pipe_toggle_set.exit.clear_all_buffer.exit_crit_edge, label %lor.lhs.false.i

pipe_toggle_set.exit.clear_all_buffer.exit_crit_edge: ; preds = %pipe_toggle_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_all_buffer.exit

lor.lhs.false.i:                                  ; preds = %pipe_toggle_set.exit
  %pipenum.i77 = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %pipenum.i77 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pipenum.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp.i78 = icmp eq i16 %102, 0
  br i1 %cmp.i78, label %lor.lhs.false.i.clear_all_buffer.exit_crit_edge, label %if.end.i83

lor.lhs.false.i.clear_all_buffer.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_all_buffer.exit

if.end.i83:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef nonnull %100) #10
  %pipectr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %100, i32 0, i32 4
  %103 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pipectr.i, align 4
  %105 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i80 = getelementptr i8, ptr %106, i32 %104
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i80) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %108 = or i16 %107, 2
  %109 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i81 = getelementptr i8, ptr %110, i32 %104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i81, i16 %108) #10, !srcloc !200
  %111 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pipectr.i, align 4
  %113 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %114, i32 %112
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i82) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %116 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pipectr.i, align 4
  %118 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %119, i32 %117
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i21.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %121 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pipectr.i, align 4
  %123 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %124, i32 %122
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i23.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %126 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pipectr.i, align 4
  %128 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %129, i32 %127
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i25.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %131 = and i16 %130, -3
  %132 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i26.i = getelementptr i8, ptr %133, i32 %127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i26.i, i16 %131) #10, !srcloc !200
  br label %clear_all_buffer.exit

clear_all_buffer.exit:                            ; preds = %if.end.i83, %lor.lhs.false.i.clear_all_buffer.exit_crit_edge, %pipe_toggle_set.exit.clear_all_buffer.exit_crit_edge
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %136 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pipe4, align 4
  %and22 = lshr i32 %137, 7
  %and22.lobit = and i32 %and22, 1
  %138 = xor i32 %and22.lobit, 1
  %arrayidx26 = getelementptr %struct.usb_device, ptr %135, i32 0, i32 10, i32 %138
  %139 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx26, align 4
  %shr28 = lshr i32 %137, 15
  %and29 = and i32 %shr28, 15
  %shl = shl nuw nsw i32 1, %and29
  %or = or i32 %shl, %140
  store i32 %or, ptr %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %clear_all_buffer.exit, %pipe_buffer_setting.exit.if.end_crit_edge
  %141 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %td, align 4
  %143 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pipe4, align 4
  %145 = and i32 %144, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i85 = icmp eq i32 %145, 0
  br i1 %cmp.i.i85, label %if.then.i.i87, label %if.end.i.i90

if.then.i.i87:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i.i86 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit.i98

if.end.i.i90:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i89 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15, i32 8
  %148 = ptrtoint ptr %driver_data.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %driver_data.i.i.i89, align 4
  br label %get_urb_to_r8a66597_dev.exit.i98

get_urb_to_r8a66597_dev.exit.i98:                 ; preds = %if.end.i.i90, %if.then.i.i87
  %retval.0.i.i91 = phi ptr [ %device0.i.i86, %if.then.i.i87 ], [ %149, %if.end.i.i90 ]
  %tobool.not.i.i92 = icmp eq ptr %retval.0.i.i91, null
  br i1 %tobool.not.i.i92, label %get_urb_to_r8a66597_dev.exit.i98.if.end44_crit_edge, label %if.end.i102

get_urb_to_r8a66597_dev.exit.i98.if.end44_crit_edge: ; preds = %get_urb_to_r8a66597_dev.exit.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end.i102:                                      ; preds = %get_urb_to_r8a66597_dev.exit.i98
  %and.i.i93 = and i32 %144, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93)
  %tobool1.not.i.i94 = icmp eq i32 %and.i.i93, 0
  %ep_out_toggle.i.i96 = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i91, i32 0, i32 4
  %ep_in_toggle.i.i95 = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i.i91, i32 0, i32 3
  %cond.i.i97 = select i1 %tobool1.not.i.i94, ptr %ep_out_toggle.i.i96, ptr %ep_in_toggle.i.i95
  %shr.i99 = lshr i32 %144, 15
  %conv.i100 = and i32 %shr.i99, 15
  %150 = ptrtoint ptr %cond.i.i97 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %cond.i.i97, align 2
  %conv4.i = zext i16 %151 to i32
  %shl.i101 = shl nuw nsw i32 1, %conv.i100
  %and6.i = and i32 %shl.i101, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i14.i = icmp eq i32 %and6.i, 0
  %pipectr1.i.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %142, i32 0, i32 4
  %152 = ptrtoint ptr %pipectr1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pipectr1.i.i, align 4
  %154 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %155, i32 %153
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i14.i, label %if.else.i.i, label %if.then.i15.i

if.then.i15.i:                                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  %157 = or i16 %156, -32768
  %158 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %159, i32 %153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %157) #10, !srcloc !200
  br label %if.end44

if.else.i.i:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  %160 = or i16 %156, 1
  %161 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i7.i.i = getelementptr i8, ptr %162, i32 %153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i.i, i16 %160) #10, !srcloc !200
  br label %if.end44

if.end44:                                         ; preds = %if.else.i.i, %if.then.i15.i, %get_urb_to_r8a66597_dev.exit.i98.if.end44_crit_edge, %entry.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_stop(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipectr = getelementptr inbounds %struct.r8a66597_pipe, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipectr, align 4
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %5 = and i16 %4, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %5)
  %cmp.not = icmp eq i16 %5, 768
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipectr, align 4
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %11 = and i16 %10, -769
  %12 = or i16 %11, 512
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %12) #10, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipectr, align 4
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %18, i32 %16
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i15) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %20 = and i16 %19, -769
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i17 = getelementptr i8, ptr %22, i32 %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i17, i16 %20) #10, !srcloc !200
  %23 = ptrtoint ptr %pipectr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipectr, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 1000001
  br i1 %exitcond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %24, i32 noundef 0) #13
  br label %r8a66597_reg_wait.exit

if.end.i:                                         ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #10
  %29 = and i16 %27, 8192
  %cmp8.not.i = icmp eq i16 %29, 0
  br i1 %cmp8.not.i, label %if.end.i.r8a66597_reg_wait.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i.r8a66597_reg_wait.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit

r8a66597_reg_wait.exit:                           ; preds = %if.end.i.r8a66597_reg_wait.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fifo_change_from_pipe(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %pipe) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool.not.i, i16 1024, i16 2048
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %3 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %..i, -16
  %and.i.i = and i16 %6, %neg.i.i
  %or10.i.i = or i16 %and.i.i, %..i
  %7 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %9) #10, !srcloc !200
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %i.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i2.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %cfifo_change.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  %14 = and i16 %12, 3840
  %cmp8.not.i.i = icmp eq i16 %14, 0
  br i1 %cmp8.not.i.i, label %if.end.i.i.cfifo_change.exit_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end.i.i.cfifo_change.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfifo_change.exit

cfifo_change.exit:                                ; preds = %if.end.i.i.cfifo_change.exit_crit_edge, %do.end.i.i
  %15 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 40
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %and.i = and i16 %18, %neg.i.i
  %or10.i = or i16 %and.i, %..i
  %19 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %or10.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %21) #10, !srcloc !200
  %22 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %23, i32 44
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i36) #10, !srcloc !197
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %and.i38 = and i16 %25, %neg.i.i
  %or10.i39 = or i16 %and.i38, %..i
  %26 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i40 = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %28 = tail call i16 @llvm.bswap.i16(i16 %or10.i39) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i40, i16 %28) #10, !srcloc !200
  %pipenum = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %pipe, i32 0, i32 1
  %29 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pipenum, align 4
  %or1334 = or i16 %30, %..i
  %fifosel = getelementptr inbounds %struct.r8a66597_pipe, ptr %pipe, i32 0, i32 2
  %31 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifosel, align 4
  %33 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i42) #10, !srcloc !197
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %and.i44 = and i16 %36, %neg.i.i
  %or10.i45 = or i16 %or1334, %and.i44
  %37 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i46 = getelementptr i8, ptr %38, i32 %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %39 = tail call i16 @llvm.bswap.i16(i16 %or10.i45) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i46, i16 %39) #10, !srcloc !200
  %40 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fifosel, align 4
  %42 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pipenum, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %cfifo_change.exit
  %i.0.i = phi i32 [ 0, %cfifo_change.exit ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %44 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %45, i32 %41
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i48) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 1000001
  br i1 %exitcond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %43 to i32
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %41, i32 noundef %conv.i) #13
  br label %r8a66597_reg_wait.exit

if.end.i:                                         ; preds = %do.body.i
  %47 = lshr i16 %46, 8
  %inc.i = add nuw nsw i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  %and13.i = and i16 %47, 15
  %cmp8.not.i = icmp eq i16 %and13.i, %43
  br i1 %cmp8.not.i, label %if.end.i.r8a66597_reg_wait.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i.r8a66597_reg_wait.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit

r8a66597_reg_wait.exit:                           ; preds = %if.end.i.r8a66597_reg_wait.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @packet_write(ptr noundef %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i16 %pipenum to i32
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %tobool.not195 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.i.not.i, %tobool.not195
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !201

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb4 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb4, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %r8a66597, ptr noundef %5)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %fifoctr = getelementptr inbounds %struct.r8a66597_pipe, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifoctr, align 4
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i162) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %13 = and i16 %12, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp = icmp eq i16 %13, 0
  br i1 %cmp, label %if.then14, label %if.end19, !prof !201

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %15)
  tail call fastcc void @pipe_irq_disable(ptr noundef %r8a66597, i16 noundef zeroext %pipenum)
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %idxprom.i) #13
  tail call fastcc void @finish_request(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i, i16 noundef zeroext %pipenum, ptr noundef %3, i32 noundef -32)
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %maxpacket = getelementptr i8, ptr %1, i32 18
  %16 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %maxpacket, align 2
  %conv20 = zext i16 %17 to i32
  %pipe21 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %19)
  %cmp23 = icmp ult i32 %19, 1073741824
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %iso_cnt = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %iso_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iso_cnt, align 4
  %arrayidx = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %length = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %23, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %conv20)
  br label %if.end42

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %actual_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_buffer_length, align 4
  %sub = sub i32 %32, %30
  %33 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv20)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then25
  %.pn = phi i32 [ %25, %if.then25 ], [ %30, %if.else ]
  %size.0 = phi i32 [ %28, %if.then25 ], [ %33, %if.else ]
  %buf.0 = getelementptr i8, ptr %21, i32 %.pn
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp44.not = icmp eq i16 %pipenum, 0
  br i1 %cmp44.not, label %if.end42.if.end49_crit_edge, label %if.then46

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %idxprom.i
  %34 = trunc i32 %shl to i16
  %conv48 = xor i16 %34, -1
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %36, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv48) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i164, i16 %37) #10, !srcloc !200
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end42.if.end49_crit_edge
  %38 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer, align 4
  %tobool51.not = icmp eq ptr %39, null
  br i1 %tobool51.not, label %if.end49.if.end67_crit_edge, label %if.then52

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then52:                                        ; preds = %if.end49
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %fifoaddr1.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %fifoaddr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifoaddr1.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %43, i32 %45
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else14.i, label %if.then.i

if.then.i:                                        ; preds = %if.then52
  %div.i = sdiv i32 %size.0, 4
  tail call void @__raw_writesl(ptr noundef %add.ptr.i166, ptr noundef %buf.0, i32 noundef %div.i) #10
  %and.i = and i32 %size.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i.r8a66597_write_fifo.exit_crit_edge, label %for.body.lr.ph.i

if.then.i.r8a66597_write_fifo.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_write_fifo.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %mul.i = shl nsw i32 %div.i, 2
  %add.ptr4.i = getelementptr i8, ptr %buf.0, i32 %mul.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i166, i32 3
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 32
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %52 = and i16 %51, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool7.not.i = icmp eq i16 %52, 0
  %53 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr4.i, align 1
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i166, i8 %54) #10, !srcloc !205
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %54) #10, !srcloc !205
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not.i = icmp eq i32 %and.i, 1
  br i1 %exitcond.not.i, label %for.inc.i.r8a66597_write_fifo.exit_crit_edge, label %for.body.i.1

for.inc.i.r8a66597_write_fifo.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_write_fifo.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %55 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %56, i32 32
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.1) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %58 = and i16 %57, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool7.not.i.1 = icmp eq i16 %58, 0
  %arrayidx10.i.1 = getelementptr i8, ptr %add.ptr4.i, i32 1
  %59 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx10.i.1, align 1
  br i1 %tobool7.not.i.1, label %if.else.i.1, label %if.then8.i.1

if.then8.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr9.i.1 = getelementptr i8, ptr %add.ptr.i166, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.1, i8 %60) #10, !srcloc !205
  br label %for.inc.i.1

if.else.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12.i.1 = getelementptr i8, ptr %add.ptr11.i, i32 -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.1, i8 %60) #10, !srcloc !205
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.else.i.1, %if.then8.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.i.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.r8a66597_write_fifo.exit_crit_edge, label %for.body.i.2

for.inc.i.1.r8a66597_write_fifo.exit_crit_edge:   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_write_fifo.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %62, i32 32
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.2) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %64 = and i16 %63, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool7.not.i.2 = icmp eq i16 %64, 0
  %arrayidx10.i.2 = getelementptr i8, ptr %add.ptr4.i, i32 2
  %65 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx10.i.2, align 1
  br i1 %tobool7.not.i.2, label %if.else.i.2, label %if.then8.i.2

if.then8.i.2:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr9.i.2 = getelementptr i8, ptr %add.ptr.i166, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.2, i8 %66) #10, !srcloc !205
  br label %r8a66597_write_fifo.exit

if.else.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12.i.2 = getelementptr i8, ptr %add.ptr11.i, i32 -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.2, i8 %66) #10, !srcloc !205
  br label %r8a66597_write_fifo.exit

if.else14.i:                                      ; preds = %if.then52
  %and15.i = and i32 %size.0, 1
  %div16.i = sdiv i32 %size.0, 2
  tail call void @__raw_writesw(ptr noundef %add.ptr.i166, ptr noundef %buf.0, i32 noundef %div16.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool17.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool17.not.i, label %if.else14.i.r8a66597_write_fifo.exit_crit_edge, label %if.then20.i, !prof !206

if.else14.i.r8a66597_write_fifo.exit_crit_edge:   ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_write_fifo.exit

if.then20.i:                                      ; preds = %if.else14.i
  %arrayidx21.i = getelementptr i16, ptr %buf.0, i32 %div16.i
  %67 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdata.i, align 4
  %wr0_shorted_to_wr1.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %wr0_shorted_to_wr1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load23.i = load i8, ptr %wr0_shorted_to_wr1.i, align 2
  %70 = and i8 %bf.load23.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool26.not.i = icmp eq i8 %70, 0
  br i1 %tobool26.not.i, label %if.then20.i.if.end28.i_crit_edge, label %if.then27.i

if.then20.i.if.end28.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %41, i32 0, i32 2
  %71 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fifosel.i, align 4
  tail call fastcc void @r8a66597_mdfy(ptr noundef %r8a66597, i16 noundef zeroext 0, i16 noundef zeroext 1024, i32 noundef %72) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.then20.i.if.end28.i_crit_edge
  %73 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx21.i, align 2
  %conv29.i = trunc i16 %74 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i166, i8 %conv29.i) #10, !srcloc !205
  %75 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdata.i, align 4
  %wr0_shorted_to_wr131.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %wr0_shorted_to_wr131.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load32.i = load i8, ptr %wr0_shorted_to_wr131.i, align 2
  %78 = and i8 %bf.load32.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool36.not.i = icmp eq i8 %78, 0
  br i1 %tobool36.not.i, label %if.end28.i.r8a66597_write_fifo.exit_crit_edge, label %if.then37.i

if.end28.i.r8a66597_write_fifo.exit_crit_edge:    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_write_fifo.exit

if.then37.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel38.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %41, i32 0, i32 2
  %79 = ptrtoint ptr %fifosel38.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fifosel38.i, align 4
  tail call fastcc void @r8a66597_mdfy(ptr noundef %r8a66597, i16 noundef zeroext 1024, i16 noundef zeroext 0, i32 noundef %80) #10
  br label %r8a66597_write_fifo.exit

r8a66597_write_fifo.exit:                         ; preds = %if.then37.i, %if.end28.i.r8a66597_write_fifo.exit_crit_edge, %if.else14.i.r8a66597_write_fifo.exit_crit_edge, %if.else.i.2, %if.then8.i.2, %for.inc.i.1.r8a66597_write_fifo.exit_crit_edge, %for.inc.i.r8a66597_write_fifo.exit_crit_edge, %if.then.i.r8a66597_write_fifo.exit_crit_edge
  %81 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pipe21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %82)
  %cmp57 = icmp ugt i32 %82, -1073741825
  br i1 %cmp57, label %lor.lhs.false, label %r8a66597_write_fifo.exit.if.then63_crit_edge

r8a66597_write_fifo.exit.if.then63_crit_edge:     ; preds = %r8a66597_write_fifo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

lor.lhs.false:                                    ; preds = %r8a66597_write_fifo.exit
  %83 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %maxpacket, align 2
  %conv60 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %conv60)
  %cmp61.not = icmp eq i32 %size.0, %conv60
  br i1 %cmp61.not, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %r8a66597_write_fifo.exit.if.then63_crit_edge
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 4
  %fifoctr65 = getelementptr inbounds %struct.r8a66597_pipe, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %fifoctr65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fifoctr65, align 4
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %90, i32 %88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i168, i16 128) #10, !srcloc !200
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %lor.lhs.false.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  %actual_length68 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %91 = ptrtoint ptr %actual_length68 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %actual_length68, align 4
  %add = add i32 %92, %size.0
  store i32 %add, ptr %actual_length68, align 4
  %93 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pipe21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %94)
  %cmp72 = icmp ult i32 %94, 1073741824
  br i1 %cmp72, label %if.end83, label %if.end67.if.end3.i_crit_edge

if.end67.if.end3.i_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.end83:                                         ; preds = %if.end67
  %iso_cnt76 = getelementptr i8, ptr %1, i32 12
  %95 = ptrtoint ptr %iso_cnt76 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iso_cnt76, align 4
  %actual_length78 = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %96, i32 2
  %97 = ptrtoint ptr %actual_length78 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %size.0, ptr %actual_length78, align 4
  %98 = load i32, ptr %iso_cnt76, align 4
  %status = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %98, i32 3
  %99 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %status, align 4
  %100 = load i32, ptr %iso_cnt76, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %iso_cnt76, align 4
  %101 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr = load i32, ptr %pipe21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %.pr)
  %cmp.i = icmp ult i32 %.pr, 1073741824
  br i1 %cmp.i, label %if.then.i169, label %if.end83.if.end3.i_crit_edge

if.end83.if.end3.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i169:                                     ; preds = %if.end83
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 24
  %102 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %inc)
  %cmp1.i = icmp eq i32 %103, %inc
  br i1 %cmp1.i, label %if.then.i169.if.then86_crit_edge, label %if.then.i169.if.end3.i_crit_edge

if.then.i169.if.end3.i_crit_edge:                 ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i169.if.then86_crit_edge:                 ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end3.i:                                        ; preds = %if.then.i169.if.end3.i_crit_edge, %if.end83.if.end3.i_crit_edge, %if.end67.if.end3.i_crit_edge
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %104 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %transfer_buffer_length.i, align 4
  %106 = ptrtoint ptr %actual_length68 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %actual_length68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp4.not.i = icmp ugt i32 %105, %107
  br i1 %cmp4.not.i, label %check_transfer_finish.exit, label %if.end3.i.if.then86_crit_edge

if.end3.i.if.then86_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

check_transfer_finish.exit:                       ; preds = %if.end3.i
  %short_packet.i = getelementptr i8, ptr %1, i32 20
  %108 = ptrtoint ptr %short_packet.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i170 = load i8, ptr %short_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i170)
  %109 = icmp ult i8 %bf.load.i170, 64
  br i1 %109, label %if.else94, label %check_transfer_finish.exit.if.then86_crit_edge

check_transfer_finish.exit.if.then86_crit_edge:   ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.then86:                                        ; preds = %check_transfer_finish.exit.if.then86_crit_edge, %if.end3.i.if.then86_crit_edge, %if.then.i169.if.then86_crit_edge
  %110 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i172 = getelementptr i8, ptr %111, i32 48
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i172) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %113 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %114, i32 48
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %116 = and i16 %115, -8
  %117 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %118, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %116) #10, !srcloc !200
  %shl.i = shl nuw i32 1, %idxprom.i
  %conv1.i = trunc i32 %shl.i to i16
  %119 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %120, i32 54
  %121 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !197
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %122, %neg.i.i
  %123 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %124, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %125 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %125) #10, !srcloc !200
  %126 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %127, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %112) #10, !srcloc !200
  %128 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i174 = getelementptr i8, ptr %129, i32 48
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i174) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i175 = getelementptr i8, ptr %132, i32 48
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i175) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %134 = and i16 %133, -8
  %135 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i176 = getelementptr i8, ptr %136, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i176, i16 %134) #10, !srcloc !200
  %137 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i180 = getelementptr i8, ptr %138, i32 58
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i180) #10, !srcloc !197
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i.i = or i16 %140, %conv1.i
  %141 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %142, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %143 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %143) #10, !srcloc !200
  %144 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %145, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %130) #10, !srcloc !200
  %146 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pipe21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %147)
  %cmp90 = icmp ult i32 %147, 1073741824
  br i1 %cmp90, label %if.then86.cleanup_crit_edge, label %if.then92

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %149, i32 48
  %150 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i182) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %151 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i183 = getelementptr i8, ptr %152, i32 48
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i183) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %154 = and i16 %153, -8
  %155 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i184 = getelementptr i8, ptr %156, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i184, i16 %154) #10, !srcloc !200
  %157 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i188 = getelementptr i8, ptr %158, i32 56
  %159 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i188) #10, !srcloc !197
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i.i189 = or i16 %160, %conv1.i
  %161 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i7.i190 = getelementptr i8, ptr %162, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %163 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i189) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i190, i16 %163) #10, !srcloc !200
  %164 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i191 = getelementptr i8, ptr %165, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i191, i16 %150) #10, !srcloc !200
  br label %cleanup

if.else94:                                        ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pipe_irq_enable(ptr noundef %r8a66597, ptr noundef %3, i16 noundef zeroext %pipenum)
  br label %cleanup

cleanup:                                          ; preds = %if.else94, %if.then92, %if.then86.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @packet_read(ptr noundef %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i16 %pipenum to i32
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 6, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %tobool.not180 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.i.not.i, %tobool.not180
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !201

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb4 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb4, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @fifo_change_from_pipe(ptr noundef %r8a66597, ptr noundef %5)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %fifoctr = getelementptr inbounds %struct.r8a66597_pipe, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifoctr, align 4
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i167) #10, !srcloc !197
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then14, label %if.end20, !prof !201

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %15)
  tail call fastcc void @pipe_irq_disable(ptr noundef %r8a66597, i16 noundef zeroext %pipenum)
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %idxprom.i) #13
  %16 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb4, align 4
  tail call fastcc void @finish_request(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i, i16 noundef zeroext %pipenum, ptr noundef %17, i32 noundef -32)
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %and22 = and i32 %conv, 4095
  %pipe23 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %19)
  %cmp25 = icmp ult i32 %19, 1073741824
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %iso_cnt = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %iso_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iso_cnt, align 4
  %arrayidx = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %length = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %23, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %actual_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_buffer_length, align 4
  %sub = sub i32 %31, %29
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %urb_len.0 = phi i32 [ %27, %if.then27 ], [ %sub, %if.else ]
  %.pn = phi i32 [ %25, %if.then27 ], [ %29, %if.else ]
  %buf.0 = getelementptr i8, ptr %21, i32 %.pn
  %maxpacket = getelementptr i8, ptr %1, i32 18
  %32 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %maxpacket, align 2
  %conv35 = zext i16 %33 to i32
  %34 = tail call i32 @llvm.smin.i32(i32 %urb_len.0, i32 %conv35)
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %34)
  %cmp39.not = icmp sgt i32 %and22, %34
  %35 = tail call i32 @llvm.smin.i32(i32 %and22, i32 %34)
  %status.0 = select i1 %cmp39.not, i32 -75, i32 0
  %actual_length44 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 20
  %36 = ptrtoint ptr %actual_length44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual_length44, align 4
  %add = add i32 %35, %37
  store i32 %add, ptr %actual_length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp45 = icmp eq i32 %and22, 0
  br i1 %cmp45, label %if.then47, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %zero_packet = getelementptr i8, ptr %1, i32 20
  %38 = ptrtoint ptr %zero_packet to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %zero_packet, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %zero_packet, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end34.if.end48_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %34)
  %cmp49 = icmp slt i32 %and22, %34
  br i1 %cmp49, label %if.then51, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %short_packet = getelementptr i8, ptr %1, i32 20
  %39 = ptrtoint ptr %short_packet to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load52 = load i8, ptr %short_packet, align 4
  %bf.set54 = or i8 %bf.load52, 64
  store i8 %bf.set54, ptr %short_packet, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end48.if.end55_crit_edge
  %40 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipe23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %cmp59 = icmp ult i32 %41, 1073741824
  br i1 %cmp59, label %lor.lhs.false, label %if.end71

if.end71:                                         ; preds = %if.end55
  br i1 %cmp39.not, label %if.end71.if.then75_crit_edge, label %if.end71.if.end3.i_crit_edge

if.end71.if.end3.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.end71.if.then75_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.end55
  %iso_cnt63 = getelementptr i8, ptr %1, i32 12
  %42 = ptrtoint ptr %iso_cnt63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iso_cnt63, align 4
  %actual_length65 = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %43, i32 2
  %44 = ptrtoint ptr %actual_length65 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %35, ptr %actual_length65, align 4
  %45 = load i32, ptr %iso_cnt63, align 4
  %status69 = getelementptr %struct.urb, ptr %3, i32 0, i32 29, i32 %45, i32 3
  %46 = ptrtoint ptr %status69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %status.0, ptr %status69, align 4
  %47 = load i32, ptr %iso_cnt63, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %iso_cnt63, align 4
  %48 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %pipe23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %.pr)
  %cmp.i = icmp ult i32 %.pr, 1073741824
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.if.end3.i_crit_edge

lor.lhs.false.if.end3.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i:                                        ; preds = %lor.lhs.false
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 24
  %49 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %number_of_packets.i, align 4
  %51 = ptrtoint ptr %iso_cnt63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iso_cnt63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp1.i = icmp eq i32 %50, %52
  br i1 %cmp1.i, label %if.then.i.if.then75_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i.if.then75_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %lor.lhs.false.if.end3.i_crit_edge, %if.end71.if.end3.i_crit_edge
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %53 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_buffer_length.i, align 4
  %55 = ptrtoint ptr %actual_length44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual_length44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp4.not.i = icmp ugt i32 %54, %56
  br i1 %cmp4.not.i, label %check_transfer_finish.exit, label %if.end3.i.if.then75_crit_edge

if.end3.i.if.then75_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

check_transfer_finish.exit:                       ; preds = %if.end3.i
  %short_packet.i = getelementptr i8, ptr %1, i32 20
  %57 = ptrtoint ptr %short_packet.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i = load i8, ptr %short_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %58 = icmp ult i8 %bf.load.i, 64
  br i1 %58, label %check_transfer_finish.exit.if.end77_crit_edge, label %check_transfer_finish.exit.if.then75_crit_edge

check_transfer_finish.exit.if.then75_crit_edge:   ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

check_transfer_finish.exit.if.end77_crit_edge:    ; preds = %check_transfer_finish.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then75:                                        ; preds = %check_transfer_finish.exit.if.then75_crit_edge, %if.end3.i.if.then75_crit_edge, %if.then.i.if.then75_crit_edge, %if.end71.if.then75_crit_edge
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @pipe_stop(ptr noundef %r8a66597, ptr noundef %60)
  tail call fastcc void @pipe_irq_disable(ptr noundef %r8a66597, i16 noundef zeroext %pipenum)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %check_transfer_finish.exit.if.end77_crit_edge
  %tobool90.not = phi i1 [ false, %if.then75 ], [ true, %check_transfer_finish.exit.if.end77_crit_edge ]
  %transfer_buffer78 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %transfer_buffer78, align 4
  %tobool79.not = icmp eq ptr %62, null
  br i1 %tobool79.not, label %if.end77.if.end89_crit_edge, label %if.then80

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp81 = icmp eq i32 %35, 0
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  br i1 %cmp81, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %fifoctr85 = getelementptr inbounds %struct.r8a66597_pipe, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %fifoctr85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fifoctr85, align 4
  %67 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i170, i16 64) #10, !srcloc !200
  br label %if.end89

if.else86:                                        ; preds = %if.then80
  %fifoaddr = getelementptr inbounds %struct.r8a66597_pipe, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %fifoaddr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fifoaddr, align 4
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %72, i32 %70
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %73 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata.i, align 4
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i173 = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i173)
  %tobool.not.i = icmp sgt i8 %bf.load.i173, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i174

if.then.i174:                                     ; preds = %if.else86
  %div.i = sdiv i32 %35, 4
  tail call void @__raw_readsl(ptr noundef %add.ptr.i172, ptr noundef %buf.0, i32 noundef %div.i) #10
  %and.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i174.if.end89_crit_edge, label %if.then2.i

if.then.i174.if.end89_crit_edge:                  ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then2.i:                                       ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i)
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #10, !srcloc !207
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %78 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %tmp.i, align 4
  %mul.i = shl nsw i32 %div.i, 2
  %add.ptr3.i = getelementptr i8, ptr %buf.0, i32 %mul.i
  %79 = call ptr @memcpy(ptr %add.ptr3.i, ptr %tmp.i, i32 %and.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i)
  br label %if.end89

if.else.i:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %35, 1
  %div5.i = sdiv i32 %add.i, 2
  tail call void @__raw_readsw(ptr noundef %add.ptr.i172, ptr noundef %buf.0, i32 noundef %div5.i) #10
  br label %if.end89

if.end89:                                         ; preds = %if.else.i, %if.then2.i, %if.then.i174.if.end89_crit_edge, %if.then83, %if.end77.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp92.not = icmp eq i16 %pipenum, 0
  %or.cond = or i1 %cmp92.not, %tobool90.not
  br i1 %or.cond, label %if.end89.cleanup_crit_edge, label %if.then94

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @finish_request(ptr noundef %r8a66597, ptr noundef nonnull %add.ptr.i, i16 noundef zeroext %pipenum, ptr noundef %3, i32 noundef %status.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %if.end89.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_controller(ptr nocapture noundef readonly %r8a66597) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %vif1 = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vif1, align 2
  %irq_sense_low = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 17
  %3 = ptrtoint ptr %irq_sense_low to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %irq_sense_low, align 4
  %call = tail call fastcc i32 @r8a66597_clock_enable(ptr noundef %r8a66597)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %bf.load to i16
  %5 = shl nuw nsw i16 %4, 5
  %6 = lshr i8 %bf.load2, 1
  %7 = shl i16 %4, 11
  %and = and i16 %7, -32768
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 14
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i = or i16 %11, %and
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %or10.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %14) #10, !srcloc !200
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %18 = or i16 %17, 256
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #10, !srcloc !200
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i63) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %24 = or i16 %23, 7
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i65 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i65, i16 %24) #10, !srcloc !200
  %27 = and i8 %6, 32
  %conv23 = zext i8 %27 to i16
  %28 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %29, i32 60
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i67) #10, !srcloc !197
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i68 = or i16 %31, %conv23
  %32 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i69 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %34 = tail call i16 @llvm.bswap.i16(i16 %or10.i68) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i69, i16 %34) #10, !srcloc !200
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %36, i32 54
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i71) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %38 = or i16 %37, 256
  %39 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i73 = getelementptr i8, ptr %40, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i73, i16 %38) #10, !srcloc !200
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %42, i32 58
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i75) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %44 = or i16 %43, 256
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i77 = getelementptr i8, ptr %46, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i77, i16 %44) #10, !srcloc !200
  %and25 = and i16 %5, 256
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %48, i32 32
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i79) #10, !srcloc !197
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i80 = or i16 %50, %and25
  %51 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i81 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %53 = tail call i16 @llvm.bswap.i16(i16 %or10.i80) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i81, i16 %53) #10, !srcloc !200
  %54 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %55, i32 40
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i83) #10, !srcloc !197
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i84 = or i16 %57, %and25
  %58 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i85 = getelementptr i8, ptr %59, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %60 = tail call i16 @llvm.bswap.i16(i16 %or10.i84) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i85, i16 %60) #10, !srcloc !200
  %61 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %62, i32 44
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i87) #10, !srcloc !197
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i88 = or i16 %64, %and25
  %65 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i89 = getelementptr i8, ptr %66, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %67 = tail call i16 @llvm.bswap.i16(i16 %or10.i88) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i89, i16 %67) #10, !srcloc !200
  %68 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %69, i32 60
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i91) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %71 = or i16 %70, 1
  %72 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i93 = getelementptr i8, ptr %73, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i93, i16 %71) #10, !srcloc !200
  %74 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %75, i32 50
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i95) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %77 = or i16 %76, 12288
  %78 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i97 = getelementptr i8, ptr %79, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i97, i16 %77) #10, !srcloc !200
  %max_root_hub = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 14
  %80 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp3399.not = icmp eq i32 %81, 0
  br i1 %cmp3399.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %port.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0100)
  %tobool.not.i = icmp eq i32 %port.0100, 0
  %conv.i = select i1 %tobool.not.i, i16 96, i16 32
  %cond.i.i = select i1 %tobool.not.i, i32 0, i32 2
  %82 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 %cond.i.i
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %or10.i.i = or i16 %85, %conv.i
  %86 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %87, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %88 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %88) #10, !srcloc !200
  %89 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %90, i32 %cond.i.i
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %92 = or i16 %91, -32768
  %93 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i19.i = getelementptr i8, ptr %94, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i, i16 %92) #10, !srcloc !200
  %cond.i21.i = select i1 %tobool.not.i, i32 16, i32 18
  %95 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %96, i32 %cond.i21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i98, i16 32) #10, !srcloc !200
  %cond.i23.i = select i1 %tobool.not.i, i32 50, i32 52
  %97 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %98, i32 %cond.i23.i
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i25.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %100 = and i16 %99, -17
  %101 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i26.i = getelementptr i8, ptr %102, i32 %cond.i23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i26.i, i16 %100) #10, !srcloc !200
  %103 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %104, i32 %cond.i23.i
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i30.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %106 = or i16 %105, 8
  %107 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i32.i = getelementptr i8, ptr %108, i32 %cond.i23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i32.i, i16 %106) #10, !srcloc !200
  %inc = add nuw i32 %port.0100, 1
  %109 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_root_hub, align 4
  %cmp33 = icmp ult i32 %inc, %110
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_r8a66597_pipe(ptr nocapture noundef %r8a66597, ptr nocapture noundef readonly %urb, ptr nocapture noundef readonly %hep, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe.i, align 4
  %2 = and i32 %1, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device0.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  br label %get_urb_to_r8a66597_dev.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  br label %get_urb_to_r8a66597_dev.exit

get_urb_to_r8a66597_dev.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i22 = phi ptr [ %device0.i, %if.then.i ], [ %6, %if.end.i ]
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %7 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcpriv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_r8a66597_pipe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_r8a66597_pipe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %get_urb_to_r8a66597_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i22, i32 0, i32 8
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enable_r8a66597_pipe.__UNIQUE_ID_ddebug244, ptr noundef %dev4, ptr noundef nonnull @.str.61) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %get_urb_to_r8a66597_dev.exit
  %11 = call ptr @memcpy(ptr %8, ptr %info, i32 24)
  %pipenum1.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pipenum1.i, align 4
  %fifoaddr3.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %fifoaddr3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %fifoaddr3.i, align 4
  %fifosel6.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %fifosel6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %fifosel6.i, align 4
  %fifoctr9.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %fifoctr9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 34, ptr %fifoctr9.i, align 4
  %conv10.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp11.i = icmp eq i16 %13, 0
  br i1 %cmp11.i, label %if.end16.thread.i, label %if.end16.i

if.end16.thread.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %pipectr.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 4
  %17 = ptrtoint ptr %pipectr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 96, ptr %pipectr.i, align 4
  br label %if.else32.i

if.end16.i:                                       ; preds = %do.end
  %sub.i = shl nuw nsw i32 %conv10.i, 1
  %add.i = add nuw nsw i32 %sub.i, 110
  %pipectr15.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %pipectr15.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %pipectr15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %13)
  %cmp21.i = icmp ult i16 %13, 6
  br i1 %cmp21.i, label %if.then23.i, label %if.end16.i.if.else32.i_crit_edge

if.end16.i.if.else32.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.i

if.then23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub25.i = shl nuw nsw i32 %conv10.i, 2
  %add27.i = add nuw nsw i32 %sub25.i, 140
  %pipetre.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %pipetre.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add27.i, ptr %pipetre.i, align 4
  %add31.i = add nuw nsw i32 %sub25.i, 142
  br label %set_pipe_reg_addr.exit

if.else32.i:                                      ; preds = %if.end16.i.if.else32.i_crit_edge, %if.end16.thread.i
  %pipetre33.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 5
  %20 = ptrtoint ptr %pipetre33.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pipetre33.i, align 4
  br label %set_pipe_reg_addr.exit

set_pipe_reg_addr.exit:                           ; preds = %if.else32.i, %if.then23.i
  %.sink.i = phi i32 [ 0, %if.else32.i ], [ %add31.i, %if.then23.i ]
  %pipetrn34.i = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %pipetrn34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %pipetrn34.i, align 4
  %22 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pipenum1.i, align 4
  %idxprom = zext i16 %23 to i32
  %arrayidx = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 12, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %inc = add i8 %25, 1
  store i8 %inc, ptr %arrayidx, align 1
  %26 = load i16, ptr %pipenum1.i, align 4
  %idxprom10 = zext i16 %26 to i32
  %arrayidx11 = getelementptr %struct.r8a66597_device, ptr %retval.0.i22, i32 0, i32 5, i32 %idxprom10
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx11, align 1
  %inc12 = add i8 %28, 1
  store i8 %inc12, ptr %arrayidx11, align 1
  %pdata.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %29 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata.i.i, align 4
  %on_chip.i.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %on_chip.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %on_chip.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %..i.i = select i1 %tobool.not.i.i, i16 1024, i16 2048
  br i1 %tobool.not.i.i, label %if.end.i23, label %set_pipe_reg_addr.exit.enable_r8a66597_pipe_dma.exit_crit_edge

set_pipe_reg_addr.exit.enable_r8a66597_pipe_dma.exit_crit_edge: ; preds = %set_pipe_reg_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_r8a66597_pipe_dma.exit

if.end.i23:                                       ; preds = %set_pipe_reg_addr.exit
  %32 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pipenum1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.not.i = icmp eq i16 %33, 0
  br i1 %cmp.not.i, label %if.end.i23.enable_r8a66597_pipe_dma.exit_crit_edge, label %land.lhs.true.i

if.end.i23.enable_r8a66597_pipe_dma.exit_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_r8a66597_pipe_dma.exit

land.lhs.true.i:                                  ; preds = %if.end.i23
  %type.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %8, i32 0, i32 5
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %35)
  %cmp5.not.i = icmp eq i16 %35, -32768
  br i1 %cmp5.not.i, label %land.lhs.true.i.enable_r8a66597_pipe_dma.exit_crit_edge, label %for.cond.preheader.i

land.lhs.true.i.enable_r8a66597_pipe_dma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_r8a66597_pipe_dma.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %dma_map.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 13
  %36 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dma_map.i, align 4
  %conv10.i24 = zext i8 %37 to i32
  %and.i = and i32 %conv10.i24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.do.end.i_crit_edge, label %for.inc.i

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %i.074.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.do.end.i_crit_edge ], [ 1, %for.inc.i.do.end.i_crit_edge ]
  %shl.lcssa.i = phi i8 [ 1, %for.cond.preheader.i.do.end.i_crit_edge ], [ 2, %for.inc.i.do.end.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i22, i32 0, i32 8
  %38 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev.i, align 4
  %dev15.i = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipe.i, align 4
  %shr.i = lshr i32 %41, 8
  %and17.i = and i32 %shr.i, 127
  %dir_in.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %8, i32 0, i32 9
  %42 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool19.not.i = icmp eq i16 %43, 0
  %epnum21.i = getelementptr inbounds %struct.r8a66597_pipe_info, ptr %8, i32 0, i32 3
  %44 = ptrtoint ptr %epnum21.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %epnum21.i, align 4
  %conv22.i = zext i16 %45 to i32
  %add.i25 = add nuw nsw i32 %conv22.i, 128
  %cond.i = select i1 %tobool19.not.i, i32 %conv22.i, i32 %add.i25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15.i, ptr noundef nonnull @.str.62, i32 noundef %and17.i, i32 noundef %cond.i) #13
  %46 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dma_map.i, align 4
  %conv26.i = or i8 %47, %shl.lcssa.i
  store i8 %conv26.i, ptr %dma_map.i, align 4
  %dma_map28.i = getelementptr inbounds %struct.r8a66597_device, ptr %retval.0.i22, i32 0, i32 6
  %48 = ptrtoint ptr %dma_map28.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dma_map28.i, align 4
  %conv31.i = or i8 %49, %shl.lcssa.i
  store i8 %conv31.i, ptr %dma_map28.i, align 4
  %50 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pipenum1.i, align 4
  %arrayidx.i = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifoaddr, i32 0, i32 %i.074.lcssa.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %fifoaddr3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fifoaddr3.i, align 4
  %arrayidx5.i = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifosel, i32 0, i32 %i.074.lcssa.i
  %55 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx5.i, align 4
  %57 = ptrtoint ptr %fifosel6.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fifosel6.i, align 4
  %arrayidx8.i = getelementptr [3 x i32], ptr @__const.set_pipe_reg_addr.fifoctr, i32 0, i32 %i.074.lcssa.i
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx8.i, align 4
  %60 = ptrtoint ptr %fifoctr9.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %fifoctr9.i, align 4
  %conv10.i44 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp11.i45 = icmp eq i16 %51, 0
  br i1 %cmp11.i45, label %if.end16.thread.i47, label %if.end16.i52

if.end16.thread.i47:                              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pipectr.i46 = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 4
  %61 = ptrtoint ptr %pipectr.i46 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 96, ptr %pipectr.i46, align 4
  br label %if.else32.i59

if.end16.i52:                                     ; preds = %do.end.i
  %sub.i48 = shl nuw nsw i32 %conv10.i44, 1
  %add.i49 = add nuw nsw i32 %sub.i48, 110
  %pipectr15.i50 = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 4
  %62 = ptrtoint ptr %pipectr15.i50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i49, ptr %pipectr15.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %51)
  %cmp21.i51 = icmp ult i16 %51, 6
  br i1 %cmp21.i51, label %if.then23.i57, label %if.end16.i52.if.else32.i59_crit_edge

if.end16.i52.if.else32.i59_crit_edge:             ; preds = %if.end16.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.i59

if.then23.i57:                                    ; preds = %if.end16.i52
  call void @__sanitizer_cov_trace_pc() #12
  %sub25.i53 = shl nuw nsw i32 %conv10.i44, 2
  %add27.i54 = add nuw nsw i32 %sub25.i53, 140
  %pipetre.i55 = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 5
  %63 = ptrtoint ptr %pipetre.i55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add27.i54, ptr %pipetre.i55, align 4
  %add31.i56 = add nuw nsw i32 %sub25.i53, 142
  br label %set_pipe_reg_addr.exit62

if.else32.i59:                                    ; preds = %if.end16.i52.if.else32.i59_crit_edge, %if.end16.thread.i47
  %pipetre33.i58 = getelementptr inbounds %struct.r8a66597_pipe, ptr %8, i32 0, i32 5
  %64 = ptrtoint ptr %pipetre33.i58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %pipetre33.i58, align 4
  br label %set_pipe_reg_addr.exit62

set_pipe_reg_addr.exit62:                         ; preds = %if.else32.i59, %if.then23.i57
  %.sink.i60 = phi i32 [ 0, %if.else32.i59 ], [ %add31.i56, %if.then23.i57 ]
  %65 = ptrtoint ptr %pipetrn34.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i60, ptr %pipetrn34.i, align 4
  %66 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata.i.i, align 4
  %on_chip.i.i36 = getelementptr inbounds %struct.r8a66597_platdata, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %on_chip.i.i36 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i.i37 = load i8, ptr %on_chip.i.i36, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i37)
  %tobool.not.i.i38 = icmp sgt i8 %bf.load.i.i37, -1
  %..i.i39 = select i1 %tobool.not.i.i38, i16 1024, i16 2048
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %69 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 32
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !197
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i.i = xor i16 %..i.i39, -16
  %and.i.i = and i16 %72, %neg.i.i
  %or10.i.i = or i16 %and.i.i, %..i.i39
  %73 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %74, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %75 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %75) #10, !srcloc !200
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %set_pipe_reg_addr.exit62
  %i.0.i.i = phi i32 [ 0, %set_pipe_reg_addr.exit62 ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %76 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %77, i32 32
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i2.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  br label %cfifo_change.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #10
  %80 = and i16 %78, 3840
  %cmp8.not.i.i = icmp eq i16 %80, 0
  br i1 %cmp8.not.i.i, label %if.end.i.i.cfifo_change.exit_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end.i.i.cfifo_change.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfifo_change.exit

cfifo_change.exit:                                ; preds = %if.end.i.i.cfifo_change.exit_crit_edge, %do.end.i.i
  %81 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pipenum1.i, align 4
  %or3772.i = or i16 %82, %..i.i
  %83 = ptrtoint ptr %fifosel6.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fifosel6.i, align 4
  %85 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %86, i32 %84
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31) #10, !srcloc !197
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %neg.i = xor i16 %..i.i, -16
  %and.i32 = and i16 %88, %neg.i
  %or10.i33 = or i16 %or3772.i, %and.i32
  %89 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i34 = getelementptr i8, ptr %90, i32 %84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %91 = tail call i16 @llvm.bswap.i16(i16 %or10.i33) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i34, i16 %91) #10, !srcloc !200
  %92 = ptrtoint ptr %fifosel6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fifosel6.i, align 4
  %94 = ptrtoint ptr %pipenum1.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pipenum1.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i29.do.body.i_crit_edge, %cfifo_change.exit
  %i.0.i = phi i32 [ 0, %cfifo_change.exit ], [ %inc.i, %if.end.i29.do.body.i_crit_edge ]
  %96 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %97, i32 %93
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i27) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 1000001
  br i1 %exitcond.i, label %do.end.i28, label %if.end.i29

do.end.i28:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %95 to i32
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %93, i32 noundef %conv.i) #13
  br label %r8a66597_reg_wait.exit

if.end.i29:                                       ; preds = %do.body.i
  %99 = lshr i16 %98, 8
  %inc.i = add nuw nsw i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748) #10
  %and13.i = and i16 %99, 15
  %cmp8.not.i = icmp eq i16 %and13.i, %95
  br i1 %cmp8.not.i, label %if.end.i29.r8a66597_reg_wait.exit_crit_edge, label %if.end.i29.do.body.i_crit_edge

if.end.i29.do.body.i_crit_edge:                   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i29.r8a66597_reg_wait.exit_crit_edge:      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %r8a66597_reg_wait.exit

r8a66597_reg_wait.exit:                           ; preds = %if.end.i29.r8a66597_reg_wait.exit_crit_edge, %do.end.i28
  %101 = ptrtoint ptr %fifoctr9.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fifoctr9.i, align 4
  %103 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 %102
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %106 = or i16 %105, 64
  %107 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %108, i32 %102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %106) #10, !srcloc !200
  br label %enable_r8a66597_pipe_dma.exit

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %and.1.i = and i32 %conv10.i24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp11.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp11.not.1.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.enable_r8a66597_pipe_dma.exit_crit_edge

for.inc.i.enable_r8a66597_pipe_dma.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_r8a66597_pipe_dma.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

enable_r8a66597_pipe_dma.exit:                    ; preds = %for.inc.i.enable_r8a66597_pipe_dma.exit_crit_edge, %r8a66597_reg_wait.exit, %land.lhs.true.i.enable_r8a66597_pipe_dma.exit_crit_edge, %if.end.i23.enable_r8a66597_pipe_dma.exit_crit_edge, %set_pipe_reg_addr.exit.enable_r8a66597_pipe_dma.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @collect_usb_address_map(ptr noundef %udev, ptr nocapture noundef %map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %bDeviceClass = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp6 = icmp eq i8 %7, 9
  br i1 %cmp6, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %udev, align 8
  %rem28 = and i32 %9, 31
  %shl = shl nuw i32 1, %rem28
  %div = sdiv i32 %9, 32
  %arrayidx = getelementptr i32, ptr %map, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call ptr @usb_hub_find_child(ptr noundef %udev, i32 noundef 1) #10
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 35
  %12 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxchild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp10.not29 = icmp slt i32 %13, 1
  br i1 %cmp10.not29, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %childdev.031 = phi ptr [ %call15, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %chix.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %tobool12.not = icmp eq ptr %childdev.031, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @collect_usb_address_map(ptr noundef nonnull %childdev.031, ptr noundef %map)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %inc = add i32 %chix.030, 1
  %call15 = tail call ptr @usb_hub_find_child(ptr noundef %udev, i32 noundef %inc) #10
  %14 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxchild, align 4
  %cmp10.not = icmp sgt i32 %inc, %15
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r8a66597_port_power(ptr nocapture noundef readonly %r8a66597, i32 noundef %port, i32 noundef %power) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp.i = icmp eq i32 %port, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 10
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(i32 noundef %port, i32 noundef %power) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool3.not = icmp eq i32 %power, 0
  %reg.i.i13 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i13, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %5, i32 %cond.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %7 = or i16 %6, 2
  %8 = ptrtoint ptr %reg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i13, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %7) #10, !srcloc !200
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %10 = and i16 %6, -3
  %11 = ptrtoint ptr %reg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i13, align 4
  %add.ptr.i12.i15 = getelementptr i8, ptr %12, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i15, i16 %10) #10, !srcloc !200
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_suspend.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_suspend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_suspend.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.82) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @disable_controller(ptr noundef %1)
  %max_root_hub = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_root_hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %port.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 5, i32 %port.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw i32 %port.012, 1
  %5 = ptrtoint ptr %max_root_hub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_root_hub, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8a66597_resume.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8a66597_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @r8a66597_resume.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.83) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @enable_controller(ptr noundef %1)
  %root_hub = getelementptr i8, ptr %1, i32 -464
  %2 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_hub, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !178, !180, !182, !184, !185, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__UNIQUE_ID_description237, !1, !"__UNIQUE_ID_description237", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_file238, !3, !"__UNIQUE_ID_file238", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_license239, !3, !"__UNIQUE_ID_license239", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias241, !8, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 35, i32 1}
!9 = !{ptr @__initcall__kmod_r8a66597_hcd__258_2522_r8a66597_driver_init6, !10, !"__initcall__kmod_r8a66597_hcd__258_2522_r8a66597_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2522, i32 1}
!11 = !{ptr @__exitcall_r8a66597_driver_exit, !10, !"__exitcall_r8a66597_driver_exit", i1 false, i1 false}
!12 = !{ptr @r8a66597_driver, !13, !"r8a66597_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2513, i32 31}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2415, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @r8a66597_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @r8a66597_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2422, i32 3}
!24 = !{ptr @r8a66597_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @r8a66597_probe._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2433, i32 3}
!28 = !{ptr @r8a66597_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @r8a66597_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2438, i32 3}
!32 = !{ptr @r8a66597_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @r8a66597_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2447, i32 3}
!36 = !{ptr @r8a66597_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @r8a66597_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2457, i32 40}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2460, i32 4}
!42 = !{ptr @r8a66597_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @r8a66597_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @r8a66597_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2469, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @r8a66597_probe.__key.22, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2470, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @r8a66597_probe.__key.24, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2482, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @r8a66597_probe.__key.26, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2483, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2493, i32 3}
!58 = !{ptr @r8a66597_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @r8a66597_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @r8a66597_hc_driver, !61, !"r8a66597_hc_driver", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2305, i32 31}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 881, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @disable_r8a66597_pipe_all.__UNIQUE_ID_ddebug245, !63, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 411, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @free_usb_address.__UNIQUE_ID_ddebug243, !68, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 1219, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @start_transfer._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @start_transfer._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 374, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @alloc_usb_address._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @alloc_usb_address._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 386, i32 3}
!83 = !{ptr @alloc_usb_address.__UNIQUE_ID_ddebug242, !82, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 395, i32 2}
!86 = !{ptr @alloc_usb_address._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @alloc_usb_address._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 253, i32 4}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @get_port_number._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @get_port_number._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 274, i32 3}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @get_r8a66597_usb_speed._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @get_r8a66597_usb_speed._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 443, i32 4}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @r8a66597_reg_wait._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @r8a66597_reg_wait._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 1399, i32 3}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @packet_write._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @packet_write._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 1324, i32 3}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @packet_read._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @packet_read._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 682, i32 3}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @get_empty_pipenum._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @get_empty_pipenum._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 712, i32 3}
!120 = !{ptr @get_r8a66597_type._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @get_r8a66597_type._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 731, i32 3}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @get_bufnum._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @get_bufnum._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 747, i32 3}
!129 = !{ptr @get_buf_bsize._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @get_buf_bsize._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 802, i32 2}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @enable_r8a66597_pipe.__UNIQUE_ID_ddebug244, !132, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 771, i32 4}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @enable_r8a66597_pipe_dma._entry, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @enable_r8a66597_pipe_dma._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2048, i32 2}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @get_r8a66597_device._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @get_r8a66597_device._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2249, i32 2}
!150 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @r8a66597_bus_suspend.__UNIQUE_ID_ddebug252, !149, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2258, i32 3}
!154 = !{ptr @r8a66597_bus_suspend.__UNIQUE_ID_ddebug253, !153, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2280, i32 2}
!157 = !{ptr @r8a66597_bus_resume.__UNIQUE_ID_ddebug254, !156, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2289, i32 3}
!160 = !{ptr @r8a66597_bus_resume.__UNIQUE_ID_ddebug255, !159, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 89, i32 5}
!163 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @r8a66597_clock_enable._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @r8a66597_clock_enable._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @r8a66597_clock_enable._entry.75, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 99, i32 5}
!168 = !{ptr @r8a66597_clock_enable._entry_ptr.76, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @r8a66597_clock_enable._entry.77, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 113, i32 5}
!171 = !{ptr @r8a66597_clock_enable._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/host/r8a66597.h", i32 313, i32 3}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @get_xtal_from_pdata._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @get_xtal_from_pdata._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @hcd_name, !179, !"hcd_name", i1 false, i1 false}
!179 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 39, i32 19}
!180 = !{ptr @r8a66597_dev_pm_ops, !181, !"r8a66597_dev_pm_ops", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2371, i32 32}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2345, i32 2}
!184 = !{ptr @r8a66597_suspend.__UNIQUE_ID_ddebug256, !183, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/host/r8a66597-hcd.c", i32 2363, i32 2}
!187 = !{ptr @r8a66597_resume.__UNIQUE_ID_ddebug257, !186, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 4685250}
!198 = !{i64 2152225825}
!199 = !{i64 2152227242}
!200 = !{i64 4685050}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2149015417, i64 2149015422, i64 2149015435, i64 2149015479, i64 2149015513, i64 2149015534}
!203 = !{i64 2154482493, i64 2154482990, i64 2154482530, i64 2154482586, i64 2154482620, i64 2154482644, i64 2154482685, i64 2154482706, i64 2154482734, i64 2154482768}
!204 = !{i64 2152226818}
!205 = !{i64 4685473}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 4686088}
!208 = !{i64 2152226437}
