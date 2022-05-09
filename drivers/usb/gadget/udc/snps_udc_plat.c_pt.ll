; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/snps_udc_plat.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/snps_udc_plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.udc = type { %struct.usb_gadget, %struct.spinlock, [32 x %struct.udc_ep], ptr, i8, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, %struct.extcon_specific_cable_nb, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.udc_ep = type { %struct.usb_ep, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i24 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.extcon_specific_cable_nb = type { ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udc_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }

@__param_str_use_dma = internal constant [22 x i8] c"snps_udc_plat.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype289 = internal constant [36 x i8] c"snps_udc_plat.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma290 = internal constant [40 x i8] c"snps_udc_plat.parm=use_dma:true for DMA\00", section ".modinfo", align 1
@__param_str_use_dma_ppb = internal constant [26 x i8] c"snps_udc_plat.use_dma_ppb\00", align 1
@use_dma_ppb = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma_ppb = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_dma_ppb } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppbtype291 = internal constant [40 x i8] c"snps_udc_plat.parmtype=use_dma_ppb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb292 = internal constant [70 x i8] c"snps_udc_plat.parm=use_dma_ppb:true for DMA in packet per buffer mode\00", section ".modinfo", align 1
@__param_str_use_dma_ppb_du = internal constant [29 x i8] c"snps_udc_plat.use_dma_ppb_du\00", align 1
@use_dma_ppb_du = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_dma_ppb_du = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb_du, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_dma_ppb_du } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppb_dutype293 = internal constant [43 x i8] c"snps_udc_plat.parmtype=use_dma_ppb_du:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb_du294 = internal constant [96 x i8] c"snps_udc_plat.parm=use_dma_ppb_du:true for DMA in packet per buffer mode with descriptor update\00", section ".modinfo", align 1
@__param_str_use_fullspeed = internal constant [28 x i8] c"snps_udc_plat.use_fullspeed\00", align 1
@use_fullspeed = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_fullspeed = internal constant %struct.kernel_param { ptr @__param_str_use_fullspeed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_fullspeed } }, section "__param", align 4
@__UNIQUE_ID_use_fullspeedtype295 = internal constant [42 x i8] c"snps_udc_plat.parmtype=use_fullspeed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_fullspeed296 = internal constant [57 x i8] c"snps_udc_plat.parm=use_fullspeed:true for fullspeed only\00", section ".modinfo", align 1
@__initcall__kmod_snps_udc_plat__303_327_udc_plat_driver_init6 = internal global ptr @udc_plat_driver_init, section ".initcall6.init", align 4
@udc_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @udc_plat_probe, ptr @udc_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_udc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udc_plat_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udc_plat_driver_exit = internal global ptr @udc_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [55 x i8] c"snps_udc_plat.description=Synopsys UDC platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [30 x i8] c"snps_udc_plat.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [56 x i8] c"snps_udc_plat.file=drivers/usb/gadget/udc/snps_udc_plat\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [29 x i8] c"snps_udc_plat.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps-udc-plat\00", [18 x i8] zeroinitializer }, align 32
@of_udc_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@udc_plat_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @udc_plat_suspend, ptr @udc_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@udc_plat_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't parse and map interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udc_plat_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/udc/snps_udc_plat.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr = internal global ptr @udc_plat_probe._entry, section ".printk_index", align 4
@udc_plat_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to obtain phy from device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.9 = internal global ptr @udc_plat_probe._entry.7, section ".printk_index", align 4
@udc_plat_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UDC phy init failed\00", [44 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.12 = internal global ptr @udc_plat_probe._entry.10, section ".printk_index", align 4
@udc_plat_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UDC phy power on failed\00", [40 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.15 = internal global ptr @udc_plat_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid or missing extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.19 = internal global ptr @udc_plat_probe._entry.17, section ".printk_index", align 4
@udc_plat_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't register extcon device\0A\00", [34 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.22 = internal global ptr @udc_plat_probe._entry.20, section ".printk_index", align 4
@udc_plat_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get cable state\0A\00", [41 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.25 = internal global ptr @udc_plat_probe._entry.23, section ".printk_index", align 4
@udc_plat_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&udc->drd_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@udc_plat_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&udc->drd_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snps-udc\00", [23 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request irq %d failed for UDC\0A\00", [33 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.33 = internal global ptr @udc_plat_probe._entry.31, section ".printk_index", align 4
@udc_plat_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Synopsys UDC platform driver probe successful\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@udc_plat_probe._entry_ptr.37 = internal global ptr @udc_plat_probe._entry.34, section ".printk_index", align 4
@usbd_connect_notify.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps_udc_plat\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbd_connect_notify\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: event: %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@udc_drd_work.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udc_drd_work\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idle -> device\0A\00", [16 x i8] zeroinitializer }, align 32
@udc_drd_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.41, ptr @.str.4, ptr @.str.43, i8 0, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device -> idle\0A\00", [16 x i8] zeroinitializer }, align 32
@start_udc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 26, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Connecting...\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_udc\00", [22 x i8] zeroinitializer }, align 32
@start_udc._entry_ptr = internal global ptr @start_udc._entry, section ".printk_index", align 4
@stop_udc.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop_udc\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep rx queue flushed\0A\00", [43 x i8] zeroinitializer }, align 32
@stop_udc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 68, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device disconnected\0A\00", [43 x i8] zeroinitializer }, align 32
@stop_udc._entry_ptr = internal global ptr @stop_udc._entry, section ".printk_index", align 4
@udc_plat_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 250, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Synopsys UDC platform driver removed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udc_plat_remove\00", [16 x i8] zeroinitializer }, align 32
@udc_plat_remove._entry_ptr = internal global ptr @udc_plat_remove._entry, section ".printk_index", align 4
@udc_plat_suspend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.51, ptr @.str.4, ptr @.str.43, i8 0, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udc_plat_suspend\00", [47 x i8] zeroinitializer }, align 32
@udc_plat_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UDC phy init failure\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udc_plat_resume\00", [16 x i8] zeroinitializer }, align 32
@udc_plat_resume._entry_ptr = internal global ptr @udc_plat_resume._entry, section ".printk_index", align 4
@udc_plat_resume._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UDC phy power on failure\00", [39 x i8] zeroinitializer }, align 32
@udc_plat_resume._entry_ptr.56 = internal global ptr @udc_plat_resume._entry.54, section ".printk_index", align 4
@udc_plat_resume.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.53, ptr @.str.4, ptr @.str.42, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 599, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"use_dma_ppb\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 601, i32 13 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"use_dma_ppb_du\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 603, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"use_fullspeed\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [39 x i8] c"../drivers/usb/gadget/udc/amd5536udc.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 605, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"udc_plat_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 316, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 320, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"of_udc_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 307, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"udc_plat_pm_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 300, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 112, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 137, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 143, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 149, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 155, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 161, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 166, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 175, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 181, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 186, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 197, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 199, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 210, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 92, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 79, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 82, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 26, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 48, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 68, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 250, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 264, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 282, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [42 x i8] c"../drivers/usb/gadget/udc/snps_udc_plat.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 288, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_use_dma290, ptr @__UNIQUE_ID_use_dma_ppb292, ptr @__UNIQUE_ID_use_dma_ppb_du294, ptr @__UNIQUE_ID_use_dma_ppb_dutype293, ptr @__UNIQUE_ID_use_dma_ppbtype291, ptr @__UNIQUE_ID_use_dmatype289, ptr @__UNIQUE_ID_use_fullspeed296, ptr @__UNIQUE_ID_use_fullspeedtype295, ptr @__exitcall_udc_plat_driver_exit, ptr @__initcall__kmod_snps_udc_plat__303_327_udc_plat_driver_init6, ptr @__param_use_dma, ptr @__param_use_dma_ppb, ptr @__param_use_dma_ppb_du, ptr @__param_use_fullspeed, ptr @start_udc._entry, ptr @start_udc._entry_ptr, ptr @stop_udc._entry, ptr @stop_udc._entry_ptr, ptr @udc_plat_driver_exit, ptr @udc_plat_probe._entry, ptr @udc_plat_probe._entry.10, ptr @udc_plat_probe._entry.13, ptr @udc_plat_probe._entry.17, ptr @udc_plat_probe._entry.20, ptr @udc_plat_probe._entry.23, ptr @udc_plat_probe._entry.31, ptr @udc_plat_probe._entry.34, ptr @udc_plat_probe._entry.7, ptr @udc_plat_probe._entry_ptr, ptr @udc_plat_probe._entry_ptr.12, ptr @udc_plat_probe._entry_ptr.15, ptr @udc_plat_probe._entry_ptr.19, ptr @udc_plat_probe._entry_ptr.22, ptr @udc_plat_probe._entry_ptr.25, ptr @udc_plat_probe._entry_ptr.33, ptr @udc_plat_probe._entry_ptr.37, ptr @udc_plat_probe._entry_ptr.9, ptr @udc_plat_remove._entry, ptr @udc_plat_remove._entry_ptr, ptr @udc_plat_resume._entry, ptr @udc_plat_resume._entry.54, ptr @udc_plat_resume._entry_ptr, ptr @udc_plat_resume._entry_ptr.56, ptr @use_dma, ptr @use_dma_ppb, ptr @use_dma_ppb_du, ptr @use_fullspeed, ptr @udc_plat_driver, ptr @.str, ptr @of_udc_match, ptr @udc_plat_pm_ops, ptr @udc_plat_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @udc_plat_probe.__key.26, ptr @.str.27, ptr @udc_plat_probe.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma_ppb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma_ppb_du to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_fullspeed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_udc_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_udc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_udc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_plat_resume._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_plat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @udc_plat_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udc_plat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @udc_plat_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 5144, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @udc_plat_probe.__key, i16 noundef signext 3) #4
  %dev3 = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 8
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4) #4
  %virt_addr = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 16
  %1 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %virt_addr, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %call5, i32 1280
  %csr = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %csr, align 8
  %add.ptr14 = getelementptr i8, ptr %call5, i32 1024
  %regs = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr14, ptr %regs, align 4
  %ep_regs = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %ep_regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %ep_regs, align 8
  %add.ptr18 = getelementptr i8, ptr %call5, i32 2048
  %rxfifo = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %rxfifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr18, ptr %rxfifo, align 4
  %add.ptr20 = getelementptr i8, ptr %call5, i32 3072
  %txfifo = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %txfifo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr20, ptr %txfifo, align 8
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call4, align 4
  %phys_addr = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phys_addr, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call21 = tail call i32 @irq_of_parse_and_map(ptr noundef %12, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call21, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp eq i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev1, ptr noundef %15, i32 noundef 0) #4
  %udc_phy = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 22
  %16 = ptrtoint ptr %udc_phy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %udc_phy, align 4
  %cmp.i244 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %17 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udc_phy, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %call40 = tail call i32 @phy_init(ptr noundef %call29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %20 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udc_phy, align 4
  %call48 = tail call i32 @phy_power_on(ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %22 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udc_phy, align 4
  %call55 = tail call i32 @phy_exit(ptr noundef %23) #4
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call58 = tail call ptr @of_get_property(ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef null) #4
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.if.end115_crit_edge, label %if.then60

if.end56.if.end115_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end115

if.then60:                                        ; preds = %if.end56
  %call61 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev1, i32 noundef 0) #4
  %edev = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 23
  %26 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call61, ptr %edev, align 8
  %cmp.i245 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then64, label %if.end75

if.then64:                                        ; preds = %if.then60
  %cmp67 = icmp eq ptr %call61, inttoptr (i32 -517 to ptr)
  br i1 %cmp67, label %if.then64.cleanup_crit_edge, label %do.end72

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end72:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  %27 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edev, align 8
  %29 = ptrtoint ptr %28 to i32
  br label %exit_phy

if.end75:                                         ; preds = %if.then60
  %nb = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 25
  %30 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usbd_connect_notify, ptr %nb, align 4
  %call78 = tail call i32 @extcon_register_notifier(ptr noundef %call61, i32 noundef 1, ptr noundef %nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end83, label %if.end84

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  br label %exit_phy

if.end84:                                         ; preds = %if.end75
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev, align 8
  %call86 = tail call i32 @extcon_get_state(ptr noundef %32, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %if.else

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #7
  br label %exit_extcon

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool92.not = icmp eq i32 %call86, 0
  br i1 %tobool92.not, label %if.else.do.body97_crit_edge, label %if.then93

if.else.do.body97_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conn_type = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 27
  %33 = ptrtoint ptr %conn_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call86, ptr %conn_type, align 4
  br label %do.body97

do.body97:                                        ; preds = %if.then93, %if.else.do.body97_crit_edge
  %drd_work = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26
  tail call void @__init_work(ptr noundef %drd_work, i32 noundef 0) #4
  %34 = ptrtoint ptr %drd_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %drd_work, align 8
  %lockdep_map = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @udc_plat_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry104 = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26, i32 0, i32 1
  %35 = ptrtoint ptr %entry104 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry104, ptr %entry104, align 4
  %prev.i = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry104, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @udc_drd_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @udc_plat_probe.__key.28) #4
  br label %if.end115

if.end115:                                        ; preds = %do.body97, %if.end56.if.end115_crit_edge
  %38 = load i8, ptr @use_dma, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool116.not = icmp eq i8 %38, 0
  br i1 %tobool116.not, label %if.end115.if.end122_crit_edge, label %if.then117

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then117:                                       ; preds = %if.end115
  %call118 = tail call i32 @init_dma_pools(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 0
  br i1 %cmp119.not, label %if.then117.if.end122_crit_edge, label %if.then117.exit_extcon_crit_edge

if.then117.exit_extcon_crit_edge:                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_extcon

if.then117.if.end122_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.end122:                                        ; preds = %if.then117.if.end122_crit_edge, %if.end115.if.end122_crit_edge
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call.i246 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %40, ptr noundef nonnull @udc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp125 = icmp slt i32 %call.i246, 0
  br i1 %cmp125, label %do.end129, label %if.end131

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %42) #7
  br label %exit_dma

if.end131:                                        ; preds = %if.end122
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %chiprev = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %chiprev to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 10, ptr %chiprev, align 8
  %call132 = tail call i32 @udc_probe(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.end138, label %if.end131.exit_dma_crit_edge

if.end131.exit_dma_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_dma

do.end138:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.35) #7
  br label %cleanup

exit_dma:                                         ; preds = %if.end131.exit_dma_crit_edge, %do.end129
  %ret.0 = phi i32 [ %call.i246, %do.end129 ], [ -19, %if.end131.exit_dma_crit_edge ]
  %45 = load i8, ptr @use_dma, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool139.not = icmp eq i8 %45, 0
  br i1 %tobool139.not, label %exit_dma.exit_extcon_crit_edge, label %if.then140

exit_dma.exit_extcon_crit_edge:                   ; preds = %exit_dma
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_extcon

if.then140:                                       ; preds = %exit_dma
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @free_dma_pools(ptr noundef nonnull %call.i) #4
  br label %exit_extcon

exit_extcon:                                      ; preds = %if.then140, %exit_dma.exit_extcon_crit_edge, %if.then117.exit_extcon_crit_edge, %do.end91
  %ret.1 = phi i32 [ %call86, %do.end91 ], [ %call118, %if.then117.exit_extcon_crit_edge ], [ %ret.0, %if.then140 ], [ %ret.0, %exit_dma.exit_extcon_crit_edge ]
  %edev142 = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 23
  %46 = ptrtoint ptr %edev142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %edev142, align 8
  %tobool143.not = icmp eq ptr %47, null
  br i1 %tobool143.not, label %exit_extcon.exit_phy_crit_edge, label %if.then144

exit_extcon.exit_phy_crit_edge:                   ; preds = %exit_extcon
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_phy

if.then144:                                       ; preds = %exit_extcon
  call void @__sanitizer_cov_trace_pc() #6
  %nb146 = getelementptr inbounds %struct.udc, ptr %call.i, i32 0, i32 25
  %call147 = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %47, i32 noundef 1, ptr noundef %nb146) #4
  br label %exit_phy

exit_phy:                                         ; preds = %if.then144, %exit_extcon.exit_phy_crit_edge, %do.end83, %do.end72
  %ret.2 = phi i32 [ %29, %do.end72 ], [ %call78, %do.end83 ], [ %ret.1, %if.then144 ], [ %ret.1, %exit_extcon.exit_phy_crit_edge ]
  %48 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udc_phy, align 4
  %tobool150.not = icmp eq ptr %49, null
  br i1 %tobool150.not, label %exit_phy.cleanup_crit_edge, label %if.then151

exit_phy.cleanup_crit_edge:                       ; preds = %exit_phy
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then151:                                       ; preds = %exit_phy
  call void @__sanitizer_cov_trace_pc() #6
  %call153 = tail call i32 @phy_power_off(ptr noundef nonnull %49) #4
  %50 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udc_phy, align 4
  %call155 = tail call i32 @phy_exit(ptr noundef %51) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %exit_phy.cleanup_crit_edge, %do.end138, %if.then64.cleanup_crit_edge, %do.end53, %do.end45, %do.end35, %do.end26, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then8 ], [ -22, %do.end26 ], [ %19, %do.end35 ], [ %call40, %do.end45 ], [ %call48, %do.end53 ], [ 0, %do.end138 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then64.cleanup_crit_edge ], [ %ret.2, %if.then151 ], [ %ret.2, %exit_phy.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_plat_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #4
  %driver = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !157

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 236, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @free_dma_pools(ptr noundef %1) #4
  tail call void @udc_remove(ptr noundef %1) #4
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %udc_phy = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc_phy, align 4
  %call23 = tail call i32 @phy_power_off(ptr noundef %6) #4
  %7 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udc_phy, align 4
  %call25 = tail call i32 @phy_exit(ptr noundef %8) #4
  %edev = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edev, align 8
  %nb = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 25
  %call26 = tail call i32 @extcon_unregister_notifier(ptr noundef %10, i32 noundef 1, ptr noundef %nb) #4
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.49) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbd_connect_notify(ptr noundef %self, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbd_connect_notify.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbd_connect_notify, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %self, i32 -28
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbd_connect_notify.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %event) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conn_type = getelementptr i8, ptr %self, i32 112
  %2 = ptrtoint ptr %conn_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %event, ptr %conn_type, align 4
  %drd_work = getelementptr i8, ptr %self, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %drd_work, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udc_drd_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5040
  %conn_type = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_drd_work.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_drd_work, %do.end)) #4
          to label %if.then7 [label %do.end], !srcloc !158

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %work, i32 -40
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_drd_work.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.42) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %driver.i = getelementptr i8, ptr %work, i32 -108
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.if.end27_crit_edge, label %do.end.i

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr i8, ptr %work, i32 -40
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.44) #7
  %call.i = tail call i32 @udc_enable_dev_setup_interrupts(ptr noundef %add.ptr) #4
  tail call void @udc_basic_init(ptr noundef %add.ptr) #4
  %connected.i = getelementptr i8, ptr %work, i32 -100
  %8 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %connected.i, align 4
  br label %if.end27

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_drd_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_drd_work, %do.end26)) #4
          to label %if.then22 [label %do.end26], !srcloc !158

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr i8, ptr %work, i32 -40
  %9 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_drd_work.__UNIQUE_ID_ddebug299, ptr noundef %10, ptr noundef nonnull @.str.43) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body8
  tail call fastcc void @stop_udc(ptr noundef %add.ptr)
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.end.i, %do.end.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_udc(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %regs = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %ctl = getelementptr inbounds %struct.udc_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctl) #4, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  %3 = or i32 %2, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ctl4 = getelementptr inbounds %struct.udc_regs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctl4, i32 %3) #4, !srcloc !162
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %ctl8 = getelementptr inbounds %struct.udc_regs, ptr %7, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctl8) #4, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  %9 = and i32 %8, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %ctl16 = getelementptr inbounds %struct.udc_regs, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctl16, i32 %9) #4, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_udc.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_udc, %do.end24)) #4
          to label %if.then [label %do.end24], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 21
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_udc.__UNIQUE_ID_ddebug297, ptr noundef %13, ptr noundef nonnull @.str.47) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then, %entry
  %call25 = tail call i32 @udc_mask_unused_interrupts(ptr noundef %udc) #4
  %driver = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 3
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %do.end24.if.end31_crit_edge, label %if.then27

do.end24.if.end31_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disconnect, align 4
  tail call void %19(ptr noundef %udc) #4
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %arrayidx = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 0
  tail call void @empty_req_queue(ptr noundef %arrayidx) #4
  %arrayidx.1 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 1
  tail call void @empty_req_queue(ptr noundef %arrayidx.1) #4
  %arrayidx.2 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 2
  tail call void @empty_req_queue(ptr noundef %arrayidx.2) #4
  %arrayidx.3 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 3
  tail call void @empty_req_queue(ptr noundef %arrayidx.3) #4
  %arrayidx.4 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 4
  tail call void @empty_req_queue(ptr noundef %arrayidx.4) #4
  %arrayidx.5 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 5
  tail call void @empty_req_queue(ptr noundef %arrayidx.5) #4
  %arrayidx.6 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 6
  tail call void @empty_req_queue(ptr noundef %arrayidx.6) #4
  %arrayidx.7 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 7
  tail call void @empty_req_queue(ptr noundef %arrayidx.7) #4
  %arrayidx.8 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 8
  tail call void @empty_req_queue(ptr noundef %arrayidx.8) #4
  %arrayidx.9 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 9
  tail call void @empty_req_queue(ptr noundef %arrayidx.9) #4
  %arrayidx.10 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 10
  tail call void @empty_req_queue(ptr noundef %arrayidx.10) #4
  %arrayidx.11 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 11
  tail call void @empty_req_queue(ptr noundef %arrayidx.11) #4
  %arrayidx.12 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 12
  tail call void @empty_req_queue(ptr noundef %arrayidx.12) #4
  %arrayidx.13 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 13
  tail call void @empty_req_queue(ptr noundef %arrayidx.13) #4
  %arrayidx.14 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 14
  tail call void @empty_req_queue(ptr noundef %arrayidx.14) #4
  %arrayidx.15 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 15
  tail call void @empty_req_queue(ptr noundef %arrayidx.15) #4
  %arrayidx.16 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 16
  tail call void @empty_req_queue(ptr noundef %arrayidx.16) #4
  %arrayidx.17 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 17
  tail call void @empty_req_queue(ptr noundef %arrayidx.17) #4
  %arrayidx.18 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 18
  tail call void @empty_req_queue(ptr noundef %arrayidx.18) #4
  %arrayidx.19 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 19
  tail call void @empty_req_queue(ptr noundef %arrayidx.19) #4
  %arrayidx.20 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 20
  tail call void @empty_req_queue(ptr noundef %arrayidx.20) #4
  %arrayidx.21 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 21
  tail call void @empty_req_queue(ptr noundef %arrayidx.21) #4
  %arrayidx.22 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 22
  tail call void @empty_req_queue(ptr noundef %arrayidx.22) #4
  %arrayidx.23 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 23
  tail call void @empty_req_queue(ptr noundef %arrayidx.23) #4
  %arrayidx.24 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 24
  tail call void @empty_req_queue(ptr noundef %arrayidx.24) #4
  %arrayidx.25 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 25
  tail call void @empty_req_queue(ptr noundef %arrayidx.25) #4
  %arrayidx.26 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 26
  tail call void @empty_req_queue(ptr noundef %arrayidx.26) #4
  %arrayidx.27 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 27
  tail call void @empty_req_queue(ptr noundef %arrayidx.27) #4
  %arrayidx.28 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 28
  tail call void @empty_req_queue(ptr noundef %arrayidx.28) #4
  %arrayidx.29 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 29
  tail call void @empty_req_queue(ptr noundef %arrayidx.29) #4
  %arrayidx.30 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 30
  tail call void @empty_req_queue(ptr noundef %arrayidx.30) #4
  %arrayidx.31 = getelementptr %struct.udc, ptr %udc, i32 0, i32 2, i32 31
  tail call void @empty_req_queue(ptr noundef %arrayidx.31) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.end24.if.end31_crit_edge
  %connected = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 5
  %20 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %connected, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %dev36 = getelementptr inbounds %struct.udc, ptr %udc, i32 0, i32 21
  %21 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.48) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_enable_dev_setup_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udc_basic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_mask_unused_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @empty_req_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_plat_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @stop_udc(ptr noundef %1)
  %edev = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 8
  %call1 = tail call i32 @extcon_get_state(ptr noundef %3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_plat_suspend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_plat_suspend, %do.end)) #4
          to label %if.then6 [label %do.end], !srcloc !158

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_plat_suspend.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.43) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call fastcc void @stop_udc(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %udc_phy = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udc_phy, align 4
  %call9 = tail call i32 @phy_power_off(ptr noundef %7) #4
  %8 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udc_phy, align 4
  %call11 = tail call i32 @phy_exit(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_plat_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %udc_phy = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_phy, align 4
  %call1 = tail call i32 @phy_init(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev2 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udc_phy, align 4
  %call4 = tail call i32 @phy_power_on(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.55) #7
  %10 = ptrtoint ptr %udc_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udc_phy, align 4
  %call12 = tail call i32 @phy_exit(ptr noundef %11) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %edev = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edev, align 8
  %call14 = tail call i32 @extcon_get_state(ptr noundef %13, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp sgt i32 %call14, 0
  br i1 %cmp, label %do.body16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body16:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_plat_resume.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_plat_resume, %do.end26)) #4
          to label %if.then22 [label %do.end26], !srcloc !158

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_plat_resume.__UNIQUE_ID_ddebug302, ptr noundef %15, ptr noundef nonnull @.str.42) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body16
  %driver.i = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end26.cleanup_crit_edge, label %do.end.i

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.44) #7
  %call.i = tail call i32 @udc_enable_dev_setup_interrupts(ptr noundef %1) #4
  tail call void @udc_basic_init(ptr noundef %1) #4
  %connected.i = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %connected.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.end26.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.end26.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !133, !135, !136, !138, !139, !140, !141, !143, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__param_use_dma, !1, !"__param_use_dma", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 608, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_dmatype289, !1, !"__UNIQUE_ID_use_dmatype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_dma290, !4, !"__UNIQUE_ID_use_dma290", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 609, i32 1}
!5 = !{ptr @__param_use_dma_ppb, !6, !"__param_use_dma_ppb", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_use_dma_ppbtype291, !6, !"__UNIQUE_ID_use_dma_ppbtype291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_use_dma_ppb292, !9, !"__UNIQUE_ID_use_dma_ppb292", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 611, i32 1}
!10 = !{ptr @__param_use_dma_ppb_du, !11, !"__param_use_dma_ppb_du", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 612, i32 1}
!12 = !{ptr @__UNIQUE_ID_use_dma_ppb_dutype293, !11, !"__UNIQUE_ID_use_dma_ppb_dutype293", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_use_dma_ppb_du294, !14, !"__UNIQUE_ID_use_dma_ppb_du294", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 613, i32 1}
!15 = !{ptr @__param_use_fullspeed, !16, !"__param_use_fullspeed", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 615, i32 1}
!17 = !{ptr @__UNIQUE_ID_use_fullspeedtype295, !16, !"__UNIQUE_ID_use_fullspeedtype295", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_use_fullspeed296, !19, !"__UNIQUE_ID_use_fullspeed296", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 616, i32 1}
!20 = !{ptr @__initcall__kmod_snps_udc_plat__303_327_udc_plat_driver_init6, !21, !"__initcall__kmod_snps_udc_plat__303_327_udc_plat_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 327, i32 1}
!22 = !{ptr @__exitcall_udc_plat_driver_exit, !21, !"__exitcall_udc_plat_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description304, !24, !"__UNIQUE_ID_description304", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 329, i32 1}
!25 = !{ptr @__UNIQUE_ID_author305, !26, !"__UNIQUE_ID_author305", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 330, i32 1}
!27 = !{ptr @__UNIQUE_ID_file306, !28, !"__UNIQUE_ID_file306", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 331, i32 1}
!29 = !{ptr @__UNIQUE_ID_license307, !28, !"__UNIQUE_ID_license307", i1 false, i1 false}
!30 = !{ptr @use_dma_ppb_du, !31, !"use_dma_ppb_du", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 603, i32 13}
!32 = !{ptr @use_fullspeed, !33, !"use_fullspeed", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 605, i32 13}
!34 = !{ptr @__param_str_use_dma, !1, !"__param_str_use_dma", i1 false, i1 false}
!35 = !{ptr @use_dma, !36, !"use_dma", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 599, i32 13}
!37 = !{ptr @__param_str_use_dma_ppb, !6, !"__param_str_use_dma_ppb", i1 false, i1 false}
!38 = !{ptr @use_dma_ppb, !39, !"use_dma_ppb", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 601, i32 13}
!40 = !{ptr @__param_str_use_dma_ppb_du, !11, !"__param_str_use_dma_ppb_du", i1 false, i1 false}
!41 = !{ptr @__param_str_use_fullspeed, !16, !"__param_str_use_fullspeed", i1 false, i1 false}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 320, i32 11}
!44 = !{ptr @udc_plat_driver, !45, !"udc_plat_driver", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 316, i32 31}
!46 = !{ptr @udc_plat_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 112, i32 2}
!48 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 137, i32 3}
!51 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @udc_plat_probe._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @udc_plat_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 143, i32 3}
!59 = !{ptr @udc_plat_probe._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @udc_plat_probe._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 149, i32 3}
!63 = !{ptr @udc_plat_probe._entry.10, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @udc_plat_probe._entry_ptr.12, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 155, i32 3}
!67 = !{ptr @udc_plat_probe._entry.13, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @udc_plat_probe._entry_ptr.15, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 161, i32 36}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 166, i32 4}
!73 = !{ptr @udc_plat_probe._entry.17, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @udc_plat_probe._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 175, i32 4}
!77 = !{ptr @udc_plat_probe._entry.20, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @udc_plat_probe._entry_ptr.22, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 181, i32 4}
!81 = !{ptr @udc_plat_probe._entry.23, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @udc_plat_probe._entry_ptr.25, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @udc_plat_probe.__key.26, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 186, i32 3}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @udc_plat_probe.__key.28, !84, !"__key", i1 false, i1 false}
!87 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 197, i32 11}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 199, i32 3}
!92 = !{ptr @udc_plat_probe._entry.31, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @udc_plat_probe._entry_ptr.33, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 210, i32 2}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @udc_plat_probe._entry.34, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @udc_plat_probe._entry_ptr.37, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 92, i32 2}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @usbd_connect_notify.__UNIQUE_ID_ddebug300, !100, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 79, i32 3}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @udc_drd_work.__UNIQUE_ID_ddebug298, !105, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 82, i32 3}
!110 = !{ptr @udc_drd_work.__UNIQUE_ID_ddebug299, !109, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 26, i32 3}
!113 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @start_udc._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @start_udc._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 48, i32 2}
!118 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @stop_udc.__UNIQUE_ID_ddebug297, !117, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 68, i32 2}
!122 = !{ptr @stop_udc._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @stop_udc._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 250, i32 2}
!126 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @udc_plat_remove._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @udc_plat_remove._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @of_udc_match, !130, !"of_udc_match", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 307, i32 34}
!131 = !{ptr @udc_plat_pm_ops, !132, !"udc_plat_pm_ops", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 300, i32 32}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 264, i32 3}
!135 = !{ptr @udc_plat_suspend.__UNIQUE_ID_ddebug301, !134, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 282, i32 3}
!138 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @udc_plat_resume._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @udc_plat_resume._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 288, i32 3}
!143 = !{ptr @udc_plat_resume._entry.54, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @udc_plat_resume._entry_ptr.56, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @udc_plat_resume.__UNIQUE_ID_ddebug302, !146, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/snps_udc_plat.c", i32 294, i32 3}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i8 0, i8 2}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2148293202, i64 2148293207, i64 2148293220, i64 2148293264, i64 2148293298, i64 2148293319}
!159 = !{i64 4906344}
!160 = !{i64 2155326468}
!161 = !{i64 2155326707}
!162 = !{i64 4905926}
!163 = !{i64 2155327358}
!164 = !{i64 2155327597}
