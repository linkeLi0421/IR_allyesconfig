; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/pch_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/pch_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pch_udc_dev = type { %struct.usb_gadget, ptr, ptr, [32 x %struct.pch_udc_ep], %struct.spinlock, i8, ptr, ptr, i32, %struct.usb_ctrlrequest, ptr, i16, %struct.pch_udc_cfg_data, %struct.pch_vbus_gpio_data }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.pch_udc_ep = type { %struct.usb_ep, i32, i32, ptr, ptr, ptr, i32, %struct.list_head, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.pch_udc_cfg_data = type { i16, i16, i16 }
%struct.pch_vbus_gpio_data = type { ptr, i32, %struct.work_struct, %struct.work_struct }
%struct.pch_udc_stp_dma_desc = type { i32, i32, %struct.usb_ctrlrequest }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.pch_udc_request = type { %struct.usb_request, i32, ptr, ptr, %struct.list_head, i8, i32 }
%struct.pch_udc_data_dma_desc = type { i32, i32, i32, i32 }

@__param_str_speed_fs = internal constant [17 x i8] c"pch_udc.speed_fs\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@speed_fs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_speed_fs = internal constant %struct.kernel_param { ptr @__param_str_speed_fs, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @speed_fs } }, section "__param", align 4
@__UNIQUE_ID_speed_fstype236 = internal constant [31 x i8] c"pch_udc.parmtype=speed_fs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_speed_fs237 = internal constant [52 x i8] c"pch_udc.parm=speed_fs:true for Full speed operation\00", section ".modinfo", align 1
@__initcall__kmod_pch_udc__249_3160_pch_udc_driver_init6 = internal global ptr @pch_udc_driver_init, section ".initcall6.init", align 4
@pch_udc_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pch_udc_pcidev_id, ptr @pch_udc_probe, ptr @pch_udc_remove, ptr null, ptr null, ptr @pch_udc_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_udc_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_udc_driver_exit = internal global ptr @pch_udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [54 x i8] c"pch_udc.description=Intel EG20T USB Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [70 x i8] c"pch_udc.author=LAPIS Semiconductor, <tomoya-linux@dsn.lapis-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [44 x i8] c"pch_udc.file=drivers/usb/gadget/udc/pch_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [20 x i8] c"pch_udc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_udc\00", [24 x i8] zeroinitializer }, align 32
@pch_udc_pcidev_id = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2361, i32 -1, i32 -1, i32 787454, i32 -1, i32 ptrtoint (ptr @pch_udc_quark_platform_init to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34824, i32 7368, i32 1, i32 787454, i32 -1, i32 ptrtoint (ptr @pch_udc_minnow_platform_init to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34824, i32 -1, i32 -1, i32 787454, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4315, i32 32797, i32 -1, i32 -1, i32 787454, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4315, i32 34824, i32 -1, i32 -1, i32 787454, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_udc_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_udc_suspend, ptr @pch_udc_resume, ptr @pch_udc_suspend, ptr @pch_udc_resume, ptr @pch_udc_suspend, ptr @pch_udc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0000:02:02.4\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sch_gpio.33158\00", [17 x i8] zeroinitializer }, align 32
@pch_udc_minnow_vbus_gpio_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.1, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.2, i16 12, ptr null, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@pch_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 3085, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: request_irq(%d) fail\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_udc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/udc/pch_udc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_udc_probe._entry_ptr = internal global ptr @pch_udc_probe._entry, section ".printk_index", align 4
@pch_udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@pch_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @pch_udc_pcd_get_frame, ptr @pch_udc_pcd_wakeup, ptr @pch_udc_pcd_selfpowered, ptr @pch_udc_pcd_vbus_session, ptr @pch_udc_pcd_vbus_draw, ptr @pch_udc_pcd_pullup, ptr null, ptr null, ptr @pch_udc_start, ptr @pch_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_udc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013pch_udc: %s: Invalid address\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_udc_init\00", [19 x i8] zeroinitializer }, align 32
@pch_udc_init._entry_ptr = internal global ptr @pch_udc_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ep0_string = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep0in\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep0out\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep1in\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep1out\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep2in\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep2out\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep3in\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep3out\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep4in\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep4out\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep5in\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep5out\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep6in\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep6out\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep7in\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep7out\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep8in\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep8out\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep9in\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep9out\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep10in\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep10out\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep11in\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep11out\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep12in\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep12out\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep13in\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep13out\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep14in\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep14out\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep15in\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep15out\00", [24 x i8] zeroinitializer }, align 32
@__const.pch_udc_pcd_reinit.ep_string = private unnamed_addr constant [32 x ptr] [ptr @ep0_string, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 4
@pch_udc_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @pch_udc_pcd_ep_enable, ptr @pch_udc_pcd_ep_disable, ptr null, ptr @pch_udc_alloc_request, ptr @pch_udc_free_request, ptr @pch_udc_pcd_queue, ptr @pch_udc_pcd_dequeue, ptr @pch_udc_pcd_set_halt, ptr @pch_udc_pcd_set_wedge, ptr null, ptr @pch_udc_pcd_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@pch_udc_csr_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 464, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: wait error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_udc_csr_busy\00", [47 x i8] zeroinitializer }, align 32
@pch_udc_csr_busy._entry_ptr = internal global ptr @pch_udc_csr_busy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_udc_free_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 1764, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s req=0x%p queue not empty\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_udc_free_request\00", [43 x i8] zeroinitializer }, align 32
@pch_udc_free_request._entry_ptr = internal global ptr @pch_udc_free_request._entry, section ".printk_index", align 4
@prepare_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pch_udc: %s: could not create DMA chain:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prepare_dma\00", [20 x i8] zeroinitializer }, align 32
@prepare_dma._entry_ptr = internal global ptr @prepare_dma._entry, section ".printk_index", align 4
@pch_udc_wait_ep_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.49, ptr @.str.6, i32 1037, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_udc_wait_ep_stall\00", [42 x i8] zeroinitializer }, align 32
@pch_udc_wait_ep_stall._entry_ptr = internal global ptr @pch_udc_wait_ep_stall._entry, section ".printk_index", align 4
@pch_udc_ep_clear_nak._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 941, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: RxFIFO not Empty\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_udc_ep_clear_nak\00", [43 x i8] zeroinitializer }, align 32
@pch_udc_ep_clear_nak._entry_ptr = internal global ptr @pch_udc_ep_clear_nak._entry, section ".printk_index", align 4
@pch_udc_ep_clear_nak._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.6, i32 950, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Clear NAK not set for ep%d%s\0A\00", [62 x i8] zeroinitializer }, align 32
@pch_udc_ep_clear_nak._entry_ptr.54 = internal global ptr @pch_udc_ep_clear_nak._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@udc_stall_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"udc_stall_spinlock\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pch_vbus\00", [23 x i8] zeroinitializer }, align 32
@pch_vbus_gpio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&dev->vbus_gpio.irq_work_fall)\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus_detect\00", [20 x i8] zeroinitializer }, align 32
@pch_vbus_gpio_init.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&dev->vbus_gpio.irq_work_rise)\00", [47 x i8] zeroinitializer }, align 32
@pch_vbus_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pch_udc: %s: can't request irq %d, err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_vbus_gpio_init\00", [45 x i8] zeroinitializer }, align 32
@pch_vbus_gpio_init._entry_ptr = internal global ptr @pch_vbus_gpio_init._entry, section ".printk_index", align 4
@pch_vbus_gpio_work_fall.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.6, ptr @.str.66, i8 1, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pch_vbus_gpio_work_fall\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBUS fell\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pch_vbus_gpio_work_rise.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.6, ptr @.str.68, i8 1, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pch_vbus_gpio_work_rise\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBUS rose\00", [22 x i8] zeroinitializer }, align 32
@pch_udc_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.6, ptr @.str.70, i8 2, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pch_udc_isr\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UDC: Hung up\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.72, i8 2, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_udc_dev_isr\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"USB_RESET\0A\00", [21 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.73, i8 2, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB_ENUM\0A\00", [22 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.74, i8 2, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB_SUSPEND\0A\00", [19 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.75, i8 2, i8 -99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SOF\0A\00", [27 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.76, i8 2, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ES\0A\00", [28 x i8] zeroinitializer }, align 32
@pch_udc_dev_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.6, ptr @.str.77, i8 2, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RWKP\0A\00", [26 x i8] zeroinitializer }, align 32
@pch_udc_init_setup_buff.pky_marker = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pch_udc_complete_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.6, i32 2068, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid RXTX status (0x%08x) epstatus=0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_udc_complete_transfer\00", [38 x i8] zeroinitializer }, align 32
@pch_udc_complete_transfer._entry_ptr = internal global ptr @pch_udc_complete_transfer._entry, section ".printk_index", align 4
@pch_udc_complete_receiver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.6, i32 2117, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid RXTX status=0x%08x epstatus=0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_udc_complete_receiver\00", [38 x i8] zeroinitializer }, align 32
@pch_udc_complete_receiver._entry_ptr = internal global ptr @pch_udc_complete_receiver._entry, section ".printk_index", align 4
@pch_udc_complete_receiver._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.6, i32 2126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not complete RX descriptor\00", [37 x i8] zeroinitializer }, align 32
@pch_udc_complete_receiver._entry_ptr.84 = internal global ptr @pch_udc_complete_receiver._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data_requests\00", [18 x i8] zeroinitializer }, align 32
@init_dma_pools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 2860, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: can't get request data pool\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_dma_pools\00", [17 x i8] zeroinitializer }, align 32
@init_dma_pools._entry_ptr = internal global ptr @init_dma_pools._entry, section ".printk_index", align 4
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup requests\00", [17 x i8] zeroinitializer }, align 32
@init_dma_pools._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.6, i32 2869, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: can't get setup request pool\0A\00", [62 x i8] zeroinitializer }, align 32
@init_dma_pools._entry_ptr.91 = internal global ptr @init_dma_pools._entry.89, section ".printk_index", align 4
@init_dma_pools._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.87, ptr @.str.6, i32 2877, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: can't allocate setup dma descriptor\0A\00", [55 x i8] zeroinitializer }, align 32
@init_dma_pools._entry_ptr.94 = internal global ptr @init_dma_pools._entry.92, section ".printk_index", align 4
@init_dma_pools._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.87, ptr @.str.6, i32 2887, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: can't allocate data dma descriptor\0A\00", [56 x i8] zeroinitializer }, align 32
@init_dma_pools._entry_ptr.97 = internal global ptr @init_dma_pools._entry.95, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pch_udc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.6, i32 2993, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: gadget driver still bound!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_udc_remove\00", [17 x i8] zeroinitializer }, align 32
@pch_udc_remove._entry_ptr = internal global ptr @pch_udc_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"speed_fs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 375, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"pch_udc_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3149, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3160, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"pch_udc_pcidev_id\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3115, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"pch_udc_pm\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3036, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2953, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2955, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"pch_udc_minnow_vbus_gpio_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2952, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3084, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 3093, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"pch_udc_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1236, i32 36 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1047, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"ep0_string\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 373, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2771, i32 15 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2771, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2771, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2771, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2771, i32 53 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2772, i32 50 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 31 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 41 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2773, i32 50 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 22 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 43 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2774, i32 53 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 45 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2775, i32 55 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2776, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2776, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"pch_udc_ep_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1980, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 464, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1763, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1568, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1037, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 940, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 949, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"udc_stall_spinlock\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 374, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1382, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1385, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1391, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1394, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1397, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1292, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1330, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2705, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2639, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2644, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2675, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2679, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2682, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2685, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [11 x i8] c"pky_marker\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1999, i32 13 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2065, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2114, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2126, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2856, i32 39 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2859, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2865, i32 38 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2868, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2876, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2886, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 326, i32 6 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.460 = private constant [36 x i8] c"../drivers/usb/gadget/udc/pch_udc.c\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2992, i32 3 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_speed_fs237, ptr @__UNIQUE_ID_speed_fstype236, ptr @__exitcall_pch_udc_driver_exit, ptr @__initcall__kmod_pch_udc__249_3160_pch_udc_driver_init6, ptr @__param_speed_fs, ptr @init_dma_pools._entry, ptr @init_dma_pools._entry.89, ptr @init_dma_pools._entry.92, ptr @init_dma_pools._entry.95, ptr @init_dma_pools._entry_ptr, ptr @init_dma_pools._entry_ptr.91, ptr @init_dma_pools._entry_ptr.94, ptr @init_dma_pools._entry_ptr.97, ptr @pch_udc_complete_receiver._entry, ptr @pch_udc_complete_receiver._entry.82, ptr @pch_udc_complete_receiver._entry_ptr, ptr @pch_udc_complete_receiver._entry_ptr.84, ptr @pch_udc_complete_transfer._entry, ptr @pch_udc_complete_transfer._entry_ptr, ptr @pch_udc_csr_busy._entry, ptr @pch_udc_csr_busy._entry_ptr, ptr @pch_udc_driver_exit, ptr @pch_udc_ep_clear_nak._entry, ptr @pch_udc_ep_clear_nak._entry.52, ptr @pch_udc_ep_clear_nak._entry_ptr, ptr @pch_udc_ep_clear_nak._entry_ptr.54, ptr @pch_udc_free_request._entry, ptr @pch_udc_free_request._entry_ptr, ptr @pch_udc_init._entry, ptr @pch_udc_init._entry_ptr, ptr @pch_udc_probe._entry, ptr @pch_udc_probe._entry_ptr, ptr @pch_udc_remove._entry, ptr @pch_udc_remove._entry_ptr, ptr @pch_udc_wait_ep_stall._entry, ptr @pch_udc_wait_ep_stall._entry_ptr, ptr @pch_vbus_gpio_init._entry, ptr @pch_vbus_gpio_init._entry_ptr, ptr @prepare_dma._entry, ptr @prepare_dma._entry_ptr, ptr @speed_fs, ptr @pch_udc_driver, ptr @.str, ptr @pch_udc_pcidev_id, ptr @pch_udc_pm, ptr @.str.1, ptr @.str.2, ptr @pch_udc_minnow_vbus_gpio_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pch_udc_probe.__key, ptr @.str.9, ptr @pch_udc_ops, ptr @.str.10, ptr @.str.11, ptr @ep0_string, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pch_udc_ep_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @udc_stall_spinlock, ptr @.str.57, ptr @.str.58, ptr @pch_vbus_gpio_init.__key, ptr @.str.59, ptr @.str.60, ptr @pch_vbus_gpio_init.__key.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @pch_udc_init_setup_buff.pky_marker, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_fs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_pcidev_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_minnow_vbus_gpio_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_string to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_csr_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_free_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_wait_ep_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_ep_clear_nak._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_ep_clear_nak._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_stall_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_vbus_gpio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_vbus_gpio_init.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_vbus_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_init_setup_buff.pky_marker to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_complete_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_complete_receiver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_complete_receiver._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dma_pools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dma_pools._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dma_pools._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dma_pools._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_udc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_udc_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_udc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_udc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 3920, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bar = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %bar to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %bar, align 8
  %pdev7 = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %if.then9

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %call11 = tail call i32 %2(ptr noundef %dev2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %6 = ptrtoint ptr %bar to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bar, align 8
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.pci_name.exit_crit_edge

if.end15.pci_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end15.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end15.pci_name.exit_crit_edge ]
  %call18 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %shl, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %pci_name.exit
  %call22 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #10
  %12 = ptrtoint ptr %bar to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bar, align 8
  %idxprom = zext i16 %13 to i32
  %arrayidx = getelementptr ptr, ptr %call22, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %base_addr = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %base_addr, align 4
  tail call fastcc void @pch_udc_init(ptr noundef nonnull %call.i) #10
  %speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %speed.i.i, align 8
  %ep_list.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ep_list.i.i, ptr %ep_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ep_list.i.i, ptr %prev.i.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3
  %20 = call ptr @memset(ptr %ep.i.i, i32 0, i32 2688)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end21
  %i.0140.i.i = phi i32 [ 0, %if.end21 ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i
  %dev4.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i, i32 5
  %21 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %dev4.i.i, align 4
  %halted.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i, i32 8
  %22 = ptrtoint ptr %halted.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %halted.i.i, align 4
  %23 = trunc i32 %i.0140.i.i to i8
  %24 = shl i8 %23, 2
  %bf.set.i.i = and i8 %bf.load.i.i, 1
  %bf.set7.i.i = or i8 %bf.set.i.i, %24
  %bf.set12.i.i = xor i8 %bf.set7.i.i, 6
  store i8 %bf.set12.i.i, ptr %halted.i.i, align 4
  %arrayidx14.i.i = getelementptr [32 x ptr], ptr @__const.pch_udc_pcd_reinit.ep_string, i32 0, i32 %i.0140.i.i
  %25 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx14.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %name.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pch_udc_ep_ops, ptr %ops.i.i, align 4
  %29 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.not.i.i = icmp eq i8 %29, 0
  %bf.lshr22.i.i = lshr i8 %24, 3
  %narrow.i.i = add nuw nsw i8 %bf.lshr22.i.i, 16
  %narrow.sink.i.i = select i1 %tobool.not.not.i.i, i8 %bf.lshr22.i.i, i8 %narrow.i.i
  %.sink.i.i = select i1 %tobool.not.not.i.i, i8 8, i8 4
  %add.i.i = zext i8 %narrow.sink.i.i to i32
  %mul32.i.i = shl nuw nsw i32 %add.i.i, 5
  %offset_addr33.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i, i32 6
  %30 = ptrtoint ptr %offset_addr33.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul32.i.i, ptr %offset_addr33.i.i, align 4
  %caps35.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %caps35.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load36.i.i = load i8, ptr %caps35.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0140.i.i)
  %switch.i.i = icmp ult i32 %i.0140.i.i, 2
  %.sink142.i.i = select i1 %switch.i.i, i8 -128, i8 112
  %bf.set38.i.i = or i8 %.sink.i.i, %.sink142.i.i
  %bf.set62.i.i = or i8 %bf.set38.i.i, %bf.load36.i.i
  %32 = ptrtoint ptr %caps35.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.set62.i.i, ptr %caps35.i.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i.i, i32 noundef 512) #10
  %ep_list66.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list66.i.i, ptr noundef %34, ptr noundef %ep_list.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add_tail.exit.i.i_crit_edge

for.body.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ep_list66.i.i, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %ep_list66.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ep_list.i.i, ptr %ep_list66.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %ep_list66.i.i, ptr %34, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add_tail.exit.i.i_crit_edge
  %queue.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i, i32 7
  %39 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i129.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 %i.0140.i.i, i32 7, i32 1
  %40 = ptrtoint ptr %prev.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %queue.i.i, ptr %prev.i129.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0140.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %list_add_tail.exit.i.i
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep.i.i, i32 noundef 64) #10
  %arrayidx73.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx73.i.i, i32 noundef 64) #10
  %ep_list78.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %call.i.i130.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list78.i.i) #10
  br i1 %call.i.i130.i.i, label %if.end.i.i131.i.i, label %for.end.i.i.list_del_init.exit.i.i_crit_edge

for.end.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i131.i.i:                                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %ep_list78.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep_list78.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i131.i.i, %for.end.i.i.list_del_init.exit.i.i_crit_edge
  %47 = ptrtoint ptr %ep_list78.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %ep_list78.i.i, ptr %ep_list78.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ep_list78.i.i, ptr %prev.i3.i.i.i, align 4
  %ep_list82.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 3
  %call.i.i132.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list82.i.i) #10
  br i1 %call.i.i132.i.i, label %if.end.i.i135.i.i, label %list_del_init.exit.i.i.pch_udc_pcd_reinit.exit.i_crit_edge

list_del_init.exit.i.i.pch_udc_pcd_reinit.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_pcd_reinit.exit.i

if.end.i.i135.i.i:                                ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i133.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i133.i.i, align 4
  %51 = ptrtoint ptr %ep_list82.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep_list82.i.i, align 4
  %prev1.i.i.i134.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i134.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %pch_udc_pcd_reinit.exit.i

pch_udc_pcd_reinit.exit.i:                        ; preds = %if.end.i.i135.i.i, %list_del_init.exit.i.i.pch_udc_pcd_reinit.exit.i_crit_edge
  %55 = ptrtoint ptr %ep_list82.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %ep_list82.i.i, ptr %ep_list82.i.i, align 4
  %prev.i3.i136.i.i = getelementptr %struct.pch_udc_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i3.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ep_list82.i.i, ptr %prev.i3.i136.i.i, align 4
  %ep0.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 3
  %57 = ptrtoint ptr %ep0.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ep.i.i, ptr %ep0.i.i, align 4
  %58 = ptrtoint ptr %ep_list78.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %ep_list78.i.i, ptr %ep_list78.i.i, align 4
  %59 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ep_list78.i.i, ptr %prev.i3.i.i.i, align 4
  %60 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev7, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %vbus_gpio.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13
  %62 = ptrtoint ptr %vbus_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %vbus_gpio.i.i, align 8
  %intr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 1
  %63 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %intr.i.i, align 4
  %call.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1.i.i, ptr noundef null, i32 noundef 1) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %pch_udc_pcd_init.exit, label %if.end.i.i98

if.end.i.i98:                                     ; preds = %pch_udc_pcd_reinit.exit.i
  %call5.i.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call.i.i, ptr noundef nonnull @.str.58) #10
  %64 = ptrtoint ptr %vbus_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i, ptr %vbus_gpio.i.i, align 8
  %irq_work_fall.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 2
  tail call void @__init_work(ptr noundef %irq_work_fall.i.i, i32 noundef 0) #10
  %65 = ptrtoint ptr %irq_work_fall.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %irq_work_fall.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @pch_vbus_gpio_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 2, i32 1
  %66 = ptrtoint ptr %entry15.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry15.i.i, ptr %entry15.i.i, align 4
  %prev.i.i5.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 2, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry15.i.i, ptr %prev.i.i5.i, align 4
  %func.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 2, i32 2
  %68 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @pch_vbus_gpio_work_fall, ptr %func.i.i, align 4
  %call18.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp.i.i = icmp sgt i32 %call18.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %if.end.i.i98.if.end27_crit_edge

if.end.i.i98.if.end27_crit_edge:                  ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19.i.i:                                    ; preds = %if.end.i.i98
  %call20.i.i = tail call i32 @irq_set_irq_type(i32 noundef %call18.i.i, i32 noundef 3) #10
  %call.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %call18.i.i, ptr noundef nonnull @pch_vbus_gpio_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i99 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i99, label %if.then22.i.i, label %do.end45.i.i

if.then22.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call18.i.i, ptr %intr.i.i, align 4
  %irq_work_rise.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 3
  tail call void @__init_work(ptr noundef %irq_work_rise.i.i, i32 noundef 0) #10
  %70 = ptrtoint ptr %irq_work_rise.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -64, ptr %irq_work_rise.i.i, align 4
  %lockdep_map34.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @pch_vbus_gpio_init.__key.61, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry37.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 3, i32 1
  %71 = ptrtoint ptr %entry37.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entry37.i.i, ptr %entry37.i.i, align 4
  %prev.i76.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 3, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entry37.i.i, ptr %prev.i76.i.i, align 4
  %func40.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 13, i32 3, i32 2
  %73 = ptrtoint ptr %func40.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @pch_vbus_gpio_work_rise, ptr %func40.i.i, align 4
  br label %if.end27

do.end45.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %call18.i.i, i32 noundef %call.i.i.i) #13
  br label %if.end27

pch_udc_pcd_init.exit:                            ; preds = %pch_udc_pcd_reinit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %call.i.i to i32
  %75 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %76, i32 1040
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %78 = or i32 %77, 2130706432
  %79 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base_addr, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %80, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %78) #10, !srcloc !252
  %81 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base_addr, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %82, i32 1048
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %84 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base_addr, align 4
  %add.ptr.i4.i5.i.i = getelementptr i8, ptr %85, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i5.i.i, i32 -1) #10, !srcloc !252
  %86 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base_addr, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %87, i32 1028
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %89 = or i32 %88, 262144
  %90 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base_addr, align 4
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %91, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %89) #10, !srcloc !252
  br label %cleanup

if.end27:                                         ; preds = %do.end45.i.i, %if.then22.i.i, %if.end.i.i98.if.end27_crit_edge
  %call28 = tail call i32 @pci_enable_msi(ptr noundef %pdev) #10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  %call.i100 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %93, ptr noundef nonnull @pch_udc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool31.not = icmp eq i32 %call.i100, 0
  br i1 %tobool31.not, label %if.end35, label %do.end

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %95) #13
  br label %finished

if.end35:                                         ; preds = %if.end27
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call36 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #10
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @pch_udc_probe.__key, i16 noundef signext 3) #10
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %96 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @pch_udc_ops, ptr %ops, align 8
  %call41 = tail call fastcc i32 @init_dma_pools(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end35.finished_crit_edge

if.end35.finished_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %finished

if.end44:                                         ; preds = %if.end35
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %97 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str, ptr %name, align 4
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 6
  %98 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %max_speed, align 4
  tail call fastcc void @pch_udc_set_disconnect(ptr noundef nonnull %call.i)
  %call49 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev2, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end44.cleanup_crit_edge, label %if.end44.finished_crit_edge

if.end44.finished_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %finished

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

finished:                                         ; preds = %if.end44.finished_crit_edge, %if.end35.finished_crit_edge, %do.end
  %retval1.0 = phi i32 [ %call.i100, %do.end ], [ %call41, %if.end35.finished_crit_edge ], [ %call49, %if.end44.finished_crit_edge ]
  tail call void @pch_udc_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %finished, %if.end44.cleanup_crit_edge, %pch_udc_pcd_init.exit, %pci_name.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %finished ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call11, %if.then9.cleanup_crit_edge ], [ %call18, %pci_name.exit.cleanup_crit_edge ], [ %74, %pch_udc_pcd_init.exit ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #10
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data_requests to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_requests, align 8
  tail call void @dma_pool_destroy(ptr noundef %5) #10
  %stp_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %stp_requests to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stp_requests, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end25_crit_edge, label %if.then3

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then3:                                         ; preds = %if.end
  %td_stp = getelementptr %struct.pch_udc_dev, ptr %1, i32 0, i32 3, i32 1, i32 3
  %8 = ptrtoint ptr %td_stp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td_stp, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then3.if.end12_crit_edge, label %if.then5

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %td_stp_phys = getelementptr %struct.pch_udc_dev, ptr %1, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %td_stp_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %td_stp_phys, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %11) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.then3.if.end12_crit_edge
  %td_data = getelementptr %struct.pch_udc_dev, ptr %1, i32 0, i32 3, i32 1, i32 4
  %12 = ptrtoint ptr %td_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %td_data, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %if.end12.if.end23_crit_edge, label %if.then16

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %stp_requests to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stp_requests, align 4
  %td_data_phys = getelementptr %struct.pch_udc_dev, ptr %1, i32 0, i32 3, i32 1, i32 2
  %16 = ptrtoint ptr %td_data_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %td_data_phys, align 4
  tail call void @dma_pool_free(ptr noundef %15, ptr noundef nonnull %13, i32 noundef %17) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end12.if.end23_crit_edge
  %18 = ptrtoint ptr %stp_requests to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stp_requests, align 4
  tail call void @dma_pool_destroy(ptr noundef %19) #10
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end.if.end25_crit_edge
  %dma_addr = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end25.if.end31_crit_edge, label %if.then27

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %pdev28 = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev29, i32 noundef %21, i32 noundef 64, i32 noundef 2, i32 noundef 0) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25.if.end31_crit_edge
  %intr.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end31.pch_vbus_gpio_free.exit_crit_edge, label %if.then.i

if.end31.pch_vbus_gpio_free.exit_crit_edge:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_vbus_gpio_free.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @free_irq(i32 noundef %25, ptr noundef %1) #10
  br label %pch_vbus_gpio_free.exit

pch_vbus_gpio_free.exit:                          ; preds = %if.then.i, %if.end31.pch_vbus_gpio_free.exit_crit_edge
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 1040
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %29 = or i32 %28, 2130706432
  %30 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %31, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %29) #10, !srcloc !252
  %32 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %33, i32 1048
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %35 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i5.i = getelementptr i8, ptr %36, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i5.i, i32 -1) #10, !srcloc !252
  %37 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 1028
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %40 = or i32 %39, 262144
  %41 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %42, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %40) #10, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_udc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1040
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %5 = or i32 %4, 2130706432
  %6 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %7, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %5) #10, !srcloc !252
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i4 = getelementptr i8, ptr %9, i32 1048
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %11 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i5 = getelementptr i8, ptr %12, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i5, i32 -1) #10, !srcloc !252
  %13 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i7 = getelementptr i8, ptr %14, i32 1028
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i7) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %16 = or i32 %15, 262144
  %17 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i8 = getelementptr i8, ptr %18, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i8, i32 %16) #10, !srcloc !252
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_udc_quark_platform_init(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bar = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bar to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %bar, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_minnow_platform_init(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @pch_udc_minnow_vbus_gpio_table) #10
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %d, ptr noundef nonnull @pch_vbus_gpio_remove_table, ptr noundef nonnull @pch_udc_minnow_vbus_gpio_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.pch_vbus_gpio_add_table.exit_crit_edge, label %if.then.i.i

entry.pch_vbus_gpio_add_table.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_vbus_gpio_add_table.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_remove_lookup_table(ptr noundef nonnull @pch_udc_minnow_vbus_gpio_table) #10
  br label %pch_vbus_gpio_add_table.exit

pch_vbus_gpio_add_table.exit:                     ; preds = %if.then.i.i, %entry.pch_vbus_gpio_add_table.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_vbus_gpio_remove_table(ptr noundef %table) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpiod_remove_lookup_table(ptr noundef %table) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_remove_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_isr(i32 noundef %irq, ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1036
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %5, i32 1044
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #10, !srcloc !249
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp = icmp eq i32 %2, %6
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1024
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %10)
  %cmp3 = icmp eq i32 %2, %10
  br i1 %cmp3, label %do.body, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_isr, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !253

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev10 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 2
  %11 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev11, ptr noundef nonnull @.str.70) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %14, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 16777216) #10, !srcloc !252
  br label %cleanup

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool14.not = icmp eq i32 %2, 0
  br i1 %tobool14.not, label %if.end16, label %if.end16.thread

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.thread:                                  ; preds = %if.end13
  %15 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %16, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %2) #10, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not191 = icmp eq i32 %6, 0
  br i1 %tobool17.not191, label %if.end26.thread207, label %if.end16.thread.if.end23_crit_edge

if.end16.thread.if.end23_crit_edge:               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end26.thread207:                               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #12
  %lock198 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock198) #10
  tail call fastcc void @pch_udc_dev_isr(ptr noundef %pdev, i32 noundef %3)
  br label %if.end52

if.end23:                                         ; preds = %if.end16.thread.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %17 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 %6) #10, !srcloc !252
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br i1 %tobool14.not, label %if.end23.for.body.i.preheader_crit_edge, label %if.end26

if.end23.for.body.i.preheader_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_dev_isr(ptr noundef %pdev, i32 noundef %3)
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end26, %if.end23.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.043.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw nsw i32 1, %i.043.i
  %and.i = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl nuw i32 %i.043.i, 1
  %dev.i.i.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i, i32 5
  %19 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i.i, align 4
  %offset_addr.i.i.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i, i32 6
  %23 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #10, !srcloc !249
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %epsts.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i, i32 9
  %27 = ptrtoint ptr %epsts.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %epsts.i, align 4
  %28 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i29.i = getelementptr inbounds %struct.pch_udc_dev, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %base_addr.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i.i29.i, align 4
  %32 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %31, i32 4
  %add.ptr1.i.i32.i = getelementptr i8, ptr %add.ptr.i.i31.i, i32 %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i32.i, i32 %25) #10, !srcloc !252
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %shl3.i = shl nuw nsw i32 65536, %i.043.i
  %and4.i = and i32 %shl3.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul8.i = shl nuw i32 %i.043.i, 1
  %add.i = or i32 %mul8.i, 1
  %dev.i.i33.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %add.i, i32 5
  %34 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i33.i, align 4
  %base_addr.i.i34.i = getelementptr inbounds %struct.pch_udc_dev, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %base_addr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr.i.i34.i, align 4
  %offset_addr.i.i35.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %add.i, i32 6
  %38 = ptrtoint ptr %offset_addr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset_addr.i.i35.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %37, i32 4
  %add.ptr1.i.i37.i = getelementptr i8, ptr %add.ptr.i.i36.i, i32 %39
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i37.i) #10, !srcloc !249
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %epsts11.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %add.i, i32 9
  %42 = ptrtoint ptr %epsts11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %epsts11.i, align 4
  %43 = ptrtoint ptr %dev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i33.i, align 4
  %base_addr.i.i39.i = getelementptr inbounds %struct.pch_udc_dev, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %base_addr.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_addr.i.i39.i, align 4
  %47 = ptrtoint ptr %offset_addr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset_addr.i.i35.i, align 4
  %add.ptr.i.i41.i = getelementptr i8, ptr %46, i32 4
  %add.ptr1.i.i42.i = getelementptr i8, ptr %add.ptr.i.i41.i, i32 %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i42.i, i32 %40) #10, !srcloc !252
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %pch_udc_read_all_epstatus.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pch_udc_read_all_epstatus.exit:                   ; preds = %for.inc.i
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %pch_udc_read_all_epstatus.exit.if.end31_crit_edge, label %if.then30

pch_udc_read_all_epstatus.exit.if.end31_crit_edge: ; preds = %pch_udc_read_all_epstatus.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %pch_udc_read_all_epstatus.exit
  %ep1.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3
  %arrayidx3.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1
  %epsts4.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 9
  %49 = ptrtoint ptr %epsts4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %epsts4.i, align 4
  store i32 0, ptr %epsts4.i, align 4
  %and.i104 = and i32 %50, 184551104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp ne i32 %and.i104, 0
  %and6.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond50.i = and i1 %tobool.not.i105, %tobool7.not.i
  %and10.i = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond51.i = select i1 %or.cond50.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond51.i, label %if.end13.i, label %if.then30.pch_udc_svc_control_in.exit_crit_edge

if.then30.pch_udc_svc_control_in.exit_crit_edge:  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_control_in.exit

if.end13.i:                                       ; preds = %if.then30
  %and14.i = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %stall.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 5
  %51 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %stall.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool16.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_complete_transfer(ptr noundef %ep1.i) #10
  %52 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 1028
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %55 = and i32 %54, -67108865
  %56 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %57, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %55) #10, !srcloc !252
  %td_data.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 4
  %58 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %td_data.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and18.i = and i32 %61, 1073741823
  store i32 %and18.i, ptr %59, align 4
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %arrayidx3.i) #10
  %62 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i53.i = getelementptr i8, ptr %63, i32 1028
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i53.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %65 = or i32 %64, 67108864
  %66 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i54.i = getelementptr i8, ptr %67, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i54.i, i32 %65) #10, !srcloc !252
  %dev.i.i.i.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 5
  %68 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i.i.i55.i = getelementptr inbounds %struct.pch_udc_dev, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %base_addr.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_addr.i.i.i55.i, align 4
  %offset_addr.i.i.i.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 6
  %72 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i.i.i56.i = getelementptr i8, ptr %71, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %75 = or i32 %74, 131072
  %76 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i4.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %base_addr.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_addr.i4.i.i.i, align 4
  %80 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %75) #10, !srcloc !252
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.end13.i.if.end21.i_crit_edge
  %82 = and i32 %50, 16778304
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %82)
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %if.then30.i, label %if.end21.i.pch_udc_svc_control_in.exit_crit_edge

if.end21.i.pch_udc_svc_control_in.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_control_in.exit

if.then30.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_start_next_txrequest(ptr noundef %ep1.i) #10
  br label %pch_udc_svc_control_in.exit

pch_udc_svc_control_in.exit:                      ; preds = %if.then30.i, %if.end21.i.pch_udc_svc_control_in.exit_crit_edge, %if.then30.pch_udc_svc_control_in.exit_crit_edge
  %queue.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 7
  %84 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %85, %queue.i
  br i1 %cmp.i.not.i, label %pch_udc_svc_control_in.exit.if.end31_crit_edge, label %if.end.i112

pch_udc_svc_control_in.exit.if.end31_crit_edge:   ; preds = %pch_udc_svc_control_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end.i112:                                      ; preds = %pch_udc_svc_control_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev2.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 5
  %86 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev2.i, align 4
  %num.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 8
  %88 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i106 = load i8, ptr %num.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i106, 3
  %89 = shl i8 %bf.load.i106, 2
  %90 = and i8 %89, 16
  %91 = xor i8 %90, 16
  %narrow.i = add nuw nsw i8 %91, %bf.lshr.i
  %add.i107 = zext i8 %narrow.i to i32
  %shl.i108 = shl nuw i32 1, %add.i107
  %base_addr.i.i.i.i109 = getelementptr inbounds %struct.pch_udc_dev, ptr %87, i32 0, i32 10
  %92 = ptrtoint ptr %base_addr.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base_addr.i.i.i.i109, align 4
  %add.ptr.i.i.i.i110 = getelementptr i8, ptr %93, i32 1048
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i110) #10, !srcloc !249
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i.i = xor i32 %shl.i108, -1
  %and.i.i.i = and i32 %95, %neg.i.i.i
  %96 = ptrtoint ptr %base_addr.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base_addr.i.i.i.i109, align 4
  %add.ptr.i4.i.i.i111 = getelementptr i8, ptr %97, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %98 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i111, i32 %98) #10, !srcloc !252
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep1.i) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end.i112, %pch_udc_svc_control_in.exit.if.end31_crit_edge, %pch_udc_read_all_epstatus.exit.if.end31_crit_edge
  %and32 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  %ep1.i113 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3
  %arrayidx.i114 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1
  %epsts.i115 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 9
  %99 = ptrtoint ptr %epsts.i115 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %epsts.i115, align 4
  store i32 0, ptr %epsts.i115, align 4
  %and.i116 = lshr i32 %100, 4
  %shr.i = and i32 %and.i116, 3
  %101 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.then34.pch_udc_svc_control_out.exit_crit_edge [
    i32 2, label %if.then.i119
    i32 1, label %land.lhs.true100.i
  ]

if.then34.pch_udc_svc_control_out.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_control_out.exit

if.then.i119:                                     ; preds = %if.then34
  %stall.i117 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 5
  %102 = ptrtoint ptr %stall.i117 to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i118 = load i8, ptr %stall.i117, align 4
  %bf.clear.i = and i8 %bf.load.i118, 127
  store i8 %bf.clear.i, ptr %stall.i117, align 4
  %halted.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 8
  %103 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load5.i = load i8, ptr %halted.i, align 4
  %bf.clear6.i = and i8 %bf.load5.i, -3
  store i8 %bf.clear6.i, ptr %halted.i, align 4
  %halted10.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 8
  %104 = ptrtoint ptr %halted10.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load11.i = load i8, ptr %halted10.i, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -3
  store i8 %bf.clear12.i, ptr %halted10.i, align 4
  %setup_data.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 9
  %td_stp.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 3
  %105 = ptrtoint ptr %td_stp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %td_stp.i, align 4
  %request.i = getelementptr inbounds %struct.pch_udc_stp_dma_desc, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %request.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %request.i, align 1
  %109 = ptrtoint ptr %setup_data.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 %108, ptr %setup_data.i, align 4
  %tobool.not.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i, label %if.then.i119.pch_udc_init_setup_buff.exit.i_crit_edge, label %if.end.i.i

if.then.i119.pch_udc_init_setup_buff.exit.i_crit_edge: ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_init_setup_buff.exit.i

if.end.i.i:                                       ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #12
  %110 = load i32, ptr @pch_udc_init_setup_buff.pky_marker, align 4
  %inc.i.i = add i32 %110, 1
  store i32 %inc.i.i, ptr @pch_udc_init_setup_buff.pky_marker, align 4
  %reserved.i.i = getelementptr inbounds %struct.pch_udc_stp_dma_desc, ptr %106, i32 0, i32 1
  %111 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %inc.i.i, ptr %reserved.i.i, align 1
  %112 = ptrtoint ptr %request.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 -1, ptr %request.i, align 1
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 0, ptr %106, align 1
  br label %pch_udc_init_setup_buff.exit.i

pch_udc_init_setup_buff.exit.i:                   ; preds = %if.end.i.i, %if.then.i119.pch_udc_init_setup_buff.exit.i_crit_edge
  %114 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i.i121 = getelementptr i8, ptr %115, i32 1028
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i121) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %117 = and i32 %116, -67108865
  %118 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i.i122 = getelementptr i8, ptr %119, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i122, i32 %117) #10, !srcloc !252
  %120 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load19.i = load i8, ptr %halted.i, align 4
  %121 = and i8 %bf.load19.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i161.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i161.i, label %pch_udc_init_setup_buff.exit.i.pch_udc_ep_fifo_flush.exit.i_crit_edge, label %if.then.i.i

pch_udc_init_setup_buff.exit.i.pch_udc_ep_fifo_flush.exit.i_crit_edge: ; preds = %pch_udc_init_setup_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_ep_fifo_flush.exit.i

if.then.i.i:                                      ; preds = %pch_udc_init_setup_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i.i123 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 5
  %122 = ptrtoint ptr %dev.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i.i.i.i123, align 4
  %base_addr.i.i.i162.i = getelementptr inbounds %struct.pch_udc_dev, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %base_addr.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base_addr.i.i.i162.i, align 4
  %offset_addr.i.i.i.i124 = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 0, i32 6
  %126 = ptrtoint ptr %offset_addr.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset_addr.i.i.i.i124, align 4
  %add.ptr.i.i.i163.i = getelementptr i8, ptr %125, i32 %127
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i163.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %129 = or i32 %128, 33554432
  %130 = ptrtoint ptr %dev.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i.i.i.i123, align 4
  %base_addr.i4.i.i.i125 = getelementptr inbounds %struct.pch_udc_dev, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %base_addr.i4.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base_addr.i4.i.i.i125, align 4
  %134 = ptrtoint ptr %offset_addr.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset_addr.i.i.i.i124, align 4
  %add.ptr.i6.i.i.i126 = getelementptr i8, ptr %133, i32 %135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i126, i32 %129) #10, !srcloc !252
  br label %pch_udc_ep_fifo_flush.exit.i

pch_udc_ep_fifo_flush.exit.i:                     ; preds = %if.then.i.i, %pch_udc_init_setup_buff.exit.i.pch_udc_ep_fifo_flush.exit.i_crit_edge
  %136 = ptrtoint ptr %setup_data.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %setup_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %tobool.not.i127 = icmp sgt i8 %137, -1
  %ep029.i = getelementptr inbounds %struct.usb_gadget, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not.i127, label %if.end.i128, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %pch_udc_ep_fifo_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %ep029.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %ep1.i113, ptr %ep029.i, align 4
  br label %if.end43.i

if.end.i128:                                      ; preds = %pch_udc_ep_fifo_flush.exit.i
  %139 = ptrtoint ptr %ep029.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx.i114, ptr %ep029.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %137)
  %cmp33.i = icmp eq i8 %137, 33
  br i1 %cmp33.i, label %land.lhs.true.i129, label %if.end.i128.if.end43.i_crit_edge

if.end.i128.if.end43.i_crit_edge:                 ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

land.lhs.true.i129:                               ; preds = %if.end.i128
  %bRequest.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 9, i32 1
  %140 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bRequest.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %cmp37.i = icmp eq i8 %141, -1
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true.i129.if.end43.i_crit_edge

land.lhs.true.i129.if.end43.i_crit_edge:          ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then39.i:                                      ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %stall.i117 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load40.i = load i8, ptr %stall.i117, align 4
  %bf.clear41.i = and i8 %bf.load40.i, -65
  store i8 %bf.clear41.i, ptr %stall.i117, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %land.lhs.true.i129.if.end43.i_crit_edge, %if.end.i128.if.end43.i_crit_edge, %if.end.thread.i
  %driver.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 1
  %143 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i165.i = icmp eq ptr %144, null
  br i1 %tobool.not.i165.i, label %if.end43.i.pch_udc_gadget_setup.exit.i_crit_edge, label %if.end.i166.i

if.end43.i.pch_udc_gadget_setup.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_gadget_setup.exit.i

if.end.i166.i:                                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %145 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %driver.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %setup.i.i, align 4
  %call.i.i = tail call i32 %148(ptr noundef %pdev, ptr noundef %setup_data.i) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %pch_udc_gadget_setup.exit.i

pch_udc_gadget_setup.exit.i:                      ; preds = %if.end.i166.i, %if.end43.i.pch_udc_gadget_setup.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i166.i ], [ -108, %if.end43.i.pch_udc_gadget_setup.exit.i_crit_edge ]
  %149 = ptrtoint ptr %setup_data.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %setup_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %150)
  %tobool48.not.i = icmp sgt i8 %150, -1
  br i1 %tobool48.not.i, label %pch_udc_gadget_setup.exit.i.if.end53.i_crit_edge, label %if.then49.i

pch_udc_gadget_setup.exit.i.if.end53.i_crit_edge: ; preds = %pch_udc_gadget_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then49.i:                                      ; preds = %pch_udc_gadget_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %td_data.i130 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 4
  %151 = ptrtoint ptr %td_data.i130 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %td_data.i130, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %and50.i = and i32 %154, 1073741823
  store i32 %and50.i, ptr %152, align 4
  %td_data_phys.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 2
  %155 = ptrtoint ptr %td_data_phys.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %td_data_phys.i, align 4
  %dev.i.i.i131 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 5
  %157 = ptrtoint ptr %dev.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i.i.i131, align 4
  %base_addr.i.i.i132 = getelementptr inbounds %struct.pch_udc_dev, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %base_addr.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base_addr.i.i.i132, align 4
  %offset_addr.i.i.i133 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 6
  %161 = ptrtoint ptr %offset_addr.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %offset_addr.i.i.i133, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %160, i32 %162
  %add.ptr1.i.i.i135 = getelementptr i8, ptr %add.ptr.i.i.i134, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %163 = tail call i32 @llvm.bswap.i32(i32 %156) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i135, i32 %163) #10, !srcloc !252
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %pch_udc_gadget_setup.exit.i.if.end53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %retval.0.i.i)
  %164 = icmp ult i32 %retval.0.i.i, 64
  br i1 %164, label %if.then59.i, label %if.else69.i

if.then59.i:                                      ; preds = %if.end53.i
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep1.i113) #10
  %165 = ptrtoint ptr %setup_data.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %setup_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %166)
  %tobool66.not.i = icmp sgt i8 %166, -1
  br i1 %tobool66.not.i, label %if.then67.i, label %if.then59.i.pch_udc_svc_control_out.exit_crit_edge

if.then59.i.pch_udc_svc_control_out.exit_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_control_out.exit

if.then67.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i168.i = getelementptr i8, ptr %168, i32 1028
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i168.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %170 = or i32 %169, 67108864
  %171 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i169.i = getelementptr i8, ptr %172, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i169.i, i32 %170) #10, !srcloc !252
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %arrayidx.i114) #10
  br label %pch_udc_svc_control_out.exit

if.else69.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp70.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp70.i, label %if.then72.i, label %if.else89.i

if.then72.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %ep1.i113) #10
  %dev75.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 5
  %173 = ptrtoint ptr %dev75.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev75.i, align 4
  %175 = ptrtoint ptr %halted10.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load76.i = load i8, ptr %halted10.i, align 4
  %bf.lshr77.i = lshr i8 %bf.load76.i, 3
  %176 = shl i8 %bf.load76.i, 2
  %177 = and i8 %176, 16
  %178 = xor i8 %177, 16
  %narrow.i136 = add nuw nsw i8 %178, %bf.lshr77.i
  %add.i137 = zext i8 %narrow.i136 to i32
  %shl.i138 = shl nuw i32 1, %add.i137
  %base_addr.i.i.i171.i = getelementptr inbounds %struct.pch_udc_dev, ptr %174, i32 0, i32 10
  %179 = ptrtoint ptr %base_addr.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base_addr.i.i.i171.i, align 4
  %add.ptr.i.i.i172.i = getelementptr i8, ptr %180, i32 1048
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i172.i) #10, !srcloc !249
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i.i139 = xor i32 %shl.i138, -1
  %and.i.i.i140 = and i32 %182, %neg.i.i.i139
  %183 = ptrtoint ptr %base_addr.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base_addr.i.i.i171.i, align 4
  %add.ptr.i4.i.i173.i = getelementptr i8, ptr %184, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %185 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i140) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i173.i, i32 %185) #10, !srcloc !252
  %186 = ptrtoint ptr %stall.i117 to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load86.i = load i8, ptr %stall.i117, align 4
  %bf.clear87.i = and i8 %bf.load86.i, 127
  store i8 %bf.clear87.i, ptr %stall.i117, align 4
  %187 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i175.i = getelementptr i8, ptr %188, i32 1028
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i175.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %190 = or i32 %189, 67108864
  %191 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i176.i = getelementptr i8, ptr %192, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i176.i, i32 %190) #10, !srcloc !252
  br label %pch_udc_svc_control_out.exit

if.else89.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #12
  %193 = ptrtoint ptr %stall.i117 to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load90.i = load i8, ptr %stall.i117, align 4
  %bf.set92.i = or i8 %bf.load90.i, 2
  store i8 %bf.set92.i, ptr %stall.i117, align 4
  br label %pch_udc_svc_control_out.exit

land.lhs.true100.i:                               ; preds = %if.then34
  %stall101.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 5
  %194 = ptrtoint ptr %stall101.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load102.i = load i8, ptr %stall101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load102.i)
  %tobool105.not.i = icmp sgt i8 %bf.load102.i, -1
  br i1 %tobool105.not.i, label %if.then106.i, label %land.lhs.true100.i.pch_udc_svc_control_out.exit_crit_edge

land.lhs.true100.i.pch_udc_svc_control_out.exit_crit_edge: ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_control_out.exit

if.then106.i:                                     ; preds = %land.lhs.true100.i
  %195 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i179.i = getelementptr i8, ptr %196, i32 1028
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i179.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %198 = and i32 %197, -67108865
  %199 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i180.i = getelementptr i8, ptr %200, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i180.i, i32 %198) #10, !srcloc !252
  %dev.i.i182.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 5
  %201 = ptrtoint ptr %dev.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i.i182.i, align 4
  %base_addr.i.i183.i = getelementptr inbounds %struct.pch_udc_dev, ptr %202, i32 0, i32 10
  %203 = ptrtoint ptr %base_addr.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base_addr.i.i183.i, align 4
  %offset_addr.i.i184.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 6
  %205 = ptrtoint ptr %offset_addr.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %offset_addr.i.i184.i, align 4
  %add.ptr.i.i185.i = getelementptr i8, ptr %204, i32 %206
  %add.ptr1.i.i186.i = getelementptr i8, ptr %add.ptr.i.i185.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i186.i, i32 0) #10, !srcloc !252
  %queue.i141 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 7
  %207 = ptrtoint ptr %queue.i141 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile ptr, ptr %queue.i141, align 4
  %cmp.i.not.i142 = icmp eq ptr %208, %queue.i141
  br i1 %cmp.i.not.i142, label %if.then106.i.if.end111.i_crit_edge, label %if.then109.i

if.then106.i.if.end111.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.then109.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %epsts.i115 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %100, ptr %epsts.i115, align 4
  tail call fastcc void @pch_udc_svc_data_out(ptr noundef %pdev, i32 noundef 0) #10
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then109.i, %if.then106.i.if.end111.i_crit_edge
  %210 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i188.i = getelementptr i8, ptr %211, i32 1028
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i188.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %213 = or i32 %212, 67108864
  %214 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i189.i = getelementptr i8, ptr %215, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i189.i, i32 %213) #10, !srcloc !252
  br label %pch_udc_svc_control_out.exit

pch_udc_svc_control_out.exit:                     ; preds = %if.end111.i, %land.lhs.true100.i.pch_udc_svc_control_out.exit_crit_edge, %if.else89.i, %if.then72.i, %if.then67.i, %if.then59.i.pch_udc_svc_control_out.exit_crit_edge, %if.then34.pch_udc_svc_control_out.exit_crit_edge
  %dev.i.i.i191.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 5
  %216 = ptrtoint ptr %dev.i.i.i191.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev.i.i.i191.i, align 4
  %base_addr.i.i.i192.i = getelementptr inbounds %struct.pch_udc_dev, ptr %217, i32 0, i32 10
  %218 = ptrtoint ptr %base_addr.i.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base_addr.i.i.i192.i, align 4
  %offset_addr.i.i.i193.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 1, i32 6
  %220 = ptrtoint ptr %offset_addr.i.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %offset_addr.i.i.i193.i, align 4
  %add.ptr.i.i.i194.i = getelementptr i8, ptr %219, i32 %221
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i194.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %223 = or i32 %222, 131072
  %224 = ptrtoint ptr %dev.i.i.i191.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i.i.i191.i, align 4
  %base_addr.i4.i.i195.i = getelementptr inbounds %struct.pch_udc_dev, ptr %225, i32 0, i32 10
  %226 = ptrtoint ptr %base_addr.i4.i.i195.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base_addr.i4.i.i195.i, align 4
  %228 = ptrtoint ptr %offset_addr.i.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %offset_addr.i.i.i193.i, align 4
  %add.ptr.i6.i.i196.i = getelementptr i8, ptr %227, i32 %229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i196.i, i32 %223) #10, !srcloc !252
  br label %if.end35

if.end35:                                         ; preds = %pch_udc_svc_control_out.exit, %if.end31.if.end35_crit_edge
  %prot_stall.i = getelementptr inbounds %struct.pch_udc_dev, ptr %pdev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35
  %i.0186 = phi i32 [ 1, %if.end35 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0186
  %and37 = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.then39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %mul.i143 = shl nuw i32 %i.0186, 1
  %arrayidx.i144 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143
  %epsts2.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 9
  %230 = ptrtoint ptr %epsts2.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %epsts2.i, align 4
  store i32 0, ptr %epsts2.i, align 4
  %and.i145 = and i32 %231, 251659968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp ne i32 %and.i145, 0
  %and4.i147 = and i32 %231, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i147)
  %tobool5.not.i148 = icmp eq i32 %and4.i147, 0
  %or.cond87.i = and i1 %tobool.not.i146, %tobool5.not.i148
  %and8.i = and i32 %231, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond88.i = select i1 %or.cond87.i, i1 %tobool9.not.i, i1 false
  br i1 %or.cond88.i, label %if.end11.i, label %if.then39.pch_udc_svc_data_in.exit_crit_edge

if.then39.pch_udc_svc_data_in.exit_crit_edge:     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_data_in.exit

if.end11.i:                                       ; preds = %if.then39
  %and12.i = and i32 %231, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then14.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %arrayidx.i144) #10
  %dev15.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 5
  %232 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev15.i, align 4
  %num.i149 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 8
  %234 = ptrtoint ptr %num.i149 to i32
  call void @__asan_load1_noabort(i32 %234)
  %bf.load.i150 = load i8, ptr %num.i149, align 4
  %bf.lshr.i151 = lshr i8 %bf.load.i150, 3
  %235 = shl i8 %bf.load.i150, 2
  %236 = and i8 %235, 16
  %237 = xor i8 %236, 16
  %narrow85.i = add nuw nsw i8 %237, %bf.lshr.i151
  %add.i152 = zext i8 %narrow85.i to i32
  %shl.i153 = shl nuw i32 1, %add.i152
  %base_addr.i.i.i.i154 = getelementptr inbounds %struct.pch_udc_dev, ptr %233, i32 0, i32 10
  %238 = ptrtoint ptr %base_addr.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base_addr.i.i.i.i154, align 4
  %add.ptr.i.i.i.i155 = getelementptr i8, ptr %239, i32 1048
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i155) #10, !srcloc !249
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i.i156 = xor i32 %shl.i153, -1
  %and.i.i.i157 = and i32 %241, %neg.i.i.i156
  %242 = ptrtoint ptr %base_addr.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base_addr.i.i.i.i154, align 4
  %add.ptr.i4.i.i.i158 = getelementptr i8, ptr %243, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %244 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i157) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i158, i32 %244) #10, !srcloc !252
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end20.i_crit_edge
  %and21.i = and i32 %231, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end45.i_crit_edge, label %if.then23.i

if.end20.i.if.end45.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then23.i:                                      ; preds = %if.end20.i
  %245 = ptrtoint ptr %prot_stall.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load24.i = load i8, ptr %prot_stall.i, align 4
  %246 = and i8 %bf.load24.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool28.not.i = icmp eq i8 %246, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i.i159 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 5
  %247 = ptrtoint ptr %dev.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i.i.i.i159, align 4
  %base_addr.i.i.i89.i = getelementptr inbounds %struct.pch_udc_dev, ptr %248, i32 0, i32 10
  %249 = ptrtoint ptr %base_addr.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %base_addr.i.i.i89.i, align 4
  %offset_addr.i.i.i.i160 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 6
  %251 = ptrtoint ptr %offset_addr.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %offset_addr.i.i.i.i160, align 4
  %add.ptr.i.i.i90.i = getelementptr i8, ptr %250, i32 %252
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i90.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %254 = and i32 %253, -16777217
  %255 = ptrtoint ptr %dev.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i.i.i.i159, align 4
  %base_addr.i2.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %256, i32 0, i32 10
  %257 = ptrtoint ptr %base_addr.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %base_addr.i2.i.i.i, align 4
  %259 = ptrtoint ptr %offset_addr.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %offset_addr.i.i.i.i160, align 4
  %add.ptr.i4.i.i91.i = getelementptr i8, ptr %258, i32 %260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i91.i, i32 %254) #10, !srcloc !252
  %261 = ptrtoint ptr %dev.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev.i.i.i.i159, align 4
  %base_addr.i.i3.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %262, i32 0, i32 10
  %263 = ptrtoint ptr %base_addr.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base_addr.i.i3.i.i, align 4
  %265 = ptrtoint ptr %offset_addr.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %offset_addr.i.i.i.i160, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %264, i32 %266
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %268 = or i32 %267, 65536
  %269 = ptrtoint ptr %dev.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i.i.i.i159, align 4
  %base_addr.i4.i.i.i161 = getelementptr inbounds %struct.pch_udc_dev, ptr %270, i32 0, i32 10
  %271 = ptrtoint ptr %base_addr.i4.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base_addr.i4.i.i.i161, align 4
  %273 = ptrtoint ptr %offset_addr.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %offset_addr.i.i.i.i160, align 4
  %add.ptr.i6.i.i.i162 = getelementptr i8, ptr %272, i32 %274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i162, i32 %268) #10, !srcloc !252
  br label %if.end45.i

if.else.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %arrayidx.i144) #10
  %dev30.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 5
  %275 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev30.i, align 4
  %num31.i = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 8
  %277 = ptrtoint ptr %num31.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %bf.load32.i = load i8, ptr %num31.i, align 4
  %bf.lshr33.i = lshr i8 %bf.load32.i, 3
  %278 = shl i8 %bf.load32.i, 2
  %279 = and i8 %278, 16
  %280 = xor i8 %279, 16
  %narrow.i163 = add nuw nsw i8 %280, %bf.lshr33.i
  %add42.i = zext i8 %narrow.i163 to i32
  %shl43.i = shl nuw i32 1, %add42.i
  %base_addr.i.i.i92.i = getelementptr inbounds %struct.pch_udc_dev, ptr %276, i32 0, i32 10
  %281 = ptrtoint ptr %base_addr.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %base_addr.i.i.i92.i, align 4
  %add.ptr.i.i.i93.i = getelementptr i8, ptr %282, i32 1048
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i93.i) #10, !srcloc !249
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i94.i = xor i32 %shl43.i, -1
  %and.i.i95.i = and i32 %284, %neg.i.i94.i
  %285 = ptrtoint ptr %base_addr.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %base_addr.i.i.i92.i, align 4
  %add.ptr.i4.i.i96.i = getelementptr i8, ptr %286, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %287 = tail call i32 @llvm.bswap.i32(i32 %and.i.i95.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i96.i, i32 %287) #10, !srcloc !252
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then29.i, %if.end20.i.if.end45.i_crit_edge
  %and46.i = and i32 %231, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end49.i_crit_edge, label %if.then48.i

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_complete_transfer(ptr noundef %arrayidx.i144) #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end49.i_crit_edge
  %288 = and i32 %231, 83887168
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %288)
  %289 = icmp eq i32 %288, 64
  br i1 %289, label %if.then60.i, label %if.end49.i.pch_udc_svc_data_in.exit_crit_edge

if.end49.i.pch_udc_svc_data_in.exit_crit_edge:    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_data_in.exit

if.then60.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_start_next_txrequest(ptr noundef %arrayidx.i144) #10
  br label %pch_udc_svc_data_in.exit

pch_udc_svc_data_in.exit:                         ; preds = %if.then60.i, %if.end49.i.pch_udc_svc_data_in.exit_crit_edge, %if.then39.pch_udc_svc_data_in.exit_crit_edge
  %queue.i165 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 7
  %290 = ptrtoint ptr %queue.i165 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load volatile ptr, ptr %queue.i165, align 4
  %cmp.i.not.i166 = icmp eq ptr %291, %queue.i165
  br i1 %cmp.i.not.i166, label %pch_udc_svc_data_in.exit.for.inc_crit_edge, label %if.end.i180

pch_udc_svc_data_in.exit.for.inc_crit_edge:       ; preds = %pch_udc_svc_data_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i180:                                      ; preds = %pch_udc_svc_data_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev2.i168 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 5
  %292 = ptrtoint ptr %dev2.i168 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev2.i168, align 4
  %num.i169 = getelementptr %struct.pch_udc_dev, ptr %pdev, i32 0, i32 3, i32 %mul.i143, i32 8
  %294 = ptrtoint ptr %num.i169 to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load.i170 = load i8, ptr %num.i169, align 4
  %bf.lshr.i171 = lshr i8 %bf.load.i170, 3
  %295 = shl i8 %bf.load.i170, 2
  %296 = and i8 %295, 16
  %297 = xor i8 %296, 16
  %narrow.i172 = add nuw nsw i8 %297, %bf.lshr.i171
  %add.i173 = zext i8 %narrow.i172 to i32
  %shl.i174 = shl nuw i32 1, %add.i173
  %base_addr.i.i.i.i175 = getelementptr inbounds %struct.pch_udc_dev, ptr %293, i32 0, i32 10
  %298 = ptrtoint ptr %base_addr.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %base_addr.i.i.i.i175, align 4
  %add.ptr.i.i.i.i176 = getelementptr i8, ptr %299, i32 1048
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i176) #10, !srcloc !249
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i.i177 = xor i32 %shl.i174, -1
  %and.i.i.i178 = and i32 %301, %neg.i.i.i177
  %302 = ptrtoint ptr %base_addr.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %base_addr.i.i.i.i175, align 4
  %add.ptr.i4.i.i.i179 = getelementptr i8, ptr %303, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %304 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i178) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i179, i32 %304) #10, !srcloc !252
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %arrayidx.i144) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.i180, %pch_udc_svc_data_in.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body43.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body43.preheader:                             ; preds = %for.inc
  %and45 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %for.body43.preheader.for.inc49_crit_edge, label %if.then47

for.body43.preheader.for.inc49_crit_edge:         ; preds = %for.body43.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

if.then47:                                        ; preds = %for.body43.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_svc_data_out(ptr noundef %pdev, i32 noundef 1)
  br label %for.inc49

for.inc49:                                        ; preds = %if.then47, %for.body43.preheader.for.inc49_crit_edge
  %and45.1 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.1)
  %tobool46.not.1 = icmp eq i32 %and45.1, 0
  br i1 %tobool46.not.1, label %for.inc49.for.inc49.1_crit_edge, label %if.then47.1

for.inc49.for.inc49.1_crit_edge:                  ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49.1

if.then47.1:                                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_svc_data_out(ptr noundef %pdev, i32 noundef 2)
  br label %for.inc49.1

for.inc49.1:                                      ; preds = %if.then47.1, %for.inc49.for.inc49.1_crit_edge
  %and45.2 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.2)
  %tobool46.not.2 = icmp eq i32 %and45.2, 0
  br i1 %tobool46.not.2, label %for.inc49.1.if.end52_crit_edge, label %if.then47.2

for.inc49.1.if.end52_crit_edge:                   ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then47.2:                                      ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_svc_data_out(ptr noundef %pdev, i32 noundef 3)
  br label %if.end52

if.end52:                                         ; preds = %if.then47.2, %for.inc49.1.if.end52_crit_edge, %if.end26.thread207
  %lock202206 = phi ptr [ %lock198, %if.end26.thread207 ], [ %lock, %if.then47.2 ], [ %lock, %for.inc49.1.if.end52_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock202206) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.end52 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_dma_pools(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.85, ptr noundef %dev1, i32 noundef 16, i32 noundef 0, i32 noundef 0) #10
  %data_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %data_requests to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %data_requests, align 8
  %tobool.not = icmp eq ptr %call, null
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.88, ptr noundef %dev4, i32 noundef 16, i32 noundef 0, i32 noundef 0) #10
  %stp_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %stp_requests to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %stp_requests, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.87) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %td_stp_phys = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1
  %call18 = tail call ptr @dma_pool_alloc(ptr noundef nonnull %call7, i32 noundef 3264, ptr noundef %td_stp_phys) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.87) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %td_stp29 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 3
  %10 = ptrtoint ptr %td_stp29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %td_stp29, align 4
  %11 = ptrtoint ptr %data_requests to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_requests, align 8
  %td_data_phys = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 2
  %call33 = tail call ptr @dma_pool_alloc(ptr noundef %12, i32 noundef 3264, ptr noundef %td_data_phys) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.87) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %td_data44 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 4
  %15 = ptrtoint ptr %td_data44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call33, ptr %td_data44, align 4
  %td_stp_phys50 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1
  %16 = call ptr @memset(ptr %td_stp_phys50, i32 0, i32 16)
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev58, i32 noundef 64, i32 noundef 3520) #10
  %tobool60.not = icmp eq ptr %call.i, null
  br i1 %tobool60.not, label %if.end41.cleanup_crit_edge, label %if.end62

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end41
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call.i99 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i) #10
  br i1 %call.i99, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end62
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !254

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev64) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev64, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.98, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.99, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev64, ptr noundef nonnull %call.i, i32 noundef 64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %call.i to i32
  %sub.i = add i32 %26, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %25, i32 %shr.i
  %and.i = and i32 %26, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev64, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %dma_addr, align 8
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev67, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  %spec.select = select i1 %cmp.i, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %dma_map_single_attrs.exit, %if.end41.cleanup_crit_edge, %do.end38, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ -12, %do.end38 ], [ -12, %do.end23 ], [ -12, %do.end13 ], [ -12, %do.end ], [ -12, %if.end41.cleanup_crit_edge ], [ %spec.select, %dma_map_single_attrs.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_set_disconnect(ptr nocapture noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = or i32 %2, 262144
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #10, !srcloc !252
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_init(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #13
  br label %return

if.end:                                           ; preds = %entry
  %base_addr.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !252
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 50331648) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #10
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 16777216) #10, !srcloc !252
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1040
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %13 = or i32 %12, 2130706432
  %14 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %13) #10, !srcloc !252
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %17, i32 1036
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %19 = or i32 %18, 2130706432
  %20 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i23 = getelementptr i8, ptr %21, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i23, i32 %19) #10, !srcloc !252
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %23, i32 1048
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %25 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i26 = getelementptr i8, ptr %26, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i26, i32 -1) #10, !srcloc !252
  %27 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %28, i32 1044
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %30 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i29 = getelementptr i8, ptr %31, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i29, i32 -1) #10, !srcloc !252
  %32 = load i8, ptr @speed_fs, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %34, i32 1024
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = or i32 %35, 150995456
  %37 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i33 = getelementptr i8, ptr %38, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i33, i32 %36) #10, !srcloc !252
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %39 = or i32 %35, 134218240
  %40 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i37 = getelementptr i8, ptr %41, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i37, i32 %39) #10, !srcloc !252
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %42 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %43, i32 1028
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %45 = or i32 %44, -2147283169
  %46 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i41 = getelementptr i8, ptr %47, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i41, i32 %45) #10, !srcloc !252
  br label %return

return:                                           ; preds = %if.end2, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_ep_enable(ptr noundef %usbep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0_string
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp4.not = icmp eq i8 %3, 5
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %dev8 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %lor.lhs.false10.cleanup_crit_edge, label %do.body15

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body15:                                        ; preds = %lor.lhs.false10
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %7, i32 0, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc23 = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %12 = ptrtoint ptr %desc23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc, ptr %desc23, align 4
  %halted = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %13 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %halted, align 4
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, ptr %halted, align 4
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 4
  %cfg_data = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 12
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl i32 %conv.i.i, 28
  %and.i.i = and i32 %shl.i.i, 805306368
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i.i, align 4
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 6
  %20 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %and.i.i) #10, !srcloc !252
  %22 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load2.i = load i8, ptr %halted, align 4
  %23 = and i8 %bf.load2.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8, align 4
  %base_addr.i18.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %base_addr.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i18.i.i, align 4
  %28 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %27, i32 %29
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i20.i.i, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %31 = and i32 %30, 65535
  %32 = or i32 %31, 65536
  %33 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev8, align 4
  %base_addr.i13.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %base_addr.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i13.i.i, align 4
  %37 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %36, i32 %38
  %add.ptr1.i16.i.i = getelementptr i8, ptr %add.ptr.i15.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i.i, i32 %32) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit.i

if.else.i.i:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i21.i.i = getelementptr i8, ptr %add.ptr.i20.i.i, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i21.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %40 = and i32 %39, -65536
  %41 = or i32 %40, 1
  %42 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev8, align 4
  %base_addr.i23.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %base_addr.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i23.i.i, align 4
  %46 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %45, i32 %47
  %add.ptr1.i26.i.i = getelementptr i8, ptr %add.ptr.i25.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i.i, i32 %41) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit.i

pch_udc_ep_set_bufsz.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %48 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wMaxPacketSize, align 1
  %50 = and i16 %49, -249
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  %and.i76.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev8, align 4
  %base_addr.i.i78.i = getelementptr inbounds %struct.pch_udc_dev, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %base_addr.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i.i78.i, align 4
  %56 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %55, i32 %57
  %add.ptr1.i.i81.i = getelementptr i8, ptr %add.ptr.i.i80.i, i32 12
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i81.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %59 = and i32 %58, 65535
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %or.i82.i = or i32 %60, %and.i76.i
  %61 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev8, align 4
  %base_addr.i5.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %base_addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_addr.i5.i.i, align 4
  %65 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %64, i32 %66
  %add.ptr1.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i82.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i.i, i32 %67) #10, !srcloc !252
  %68 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev8, align 4
  %base_addr.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %72 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %75 = or i32 %74, -2147483648
  %76 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev8, align 4
  %base_addr.i4.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %base_addr.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_addr.i4.i.i.i, align 4
  %80 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %75) #10, !srcloc !252
  %82 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load7.i = load i8, ptr %halted, align 4
  %83 = and i8 %bf.load7.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i83.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i83.i, label %pch_udc_ep_set_bufsz.exit.i.pch_udc_ep_enable.exit_crit_edge, label %if.then.i90.i

pch_udc_ep_set_bufsz.exit.i.pch_udc_ep_enable.exit_crit_edge: ; preds = %pch_udc_ep_set_bufsz.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_ep_enable.exit

if.then.i90.i:                                    ; preds = %pch_udc_ep_set_bufsz.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev8, align 4
  %base_addr.i.i.i85.i = getelementptr inbounds %struct.pch_udc_dev, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %base_addr.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base_addr.i.i.i85.i, align 4
  %88 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i87.i = getelementptr i8, ptr %87, i32 %89
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %91 = or i32 %90, 33554432
  %92 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev8, align 4
  %base_addr.i4.i.i88.i = getelementptr inbounds %struct.pch_udc_dev, ptr %93, i32 0, i32 10
  %94 = ptrtoint ptr %base_addr.i4.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base_addr.i4.i.i88.i, align 4
  %96 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i89.i = getelementptr i8, ptr %95, i32 %97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i89.i, i32 %91) #10, !srcloc !252
  br label %pch_udc_ep_enable.exit

pch_udc_ep_enable.exit:                           ; preds = %if.then.i90.i, %pch_udc_ep_set_bufsz.exit.i.pch_udc_ep_enable.exit_crit_edge
  %98 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load11.i = load i8, ptr %halted, align 4
  %bf.lshr12.i = lshr i8 %bf.load11.i, 3
  %99 = shl i8 %bf.load11.i, 2
  %100 = and i8 %99, 16
  %or74.i = or i8 %100, %bf.lshr12.i
  %101 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bmAttributes.i, align 1
  %103 = shl i8 %102, 5
  %104 = and i8 %103, 96
  %or2275.i = or i8 %or74.i, %104
  %or22.i = zext i8 %or2275.i to i32
  %105 = ptrtoint ptr %cfg_data to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %cfg_data, align 2
  %conv23.i = zext i16 %106 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 7
  %or25.i = or i32 %shl24.i, %or22.i
  %cur_intf.i = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 12, i32 1
  %107 = ptrtoint ptr %cur_intf.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cur_intf.i, align 2
  %conv26.i = zext i16 %108 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 11
  %or28.i = or i32 %or25.i, %shl27.i
  %cur_alt.i = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 12, i32 2
  %109 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %cur_alt.i, align 2
  %conv29.i = zext i16 %110 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 15
  %or31.i = or i32 %or28.i, %shl30.i
  %111 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %wMaxPacketSize, align 1
  %113 = and i16 %112, -249
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #10
  %and.i92.i = zext i16 %114 to i32
  %shl33.i = shl nuw nsw i32 %and.i92.i, 19
  %or34.i = or i32 %or31.i, %shl33.i
  %115 = and i8 %bf.load11.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool40.not.i = icmp eq i8 %115, 0
  %116 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev8, align 4
  %118 = lshr i8 %bf.load11.i, 2
  %119 = or i8 %118, 1
  %120 = and i8 %118, 62
  %.sink.i = select i1 %tobool40.not.i, i8 %119, i8 %120
  %add.i = zext i8 %.sink.i to i32
  tail call fastcc void @pch_udc_write_csr(ptr noundef %117, i32 noundef %or34.i, i32 noundef %add.i) #10
  %121 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %wMaxPacketSize, align 1
  %123 = and i16 %122, -249
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #10
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 7
  %125 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %125, i32 7)
  %bf.load27 = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %124 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear28 = and i56 %bf.load27, 1099511627775
  %bf.set29 = or i56 %bf.shl, %bf.clear28
  store i56 %bf.set29, ptr %maxpacket, align 2
  %126 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev8, align 4
  %128 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load31 = load i8, ptr %halted, align 4
  %bf.lshr = lshr i8 %bf.load31, 3
  %129 = shl i8 %bf.load31, 2
  %130 = and i8 %129, 16
  %131 = xor i8 %130, 16
  %narrow = add nuw nsw i8 %131, %bf.lshr
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i58 = getelementptr inbounds %struct.pch_udc_dev, ptr %127, i32 0, i32 10
  %132 = ptrtoint ptr %base_addr.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base_addr.i.i.i58, align 4
  %add.ptr.i.i.i59 = getelementptr i8, ptr %133, i32 1048
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i59) #10, !srcloc !249
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i60 = and i32 %135, %neg.i.i
  %136 = ptrtoint ptr %base_addr.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base_addr.i.i.i58, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %137, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %138 = tail call i32 @llvm.bswap.i32(i32 %and.i.i60) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %138) #10, !srcloc !252
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #10
  br label %cleanup

cleanup:                                          ; preds = %pch_udc_ep_enable.exit, %lor.lhs.false10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pch_udc_ep_enable.exit ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false10.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_ep_disable(ptr noundef %usbep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0_string
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %5, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %halted.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %6 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %halted.i, align 4
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %halted.i, align 4
  %queue.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not5.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not5.i, label %do.body5.empty_req_queue.exit_crit_edge, label %do.body5.while.body.i_crit_edge

do.body5.while.body.i_crit_edge:                  ; preds = %do.body5
  br label %while.body.i

do.body5.empty_req_queue.exit_crit_edge:          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty_req_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body5.while.body.i_crit_edge
  %9 = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %8, %do.body5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -68
  tail call fastcc void @complete_req(ptr noundef nonnull %usbep, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.empty_req_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.empty_req_queue.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty_req_queue.exit

empty_req_queue.exit:                             ; preds = %while.body.i.empty_req_queue.exit_crit_edge, %do.body5.empty_req_queue.exit_crit_edge
  %12 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %halted.i, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %halted.i, align 4
  %13 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %base_addr.i11.i = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %base_addr.i11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i11.i, align 4
  %offset_addr.i12.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 6
  %18 = ptrtoint ptr %offset_addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset_addr.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %empty_req_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 33554432) #10, !srcloc !252
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %base_addr.i7.i = getelementptr inbounds %struct.pch_udc_dev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %base_addr.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i7.i, align 4
  %24 = ptrtoint ptr %offset_addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset_addr.i12.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -2147483648) #10, !srcloc !252
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i.i.i, align 4
  %30 = ptrtoint ptr %offset_addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset_addr.i12.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %31
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %33 = or i32 %32, 1073741824
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr.i4.i.i, align 4
  %38 = ptrtoint ptr %offset_addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset_addr.i12.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %37, i32 %39
  %add.ptr1.i7.i.i = getelementptr i8, ptr %add.ptr.i6.i.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i.i, i32 %33) #10, !srcloc !252
  br label %pch_udc_ep_disable.exit

if.else.i:                                        ; preds = %empty_req_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -2147483648) #10, !srcloc !252
  br label %pch_udc_ep_disable.exit

pch_udc_ep_disable.exit:                          ; preds = %if.else.i, %if.then.i
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %base_addr.i15.i = getelementptr inbounds %struct.pch_udc_dev, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %base_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i15.i, align 4
  %44 = ptrtoint ptr %offset_addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset_addr.i12.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %43, i32 %45
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i17.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #10, !srcloc !252
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load12 = load i8, ptr %halted.i, align 4
  %bf.lshr = lshr i8 %bf.load12, 3
  %49 = shl i8 %bf.load12, 2
  %50 = and i8 %49, 16
  %51 = xor i8 %50, 16
  %narrow = add nuw nsw i8 %51, %bf.lshr
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i36 = getelementptr inbounds %struct.pch_udc_dev, ptr %47, i32 0, i32 10
  %52 = ptrtoint ptr %base_addr.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i.i.i36, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %53, i32 1048
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i37) #10, !srcloc !249
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %or.i.i = or i32 %shl, %55
  %56 = ptrtoint ptr %base_addr.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i.i.i36, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %57, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %58) #10, !srcloc !252
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc, align 4
  %60 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %queue.i, ptr %prev.i, align 4
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %lock21 = getelementptr inbounds %struct.pch_udc_dev, ptr %63, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %pch_udc_ep_disable.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pch_udc_ep_disable.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pch_udc_alloc_request(ptr noundef readonly %usbep, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !254

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 84) #14
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 8
  %queue = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i, align 8
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr inbounds %struct.pch_udc_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %data_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %data_requests to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_requests, align 8
  %td_data_phys = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 1
  %call10 = tail call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef %gfp, ptr noundef %td_data_phys) #10
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call10, align 4
  %or = or i32 %12, -1073741824
  store i32 %or, ptr %call10, align 4
  %dataptr = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %call10, i32 0, i32 2
  %13 = ptrtoint ptr %dataptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %dataptr, align 4
  %td_data = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %td_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %td_data, align 4
  %td_data_last = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %td_data_last to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %td_data_last, align 8
  %chain_len = getelementptr inbounds %struct.pch_udc_request, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %chain_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %chain_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end3.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ %call7.i.i, %if.end12 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %call7.i.i, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_udc_free_request(ptr noundef readonly %usbep, ptr noundef %usbreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  %tobool1.not = icmp eq ptr %usbreq, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev5, align 4
  %queue = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %7, ptr noundef nonnull %usbreq) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %td_data = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 2
  %8 = ptrtoint ptr %td_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td_data, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.end9.if.end17_crit_edge, label %if.then10

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %if.end9
  %chain_len = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 6
  %10 = ptrtoint ptr %chain_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chain_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp11 = icmp ugt i32 %11, 1
  br i1 %cmp11, label %for.body.lr.ph.i, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then10
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %next.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next.i, align 4
  store i32 0, ptr %next.i, align 4
  %data_requests.i = getelementptr inbounds %struct.pch_udc_dev, ptr %13, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.013.i = phi i32 [ %15, %for.body.lr.ph.i ], [ %19, %for.body.i.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %11, %for.body.lr.ph.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.013.i, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %17 = inttoptr i32 %16 to ptr
  %next2.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %next2.i, align 4
  %20 = ptrtoint ptr %data_requests.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_requests.i, align 8
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef %17, i32 noundef %addr.013.i) #10
  %dec.i = add i32 %i.012.i, -1
  %cmp.i32 = icmp ugt i32 %dec.i, 1
  br i1 %cmp.i32, label %for.body.i.for.body.i_crit_edge, label %pch_udc_free_dma_chain.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pch_udc_free_dma_chain.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %chain_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %chain_len, align 4
  br label %if.end14

if.end14:                                         ; preds = %pch_udc_free_dma_chain.exit, %if.then10.if.end14_crit_edge
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %data_requests = getelementptr inbounds %struct.pch_udc_dev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %data_requests to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_requests, align 8
  %27 = ptrtoint ptr %td_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %td_data, align 4
  %td_data_phys = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 1
  %29 = ptrtoint ptr %td_data_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %td_data_phys, align 4
  tail call void @dma_pool_free(ptr noundef %26, ptr noundef %28, i32 noundef %30) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end9.if.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %usbreq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_queue(ptr noundef %usbep, ptr noundef %usbreq, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  %tobool2.not = icmp eq ptr %usbreq, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %usbreq, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %2 = ptrtoint ptr %usbreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbreq, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %dev7 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool10.not = icmp ult i8 %bf.load, 8
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %queue = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 4
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 8
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %lor.lhs.false20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end18
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %lor.lhs.false20.cleanup_crit_edge, label %do.body23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body23:                                        ; preds = %lor.lhs.false20
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %5, i32 0, i32 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %in = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load31 = load i8, ptr %in, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 2
  %bf.clear = and i8 %bf.lshr32, 1
  %bf.cast33 = zext i8 %bf.clear to i32
  %call34 = tail call i32 @usb_gadget_map_request(ptr noundef %5, ptr noundef nonnull %usbreq, i32 noundef %bf.cast33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %do.body23.probe_end_crit_edge

do.body23.probe_end_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_end

if.end37:                                         ; preds = %do.body23
  %length = getelementptr inbounds %struct.usb_request, ptr %usbreq, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38.not = icmp eq i32 %17, 0
  br i1 %cmp38.not, label %if.end37.if.end45_crit_edge, label %if.then40

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then40:                                        ; preds = %if.end37
  %call41 = tail call fastcc i32 @prepare_dma(ptr noundef nonnull %usbep, ptr noundef nonnull %usbreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end45_crit_edge, label %if.then40.probe_end_crit_edge

if.then40.probe_end_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_end

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %actual = getelementptr inbounds %struct.usb_request, ptr %usbreq, i32 0, i32 12
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %usbreq, i32 0, i32 11
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -115, ptr %status, align 4
  %dma_done = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 5
  %20 = ptrtoint ptr %dma_done to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load46 = load i8, ptr %dma_done, align 4
  %bf.clear47 = and i8 %bf.load46, -65
  store i8 %bf.clear47, ptr %dma_done, align 4
  %queue48 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7
  %21 = ptrtoint ptr %queue48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue48, align 4
  %cmp.i122.not = icmp eq ptr %22, %queue48
  br i1 %cmp.i122.not, label %land.lhs.true51, label %if.end45.if.then78_crit_edge

if.end45.if.then78_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

land.lhs.true51:                                  ; preds = %if.end45
  %23 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load52 = load i8, ptr %in, align 4
  %24 = and i8 %bf.load52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool56.not = icmp eq i8 %24, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true51.if.then78_crit_edge

land.lhs.true51.if.then78_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

if.then57:                                        ; preds = %land.lhs.true51
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool59.not = icmp eq i32 %26, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @process_zlp(ptr noundef nonnull %usbep, ptr noundef nonnull %usbreq)
  br label %probe_end

if.end61:                                         ; preds = %if.then57
  %27 = and i8 %bf.load52, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool67.not = icmp eq i8 %27, 0
  br i1 %tobool67.not, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_start_rxrequest(ptr noundef nonnull %usbep, ptr noundef nonnull %usbreq)
  br label %if.then78

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_wait_ep_stall(ptr noundef nonnull %usbep)
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef nonnull %usbep)
  %28 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev7, align 4
  %30 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load71 = load i8, ptr %in, align 4
  %bf.lshr72 = lshr i8 %bf.load71, 3
  %bf.cast73 = zext i8 %bf.lshr72 to i32
  %shl = shl nuw i32 1, %bf.cast73
  tail call fastcc void @pch_udc_enable_ep_interrupts(ptr noundef %29, i32 noundef %shl)
  br label %if.then78

if.then78:                                        ; preds = %if.else, %if.then68, %land.lhs.true51.if.then78_crit_edge, %if.end45.if.then78_crit_edge
  %prev.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %32, ptr noundef %queue48) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then78.probe_end_crit_edge

if.then78.probe_end_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_end

if.end.i.i:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %queue, ptr %prev.i, align 4
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue48, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.pch_udc_request, ptr %usbreq, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %queue, ptr %32, align 4
  br label %probe_end

probe_end:                                        ; preds = %if.end.i.i, %if.then78.probe_end_crit_edge, %if.then60, %if.then40.probe_end_crit_edge, %do.body23.probe_end_crit_edge
  %retval1.1 = phi i32 [ %call34, %do.body23.probe_end_crit_edge ], [ %call41, %if.then40.probe_end_crit_edge ], [ 0, %if.then60 ], [ 0, %if.then78.probe_end_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #10
  br label %cleanup

cleanup:                                          ; preds = %probe_end, %lor.lhs.false20.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %probe_end ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -108, %lor.lhs.false20.cleanup_crit_edge ], [ -108, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_dequeue(ptr noundef %usbep, ptr noundef readnone %usbreq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  %tobool1.not = icmp eq ptr %usbreq, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool5.not = icmp ult i8 %bf.load, 8
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %4, i32 0, i32 4
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %queue, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp19.not = icmp eq ptr %.pn, %queue
  br i1 %cmp19.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %req.0 = getelementptr i8, ptr %.pn, i32 -68
  %cmp22 = icmp eq ptr %req.0, %usbreq
  br i1 %cmp22, label %if.then24, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then24:                                        ; preds = %for.body
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 6
  %10 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %13 = or i32 %12, -2147483648
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i4.i.i, align 4
  %18 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %13) #10, !srcloc !252
  %20 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %.pn, align 4
  %cmp.i.not = icmp eq ptr %21, %.pn
  br i1 %cmp.i.not, label %if.then24.for.end_crit_edge, label %if.then28

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @complete_req(ptr noundef nonnull %usbep, ptr noundef %usbreq, i32 noundef -104)
  br label %for.end

for.end:                                          ; preds = %if.then28, %if.then24.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.then24.for.end_crit_edge ], [ -22, %for.cond.for.end_crit_edge ]
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %lock37 = getelementptr inbounds %struct.pch_udc_dev, ptr %23, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock37, i32 noundef %call11) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_set_halt(ptr noundef %usbep, i32 noundef %halt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool3.not = icmp ult i8 %bf.load, 8
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @udc_stall_spinlock) #10
  %queue = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %if.then18, label %do.body10.if.end43_crit_edge

do.body10.if.end43_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool19.not = icmp eq i32 %halt, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  %num21 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %11 = ptrtoint ptr %num21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load22 = load i8, ptr %num21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load22)
  %cmp25 = icmp ult i8 %bf.load22, 8
  br i1 %cmp25, label %if.then27, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %stall = getelementptr inbounds %struct.pch_udc_dev, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %stall to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load29 = load i8, ptr %stall, align 4
  %bf.set = or i8 %bf.load29, -128
  store i8 %bf.set, ptr %stall, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then20.if.end30_crit_edge
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef nonnull %usbep)
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %num21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load33 = load i8, ptr %num21, align 4
  %bf.lshr34 = lshr i8 %bf.load33, 3
  %18 = shl i8 %bf.load33, 2
  %19 = and i8 %18, 16
  %20 = xor i8 %19, 16
  %narrow = add nuw nsw i8 %20, %bf.lshr34
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 1048
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %24, %neg.i.i
  %25 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %26, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %27) #10, !srcloc !252
  br label %if.end43

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i58 = getelementptr inbounds %struct.pch_udc_dev, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %base_addr.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i.i.i58, align 4
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 6
  %32 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i59 = getelementptr i8, ptr %31, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i59) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %35 = and i32 %34, -16777217
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %base_addr.i2.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %base_addr.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i2.i.i, align 4
  %40 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i4.i.i60 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i60, i32 %35) #10, !srcloc !252
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %base_addr.i.i3.i = getelementptr inbounds %struct.pch_udc_dev, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %base_addr.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i.i3.i, align 4
  %46 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %45, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %49 = or i32 %48, 65536
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i4.i.i, align 4
  %54 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %53, i32 %55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %49) #10, !srcloc !252
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.end30, %do.body10.if.end43_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ 0, %if.end30 ], [ -11, %do.body10.if.end43_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @udc_stall_spinlock, i32 noundef %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end43 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -108, %lor.lhs.false.cleanup_crit_edge ], [ -108, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_set_wedge(ptr noundef %usbep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool3.not = icmp ult i8 %bf.load, 8
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @udc_stall_spinlock) #10
  %queue = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 7
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %if.else, label %do.body10.if.end43_crit_edge

do.body10.if.end43_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.else:                                          ; preds = %do.body10
  %num19 = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %11 = ptrtoint ptr %num19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load20 = load i8, ptr %num19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load20)
  %cmp23 = icmp ult i8 %bf.load20, 8
  br i1 %cmp23, label %if.then25, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %stall = getelementptr inbounds %struct.pch_udc_dev, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %stall to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load27 = load i8, ptr %stall, align 4
  %bf.set = or i8 %bf.load27, -128
  store i8 %bf.set, ptr %stall, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else.if.end28_crit_edge
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef nonnull %usbep)
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %num19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load31 = load i8, ptr %num19, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 3
  %18 = shl i8 %bf.load31, 2
  %19 = and i8 %18, 16
  %20 = xor i8 %19, 16
  %narrow = add nuw nsw i8 %20, %bf.lshr32
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 1048
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %24, %neg.i.i
  %25 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %26, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %27) #10, !srcloc !252
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %prot_stall = getelementptr inbounds %struct.pch_udc_dev, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %prot_stall to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load40 = load i8, ptr %prot_stall, align 4
  %bf.set42 = or i8 %bf.load40, 64
  store i8 %bf.set42, ptr %prot_stall, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end28, %do.body10.if.end43_crit_edge
  %ret.0 = phi i32 [ 0, %if.end28 ], [ -11, %do.body10.if.end43_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @udc_stall_spinlock, i32 noundef %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end43 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -108, %lor.lhs.false.cleanup_crit_edge ], [ -108, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_udc_pcd_fifo_flush(ptr noundef readonly %usbep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usbep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %usbep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %tobool3.not = icmp ult i8 %bf.load, 8
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %in = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 8
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %in, align 4
  %4 = and i8 %bf.load5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4.cleanup_crit_edge, label %if.then.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i.i.i, align 4
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %usbep, i32 0, i32 6
  %9 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %12 = or i32 %11, 33554432
  %13 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i4.i.i, align 4
  %17 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %12) #10, !srcloc !252
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_enable_ep_interrupts(ptr nocapture noundef readonly %dev, i32 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i = xor i32 %mask, -1
  %and.i = and i32 %3, %neg.i
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %6) #10, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_write_csr(ptr nocapture noundef readonly %dev, i32 noundef %val, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ep, 2
  %add = add i32 %mul, 1280
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %1, i32 1264
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not16.i = icmp eq i32 %3, 0
  br i1 %tobool.not16.i, label %entry.pch_udc_csr_busy.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.pch_udc_csr_busy.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %count.017.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ 200, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %count.017.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.end11.critedge.i, label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !258
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = and i32 %6, 16777216
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i.pch_udc_csr_busy.exit_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

do.end.i.pch_udc_csr_busy.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit

do.end11.critedge.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  br label %pch_udc_csr_busy.exit

pch_udc_csr_busy.exit:                            ; preds = %do.end11.critedge.i, %do.end.i.pch_udc_csr_busy.exit_crit_edge, %entry.pch_udc_csr_busy.exit_crit_edge
  %10 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #10, !srcloc !252
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i15.i4 = getelementptr i8, ptr %14, i32 1264
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i4) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not16.i5 = icmp eq i32 %16, 0
  br i1 %tobool.not16.i5, label %pch_udc_csr_busy.exit.pch_udc_csr_busy.exit16_crit_edge, label %pch_udc_csr_busy.exit.land.rhs.i9_crit_edge

pch_udc_csr_busy.exit.land.rhs.i9_crit_edge:      ; preds = %pch_udc_csr_busy.exit
  br label %land.rhs.i9

pch_udc_csr_busy.exit.pch_udc_csr_busy.exit16_crit_edge: ; preds = %pch_udc_csr_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit16

land.rhs.i9:                                      ; preds = %do.end.i12.land.rhs.i9_crit_edge, %pch_udc_csr_busy.exit.land.rhs.i9_crit_edge
  %count.017.i6 = phi i32 [ %dec.i7, %do.end.i12.land.rhs.i9_crit_edge ], [ 200, %pch_udc_csr_busy.exit.land.rhs.i9_crit_edge ]
  %dec.i7 = add nsw i32 %count.017.i6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i7)
  %tobool1.not.i8 = icmp eq i32 %dec.i7, 0
  br i1 %tobool1.not.i8, label %do.end11.critedge.i15, label %do.end.i12

do.end.i12:                                       ; preds = %land.rhs.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !258
  %17 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %18, i32 1264
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %20 = and i32 %19, 16777216
  %tobool.not.i11 = icmp eq i32 %20, 0
  br i1 %tobool.not.i11, label %do.end.i12.pch_udc_csr_busy.exit16_crit_edge, label %do.end.i12.land.rhs.i9_crit_edge

do.end.i12.land.rhs.i9_crit_edge:                 ; preds = %do.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i9

do.end.i12.pch_udc_csr_busy.exit16_crit_edge:     ; preds = %do.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit16

do.end11.critedge.i15:                            ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i13 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i13, align 4
  %dev12.i14 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i14, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  br label %pch_udc_csr_busy.exit16

pch_udc_csr_busy.exit16:                          ; preds = %do.end11.critedge.i15, %do.end.i12.pch_udc_csr_busy.exit16_crit_edge, %pch_udc_csr_busy.exit.pch_udc_csr_busy.exit16_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_req(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %halted1 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %halted1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %halted1, align 4
  %queue = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %10)
  %cmp = icmp eq i32 %10, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %dev8 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  %14 = ptrtoint ptr %halted1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load10 = load i8, ptr %halted1, align 4
  %bf.lshr11 = lshr i8 %bf.load10, 2
  %bf.clear12 = and i8 %bf.lshr11, 1
  %bf.cast13 = zext i8 %bf.clear12 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %13, ptr noundef %req, i32 noundef %bf.cast13) #10
  %15 = ptrtoint ptr %halted1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load15 = load i8, ptr %halted1, align 4
  %bf.set = or i8 %bf.load15, 2
  store i8 %bf.set, ptr %halted1, align 4
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %16 = ptrtoint ptr %halted1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load18 = load i8, ptr %halted1, align 4
  %17 = and i8 %bf.load18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i.i.i, align 4
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %25 = and i32 %24, -131073
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  %base_addr.i2.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %base_addr.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i2.i.i, align 4
  %30 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %25) #10, !srcloc !252
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %bf.clear = and i8 %bf.load, 2
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %32 = ptrtoint ptr %halted1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load28 = load i8, ptr %halted1, align 4
  %bf.clear29 = and i8 %bf.load28, -3
  %bf.set30 = or i8 %bf.clear29, %bf.clear
  store i8 %bf.set30, ptr %halted1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_dma(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %dma_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %0, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %td_data.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %td_data.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %5 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dma_addr.i, align 4, !annotation !259
  %chain_len.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chain_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  br i1 %cmp.i, label %for.body.lr.ph.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %next.i.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next.i.i, align 4
  store i32 0, ptr %next.i.i, align 4
  %data_requests.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %9, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %addr.013.i.i = phi i32 [ %11, %for.body.lr.ph.i.i ], [ %15, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.012.i.i = phi i32 [ %7, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.013.i.i, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %13 = inttoptr i32 %12 to ptr
  %next2.i.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %next2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next2.i.i, align 4
  %16 = ptrtoint ptr %data_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_requests.i.i, align 8
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef %13, i32 noundef %addr.013.i.i) #10
  %dec.i.i = add i32 %i.012.i.i, -1
  %cmp.i.i = icmp ugt i32 %dec.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %pch_udc_free_dma_chain.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

pch_udc_free_dma_chain.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %chain_len.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %pch_udc_free_dma_chain.exit.i, %entry.if.end.i_crit_edge
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i, align 4
  %dataptr.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %dataptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dataptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast)
  %cmp316.i = icmp ugt i32 %4, %bf.cast
  %22 = tail call i32 @llvm.umin.i32(i32 %4, i32 %bf.cast) #10
  %or17.i = or i32 %22, -1073741824
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or17.i, ptr %2, align 4
  br i1 %cmp316.i, label %if.end7.lr.ph.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end7.lr.ph.i:                                  ; preds = %if.end.i
  %dev8.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end10.i.if.end7.i_crit_edge, %if.end7.lr.ph.i
  %len.021.i = phi i32 [ 1, %if.end7.lr.ph.i ], [ %inc.i, %if.end10.i.if.end7.i_crit_edge ]
  %i.020.i = phi i32 [ 0, %if.end7.lr.ph.i ], [ %add.i, %if.end10.i.if.end7.i_crit_edge ]
  %bytes.019.i = phi i32 [ %4, %if.end7.lr.ph.i ], [ %sub.i, %if.end10.i.if.end7.i_crit_edge ]
  %td.018.i = phi ptr [ %2, %if.end7.lr.ph.i ], [ %call.i, %if.end10.i.if.end7.i_crit_edge ]
  %24 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8.i, align 4
  %data_requests.i = getelementptr inbounds %struct.pch_udc_dev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %data_requests.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_requests.i, align 8
  %call.i = call ptr @dma_pool_alloc(ptr noundef %27, i32 noundef 2592, ptr noundef nonnull %dma_addr.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %nomem.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i
  %add.i = add i32 %i.020.i, %bf.cast
  %28 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %td_data.i, align 4
  %dataptr12.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dataptr12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dataptr12.i, align 4
  %add13.i = add i32 %31, %add.i
  %dataptr14.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %dataptr14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add13.i, ptr %dataptr14.i, align 4
  %33 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i, align 4
  %next.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %td.018.i, i32 0, i32 3
  %35 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %next.i, align 4
  %sub.i = sub i32 %bytes.019.i, %bf.cast
  %inc.i = add i32 %len.021.i, 1
  %cmp3.i = icmp ugt i32 %sub.i, %bf.cast
  %36 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %bf.cast) #10
  %or.i = or i32 %36, -1073741824
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i, ptr %call.i, align 4
  br i1 %cmp3.i, label %if.end10.i.if.end7.i_crit_edge, label %if.end10.i.if.end_crit_edge

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end10.i.if.end7.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

nomem.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.021.i)
  %cmp19.i = icmp ugt i32 %len.021.i, 1
  br i1 %cmp19.i, label %for.body.lr.ph.i6.i, label %nomem.i.do.end_crit_edge

nomem.i.do.end_crit_edge:                         ; preds = %nomem.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i6.i:                              ; preds = %nomem.i
  %38 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %len.021.i, ptr %chain_len.i, align 4
  %39 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev8.i, align 4
  %41 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %td_data.i, align 4
  %next.i3.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %next.i3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next.i3.i, align 4
  store i32 0, ptr %next.i3.i, align 4
  %data_requests.i5.i = getelementptr inbounds %struct.pch_udc_dev, ptr %40, i32 0, i32 6
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.body.i12.i.for.body.i12.i_crit_edge, %for.body.lr.ph.i6.i
  %addr.013.i7.i = phi i32 [ %44, %for.body.lr.ph.i6.i ], [ %48, %for.body.i12.i.for.body.i12.i_crit_edge ]
  %i.012.i8.i = phi i32 [ %len.021.i, %for.body.lr.ph.i6.i ], [ %dec.i10.i, %for.body.i12.i.for.body.i12.i_crit_edge ]
  %45 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.013.i7.i, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %46 = inttoptr i32 %45 to ptr
  %next2.i9.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %next2.i9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %next2.i9.i, align 4
  %49 = ptrtoint ptr %data_requests.i5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data_requests.i5.i, align 8
  call void @dma_pool_free(ptr noundef %50, ptr noundef %46, i32 noundef %addr.013.i7.i) #10
  %dec.i10.i = add i32 %i.012.i8.i, -1
  %cmp.i11.i = icmp ugt i32 %dec.i10.i, 1
  br i1 %cmp.i11.i, label %for.body.i12.i.for.body.i12.i_crit_edge, label %for.body.i12.i.do.end_crit_edge

for.body.i12.i.do.end_crit_edge:                  ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i12.i.for.body.i12.i_crit_edge:          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i12.i

do.end:                                           ; preds = %for.body.i12.i.do.end_crit_edge, %nomem.i.do.end_crit_edge
  %51 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %chain_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef -12) #13
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %td.0.lcssa.i = phi ptr [ %2, %if.end.i.if.end_crit_edge ], [ %call.i, %if.end10.i.if.end_crit_edge ]
  %len.0.lcssa.i = phi i32 [ 1, %if.end.i.if.end_crit_edge ], [ %inc.i, %if.end10.i.if.end_crit_edge ]
  %td_data_last.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 3
  %52 = ptrtoint ptr %td_data_last.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %td.0.lcssa.i, ptr %td_data_last.i, align 4
  %53 = ptrtoint ptr %td.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %td.0.lcssa.i, align 4
  %or16.i = or i32 %54, 134217728
  store i32 %or16.i, ptr %td.0.lcssa.i, align 4
  %td_data_phys.i = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %td_data_phys.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %td_data_phys.i, align 4
  %next17.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %td.0.lcssa.i, i32 0, i32 3
  %57 = ptrtoint ptr %next17.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %next17.i, align 4
  %58 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %len.0.lcssa.i, ptr %chain_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %in = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %59 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load4 = load i8, ptr %in, align 4
  %60 = and i8 %bf.load4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool7.not = icmp eq i8 %60, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %td_data.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and = and i32 %64, 1073741823
  store i32 %and, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_zlp(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call fastcc void @complete_req(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  %set_cfg_not_acked = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_cfg_not_acked to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %set_cfg_not_acked, align 4
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 1028
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = or i32 %6, 2097152
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %9, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %7) #10, !srcloc !252
  %10 = ptrtoint ptr %set_cfg_not_acked to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load3 = load i8, ptr %set_cfg_not_acked, align 4
  %bf.clear4 = and i8 %bf.load3, -5
  store i8 %bf.clear4, ptr %set_cfg_not_acked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %set_cfg_not_acked to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load5 = load i8, ptr %set_cfg_not_acked, align 4
  %12 = and i8 %bf.load5, -126
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %.not = icmp eq i8 %12, 2
  br i1 %.not, label %if.then14, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ep15 = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 3
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep15)
  %13 = ptrtoint ptr %set_cfg_not_acked to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load17 = load i8, ptr %set_cfg_not_acked, align 4
  %bf.clear18 = and i8 %bf.load17, -3
  store i8 %bf.clear18, ptr %set_cfg_not_acked, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_start_rxrequest(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %5 = and i32 %4, -67108865
  %6 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %7, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %5) #10, !srcloc !252
  %td_data1 = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %td_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td_data1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and27 = and i32 %11, 1073741823
  store i32 %and27, ptr %9, align 4
  %and428 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %cmp.not29 = icmp eq i32 %and428, 0
  br i1 %cmp.not29, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %td_data.030 = phi ptr [ %15, %if.end.if.end_crit_edge ], [ %9, %entry.if.end_crit_edge ]
  %next = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %td_data.030, i32 0, i32 3
  %12 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next, align 4
  %14 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %13, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %15 = inttoptr i32 %14 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and = and i32 %17, 1073741823
  store i32 %and, ptr %15, align 4
  %and4 = and i32 %17, 134217728
  %cmp.not = icmp eq i32 %and4, 0
  br i1 %cmp.not, label %if.end.if.end_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %td_data_phys = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %td_data_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %td_data_phys, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i.i, align 4
  %offset_addr.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %24 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %25
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %26) #10, !srcloc !252
  %dma_going = getelementptr inbounds %struct.pch_udc_request, ptr %req, i32 0, i32 5
  %27 = ptrtoint ptr %dma_going to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %dma_going, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dma_going, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load6 = load i8, ptr %num, align 4
  %bf.lshr = lshr i8 %bf.load6, 3
  %bf.cast = zext i8 %bf.lshr to i32
  %shl = shl i32 65536, %bf.cast
  %base_addr.i.i.i19 = getelementptr inbounds %struct.pch_udc_dev, ptr %29, i32 0, i32 10
  %31 = ptrtoint ptr %base_addr.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i.i.i19, align 4
  %add.ptr.i.i.i20 = getelementptr i8, ptr %32, i32 1048
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i20) #10, !srcloc !249
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %34, %neg.i.i
  %35 = ptrtoint ptr %base_addr.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i.i.i19, align 4
  %add.ptr.i4.i.i21 = getelementptr i8, ptr %36, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i21, i32 %37) #10, !srcloc !252
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i22 = getelementptr inbounds %struct.pch_udc_dev, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %base_addr.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i.i.i22, align 4
  %add.ptr.i.i.i23 = getelementptr i8, ptr %41, i32 1028
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %43 = or i32 %42, 67108864
  %44 = ptrtoint ptr %base_addr.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i.i.i22, align 4
  %add.ptr.i4.i.i24 = getelementptr i8, ptr %45, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i24, i32 %43) #10, !srcloc !252
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep)
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %base_addr.i.i.i25 = getelementptr inbounds %struct.pch_udc_dev, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %base_addr.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i.i.i25, align 4
  %50 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %49, i32 %51
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %53 = or i32 %52, 131072
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i4.i.i, align 4
  %58 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %53) #10, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_wait_ep_stall(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %offset_addr.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i7 = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i7, align 4
  %4 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not9 = icmp eq i32 %7, 0
  br i1 %tobool.not9, label %entry.if.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %count.010 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 10000, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.010, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %do.end.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #10
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i, align 4
  %13 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %16 = and i32 %15, 16777216
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #13
  br label %if.end

if.end:                                           ; preds = %do.end.critedge, %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_ep_clear_nak(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base_addr.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %offset_addr.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %in = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %in, align 4
  %9 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.cond.preheader:                             ; preds = %if.end
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %base_addr.i.i60 = getelementptr inbounds %struct.pch_udc_dev, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %base_addr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i60, align 4
  %14 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i.i62 = getelementptr i8, ptr %add.ptr.i.i61, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i62) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not63 = icmp eq i32 %17, 0
  br i1 %tobool6.not63, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.if.end12_crit_edge

while.cond.preheader.if.end12_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %loopcnt.064 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 10000, %while.cond.preheader.land.rhs_crit_edge ]
  %dec = add nsw i32 %loopcnt.064, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %do.end.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #10
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i, align 4
  %23 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %26 = and i32 %25, 65536
  %tobool6.not = icmp eq i32 %26, 0
  br i1 %tobool6.not, label %while.body.land.rhs_crit_edge, label %while.body.if.end12_crit_edge

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end.critedge, %while.body.if.end12_crit_edge, %while.cond.preheader.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  %base_addr.i.i5365 = getelementptr inbounds %struct.pch_udc_dev, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %base_addr.i.i5365 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i.i5365, align 4
  %33 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i.i5566 = getelementptr i8, ptr %32, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5566) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %36 = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool16.not67 = icmp eq i32 %36, 0
  br i1 %tobool16.not67, label %if.end12.cleanup_crit_edge, label %if.end12.land.rhs17_crit_edge

if.end12.land.rhs17_crit_edge:                    ; preds = %if.end12
  br label %land.rhs17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs17:                                       ; preds = %while.body21.land.rhs17_crit_edge, %if.end12.land.rhs17_crit_edge
  %loopcnt.268 = phi i32 [ %dec18, %while.body21.land.rhs17_crit_edge ], [ 10000, %if.end12.land.rhs17_crit_edge ]
  %dec18 = add nsw i32 %loopcnt.268, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18)
  %tobool19.not = icmp eq i32 %dec18, 0
  br i1 %tobool19.not, label %do.end27.critedge, label %while.body21

while.body21:                                     ; preds = %land.rhs17
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %base_addr.i.i57 = getelementptr inbounds %struct.pch_udc_dev, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %base_addr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_addr.i.i57, align 4
  %41 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %40, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %44 = or i32 %43, 65536
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  %base_addr.i4.i = getelementptr inbounds %struct.pch_udc_dev, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %base_addr.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i4.i, align 4
  %49 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %44) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 1073740) #10
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  %base_addr.i.i53 = getelementptr inbounds %struct.pch_udc_dev, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %base_addr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i.i53, align 4
  %56 = ptrtoint ptr %offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset_addr.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %55, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %59 = and i32 %58, 1073741824
  %tobool16.not = icmp eq i32 %59, 0
  br i1 %tobool16.not, label %while.body21.cleanup_crit_edge, label %while.body21.land.rhs17_crit_edge

while.body21.land.rhs17_crit_edge:                ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs17

while.body21.cleanup_crit_edge:                   ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end27.critedge:                                ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #12
  %pdev28 = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load30 = load i8, ptr %in, align 4
  %bf.lshr31 = lshr i8 %bf.load30, 3
  %bf.cast32 = zext i8 %bf.lshr31 to i32
  %63 = and i8 %bf.load30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool38.not = icmp eq i8 %63, 0
  %cond = select i1 %tobool38.not, ptr @.str.56, ptr @.str.55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %bf.cast32, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end27.critedge, %while.body21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_ep_set_stall(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %in, align 4
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %dev.i.i11 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i11, align 4
  %base_addr.i.i12 = getelementptr inbounds %struct.pch_udc_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %base_addr.i.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i12, align 4
  %offset_addr.i.i13 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %6 = ptrtoint ptr %offset_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_addr.i.i13, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = or i32 %8, 33554432
  %10 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i11, align 4
  %base_addr.i4.i = getelementptr inbounds %struct.pch_udc_dev, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %base_addr.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i4.i, align 4
  %14 = ptrtoint ptr %offset_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset_addr.i.i13, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %9) #10, !srcloc !252
  %16 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i11, align 4
  %base_addr.i.i5 = getelementptr inbounds %struct.pch_udc_dev, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %base_addr.i.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i5, align 4
  %20 = ptrtoint ptr %offset_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset_addr.i.i13, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %19, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %23 = or i32 %22, 16777216
  %24 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i11, align 4
  %base_addr.i4.i9 = getelementptr inbounds %struct.pch_udc_dev, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %base_addr.i4.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i4.i9, align 4
  %28 = ptrtoint ptr %offset_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset_addr.i.i13, align 4
  %add.ptr.i6.i10 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i10, i32 %23) #10, !srcloc !252
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %30 = or i32 %8, 16777216
  %31 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i11, align 4
  %base_addr.i4.i16 = getelementptr inbounds %struct.pch_udc_dev, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %base_addr.i4.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i4.i16, align 4
  %35 = ptrtoint ptr %offset_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset_addr.i.i13, align 4
  %add.ptr.i6.i17 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i17, i32 %30) #10, !srcloc !252
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_vbus_gpio_work_fall(ptr noundef %irq_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %irq_work, i32 -3832
  %vbus_gpio4 = getelementptr i8, ptr %irq_work, i32 -8
  %0 = ptrtoint ptr %vbus_gpio4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_gpio4, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.bodythread-pre-split:                         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vbus_gpio4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %vbus_gpio4, align 8
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %entry.for.body_crit_edge
  %3 = phi ptr [ %.pr, %for.bodythread-pre-split ], [ %1, %entry.for.body_crit_edge ]
  %vbus_saved.051 = phi i32 [ %vbus.0.i, %for.bodythread-pre-split ], [ -1, %entry.for.body_crit_edge ]
  %count.050 = phi i32 [ %inc, %for.bodythread-pre-split ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.pch_vbus_gpio_get_value.exit_crit_edge, label %if.then.i

for.body.pch_vbus_gpio_get_value.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_vbus_gpio_get_value.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp ne i32 %call.i, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  br label %pch_vbus_gpio_get_value.exit

pch_vbus_gpio_get_value.exit:                     ; preds = %if.then.i, %for.body.pch_vbus_gpio_get_value.exit_crit_edge
  %vbus.0.i = phi i32 [ %cond.i, %if.then.i ], [ -1, %for.body.pch_vbus_gpio_get_value.exit_crit_edge ]
  %4 = or i32 %vbus.0.i, %vbus_saved.051
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %do.body, label %while.body.preheader

while.body.preheader:                             ; preds = %pch_vbus_gpio_get_value.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #10
  %inc = add nuw nsw i32 %count.050, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %while.body.preheader.cleanup_crit_edge, label %for.bodythread-pre-split

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %pch_vbus_gpio_get_value.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_vbus_gpio_work_fall.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_vbus_gpio_work_fall, %do.end)) #10
          to label %if.then14 [label %do.end], !srcloc !253

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr i8, ptr %irq_work, i32 -2780
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_vbus_gpio_work_fall.__UNIQUE_ID_ddebug238, ptr noundef %dev15, ptr noundef nonnull @.str.66) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %driver = getelementptr i8, ptr %irq_work, i32 -2784
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %do.end.if.end24_crit_edge, label %land.lhs.true18

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true18:                                  ; preds = %do.end
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disconnect, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %land.lhs.true18.if.end24_crit_edge, label %if.then21

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %add.ptr3) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true18.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %intr = getelementptr i8, ptr %irq_work, i32 -4
  %22 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool26.not = icmp eq i32 %23, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_init(ptr noundef %add.ptr3)
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_reconnect(ptr noundef %add.ptr3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_vbus_gpio_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_gpio = getelementptr inbounds %struct.pch_udc_dev, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %vbus_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %intr = getelementptr inbounds %struct.pch_udc_dev, ptr %data, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %pch_vbus_gpio_get_value.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pch_vbus_gpio_get_value.exit:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i.not = icmp eq i32 %call.i, 0
  %irq_work_rise = getelementptr inbounds %struct.pch_udc_dev, ptr %data, i32 0, i32 13, i32 3
  %irq_work_fall = getelementptr inbounds %struct.pch_udc_dev, ptr %data, i32 0, i32 13, i32 2
  %irq_work_rise.sink = select i1 %tobool3.not.i.not, ptr %irq_work_fall, ptr %irq_work_rise
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %irq_work_rise.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %pch_vbus_gpio_get_value.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %pch_vbus_gpio_get_value.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_vbus_gpio_work_rise(ptr noundef %irq_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %irq_work, i32 -3876
  %vbus_gpio4 = getelementptr i8, ptr %irq_work, i32 -52
  %0 = ptrtoint ptr %vbus_gpio4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_gpio4, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #10
  %12 = ptrtoint ptr %vbus_gpio4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbus_gpio4, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.preheader.cleanup_crit_edge, label %pch_vbus_gpio_get_value.exit

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pch_vbus_gpio_get_value.exit:                     ; preds = %while.body.preheader
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i.not, label %pch_vbus_gpio_get_value.exit.cleanup_crit_edge, label %do.body

pch_vbus_gpio_get_value.exit.cleanup_crit_edge:   ; preds = %pch_vbus_gpio_get_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %pch_vbus_gpio_get_value.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_vbus_gpio_work_rise.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_vbus_gpio_work_rise, %do.end)) #10
          to label %if.then13 [label %do.end], !srcloc !253

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr i8, ptr %irq_work, i32 -2824
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_vbus_gpio_work_rise.__UNIQUE_ID_ddebug239, ptr noundef %dev14, ptr noundef nonnull @.str.68) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  tail call fastcc void @pch_udc_reconnect(ptr noundef %add.ptr3)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %pch_vbus_gpio_get_value.exit.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_reconnect(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pch_udc_init(ptr noundef %dev)
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1040
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = and i32 %2, -1207959553
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #10, !srcloc !252
  %6 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %7, i32 1028
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i7 = getelementptr i8, ptr %11, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7, i32 %9) #10, !srcloc !252
  %12 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %13, i32 1028
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %15 = and i32 %14, -262145
  %16 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i11 = getelementptr i8, ptr %17, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i11, i32 %15) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  %19 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %20, i32 1028
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %22 = and i32 %21, -16777217
  %23 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i15 = getelementptr i8, ptr %24, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15, i32 %22) #10, !srcloc !252
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_dev_isr(ptr noundef %dev, i32 noundef %dev_intr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev_intr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %base_addr.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i9.i.i = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i.i, i32 %3) #10, !srcloc !252
  %6 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i52.i = getelementptr i8, ptr %7, i32 1028
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %9 = and i32 %8, -67108865
  %10 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %11, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %9) #10, !srcloc !252
  %12 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i54.i = getelementptr i8, ptr %13, i32 1048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %15 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i55.i = getelementptr i8, ptr %16, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i55.i, i32 -1) #10, !srcloc !252
  %17 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #10, !srcloc !252
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.075.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %dev.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.075.i, i32 5
  %19 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i56.i = getelementptr inbounds %struct.pch_udc_dev, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %base_addr.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i56.i, align 4
  %offset_addr.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.075.i, i32 6
  %23 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %22, i32 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i57.i, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 -268042209) #10, !srcloc !252
  %25 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i59.i = getelementptr inbounds %struct.pch_udc_dev, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %base_addr.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i.i59.i, align 4
  %29 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.i, i32 0) #10, !srcloc !252
  %31 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i63.i = getelementptr inbounds %struct.pch_udc_dev, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %base_addr.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i.i63.i, align 4
  %35 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %34, i32 20
  %add.ptr1.i.i66.i = getelementptr i8, ptr %add.ptr.i.i65.i, i32 %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i66.i, i32 0) #10, !srcloc !252
  %37 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @pch_udc_write_csr(ptr noundef %38, i32 noundef 0, i32 noundef %i.075.i) #10
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %stall.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 5
  %39 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %stall.i, align 4
  %bf.clear10.i = and i8 %bf.load.i, 57
  store i8 %bf.clear10.i, ptr %stall.i, align 4
  br label %for.body14.i

for.body14.i:                                     ; preds = %empty_req_queue.exit.i.for.body14.i_crit_edge, %for.end.i
  %i.176.i = phi i32 [ 0, %for.end.i ], [ %inc20.i, %empty_req_queue.exit.i.for.body14.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.176.i
  %dev.i.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.176.i, i32 5
  %40 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i.i.i67.i = getelementptr inbounds %struct.pch_udc_dev, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %base_addr.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i.i.i67.i, align 4
  %offset_addr.i.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.176.i, i32 6
  %44 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i.i.i68.i = getelementptr i8, ptr %43, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i68.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %47 = or i32 %46, -2147483648
  %48 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i4.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %base_addr.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base_addr.i4.i.i.i, align 4
  %52 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %47) #10, !srcloc !252
  %in.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.176.i, i32 8
  %54 = ptrtoint ptr %in.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load17.i = load i8, ptr %in.i, align 4
  %55 = and i8 %bf.load17.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %for.body14.i.pch_udc_ep_fifo_flush.exit.i_crit_edge, label %if.then.i.i

for.body14.i.pch_udc_ep_fifo_flush.exit.i_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_ep_fifo_flush.exit.i

if.then.i.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i.i.i70.i = getelementptr inbounds %struct.pch_udc_dev, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %base_addr.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr.i.i.i70.i, align 4
  %60 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i.i.i72.i = getelementptr i8, ptr %59, i32 %61
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i72.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %63 = or i32 %62, 33554432
  %64 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i.i.i, align 4
  %base_addr.i4.i.i73.i = getelementptr inbounds %struct.pch_udc_dev, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %base_addr.i4.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i4.i.i73.i, align 4
  %68 = ptrtoint ptr %offset_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset_addr.i.i.i.i, align 4
  %add.ptr.i6.i.i74.i = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i74.i, i32 %63) #10, !srcloc !252
  br label %pch_udc_ep_fifo_flush.exit.i

pch_udc_ep_fifo_flush.exit.i:                     ; preds = %if.then.i.i, %for.body14.i.pch_udc_ep_fifo_flush.exit.i_crit_edge
  %70 = ptrtoint ptr %in.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i = load i8, ptr %in.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %in.i, align 4
  %queue.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.176.i, i32 7
  %71 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not5.i.i = icmp eq ptr %72, %queue.i.i
  br i1 %cmp.i.not5.i.i, label %pch_udc_ep_fifo_flush.exit.i.empty_req_queue.exit.i_crit_edge, label %pch_udc_ep_fifo_flush.exit.i.while.body.i.i_crit_edge

pch_udc_ep_fifo_flush.exit.i.while.body.i.i_crit_edge: ; preds = %pch_udc_ep_fifo_flush.exit.i
  br label %while.body.i.i

pch_udc_ep_fifo_flush.exit.i.empty_req_queue.exit.i_crit_edge: ; preds = %pch_udc_ep_fifo_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty_req_queue.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %pch_udc_ep_fifo_flush.exit.i.while.body.i.i_crit_edge
  %73 = phi ptr [ %75, %while.body.i.i.while.body.i.i_crit_edge ], [ %72, %pch_udc_ep_fifo_flush.exit.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 -68
  tail call fastcc void @complete_req(ptr noundef %arrayidx16.i, ptr noundef %add.ptr.i.i, i32 noundef -108) #10
  %74 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %75, %queue.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.i.empty_req_queue.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.empty_req_queue.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty_req_queue.exit.i

empty_req_queue.exit.i:                           ; preds = %while.body.i.i.empty_req_queue.exit.i_crit_edge, %pch_udc_ep_fifo_flush.exit.i.empty_req_queue.exit.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.176.i, 1
  %exitcond77.not.i = icmp eq i32 %inc20.i, 8
  br i1 %exitcond77.not.i, label %for.end21.i, label %empty_req_queue.exit.i.for.body14.i_crit_edge

empty_req_queue.exit.i.for.body14.i_crit_edge:    ; preds = %empty_req_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.end21.i:                                      ; preds = %empty_req_queue.exit.i
  %driver.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 1
  %76 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver.i, align 8
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %for.end21.i.pch_udc_svc_ur_interrupt.exit_crit_edge, label %if.then.i

for.end21.i.pch_udc_svc_ur_interrupt.exit_crit_edge: ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_ur_interrupt.exit

if.then.i:                                        ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %78 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %dev, ptr noundef %79) #10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  br label %pch_udc_svc_ur_interrupt.exit

pch_udc_svc_ur_interrupt.exit:                    ; preds = %if.then.i, %for.end21.i.pch_udc_svc_ur_interrupt.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end7)) #10
          to label %if.then5 [label %if.end7], !srcloc !253

if.then5:                                         ; preds = %pch_udc_svc_ur_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug242, ptr noundef %dev6, ptr noundef nonnull @.str.72) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %pch_udc_svc_ur_interrupt.exit, %entry.if.end7_crit_edge
  %and8 = and i32 %dev_intr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end31_crit_edge, label %if.then10

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then10:                                        ; preds = %if.end7
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %82 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i227 = getelementptr i8, ptr %83, i32 1032
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i227) #10, !srcloc !249
  %85 = lshr i32 %84, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %shr.i = and i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %.not = icmp eq i32 %shr.i, 3
  br i1 %.not, label %do.body.i, label %switch.lookup

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/pch_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2537, 0\0A.popsection", ""() #10, !srcloc !260
  unreachable

switch.lookup:                                    ; preds = %if.then10
  %switch.offset = xor i32 %shr.i, 3
  %speed6.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %86 = ptrtoint ptr %speed6.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %switch.offset, ptr %speed6.i, align 8
  %dev.i.i.i.i228 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 0, i32 5
  %87 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i.i.i.i229 = getelementptr inbounds %struct.pch_udc_dev, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %base_addr.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base_addr.i.i.i.i229, align 4
  %offset_addr.i.i.i.i230 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 0, i32 6
  %91 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i.i.i.i231 = getelementptr i8, ptr %90, i32 %92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i231, i32 0) #10, !srcloc !252
  %in.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 0, i32 8
  %93 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load.i.i232 = load i8, ptr %in.i.i, align 4
  %94 = and i8 %bf.load.i.i232, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i, label %switch.lookup.pch_udc_ep_fifo_flush.exit.i.i_crit_edge, label %if.then.i.i.i

switch.lookup.pch_udc_ep_fifo_flush.exit.i.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_ep_fifo_flush.exit.i.i

if.then.i.i.i:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %base_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_addr.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %98, i32 %100
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %102 = or i32 %101, 33554432
  %103 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i4.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %base_addr.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base_addr.i4.i.i.i.i, align 4
  %107 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i6.i.i.i.i = getelementptr i8, ptr %106, i32 %108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i.i, i32 %102) #10, !srcloc !252
  br label %pch_udc_ep_fifo_flush.exit.i.i

pch_udc_ep_fifo_flush.exit.i.i:                   ; preds = %if.then.i.i.i, %switch.lookup.pch_udc_ep_fifo_flush.exit.i.i_crit_edge
  %109 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load3.i.i = load i8, ptr %in.i.i, align 4
  %110 = and i8 %bf.load3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i55.i.i = icmp eq i8 %110, 0
  %111 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i18.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %112, i32 0, i32 10
  %113 = ptrtoint ptr %base_addr.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base_addr.i18.i.i.i, align 4
  %115 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %114, i32 %116
  br i1 %tobool.not.i55.i.i, label %if.else.i.i.i, label %if.then.i56.i.i

if.then.i56.i.i:                                  ; preds = %pch_udc_ep_fifo_flush.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i20.i.i.i, i32 8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %118 = and i32 %117, 65535
  %119 = or i32 %118, 268435456
  %120 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i13.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %121, i32 0, i32 10
  %122 = ptrtoint ptr %base_addr.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base_addr.i13.i.i.i, align 4
  %124 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i15.i.i.i = getelementptr i8, ptr %123, i32 %125
  %add.ptr1.i16.i.i.i = getelementptr i8, ptr %add.ptr.i15.i.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i.i.i, i32 %119) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit.i.i

if.else.i.i.i:                                    ; preds = %pch_udc_ep_fifo_flush.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i21.i.i.i = getelementptr i8, ptr %add.ptr.i20.i.i.i, i32 12
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i21.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %127 = and i32 %126, -65536
  %128 = or i32 %127, 4096
  %129 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i23.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %130, i32 0, i32 10
  %131 = ptrtoint ptr %base_addr.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base_addr.i23.i.i.i, align 4
  %133 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %132, i32 %134
  %add.ptr1.i26.i.i.i = getelementptr i8, ptr %add.ptr.i25.i.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i.i.i, i32 %128) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit.i.i

pch_udc_ep_set_bufsz.exit.i.i:                    ; preds = %if.else.i.i.i, %if.then.i56.i.i
  %135 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i.i58.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %136, i32 0, i32 10
  %137 = ptrtoint ptr %base_addr.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base_addr.i.i58.i.i, align 4
  %139 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i.i60.i.i = getelementptr i8, ptr %138, i32 %140
  %add.ptr1.i.i61.i.i = getelementptr i8, ptr %add.ptr.i.i60.i.i, i32 12
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i61.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %142 = and i32 %141, 65535
  %143 = or i32 %142, 1073741824
  %144 = ptrtoint ptr %dev.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i.i.i.i228, align 4
  %base_addr.i5.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %145, i32 0, i32 10
  %146 = ptrtoint ptr %base_addr.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base_addr.i5.i.i.i, align 4
  %148 = ptrtoint ptr %offset_addr.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset_addr.i.i.i.i230, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %147, i32 %149
  %add.ptr1.i8.i.i.i = getelementptr i8, ptr %add.ptr.i7.i.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i.i.i, i32 %143) #10, !srcloc !252
  %td_stp_phys.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 0, i32 1
  %dev.i.i63.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 5
  %150 = call ptr @memset(ptr %td_stp_phys.i.i, i32 0, i32 16)
  %151 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i64.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %152, i32 0, i32 10
  %153 = ptrtoint ptr %base_addr.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base_addr.i.i64.i.i, align 4
  %offset_addr.i.i65.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 6
  %155 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %154, i32 %156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66.i.i, i32 0) #10, !srcloc !252
  %in9.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 8
  %157 = ptrtoint ptr %in9.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load10.i.i = load i8, ptr %in9.i.i, align 4
  %158 = and i8 %bf.load10.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i67.i.i = icmp eq i8 %158, 0
  br i1 %tobool.not.i67.i.i, label %pch_udc_ep_set_bufsz.exit.i.i.pch_udc_ep_fifo_flush.exit75.i.i_crit_edge, label %if.then.i74.i.i

pch_udc_ep_set_bufsz.exit.i.i.pch_udc_ep_fifo_flush.exit75.i.i_crit_edge: ; preds = %pch_udc_ep_set_bufsz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_ep_fifo_flush.exit75.i.i

if.then.i74.i.i:                                  ; preds = %pch_udc_ep_set_bufsz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i.i69.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %160, i32 0, i32 10
  %161 = ptrtoint ptr %base_addr.i.i.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base_addr.i.i.i69.i.i, align 4
  %163 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i.i71.i.i = getelementptr i8, ptr %162, i32 %164
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %166 = or i32 %165, 33554432
  %167 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i4.i.i72.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %168, i32 0, i32 10
  %169 = ptrtoint ptr %base_addr.i4.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base_addr.i4.i.i72.i.i, align 4
  %171 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i6.i.i73.i.i = getelementptr i8, ptr %170, i32 %172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i73.i.i, i32 %166) #10, !srcloc !252
  br label %pch_udc_ep_fifo_flush.exit75.i.i

pch_udc_ep_fifo_flush.exit75.i.i:                 ; preds = %if.then.i74.i.i, %pch_udc_ep_set_bufsz.exit.i.i.pch_udc_ep_fifo_flush.exit75.i.i_crit_edge
  %173 = ptrtoint ptr %in9.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %bf.load15.i.i = load i8, ptr %in9.i.i, align 4
  %174 = and i8 %bf.load15.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i76.i.i = icmp eq i8 %174, 0
  %175 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i18.i78.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %176, i32 0, i32 10
  %177 = ptrtoint ptr %base_addr.i18.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base_addr.i18.i78.i.i, align 4
  %179 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i20.i80.i.i = getelementptr i8, ptr %178, i32 %180
  br i1 %tobool.not.i76.i.i, label %if.else.i92.i.i, label %if.then.i86.i.i

if.then.i86.i.i:                                  ; preds = %pch_udc_ep_fifo_flush.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i.i81.i.i = getelementptr i8, ptr %add.ptr.i20.i80.i.i, i32 8
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i81.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %182 = and i32 %181, 65535
  %183 = or i32 %182, 268435456
  %184 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i13.i83.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %185, i32 0, i32 10
  %186 = ptrtoint ptr %base_addr.i13.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base_addr.i13.i83.i.i, align 4
  %188 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i15.i84.i.i = getelementptr i8, ptr %187, i32 %189
  %add.ptr1.i16.i85.i.i = getelementptr i8, ptr %add.ptr.i15.i84.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i85.i.i, i32 %183) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit93.i.i

if.else.i92.i.i:                                  ; preds = %pch_udc_ep_fifo_flush.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i21.i87.i.i = getelementptr i8, ptr %add.ptr.i20.i80.i.i, i32 12
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i21.i87.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %191 = and i32 %190, -65536
  %192 = or i32 %191, 4096
  %193 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i23.i89.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %194, i32 0, i32 10
  %195 = ptrtoint ptr %base_addr.i23.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base_addr.i23.i89.i.i, align 4
  %197 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i25.i90.i.i = getelementptr i8, ptr %196, i32 %198
  %add.ptr1.i26.i91.i.i = getelementptr i8, ptr %add.ptr.i25.i90.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i91.i.i, i32 %192) #10, !srcloc !252
  br label %pch_udc_ep_set_bufsz.exit93.i.i

pch_udc_ep_set_bufsz.exit93.i.i:                  ; preds = %if.else.i92.i.i, %if.then.i86.i.i
  %199 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i95.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %200, i32 0, i32 10
  %201 = ptrtoint ptr %base_addr.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base_addr.i.i95.i.i, align 4
  %203 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i97.i.i = getelementptr i8, ptr %202, i32 %204
  %add.ptr1.i.i98.i.i = getelementptr i8, ptr %add.ptr.i.i97.i.i, i32 12
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i98.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %206 = and i32 %205, 65535
  %207 = or i32 %206, 1073741824
  %208 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i5.i100.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %209, i32 0, i32 10
  %210 = ptrtoint ptr %base_addr.i5.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base_addr.i5.i100.i.i, align 4
  %212 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i7.i101.i.i = getelementptr i8, ptr %211, i32 %213
  %add.ptr1.i8.i102.i.i = getelementptr i8, ptr %add.ptr.i7.i101.i.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i102.i.i, i32 %207) #10, !srcloc !252
  %214 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i.i63.i.i, align 4
  tail call fastcc void @pch_udc_write_csr(ptr noundef %215, i32 noundef 33554432, i32 noundef 1) #10
  %td_stp20.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 3
  %216 = ptrtoint ptr %td_stp20.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %td_stp20.i.i, align 4
  %tobool.not.i103.i.i = icmp eq ptr %217, null
  br i1 %tobool.not.i103.i.i, label %pch_udc_ep_set_bufsz.exit93.i.i.pch_udc_svc_enum_interrupt.exit_crit_edge, label %if.end.i.i.i

pch_udc_ep_set_bufsz.exit93.i.i.pch_udc_svc_enum_interrupt.exit_crit_edge: ; preds = %pch_udc_ep_set_bufsz.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_svc_enum_interrupt.exit

if.end.i.i.i:                                     ; preds = %pch_udc_ep_set_bufsz.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = load i32, ptr @pch_udc_init_setup_buff.pky_marker, align 4
  %inc.i.i.i = add i32 %218, 1
  store i32 %inc.i.i.i, ptr @pch_udc_init_setup_buff.pky_marker, align 4
  %reserved.i.i.i = getelementptr inbounds %struct.pch_udc_stp_dma_desc, ptr %217, i32 0, i32 1
  %219 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 %inc.i.i.i, ptr %reserved.i.i.i, align 1
  %request.i.i.i = getelementptr inbounds %struct.pch_udc_stp_dma_desc, ptr %217, i32 0, i32 2
  %220 = ptrtoint ptr %request.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 8)
  store i64 -1, ptr %request.i.i.i, align 1
  %221 = ptrtoint ptr %217 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 0, ptr %217, align 1
  br label %pch_udc_svc_enum_interrupt.exit

pch_udc_svc_enum_interrupt.exit:                  ; preds = %if.end.i.i.i, %pch_udc_ep_set_bufsz.exit93.i.i.pch_udc_svc_enum_interrupt.exit_crit_edge
  %arrayidx8.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1
  %td_stp_phys21.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 1
  %222 = ptrtoint ptr %td_stp_phys21.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %td_stp_phys21.i.i, align 4
  %224 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i105.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %225, i32 0, i32 10
  %226 = ptrtoint ptr %base_addr.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base_addr.i.i105.i.i, align 4
  %228 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i107.i.i = getelementptr i8, ptr %227, i32 %229
  %add.ptr1.i.i108.i.i = getelementptr i8, ptr %add.ptr.i.i107.i.i, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %230 = tail call i32 @llvm.bswap.i32(i32 %223) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i108.i.i, i32 %230) #10, !srcloc !252
  %td_data_phys22.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 2
  %231 = ptrtoint ptr %td_data_phys22.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %td_data_phys22.i.i, align 4
  %233 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i110.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %234, i32 0, i32 10
  %235 = ptrtoint ptr %base_addr.i.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base_addr.i.i110.i.i, align 4
  %237 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i112.i.i = getelementptr i8, ptr %236, i32 %238
  %add.ptr1.i.i113.i.i = getelementptr i8, ptr %add.ptr.i.i112.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %239 = tail call i32 @llvm.bswap.i32(i32 %232) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i113.i.i, i32 %239) #10, !srcloc !252
  %td_data23.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 1, i32 4
  %240 = ptrtoint ptr %td_data23.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %td_data23.i.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 134217728, ptr %241, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 8
  %243 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %dma_addr.i.i, align 8
  %245 = load ptr, ptr %td_data23.i.i, align 4
  %dataptr.i.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %dataptr.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %244, ptr %dataptr.i.i, align 4
  %247 = ptrtoint ptr %td_data_phys22.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %td_data_phys22.i.i, align 4
  %249 = load ptr, ptr %td_data23.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %248, ptr %next.i.i, align 4
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %arrayidx8.i.i) #10
  %251 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %252, i32 1048
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %254 = and i32 %253, -16777473
  %255 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i.i233 = getelementptr i8, ptr %256, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i233, i32 %254) #10, !srcloc !252
  %257 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i17.i = getelementptr i8, ptr %258, i32 1028
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i17.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %260 = or i32 %259, 134217728
  %261 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i9.i.i234 = getelementptr i8, ptr %262, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i.i234, i32 %260) #10, !srcloc !252
  %263 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i19.i = getelementptr i8, ptr %264, i32 1028
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i19.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %266 = or i32 %265, 67108864
  %267 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i20.i = getelementptr i8, ptr %268, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i20.i, i32 %266) #10, !srcloc !252
  %269 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i.i.i22.i = getelementptr inbounds %struct.pch_udc_dev, ptr %270, i32 0, i32 10
  %271 = ptrtoint ptr %base_addr.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base_addr.i.i.i22.i, align 4
  %273 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i.i.i24.i = getelementptr i8, ptr %272, i32 %274
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i24.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %276 = or i32 %275, 131072
  %277 = ptrtoint ptr %dev.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev.i.i63.i.i, align 4
  %base_addr.i4.i.i.i235 = getelementptr inbounds %struct.pch_udc_dev, ptr %278, i32 0, i32 10
  %279 = ptrtoint ptr %base_addr.i4.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %base_addr.i4.i.i.i235, align 4
  %281 = ptrtoint ptr %offset_addr.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %offset_addr.i.i65.i.i, align 4
  %add.ptr.i6.i.i.i236 = getelementptr i8, ptr %280, i32 %282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i236, i32 %276) #10, !srcloc !252
  %283 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i26.i = getelementptr i8, ptr %284, i32 1040
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %286 = and i32 %285, -1593835521
  %287 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i27.i = getelementptr i8, ptr %288, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i27.i, i32 %286) #10, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end31)) #10
          to label %if.then25 [label %if.end31], !srcloc !253

if.then25:                                        ; preds = %pch_udc_svc_enum_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev26 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %289 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pdev26, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug243, ptr noundef %dev27, ptr noundef nonnull @.str.73) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %pch_udc_svc_enum_interrupt.exit, %if.end7.if.end31_crit_edge
  %and32 = and i32 %dev_intr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  %base_addr.i.i.i237 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %291 = ptrtoint ptr %base_addr.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %base_addr.i.i.i237, align 4
  %add.ptr.i.i.i238 = getelementptr i8, ptr %292, i32 1032
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i238) #10, !srcloc !249
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %295 = trunc i32 %294 to i16
  %296 = lshr i16 %295, 4
  %conv.i = and i16 %296, 15
  %cur_intf.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 12, i32 1
  %297 = ptrtoint ptr %cur_intf.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %conv.i, ptr %cur_intf.i, align 2
  %298 = lshr i16 %295, 8
  %conv3.i = and i16 %298, 15
  %cur_alt.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 12, i32 2
  %299 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %conv3.i, ptr %cur_alt.i, align 2
  %set_cfg_not_acked.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 5
  %300 = ptrtoint ptr %set_cfg_not_acked.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %bf.load.i239 = load i8, ptr %set_cfg_not_acked.i, align 4
  %bf.set.i = or i8 %bf.load.i239, 4
  store i8 %bf.set.i, ptr %set_cfg_not_acked.i, align 4
  %setup_data.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 9
  %301 = ptrtoint ptr %setup_data.i to i32
  call void @__asan_storeN_noabort(i32 %301, i32 8)
  store i64 75153818781745152, ptr %setup_data.i, align 4
  %302 = shl nuw nsw i16 %conv3.i, 8
  %wValue.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 9, i32 2
  %303 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %wValue.i, align 2
  %304 = shl nuw nsw i16 %conv.i, 8
  %wIndex.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 9, i32 3
  %305 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %304, ptr %wIndex.i, align 4
  %call13.i = tail call fastcc i32 @pch_udc_read_csr(ptr noundef %dev) #10
  %and14.i = and i32 %call13.i, -522241
  %306 = ptrtoint ptr %cur_intf.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %cur_intf.i, align 2
  %conv17.i = zext i16 %307 to i32
  %shl.i = shl nuw nsw i32 %conv17.i, 11
  %shl.masked.i = and i32 %shl.i, 133724160
  %and18.i = or i32 %shl.masked.i, %and14.i
  %308 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %cur_alt.i, align 2
  %conv21.i = zext i16 %309 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 15
  %or23.i = or i32 %and18.i, %shl22.i
  tail call fastcc void @pch_udc_write_csr(ptr noundef %dev, i32 noundef %or23.i, i32 noundef 1) #10
  br label %for.body.i249

for.body.i249:                                    ; preds = %for.body.i249.for.body.i249_crit_edge, %if.then34
  %i.058.i = phi i32 [ 0, %if.then34 ], [ %inc.i247, %for.body.i249.for.body.i249_crit_edge ]
  %dev.i.i.i.i240 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.058.i, i32 5
  %310 = ptrtoint ptr %dev.i.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i.i.i.i240, align 4
  %base_addr.i.i.i.i241 = getelementptr inbounds %struct.pch_udc_dev, ptr %311, i32 0, i32 10
  %312 = ptrtoint ptr %base_addr.i.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %base_addr.i.i.i.i241, align 4
  %offset_addr.i.i.i.i242 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.058.i, i32 6
  %314 = ptrtoint ptr %offset_addr.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %offset_addr.i.i.i.i242, align 4
  %add.ptr.i.i.i.i243 = getelementptr i8, ptr %313, i32 %315
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i243) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %317 = and i32 %316, -16777217
  %318 = ptrtoint ptr %dev.i.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev.i.i.i.i240, align 4
  %base_addr.i2.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %319, i32 0, i32 10
  %320 = ptrtoint ptr %base_addr.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %base_addr.i2.i.i.i, align 4
  %322 = ptrtoint ptr %offset_addr.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %offset_addr.i.i.i.i242, align 4
  %add.ptr.i4.i.i.i244 = getelementptr i8, ptr %321, i32 %323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i244, i32 %317) #10, !srcloc !252
  %324 = ptrtoint ptr %dev.i.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev.i.i.i.i240, align 4
  %base_addr.i.i3.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %325, i32 0, i32 10
  %326 = ptrtoint ptr %base_addr.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %base_addr.i.i3.i.i, align 4
  %328 = ptrtoint ptr %offset_addr.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %offset_addr.i.i.i.i242, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %327, i32 %329
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %331 = or i32 %330, 65536
  %332 = ptrtoint ptr %dev.i.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev.i.i.i.i240, align 4
  %base_addr.i4.i.i.i245 = getelementptr inbounds %struct.pch_udc_dev, ptr %333, i32 0, i32 10
  %334 = ptrtoint ptr %base_addr.i4.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %base_addr.i4.i.i.i245, align 4
  %336 = ptrtoint ptr %offset_addr.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %offset_addr.i.i.i.i242, align 4
  %add.ptr.i6.i.i.i246 = getelementptr i8, ptr %335, i32 %337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i246, i32 %331) #10, !srcloc !252
  %halted.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.058.i, i32 8
  %338 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %bf.load27.i = load i8, ptr %halted.i, align 4
  %bf.clear28.i = and i8 %bf.load27.i, -3
  store i8 %bf.clear28.i, ptr %halted.i, align 4
  %inc.i247 = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i248 = icmp eq i32 %inc.i247, 8
  br i1 %exitcond.not.i248, label %for.end.i251, label %for.body.i249.for.body.i249_crit_edge

for.body.i249.for.body.i249_crit_edge:            ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i249

for.end.i251:                                     ; preds = %for.body.i249
  %339 = ptrtoint ptr %set_cfg_not_acked.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %bf.load30.i = load i8, ptr %set_cfg_not_acked.i, align 4
  %bf.clear31.i = and i8 %bf.load30.i, 127
  store i8 %bf.clear31.i, ptr %set_cfg_not_acked.i, align 4
  %driver.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 1
  %340 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i250 = icmp eq ptr %341, null
  br i1 %tobool.not.i.i250, label %for.end.i251.if.end35_crit_edge, label %if.end.i.i

for.end.i251.if.end35_crit_edge:                  ; preds = %for.end.i251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end.i.i:                                       ; preds = %for.end.i251
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  %342 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %driver.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %343, i32 0, i32 4
  %344 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %setup.i.i, align 4
  %call.i.i = tail call i32 %345(ptr noundef %dev, ptr noundef %setup_data.i) #10
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  br label %if.end35

if.end35:                                         ; preds = %if.end.i.i, %for.end.i251.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %and36 = and i32 %dev_intr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  %base_addr.i.i.i252 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %346 = ptrtoint ptr %base_addr.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %base_addr.i.i.i252, align 4
  %add.ptr.i.i.i253 = getelementptr i8, ptr %347, i32 1032
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i253) #10, !srcloc !249
  %349 = lshr i32 %348, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %set_cfg_not_acked.i254 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 5
  %350 = ptrtoint ptr %set_cfg_not_acked.i254 to i32
  call void @__asan_load1_noabort(i32 %350)
  %bf.load.i255 = load i8, ptr %set_cfg_not_acked.i254, align 4
  %bf.set.i256 = or i8 %bf.load.i255, 4
  store i8 %bf.set.i256, ptr %set_cfg_not_acked.i254, align 4
  %351 = trunc i32 %349 to i16
  %conv.i257 = and i16 %351, 15
  %cfg_data.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 12
  %352 = ptrtoint ptr %cfg_data.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv.i257, ptr %cfg_data.i, align 2
  %setup_data.i258 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 9
  %353 = ptrtoint ptr %setup_data.i258 to i32
  call void @__asan_storeN_noabort(i32 %353, i32 8)
  store i64 2533274790395904, ptr %setup_data.i258, align 4
  %354 = shl nuw nsw i16 %conv.i257, 8
  %wValue.i259 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 9, i32 2
  %355 = ptrtoint ptr %wValue.i259 to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %354, ptr %wValue.i259, align 2
  %call5.i = tail call fastcc i32 @pch_udc_read_csr(ptr noundef %dev) #10
  %and6.i = and i32 %call5.i, -1921
  %356 = ptrtoint ptr %cfg_data.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %cfg_data.i, align 2
  %conv9.i = zext i16 %357 to i32
  %shl.i260 = shl nuw nsw i32 %conv9.i, 7
  %or.i = or i32 %shl.i260, %and6.i
  tail call fastcc void @pch_udc_write_csr(ptr noundef %dev, i32 noundef %or.i, i32 noundef 1) #10
  br label %for.body.i274

for.body.i274:                                    ; preds = %for.body.i274.for.body.i274_crit_edge, %if.then38
  %i.037.i = phi i32 [ 0, %if.then38 ], [ %inc.i272, %for.body.i274.for.body.i274_crit_edge ]
  %dev.i.i.i.i261 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.037.i, i32 5
  %358 = ptrtoint ptr %dev.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev.i.i.i.i261, align 4
  %base_addr.i.i.i.i262 = getelementptr inbounds %struct.pch_udc_dev, ptr %359, i32 0, i32 10
  %360 = ptrtoint ptr %base_addr.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %base_addr.i.i.i.i262, align 4
  %offset_addr.i.i.i.i263 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.037.i, i32 6
  %362 = ptrtoint ptr %offset_addr.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %offset_addr.i.i.i.i263, align 4
  %add.ptr.i.i.i.i264 = getelementptr i8, ptr %361, i32 %363
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i264) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %365 = and i32 %364, -16777217
  %366 = ptrtoint ptr %dev.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev.i.i.i.i261, align 4
  %base_addr.i2.i.i.i265 = getelementptr inbounds %struct.pch_udc_dev, ptr %367, i32 0, i32 10
  %368 = ptrtoint ptr %base_addr.i2.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %base_addr.i2.i.i.i265, align 4
  %370 = ptrtoint ptr %offset_addr.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %offset_addr.i.i.i.i263, align 4
  %add.ptr.i4.i.i.i266 = getelementptr i8, ptr %369, i32 %371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i266, i32 %365) #10, !srcloc !252
  %372 = ptrtoint ptr %dev.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev.i.i.i.i261, align 4
  %base_addr.i.i3.i.i267 = getelementptr inbounds %struct.pch_udc_dev, ptr %373, i32 0, i32 10
  %374 = ptrtoint ptr %base_addr.i.i3.i.i267 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %base_addr.i.i3.i.i267, align 4
  %376 = ptrtoint ptr %offset_addr.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %offset_addr.i.i.i.i263, align 4
  %add.ptr.i.i5.i.i268 = getelementptr i8, ptr %375, i32 %377
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i268) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %379 = or i32 %378, 65536
  %380 = ptrtoint ptr %dev.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dev.i.i.i.i261, align 4
  %base_addr.i4.i.i.i269 = getelementptr inbounds %struct.pch_udc_dev, ptr %381, i32 0, i32 10
  %382 = ptrtoint ptr %base_addr.i4.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %base_addr.i4.i.i.i269, align 4
  %384 = ptrtoint ptr %offset_addr.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %offset_addr.i.i.i.i263, align 4
  %add.ptr.i6.i.i.i270 = getelementptr i8, ptr %383, i32 %385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i270, i32 %379) #10, !srcloc !252
  %halted.i271 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %i.037.i, i32 8
  %386 = ptrtoint ptr %halted.i271 to i32
  call void @__asan_load1_noabort(i32 %386)
  %bf.load13.i = load i8, ptr %halted.i271, align 4
  %bf.clear14.i = and i8 %bf.load13.i, -3
  store i8 %bf.clear14.i, ptr %halted.i271, align 4
  %inc.i272 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i273 = icmp eq i32 %inc.i272, 8
  br i1 %exitcond.not.i273, label %for.end.i277, label %for.body.i274.for.body.i274_crit_edge

for.body.i274.for.body.i274_crit_edge:            ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i274

for.end.i277:                                     ; preds = %for.body.i274
  %387 = ptrtoint ptr %set_cfg_not_acked.i254 to i32
  call void @__asan_load1_noabort(i32 %387)
  %bf.load16.i = load i8, ptr %set_cfg_not_acked.i254, align 4
  %bf.clear17.i = and i8 %bf.load16.i, 127
  store i8 %bf.clear17.i, ptr %set_cfg_not_acked.i254, align 4
  %driver.i.i275 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 1
  %388 = ptrtoint ptr %driver.i.i275 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %driver.i.i275, align 8
  %tobool.not.i.i276 = icmp eq ptr %389, null
  br i1 %tobool.not.i.i276, label %for.end.i277.if.end39_crit_edge, label %if.end.i.i281

for.end.i277.if.end39_crit_edge:                  ; preds = %for.end.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end.i.i281:                                    ; preds = %for.end.i277
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i278 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i278) #10
  %390 = ptrtoint ptr %driver.i.i275 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %driver.i.i275, align 8
  %setup.i.i279 = getelementptr inbounds %struct.usb_gadget_driver, ptr %391, i32 0, i32 4
  %392 = ptrtoint ptr %setup.i.i279 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %setup.i.i279, align 4
  %call.i.i280 = tail call i32 %393(ptr noundef %dev, ptr noundef %setup_data.i258) #10
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i278) #10
  br label %if.end39

if.end39:                                         ; preds = %if.end.i.i281, %for.end.i277.if.end39_crit_edge, %if.end35.if.end39_crit_edge
  %and40 = and i32 %dev_intr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end102_crit_edge, label %if.then42

if.end39.if.end102_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then42:                                        ; preds = %if.end39
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 1
  %394 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %driver, align 8
  %tobool43.not = icmp eq ptr %395, null
  br i1 %tobool43.not, label %if.then42.if.end50_crit_edge, label %land.lhs.true

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then42
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %395, i32 0, i32 6
  %396 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %suspend, align 4
  %tobool45.not = icmp eq ptr %397, null
  br i1 %tobool45.not, label %land.lhs.true.if.end50_crit_edge, label %if.then46

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %398 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %driver, align 8
  %suspend48 = getelementptr inbounds %struct.usb_gadget_driver, ptr %399, i32 0, i32 6
  %400 = ptrtoint ptr %suspend48 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %suspend48, align 4
  tail call void %401(ptr noundef %dev) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true.if.end50_crit_edge, %if.then42.if.end50_crit_edge
  %vbus_gpio.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 13
  %402 = ptrtoint ptr %vbus_gpio.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %vbus_gpio.i, align 8
  %tobool.not.i282 = icmp eq ptr %403, null
  br i1 %tobool.not.i282, label %if.end50.pch_vbus_gpio_get_value.exit_crit_edge, label %if.then.i283

if.end50.pch_vbus_gpio_get_value.exit_crit_edge:  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_vbus_gpio_get_value.exit

if.then.i283:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %403) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp ne i32 %call.i, 0
  br label %pch_vbus_gpio_get_value.exit

pch_vbus_gpio_get_value.exit:                     ; preds = %if.then.i283, %if.end50.pch_vbus_gpio_get_value.exit_crit_edge
  %vbus.0.i = phi i1 [ %tobool3.not.i, %if.then.i283 ], [ false, %if.end50.pch_vbus_gpio_get_value.exit_crit_edge ]
  %vbus_session = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 5
  %404 = ptrtoint ptr %vbus_session to i32
  call void @__asan_load1_noabort(i32 %404)
  %bf.load = load i8, ptr %vbus_session, align 4
  %405 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %cmp = icmp ne i8 %405, 0
  %or.cond = select i1 %cmp, i1 true, i1 %vbus.0.i
  br i1 %or.cond, label %if.else, label %if.then54

if.then54:                                        ; preds = %pch_vbus_gpio_get_value.exit
  %406 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %driver, align 8
  %tobool56.not = icmp eq ptr %407, null
  br i1 %tobool56.not, label %if.then54.if.end66_crit_edge, label %land.lhs.true57

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

land.lhs.true57:                                  ; preds = %if.then54
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %407, i32 0, i32 5
  %408 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %disconnect, align 4
  %tobool59.not = icmp eq ptr %409, null
  br i1 %tobool59.not, label %land.lhs.true57.if.end66_crit_edge, label %if.then60

land.lhs.true57.if.end66_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  %lock61 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock61) #10
  %410 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %driver, align 8
  %disconnect63 = getelementptr inbounds %struct.usb_gadget_driver, ptr %411, i32 0, i32 5
  %412 = ptrtoint ptr %disconnect63 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %disconnect63, align 4
  tail call void %413(ptr noundef %dev) #10
  tail call void @_raw_spin_lock(ptr noundef %lock61) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %land.lhs.true57.if.end66_crit_edge, %if.then54.if.end66_crit_edge
  tail call fastcc void @pch_udc_reconnect(ptr noundef %dev)
  br label %do.body82

if.else:                                          ; preds = %pch_vbus_gpio_get_value.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %cmp72 = icmp eq i8 %405, 0
  %or.cond211 = select i1 %cmp72, i1 %vbus.0.i, i1 false
  br i1 %or.cond211, label %land.lhs.true75, label %if.else.do.body82_crit_edge

if.else.do.body82_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body82

land.lhs.true75:                                  ; preds = %if.else
  %intr = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 13, i32 1
  %414 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool76.not = icmp eq i32 %415, 0
  br i1 %tobool76.not, label %if.then77, label %land.lhs.true75.do.body82_crit_edge

land.lhs.true75.do.body82_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body82

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  %irq_work_fall = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 13, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %416 = load ptr, ptr @system_wq, align 4
  %call.i.i284 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %416, ptr noundef %irq_work_fall) #10
  br label %do.body82

do.body82:                                        ; preds = %if.then77, %land.lhs.true75.do.body82_crit_edge, %if.else.do.body82_crit_edge, %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end102)) #10
          to label %if.then96 [label %if.end102], !srcloc !253

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %pdev97 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %417 = ptrtoint ptr %pdev97 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %pdev97, align 4
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %418, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug244, ptr noundef %dev98, ptr noundef nonnull @.str.74) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then96, %do.body82, %if.end39.if.end102_crit_edge
  %and103 = and i32 %dev_intr, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end126_crit_edge, label %do.body106

if.end102.if.end126_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

do.body106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end126)) #10
          to label %if.then120 [label %if.end126], !srcloc !253

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %pdev121 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %419 = ptrtoint ptr %pdev121 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %pdev121, align 4
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %420, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug245, ptr noundef %dev122, ptr noundef nonnull @.str.75) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then120, %do.body106, %if.end102.if.end126_crit_edge
  %and127 = and i32 %dev_intr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.if.end150_crit_edge, label %do.body130

if.end126.if.end150_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

do.body130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end150)) #10
          to label %if.then144 [label %if.end150], !srcloc !253

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  %pdev145 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %421 = ptrtoint ptr %pdev145 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %pdev145, align 4
  %dev146 = getelementptr inbounds %struct.pci_dev, ptr %422, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev146, ptr noundef nonnull @.str.76) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then144, %do.body130, %if.end126.if.end150_crit_edge
  %and151 = and i32 %dev_intr, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.if.end174_crit_edge, label %do.body154

if.end150.if.end174_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end174

do.body154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_udc_dev_isr, %if.end174)) #10
          to label %if.then168 [label %if.end174], !srcloc !253

if.then168:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  %pdev169 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %423 = ptrtoint ptr %pdev169 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %pdev169, align 4
  %dev170 = getelementptr inbounds %struct.pci_dev, ptr %424, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_udc_dev_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev170, ptr noundef nonnull @.str.77) #10
  br label %if.end174

if.end174:                                        ; preds = %if.then168, %do.body154, %if.end150.if.end174_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_svc_data_out(ptr noundef %dev, i32 noundef %ep_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ep_num, 1
  %add = or i32 %mul, 1
  %arrayidx = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add
  %epsts2 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 9
  %0 = ptrtoint ptr %epsts2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %epsts2, align 4
  store i32 0, ptr %epsts2, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %queue = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 7
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %3, i32 -68
  %td_data_last = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %td_data_last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td_data_last, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and6 = and i32 %7, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and6)
  %cmp.not = icmp eq i32 %and6, -2147483648
  br i1 %cmp.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.then
  %dma_going = getelementptr i8, ptr %3, i32 8
  %8 = ptrtoint ptr %dma_going to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dma_going, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.then9, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_start_rxrequest(ptr noundef %arrayidx, ptr noundef %add.ptr)
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %and12 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %and16 = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end28_crit_edge, label %if.then18

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %arrayidx)
  %dev19 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 5
  %9 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev19, align 4
  %num = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 8
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load20 = load i8, ptr %num, align 4
  %bf.lshr21 = lshr i8 %bf.load20, 3
  %12 = shl i8 %bf.load20, 2
  %13 = and i8 %12, 16
  %14 = xor i8 %13, 16
  %narrow118 = add nuw nsw i8 %14, %bf.lshr21
  %add27 = zext i8 %narrow118 to i32
  %shl = shl nuw i32 1, %add27
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %10, i32 0, i32 10
  %15 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 1048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %18, %neg.i.i
  %19 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %20, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %21) #10, !srcloc !252
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %if.end15.if.end28_crit_edge
  %and29 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end53_crit_edge, label %if.then31

if.end28.if.end53_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then31:                                        ; preds = %if.end28
  %prot_stall = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %prot_stall to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load32 = load i8, ptr %prot_stall, align 4
  %23 = and i8 %bf.load32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 5
  %24 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i.i119 = getelementptr inbounds %struct.pch_udc_dev, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %base_addr.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i.i.i119, align 4
  %offset_addr.i.i.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 6
  %28 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i120 = getelementptr i8, ptr %27, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i120) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %31 = and i32 %30, -16777217
  %32 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i2.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %base_addr.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr.i2.i.i, align 4
  %36 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i4.i.i121 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i121, i32 %31) #10, !srcloc !252
  %38 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i.i3.i = getelementptr inbounds %struct.pch_udc_dev, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %base_addr.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i.i3.i, align 4
  %42 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %41, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %45 = or i32 %44, 65536
  %46 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i.i, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i4.i.i, align 4
  %50 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %45) #10, !srcloc !252
  br label %if.end53

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %arrayidx)
  %dev38 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 5
  %52 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev38, align 4
  %num39 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 8
  %54 = ptrtoint ptr %num39 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load40 = load i8, ptr %num39, align 4
  %bf.lshr41 = lshr i8 %bf.load40, 3
  %55 = shl i8 %bf.load40, 2
  %56 = and i8 %55, 16
  %57 = xor i8 %56, 16
  %narrow117 = add nuw nsw i8 %57, %bf.lshr41
  %add50 = zext i8 %narrow117 to i32
  %shl51 = shl nuw i32 1, %add50
  %base_addr.i.i.i122 = getelementptr inbounds %struct.pch_udc_dev, ptr %53, i32 0, i32 10
  %58 = ptrtoint ptr %base_addr.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr.i.i.i122, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %59, i32 1048
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i123) #10, !srcloc !249
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i124 = xor i32 %shl51, -1
  %and.i.i125 = and i32 %61, %neg.i.i124
  %62 = ptrtoint ptr %base_addr.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i.i.i122, align 4
  %add.ptr.i4.i.i126 = getelementptr i8, ptr %63, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i.i125) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i126, i32 %64) #10, !srcloc !252
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then37, %if.end28.if.end53_crit_edge
  %65 = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp55 = icmp eq i32 %65, 16
  br i1 %cmp55, label %if.then56, label %if.end53.if.end81_crit_edge

if.end53.if.end81_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then56:                                        ; preds = %if.end53
  %dev57 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 5
  %66 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev57, align 4
  %prot_stall58 = getelementptr inbounds %struct.pch_udc_dev, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %prot_stall58 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load59 = load i8, ptr %prot_stall58, align 4
  %69 = and i8 %bf.load59, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp63.not = icmp eq i8 %69, 0
  br i1 %cmp63.not, label %if.else79, label %if.then64

if.then64:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_ep_set_stall(ptr noundef %arrayidx)
  %70 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev57, align 4
  %num66 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 8
  %72 = ptrtoint ptr %num66 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load67 = load i8, ptr %num66, align 4
  %bf.lshr68 = lshr i8 %bf.load67, 3
  %73 = shl i8 %bf.load67, 2
  %74 = and i8 %73, 16
  %75 = xor i8 %74, 16
  %narrow = add nuw nsw i8 %75, %bf.lshr68
  %add77 = zext i8 %narrow to i32
  %shl78 = shl nuw i32 1, %add77
  %base_addr.i.i.i127 = getelementptr inbounds %struct.pch_udc_dev, ptr %71, i32 0, i32 10
  %76 = ptrtoint ptr %base_addr.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_addr.i.i.i127, align 4
  %add.ptr.i.i.i128 = getelementptr i8, ptr %77, i32 1048
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i128) #10, !srcloc !249
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i129 = xor i32 %shl78, -1
  %and.i.i130 = and i32 %79, %neg.i.i129
  %80 = ptrtoint ptr %base_addr.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base_addr.i.i.i127, align 4
  %add.ptr.i4.i.i131 = getelementptr i8, ptr %81, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %82 = tail call i32 @llvm.bswap.i32(i32 %and.i.i130) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i131, i32 %82) #10, !srcloc !252
  br label %if.end81

if.else79:                                        ; preds = %if.then56
  %83 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev57, align 4
  %queue.i = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 7
  %85 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %86, %queue.i
  br i1 %cmp.i.not.i, label %if.else79.if.end81_crit_edge, label %if.end.i

if.else79.if.end81_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end.i:                                         ; preds = %if.else79
  %add.ptr.i = getelementptr i8, ptr %86, i32 -68
  %base_addr.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %84, i32 0, i32 10
  %87 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %88, i32 1028
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %90 = and i32 %89, -67108865
  %91 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %92, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %90) #10, !srcloc !252
  %93 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev57, align 4
  %base_addr.i.i.i132 = getelementptr inbounds %struct.pch_udc_dev, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %base_addr.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base_addr.i.i.i132, align 4
  %offset_addr.i.i.i133 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 6
  %97 = ptrtoint ptr %offset_addr.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset_addr.i.i.i133, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %96, i32 %98
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i134, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #10, !srcloc !252
  %td_data_last.i = getelementptr i8, ptr %86, i32 -4
  %99 = ptrtoint ptr %td_data_last.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %td_data_last.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %and.i = and i32 %102, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cmp.i135 = icmp eq i32 %and.i, -2147483648
  br i1 %cmp.i135, label %if.end.i.if.end6.i_crit_edge, label %if.else.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %td_data.i = getelementptr i8, ptr %86, i32 -8
  %103 = ptrtoint ptr %td_data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %td_data.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.end.i.if.end6.i_crit_edge
  %td.0.i = phi ptr [ %104, %if.else.i ], [ %100, %if.end.i.if.end6.i_crit_edge ]
  %105 = ptrtoint ptr %td.0.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %td.0.i, align 4
  %and896.i = and i32 %106, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and896.i)
  %cmp9.not97.i = icmp eq i32 %and896.i, 0
  br i1 %cmp9.not97.i, label %if.end6.i.if.end15.i_crit_edge, label %if.end6.i.do.end.i_crit_edge

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  br label %if.end15.i

do.end.i:                                         ; preds = %if.end36.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.pch_udc_dev, ptr %84, i32 0, i32 2
  %107 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %td_data12.i = getelementptr i8, ptr %86, i32 -8
  %109 = ptrtoint ptr %td_data12.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %td_data12.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %and14.i = and i32 %112, 805306368
  %113 = ptrtoint ptr %epsts2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %epsts2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.80, i32 noundef %and14.i, i32 noundef %114) #13
  br label %if.end81

if.end15.i:                                       ; preds = %if.end36.i.if.end15.i_crit_edge, %if.end6.i.if.end15.i_crit_edge
  %115 = phi i32 [ %124, %if.end36.i.if.end15.i_crit_edge ], [ %106, %if.end6.i.if.end15.i_crit_edge ]
  %td.198.i = phi ptr [ %122, %if.end36.i.if.end15.i_crit_edge ], [ %td.0.i, %if.end6.i.if.end15.i_crit_edge ]
  %116 = and i32 %115, -939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2013265920, i32 %116)
  %.not.i = icmp eq i32 %116, -2013265920
  br i1 %.not.i, label %if.then23.i, label %if.end27.i

if.then23.i:                                      ; preds = %if.end15.i
  %and25.i = and i32 %115, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool39.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i, label %if.then23.i.if.end43.i_crit_edge

if.then23.i.if.end43.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end27.i:                                       ; preds = %if.end15.i
  %cmp29.i = icmp eq ptr %td.198.i, %100
  br i1 %cmp29.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev34.i = getelementptr inbounds %struct.pch_udc_dev, ptr %84, i32 0, i32 2
  %117 = ptrtoint ptr %pdev34.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev34.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.83) #13
  br label %if.end81

if.end36.i:                                       ; preds = %if.end27.i
  %next37.i = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %td.198.i, i32 0, i32 3
  %119 = ptrtoint ptr %next37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %next37.i, align 4
  %121 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %120, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %122 = inttoptr i32 %121 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %and8.i = and i32 %124, 805306368
  %cmp9.not.i = icmp eq i32 %and8.i, 0
  br i1 %cmp9.not.i, label %if.end36.i.if.end15.i_crit_edge, label %if.end36.i.do.end.i_crit_edge

if.end36.i.do.end.i_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end36.i.if.end15.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %length.i = getelementptr i8, ptr %86, i32 -64
  %125 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %126)
  %cmp41.i = icmp eq i32 %126, 65536
  %spec.select.i = select i1 %cmp41.i, i32 65536, i32 0
  br label %if.end43.i

if.end43.i:                                       ; preds = %land.lhs.true.i, %if.then23.i.if.end43.i_crit_edge
  %count.0.i = phi i32 [ %and25.i, %if.then23.i.if.end43.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %td_data44.i = getelementptr i8, ptr %86, i32 -8
  %127 = ptrtoint ptr %td_data44.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %td_data44.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %or.i = or i32 %130, 134217728
  store i32 %or.i, ptr %128, align 4
  %131 = ptrtoint ptr %td.198.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %td.198.i, align 4
  %or47.i = or i32 %132, -1073741824
  store i32 %or47.i, ptr %td.198.i, align 4
  %dma_going.i = getelementptr i8, ptr %86, i32 8
  %133 = ptrtoint ptr %dma_going.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load.i = load i8, ptr %dma_going.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_going.i, align 4
  %actual.i = getelementptr i8, ptr %86, i32 -16
  %134 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %count.0.i, ptr %actual.i, align 4
  tail call fastcc void @complete_req(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef 0) #10
  %135 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i90.not.i = icmp eq ptr %136, %queue.i
  br i1 %cmp.i90.not.i, label %if.end43.i.if.end81_crit_edge, label %if.then52.i

if.end43.i.if.end81_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then52.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr57.i = getelementptr i8, ptr %136, i32 -68
  tail call fastcc void @pch_udc_start_rxrequest(ptr noundef %arrayidx, ptr noundef %add.ptr57.i) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then52.i, %if.end43.i.if.end81_crit_edge, %do.end33.i, %do.end.i, %if.else79.if.end81_crit_edge, %if.then64, %if.end53.if.end81_crit_edge
  %queue82 = getelementptr %struct.pch_udc_dev, ptr %dev, i32 0, i32 3, i32 %add, i32 7
  %137 = ptrtoint ptr %queue82 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %queue82, align 4
  %cmp.i136.not = icmp eq ptr %138, %queue82
  br i1 %cmp.i136.not, label %if.then85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i.i.i138 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %139 = ptrtoint ptr %base_addr.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base_addr.i.i.i138, align 4
  %add.ptr.i.i.i139 = getelementptr i8, ptr %140, i32 1028
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i139) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %142 = or i32 %141, 67108864
  %143 = ptrtoint ptr %base_addr.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base_addr.i.i.i138, align 4
  %add.ptr.i4.i.i140 = getelementptr i8, ptr %144, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i140, i32 %142) #10, !srcloc !252
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end81.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.then7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_udc_read_csr(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %1, i32 1264
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not16.i = icmp eq i32 %3, 0
  br i1 %tobool.not16.i, label %entry.pch_udc_csr_busy.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.pch_udc_csr_busy.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %count.017.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ 200, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %count.017.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.end11.critedge.i, label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !258
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = and i32 %6, 16777216
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i.pch_udc_csr_busy.exit_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

do.end.i.pch_udc_csr_busy.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit

do.end11.critedge.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  br label %pch_udc_csr_busy.exit

pch_udc_csr_busy.exit:                            ; preds = %do.end11.critedge.i, %do.end.i.pch_udc_csr_busy.exit_crit_edge, %entry.pch_udc_csr_busy.exit_crit_edge
  %10 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1284
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i15.i2 = getelementptr i8, ptr %14, i32 1264
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i2) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not16.i3 = icmp eq i32 %16, 0
  br i1 %tobool.not16.i3, label %pch_udc_csr_busy.exit.pch_udc_csr_busy.exit14_crit_edge, label %pch_udc_csr_busy.exit.land.rhs.i7_crit_edge

pch_udc_csr_busy.exit.land.rhs.i7_crit_edge:      ; preds = %pch_udc_csr_busy.exit
  br label %land.rhs.i7

pch_udc_csr_busy.exit.pch_udc_csr_busy.exit14_crit_edge: ; preds = %pch_udc_csr_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit14

land.rhs.i7:                                      ; preds = %do.end.i10.land.rhs.i7_crit_edge, %pch_udc_csr_busy.exit.land.rhs.i7_crit_edge
  %count.017.i4 = phi i32 [ %dec.i5, %do.end.i10.land.rhs.i7_crit_edge ], [ 200, %pch_udc_csr_busy.exit.land.rhs.i7_crit_edge ]
  %dec.i5 = add nsw i32 %count.017.i4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5)
  %tobool1.not.i6 = icmp eq i32 %dec.i5, 0
  br i1 %tobool1.not.i6, label %do.end11.critedge.i13, label %do.end.i10

do.end.i10:                                       ; preds = %land.rhs.i7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !258
  %17 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %18, i32 1264
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %20 = and i32 %19, 16777216
  %tobool.not.i9 = icmp eq i32 %20, 0
  br i1 %tobool.not.i9, label %do.end.i10.pch_udc_csr_busy.exit14_crit_edge, label %do.end.i10.land.rhs.i7_crit_edge

do.end.i10.land.rhs.i7_crit_edge:                 ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i7

do.end.i10.pch_udc_csr_busy.exit14_crit_edge:     ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_csr_busy.exit14

do.end11.critedge.i13:                            ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i11 = getelementptr inbounds %struct.pch_udc_dev, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i11, align 4
  %dev12.i12 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  br label %pch_udc_csr_busy.exit14

pch_udc_csr_busy.exit14:                          ; preds = %do.end11.critedge.i13, %do.end.i10.pch_udc_csr_busy.exit14_crit_edge, %pch_udc_csr_busy.exit.pch_udc_csr_busy.exit14_crit_edge
  %23 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %24, i32 1284
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #10, !srcloc !249
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_complete_transfer(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %queue = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -68
  %td_data_last = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %td_data_last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td_data_last, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and)
  %cmp.not = icmp eq i32 %and, -2147483648
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and7 = and i32 %7, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %epsts = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 9
  %10 = ptrtoint ptr %epsts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %epsts, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.78, i32 noundef %and7, i32 noundef %11) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %length = getelementptr i8, ptr %3, i32 -64
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %actual = getelementptr i8, ptr %3, i32 -16
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %actual, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -939524096, ptr %5, align 4
  %td_data = getelementptr i8, ptr %3, i32 -8
  %16 = ptrtoint ptr %td_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %td_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -939524096, ptr %17, align 4
  tail call fastcc void @complete_req(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0)
  %dma_going = getelementptr i8, ptr %3, i32 8
  %19 = ptrtoint ptr %dma_going to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %dma_going, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %dma_going, align 4
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue, align 4
  %cmp.i69.not = icmp eq ptr %21, %queue
  br i1 %cmp.i69.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end14
  %offset_addr.i.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %base_addr.i.i7.i = getelementptr inbounds %struct.pch_udc_dev, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %base_addr.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i7.i, align 4
  %26 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not9.i = icmp eq i32 %29, 0
  br i1 %tobool.not9.i, label %if.then23.pch_udc_wait_ep_stall.exit_crit_edge, label %if.then23.land.rhs.i_crit_edge

if.then23.land.rhs.i_crit_edge:                   ; preds = %if.then23
  br label %land.rhs.i

if.then23.pch_udc_wait_ep_stall.exit_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_wait_ep_stall.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then23.land.rhs.i_crit_edge
  %count.010.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 10000, %if.then23.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %count.010.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.end.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 1073740) #10
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i.i.i, align 4
  %35 = ptrtoint ptr %offset_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %38 = and i32 %37, 16777216
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %while.body.i.pch_udc_wait_ep_stall.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.pch_udc_wait_ep_stall.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_wait_ep_stall.exit

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %pdev.i = getelementptr inbounds %struct.pch_udc_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #13
  br label %pch_udc_wait_ep_stall.exit

pch_udc_wait_ep_stall.exit:                       ; preds = %do.end.critedge.i, %while.body.i.pch_udc_wait_ep_stall.exit_crit_edge, %if.then23.pch_udc_wait_ep_stall.exit_crit_edge
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep)
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %45 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load25 = load i8, ptr %num, align 4
  %bf.lshr = lshr i8 %bf.load25, 3
  %46 = shl i8 %bf.load25, 2
  %47 = and i8 %46, 16
  %48 = xor i8 %47, 16
  %narrow = add nuw nsw i8 %48, %bf.lshr
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i71 = getelementptr inbounds %struct.pch_udc_dev, ptr %44, i32 0, i32 10
  %49 = ptrtoint ptr %base_addr.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr.i.i.i71, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %50, i32 1048
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i72) #10, !srcloc !249
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %52, %neg.i.i
  %53 = ptrtoint ptr %base_addr.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i.i.i71, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %54, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %55) #10, !srcloc !252
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  %num32 = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %58 = ptrtoint ptr %num32 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load33 = load i8, ptr %num32, align 4
  %bf.lshr34 = lshr i8 %bf.load33, 3
  %59 = shl i8 %bf.load33, 2
  %60 = and i8 %59, 16
  %61 = xor i8 %60, 16
  %narrow68 = add nuw nsw i8 %61, %bf.lshr34
  %add43 = zext i8 %narrow68 to i32
  %shl44 = shl nuw i32 1, %add43
  %base_addr.i.i.i73 = getelementptr inbounds %struct.pch_udc_dev, ptr %57, i32 0, i32 10
  %62 = ptrtoint ptr %base_addr.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i.i.i73, align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %63, i32 1048
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i74) #10, !srcloc !249
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %or.i.i = or i32 %shl44, %65
  %66 = ptrtoint ptr %base_addr.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i.i.i73, align 4
  %add.ptr.i4.i.i75 = getelementptr i8, ptr %67, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i75, i32 %68) #10, !srcloc !252
  br label %cleanup

cleanup:                                          ; preds = %if.else, %pch_udc_wait_ep_stall.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_udc_start_next_txrequest(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i, align 4
  %offset_addr.i.i = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %7 = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 7
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dma_going = getelementptr i8, ptr %9, i32 8
  %10 = ptrtoint ptr %dma_going to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %dma_going, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %td_data9 = getelementptr i8, ptr %9, i32 -8
  %11 = ptrtoint ptr %td_data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %td_data9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i7.i = getelementptr inbounds %struct.pch_udc_dev, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %base_addr.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i7.i, align 4
  %17 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %16, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not9.i = icmp eq i32 %20, 0
  br i1 %tobool.not9.i, label %if.end12.pch_udc_wait_ep_stall.exit_crit_edge, label %if.end12.land.rhs.i_crit_edge

if.end12.land.rhs.i_crit_edge:                    ; preds = %if.end12
  br label %land.rhs.i

if.end12.pch_udc_wait_ep_stall.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_wait_ep_stall.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end12.land.rhs.i_crit_edge
  %count.010.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 10000, %if.end12.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %count.010.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.end.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #10
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i.i, align 4
  %26 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %29 = and i32 %28, 16777216
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %while.body.i.pch_udc_wait_ep_stall.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.pch_udc_wait_ep_stall.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pch_udc_wait_ep_stall.exit

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  %pdev.i = getelementptr inbounds %struct.pch_udc_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #13
  br label %pch_udc_wait_ep_stall.exit

pch_udc_wait_ep_stall.exit:                       ; preds = %do.end.critedge.i, %while.body.i.pch_udc_wait_ep_stall.exit_crit_edge, %if.end12.pch_udc_wait_ep_stall.exit_crit_edge
  %34 = ptrtoint ptr %dma_going to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load14 = load i8, ptr %dma_going, align 4
  %bf.set = or i8 %bf.load14, -128
  store i8 %bf.set, ptr %dma_going, align 4
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i53 = getelementptr inbounds %struct.pch_udc_dev, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %base_addr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i.i53, align 4
  %39 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %38, i32 %40
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i55, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #10, !srcloc !252
  %41 = ptrtoint ptr %td_data9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %td_data9, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %and1669 = and i32 %44, 1073741823
  store i32 %and1669, ptr %42, align 4
  %and1970 = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1970)
  %cmp.not71 = icmp eq i32 %and1970, 0
  br i1 %cmp.not71, label %pch_udc_wait_ep_stall.exit.if.end21_crit_edge, label %pch_udc_wait_ep_stall.exit.while.end_crit_edge

pch_udc_wait_ep_stall.exit.while.end_crit_edge:   ; preds = %pch_udc_wait_ep_stall.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

pch_udc_wait_ep_stall.exit.if.end21_crit_edge:    ; preds = %pch_udc_wait_ep_stall.exit
  br label %if.end21

if.end21:                                         ; preds = %if.end21.if.end21_crit_edge, %pch_udc_wait_ep_stall.exit.if.end21_crit_edge
  %td_data.072 = phi ptr [ %48, %if.end21.if.end21_crit_edge ], [ %42, %pch_udc_wait_ep_stall.exit.if.end21_crit_edge ]
  %next22 = getelementptr inbounds %struct.pch_udc_data_dma_desc, ptr %td_data.072, i32 0, i32 3
  %45 = ptrtoint ptr %next22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next22, align 4
  %47 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %46, i32 -2130706432, i32 8454144) #15, !srcloc !256
  %48 = inttoptr i32 %47 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and16 = and i32 %50, 1073741823
  store i32 %and16, ptr %48, align 4
  %and19 = and i32 %50, 134217728
  %cmp.not = icmp eq i32 %and19, 0
  br i1 %cmp.not, label %if.end21.if.end21_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end21.if.end21_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %pch_udc_wait_ep_stall.exit.while.end_crit_edge
  %td_data_phys = getelementptr i8, ptr %9, i32 -12
  %51 = ptrtoint ptr %td_data_phys to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %td_data_phys, align 4
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i57 = getelementptr inbounds %struct.pch_udc_dev, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %base_addr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_addr.i.i57, align 4
  %57 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %56, i32 %58
  %add.ptr1.i.i60 = getelementptr i8, ptr %add.ptr.i.i59, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %59 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i60, i32 %59) #10, !srcloc !252
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i.i61 = getelementptr inbounds %struct.pch_udc_dev, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %base_addr.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i.i.i61, align 4
  %add.ptr.i.i.i62 = getelementptr i8, ptr %63, i32 1028
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i62) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %65 = or i32 %64, 134217728
  %66 = ptrtoint ptr %base_addr.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i.i.i61, align 4
  %add.ptr.i4.i9.i = getelementptr i8, ptr %67, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i, i32 %65) #10, !srcloc !252
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i.i.i64 = getelementptr inbounds %struct.pch_udc_dev, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %base_addr.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_addr.i.i.i64, align 4
  %72 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i.i.i66 = getelementptr i8, ptr %71, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i66) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %75 = or i32 %74, 134217728
  %76 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i, align 4
  %base_addr.i4.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %base_addr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_addr.i4.i.i, align 4
  %80 = ptrtoint ptr %offset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset_addr.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %75) #10, !srcloc !252
  %82 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i.i, align 4
  %num = getelementptr inbounds %struct.pch_udc_ep, ptr %ep, i32 0, i32 8
  %84 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load25 = load i8, ptr %num, align 4
  %bf.lshr26 = lshr i8 %bf.load25, 3
  %85 = shl i8 %bf.load25, 2
  %86 = and i8 %85, 16
  %87 = xor i8 %86, 16
  %narrow = add nuw nsw i8 %87, %bf.lshr26
  %add = zext i8 %narrow to i32
  %shl = shl nuw i32 1, %add
  %base_addr.i.i.i67 = getelementptr inbounds %struct.pch_udc_dev, ptr %83, i32 0, i32 10
  %88 = ptrtoint ptr %base_addr.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base_addr.i.i.i67, align 4
  %add.ptr.i.i.i68 = getelementptr i8, ptr %89, i32 1048
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i68) #10, !srcloc !249
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %91, %neg.i.i
  %92 = ptrtoint ptr %base_addr.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base_addr.i.i.i67, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %93, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %94 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %94) #10, !srcloc !252
  tail call fastcc void @pch_udc_ep_clear_nak(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_get_frame(ptr noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !249
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %shr.i = lshr i32 %3, 18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %3) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  %7 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %8, i32 1028
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %10 = and i32 %9, -16777217
  %11 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i4.i = getelementptr i8, ptr %12, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i, i32 %10) #10, !srcloc !252
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_selfpowered(ptr noundef %gadget, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %base_addr.i.i.i8 = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 10
  %1 = ptrtoint ptr %base_addr.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_addr.i.i.i8, align 4
  %add.ptr.i.i.i9 = getelementptr i8, ptr %2, i32 1024
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = or i32 %3, 134217728
  %5 = ptrtoint ptr %base_addr.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i.i.i8, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %6, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %4) #10, !srcloc !252
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = and i32 %3, -134217729
  %8 = ptrtoint ptr %base_addr.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i8, align 4
  %add.ptr.i4.i.i10 = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i10, i32 %7) #10, !srcloc !252
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_vbus_session(ptr noundef %gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool.not.i = icmp eq i32 %is_active, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_reconnect(ptr noundef nonnull %gadget) #10
  %vbus_session.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 5
  %0 = ptrtoint ptr %vbus_session.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %vbus_session.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %vbus_session.i, align 4
  br label %pch_udc_vbus_session.exit

if.else.i:                                        ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 1
  %1 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.i, align 8
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.else.i.if.end.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disconnect.i, align 4
  %tobool7.not.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then8.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %5 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i, align 8
  %disconnect11.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %disconnect11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disconnect11.i, align 4
  tail call void %8(ptr noundef nonnull %gadget) #10
  %call21.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %land.lhs.true.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %iflags.0.i = phi i32 [ %call21.i, %if.then8.i ], [ %call2.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %call2.i, %if.else.i.if.end.i_crit_edge ]
  %base_addr.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 10
  %9 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 1028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %12 = or i32 %11, 262144
  %13 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %14, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %12) #10, !srcloc !252
  %vbus_session26.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 5
  %15 = ptrtoint ptr %vbus_session26.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load27.i = load i8, ptr %vbus_session26.i, align 4
  %bf.clear28.i = and i8 %bf.load27.i, -9
  store i8 %bf.clear28.i, ptr %vbus_session26.i, align 4
  br label %pch_udc_vbus_session.exit

pch_udc_vbus_session.exit:                        ; preds = %if.end.i, %if.then.i
  %iflags.1.i = phi i32 [ %call2.i, %if.then.i ], [ %iflags.0.i, %if.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %iflags.1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %pch_udc_vbus_session.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pch_udc_vbus_session.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_udc_pcd_vbus_draw(ptr nocapture noundef readnone %gadget, i32 noundef %mA) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_pcd_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool6.not = icmp eq i32 %is_on, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pch_udc_reconnect(ptr noundef nonnull %gadget)
  br label %if.end31

if.else:                                          ; preds = %if.end
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.else.if.end30_crit_edge, label %land.lhs.true

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %land.lhs.true.if.end30_crit_edge, label %if.then11

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %disconnect14 = getelementptr inbounds %struct.usb_gadget_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %disconnect14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disconnect14, align 4
  tail call void %7(ptr noundef nonnull %gadget) #10
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then11, %land.lhs.true.if.end30_crit_edge, %if.else.if.end30_crit_edge
  %iflags.0 = phi i32 [ %call25, %if.then11 ], [ %call3, %land.lhs.true.if.end30_crit_edge ], [ %call3, %if.else.if.end30_crit_edge ]
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %gadget, i32 0, i32 10
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 1028
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %11 = or i32 %10, 262144
  %12 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %13, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %11) #10, !srcloc !252
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then7
  %iflags.1 = phi i32 [ %call3, %if.then7 ], [ %iflags.0, %if.end30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %iflags.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_start(ptr nocapture noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 1
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 8
  %base_addr.i.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 1048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %5 = and i32 %4, -16777473
  %6 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %7, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %5) #10, !srcloc !252
  %8 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i3.i = getelementptr i8, ptr %9, i32 1040
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %11 = and i32 %10, -1593835521
  %12 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i4.i = getelementptr i8, ptr %13, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i4.i, i32 %11) #10, !srcloc !252
  %vbus_gpio.i = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 13
  %14 = ptrtoint ptr %vbus_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbus_gpio.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %pch_vbus_gpio_get_value.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

pch_vbus_gpio_get_value.exit:                     ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i.not, label %lor.lhs.false, label %pch_vbus_gpio_get_value.exit.if.then_crit_edge

pch_vbus_gpio_get_value.exit.if.then_crit_edge:   ; preds = %pch_vbus_gpio_get_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %pch_vbus_gpio_get_value.exit
  %intr = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %pch_vbus_gpio_get_value.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %18 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 1028
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %23, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %21) #10, !srcloc !252
  %24 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %25, i32 1028
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %27 = and i32 %26, -262145
  %28 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i5.i = getelementptr i8, ptr %29, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i5.i, i32 %27) #10, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #10
  %31 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %32, i32 1028
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %34 = and i32 %33, -16777217
  %35 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i.i.i.i, align 4
  %add.ptr.i4.i9.i = getelementptr i8, ptr %36, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i, i32 %34) #10, !srcloc !252
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %connected = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 5
  %37 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %connected, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %connected, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_stop(ptr nocapture noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 10
  %0 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 1040
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %3 = or i32 %2, 2130706432
  %4 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %3) #10, !srcloc !252
  %driver = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 1
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver, align 8
  %connected = getelementptr inbounds %struct.pch_udc_dev, ptr %g, i32 0, i32 5
  %7 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %connected, align 4
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %connected, align 4
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %9, i32 1028
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i5) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %11 = or i32 %10, 262144
  %12 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i6 = getelementptr i8, ptr %13, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i6, i32 %11) #10, !srcloc !252
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_udc_suspend(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base_addr.i.i.i = getelementptr inbounds %struct.pch_udc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1040
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %5 = or i32 %4, 2130706432
  %6 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %7, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %5) #10, !srcloc !252
  %8 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i.i.i3 = getelementptr i8, ptr %9, i32 1048
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3) #10, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %11 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i.i, align 4
  %add.ptr.i4.i.i4 = getelementptr i8, ptr %12, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i4, i32 -1) #10, !srcloc !252
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_udc_resume(ptr nocapture noundef readnone %d) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !146, !148, !149, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !212, !213, !214, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__param_speed_fs, !1, !"__param_speed_fs", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 376, i32 1}
!2 = !{ptr @__UNIQUE_ID_speed_fstype236, !1, !"__UNIQUE_ID_speed_fstype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_speed_fs237, !4, !"__UNIQUE_ID_speed_fs237", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 377, i32 1}
!5 = !{ptr @__initcall__kmod_pch_udc__249_3160_pch_udc_driver_init6, !6, !"__initcall__kmod_pch_udc__249_3160_pch_udc_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3160, i32 1}
!7 = !{ptr @__exitcall_pch_udc_driver_exit, !6, !"__exitcall_pch_udc_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description250, !9, !"__UNIQUE_ID_description250", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3162, i32 1}
!10 = !{ptr @__UNIQUE_ID_author251, !11, !"__UNIQUE_ID_author251", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3163, i32 1}
!12 = !{ptr @__UNIQUE_ID_file252, !13, !"__UNIQUE_ID_file252", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3164, i32 1}
!14 = !{ptr @__UNIQUE_ID_license253, !13, !"__UNIQUE_ID_license253", i1 false, i1 false}
!15 = !{ptr @speed_fs, !16, !"speed_fs", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 375, i32 13}
!17 = !{ptr @__param_str_speed_fs, !1, !"__param_str_speed_fs", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pch_udc_driver, !20, !"pch_udc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3149, i32 26}
!21 = !{ptr @pch_udc_pcidev_id, !22, !"pch_udc_pcidev_id", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3115, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2953, i32 13}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2955, i32 3}
!27 = !{ptr @pch_udc_minnow_vbus_gpio_table, !28, !"pch_udc_minnow_vbus_gpio_table", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2952, i32 34}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3084, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pch_udc_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @pch_udc_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @pch_udc_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3093, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1047, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pch_udc_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pch_udc_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2771, i32 15}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2771, i32 25}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2771, i32 34}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2771, i32 44}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2771, i32 53}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 3}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 12}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 22}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 31}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 41}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2772, i32 50}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 3}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 12}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 22}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 31}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 41}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2773, i32 50}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 3}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 12}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 22}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 32}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 43}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2774, i32 53}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 3}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 13}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 24}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 34}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 45}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2775, i32 55}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2776, i32 3}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2776, i32 13}
!107 = !{ptr @ep0_string, !108, !"ep0_string", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 373, i32 19}
!109 = !{ptr @pch_udc_ep_ops, !110, !"pch_udc_ep_ops", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1980, i32 32}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 464, i32 3}
!113 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pch_udc_csr_busy._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pch_udc_csr_busy._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1763, i32 3}
!118 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pch_udc_free_request._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @pch_udc_free_request._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1568, i32 3}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @prepare_dma._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @prepare_dma._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1037, i32 3}
!128 = !{ptr @pch_udc_wait_ep_stall._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @pch_udc_wait_ep_stall._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 940, i32 4}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @pch_udc_ep_clear_nak._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @pch_udc_ep_clear_nak._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 949, i32 3}
!137 = !{ptr @pch_udc_ep_clear_nak._entry.52, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @pch_udc_ep_clear_nak._entry_ptr.54, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 374, i32 8}
!143 = !{ptr @udc_stall_spinlock, !142, !"udc_stall_spinlock", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1382, i32 33}
!146 = !{ptr @pch_vbus_gpio_init.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1385, i32 2}
!148 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1391, i32 4}
!151 = !{ptr @pch_vbus_gpio_init.__key.61, !152, !"__key", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1394, i32 4}
!153 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1397, i32 4}
!156 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pch_vbus_gpio_init._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @pch_vbus_gpio_init._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1292, i32 4}
!161 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pch_vbus_gpio_work_fall.__UNIQUE_ID_ddebug238, !160, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1330, i32 3}
!165 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @pch_vbus_gpio_work_rise.__UNIQUE_ID_ddebug239, !164, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2705, i32 4}
!169 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @pch_udc_isr.__UNIQUE_ID_ddebug248, !168, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2639, i32 3}
!173 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug242, !172, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2644, i32 3}
!177 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug243, !176, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2675, i32 3}
!180 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug244, !179, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2679, i32 3}
!183 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug245, !182, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2682, i32 3}
!186 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug246, !185, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2685, i32 3}
!189 = !{ptr @pch_udc_dev_isr.__UNIQUE_ID_ddebug247, !188, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!190 = !{ptr @pch_udc_init_setup_buff.pky_marker, !191, !"pky_marker", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1999, i32 13}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2065, i32 3}
!194 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @pch_udc_complete_transfer._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @pch_udc_complete_transfer._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2114, i32 4}
!199 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @pch_udc_complete_receiver._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @pch_udc_complete_receiver._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2126, i32 4}
!204 = !{ptr @pch_udc_complete_receiver._entry.82, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @pch_udc_complete_receiver._entry_ptr.84, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @pch_udc_ops, !207, !"pch_udc_ops", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 1236, i32 36}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2856, i32 39}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2859, i32 3}
!212 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @init_dma_pools._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @init_dma_pools._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2865, i32 38}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2868, i32 3}
!219 = !{ptr @init_dma_pools._entry.89, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @init_dma_pools._entry_ptr.91, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2876, i32 3}
!223 = !{ptr @init_dma_pools._entry.92, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @init_dma_pools._entry_ptr.94, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2886, i32 3}
!227 = !{ptr @init_dma_pools._entry.95, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @init_dma_pools._entry_ptr.97, !226, !"_entry_ptr", i1 false, i1 false}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 2992, i32 3}
!235 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @pch_udc_remove._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @pch_udc_remove._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @pch_udc_pm, !239, !"pch_udc_pm", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/udc/pch_udc.c", i32 3036, i32 8}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 5066622}
!250 = !{i64 2152606971}
!251 = !{i64 2152608326}
!252 = !{i64 5066204}
!253 = !{i64 2148777782, i64 2148777787, i64 2148777800, i64 2148777844, i64 2148777878, i64 2148777899}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{i8 0, i8 2}
!256 = !{i64 2149163312, i64 2149163335, i64 2149163367, i64 2149163399, i64 2149163437, i64 2149163467}
!257 = !{i64 2154632364}
!258 = !{i64 2154632206}
!259 = !{!"auto-init"}
!260 = !{i64 2154723424, i64 2154723922, i64 2154723461, i64 2154723517, i64 2154723551, i64 2154723575, i64 2154723616, i64 2154723637, i64 2154723665, i64 2154723699}
