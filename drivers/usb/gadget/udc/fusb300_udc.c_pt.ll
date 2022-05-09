; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/fusb300_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/fusb300_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fusb300 = type { %struct.spinlock, ptr, i32, %struct.usb_gadget, ptr, [16 x ptr], ptr, i16, i32, i8, i8, i32, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.fusb300_ep = type { %struct.usb_ep, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.fusb300_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__UNIQUE_ID_description234 = internal constant [51 x i8] c"fusb300_udc.description=FUSB300  USB gadget driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [52 x i8] c"fusb300_udc.file=drivers/usb/gadget/udc/fusb300_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"fusb300_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [79 x i8] c"fusb300_udc.author=Yuan-Hsin Chen, Feng-Hsin Chiang <john453@faraday-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [39 x i8] c"fusb300_udc.alias=platform:fusb300_udc\00", section ".modinfo", align 1
@__initcall__kmod_fusb300_udc__239_1514_fusb300_driver_init6 = internal global ptr @fusb300_driver_init, section ".initcall6.init", align 4
@fusb300_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @fusb300_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @udc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fusb300_driver_exit = internal global ptr @fusb300_driver_exit, section ".exitcall.exit", align 4
@fusb300_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013platform_get_resource error.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fusb300_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/fusb300_udc.c\00", [59 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr = internal global ptr @fusb300_probe._entry, section ".printk_index", align 4
@fusb300_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"platform_get_resource IORESOURCE_IRQ error.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.7 = internal global ptr @fusb300_probe._entry.3, section ".printk_index", align 4
@fusb300_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"platform_get_resource IORESOURCE_IRQ 1 error.\0A\00", [49 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.10 = internal global ptr @fusb300_probe._entry.8, section ".printk_index", align 4
@fusb300_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013ioremap error.\0A\00", [46 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.13 = internal global ptr @fusb300_probe._entry.11, section ".printk_index", align 4
@fusb300_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fusb300->lock\00", [17 x i8] zeroinitializer }, align 32
@fusb300_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fusb300_udc_pullup, ptr null, ptr null, ptr @fusb300_udc_start, ptr @fusb300_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@udc_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fusb300_udc\00", [20 x i8] zeroinitializer }, align 32
@fusb300_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013request_irq error (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.17 = internal global ptr @fusb300_probe._entry.15, section ".printk_index", align 4
@fusb300_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013request_irq1 error (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.20 = internal global ptr @fusb300_probe._entry.18, section ".printk_index", align 4
@fusb300_ep_name = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], [32 x i8] zeroinitializer }, align 32
@fusb300_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @fusb300_enable, ptr @fusb300_disable, ptr null, ptr @fusb300_alloc_request, ptr @fusb300_free_request, ptr @fusb300_queue, ptr @fusb300_dequeue, ptr @fusb300_set_halt, ptr @fusb300_set_wedge, ptr null, ptr @fusb300_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@fusb300_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1482, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fusb300_probe._entry_ptr.24 = internal global ptr @fusb300_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"20 October 2010\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fusb300_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016fusb300_warmreset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fusb300_irq\00", [20 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr = internal global ptr @fusb300_irq._entry, section ".printk_index", align 4
@fusb300_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016fusb300_hotreset\0A\00", [44 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.30 = internal global ptr @fusb300_irq._entry.28, section ".printk_index", align 4
@fusb300_irq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016fusb300_ep0abt\0A\00", [46 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.33 = internal global ptr @fusb300_irq._entry.31, section ".printk_index", align 4
@fusb300_irq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016fusb300_vbus_change\0A\00", [41 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.36 = internal global ptr @fusb300_irq._entry.34, section ".printk_index", align 4
@fusb300_irq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016FUSB300_IGR1_U3_EXIT_INT\0A\00", [36 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.39 = internal global ptr @fusb300_irq._entry.37, section ".printk_index", align 4
@fusb300_irq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016FUSB300_IGR1_U2_EXIT_INT\0A\00", [36 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.42 = internal global ptr @fusb300_irq._entry.40, section ".printk_index", align 4
@fusb300_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016FUSB300_IGR1_U1_EXIT_INT\0A\00", [36 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.45 = internal global ptr @fusb300_irq._entry.43, section ".printk_index", align 4
@fusb300_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.27, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016FUSB300_IGR1_U3_ENTRY_INT\0A\00", [35 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.48 = internal global ptr @fusb300_irq._entry.46, section ".printk_index", align 4
@fusb300_irq._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.27, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016FUSB300_IGR1_U2_ENTRY_INT\0A\00", [35 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.51 = internal global ptr @fusb300_irq._entry.49, section ".printk_index", align 4
@fusb300_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.27, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016FUSB300_IGR1_U1_ENTRY_INT\0A\00", [35 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.54 = internal global ptr @fusb300_irq._entry.52, section ".printk_index", align 4
@fusb300_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.27, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016fusb300_resume\0A\00", [46 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.57 = internal global ptr @fusb300_irq._entry.55, section ".printk_index", align 4
@fusb300_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.27, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016fusb300_suspend\0A\00", [45 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.60 = internal global ptr @fusb300_irq._entry.58, section ".printk_index", align 4
@fusb300_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.27, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016fusb300_HS_LPM_INT\0A\00", [42 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.63 = internal global ptr @fusb300_irq._entry.61, section ".printk_index", align 4
@fusb300_irq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.27, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016fusb300_ep0fail\0A\00", [45 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.66 = internal global ptr @fusb300_irq._entry.64, section ".printk_index", align 4
@fusb300_irq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.27, ptr @.str.2, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016fusb300_ep0setup\0A\00", [44 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.69 = internal global ptr @fusb300_irq._entry.67, section ".printk_index", align 4
@fusb300_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.27, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016fusb300_cmdend\0A\00", [46 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.72 = internal global ptr @fusb300_irq._entry.70, section ".printk_index", align 4
@fusb300_irq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.27, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016fusb300_cxout\0A\00", [47 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.75 = internal global ptr @fusb300_irq._entry.73, section ".printk_index", align 4
@fusb300_irq._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.27, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016fusb300_cxin\0A\00", [16 x i8] zeroinitializer }, align 32
@fusb300_irq._entry_ptr.78 = internal global ptr @fusb300_irq._entry.76, section ".printk_index", align 4
@check_device_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016dev_mode = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_device_mode\00", [46 x i8] zeroinitializer }, align 32
@check_device_mode._entry_ptr = internal global ptr @check_device_mode._entry, section ".printk_index", align 4
@fusb300_rdcxf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017    0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fusb300_rdcxf\00", [18 x i8] zeroinitializer }, align 32
@fusb300_rdcxf._entry_ptr = internal global ptr @fusb300_rdcxf._entry, section ".printk_index", align 4
@fusb300_rdcxf._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_rdcxf._entry_ptr.84 = internal global ptr @fusb300_rdcxf._entry.83, section ".printk_index", align 4
@fusb300_rdcxf._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_rdcxf._entry_ptr.86 = internal global ptr @fusb300_rdcxf._entry.85, section ".printk_index", align 4
@fusb300_rdcxf._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_rdcxf._entry_ptr.88 = internal global ptr @fusb300_rdcxf._entry.87, section ".printk_index", align 4
@request_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017request error!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"request_error\00", [18 x i8] zeroinitializer }, align 32
@request_error._entry_ptr = internal global ptr @request_error._entry, section ".printk_index", align 4
@ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s : req->req.length = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_queue\00", [22 x i8] zeroinitializer }, align 32
@ep0_queue._entry_ptr = internal global ptr @ep0_queue._entry, section ".printk_index", align 4
@fusb300_wrcxf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.93, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fusb300_wrcxf\00", [18 x i8] zeroinitializer }, align 32
@fusb300_wrcxf._entry_ptr = internal global ptr @fusb300_wrcxf._entry, section ".printk_index", align 4
@fusb300_wrcxf._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.93, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_wrcxf._entry_ptr.95 = internal global ptr @fusb300_wrcxf._entry.94, section ".printk_index", align 4
@fusb300_wrcxf._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.93, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_wrcxf._entry_ptr.97 = internal global ptr @fusb300_wrcxf._entry.96, section ".printk_index", align 4
@fusb300_wrcxf._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.93, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fusb300_wrcxf._entry_ptr.99 = internal global ptr @fusb300_wrcxf._entry.98, section ".printk_index", align 4
@disable_fifo_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013can't disable_fifo_int ep0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_fifo_int\00", [47 x i8] zeroinitializer }, align 32
@disable_fifo_int._entry_ptr = internal global ptr @disable_fifo_int._entry, section ".printk_index", align 4
@enable_fifo_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013can't enable_fifo_int ep0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_fifo_int\00", [16 x i8] zeroinitializer }, align 32
@enable_fifo_int._entry_ptr = internal global ptr @enable_fifo_int._entry, section ".printk_index", align 4
@fusb300_clear_epnstall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017EP%d stall... Clear!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fusb300_clear_epnstall\00", [41 x i8] zeroinitializer }, align 32
@fusb300_clear_epnstall._entry_ptr = internal global ptr @fusb300_clear_epnstall._entry, section ".printk_index", align 4
@fusb300_ep0out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s : empty queue\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fusb300_ep0out\00", [17 x i8] zeroinitializer }, align 32
@fusb300_ep0out._entry_ptr = internal global ptr @fusb300_ep0out._entry, section ".printk_index", align 4
@fusb300_rdfifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017req->req.actual > req->req.length\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fusb300_rdfifo\00", [17 x i8] zeroinitializer }, align 32
@fusb300_rdfifo._entry_ptr = internal global ptr @fusb300_rdfifo._entry, section ".printk_index", align 4
@fusb300_rdfifo._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016sync fifo is not empty!\0A\00", [37 x i8] zeroinitializer }, align 32
@fusb300_rdfifo._entry_ptr.112 = internal global ptr @fusb300_rdfifo._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep3\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep5\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep6\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep7\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep8\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep9\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep10\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep11\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep12\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep13\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep14\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep15\00", [27 x i8] zeroinitializer }, align 32
@fusb300_set_start_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fifo entry is over the maximum number!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fusb300_set_start_entry\00", [40 x i8] zeroinitializer }, align 32
@fusb300_set_start_entry._entry_ptr = internal global ptr @fusb300_set_start_entry._entry, section ".printk_index", align 4
@switch.table.fusb300_irq = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"fusb300_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1507, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1371, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1378, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1386, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1394, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1414, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"fusb300_gadget_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1336, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"udc_name\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 27, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1427, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1434, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"fusb300_ep_name\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 28, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"fusb300_ep_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 518, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1482, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1079, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1086, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1100, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1106, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1137, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1143, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1149, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1155, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1163, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1169, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1175, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1181, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1187, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1198, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1202, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1212, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1216, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1221, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1002, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 568, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 579, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 584, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 590, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 680, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 405, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 355, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 362, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 367, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 372, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 312, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 297, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 393, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1024, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 613, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 652, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 16 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 23 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 30 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 37 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 44 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 51 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 58 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 29, i32 65 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 18 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 34 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 30, i32 42 }
@___asan_gen_.489 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private constant [40 x i8] c"../drivers/usb/gadget/udc/fusb300_udc.c\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 94, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [25 x i8] c"switch.table.fusb300_irq\00", align 1
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_fusb300_driver_exit, ptr @__initcall__kmod_fusb300_udc__239_1514_fusb300_driver_init6, ptr @check_device_mode._entry, ptr @check_device_mode._entry_ptr, ptr @disable_fifo_int._entry, ptr @disable_fifo_int._entry_ptr, ptr @enable_fifo_int._entry, ptr @enable_fifo_int._entry_ptr, ptr @ep0_queue._entry, ptr @ep0_queue._entry_ptr, ptr @fusb300_clear_epnstall._entry, ptr @fusb300_clear_epnstall._entry_ptr, ptr @fusb300_driver_exit, ptr @fusb300_ep0out._entry, ptr @fusb300_ep0out._entry_ptr, ptr @fusb300_irq._entry, ptr @fusb300_irq._entry.28, ptr @fusb300_irq._entry.31, ptr @fusb300_irq._entry.34, ptr @fusb300_irq._entry.37, ptr @fusb300_irq._entry.40, ptr @fusb300_irq._entry.43, ptr @fusb300_irq._entry.46, ptr @fusb300_irq._entry.49, ptr @fusb300_irq._entry.52, ptr @fusb300_irq._entry.55, ptr @fusb300_irq._entry.58, ptr @fusb300_irq._entry.61, ptr @fusb300_irq._entry.64, ptr @fusb300_irq._entry.67, ptr @fusb300_irq._entry.70, ptr @fusb300_irq._entry.73, ptr @fusb300_irq._entry.76, ptr @fusb300_irq._entry_ptr, ptr @fusb300_irq._entry_ptr.30, ptr @fusb300_irq._entry_ptr.33, ptr @fusb300_irq._entry_ptr.36, ptr @fusb300_irq._entry_ptr.39, ptr @fusb300_irq._entry_ptr.42, ptr @fusb300_irq._entry_ptr.45, ptr @fusb300_irq._entry_ptr.48, ptr @fusb300_irq._entry_ptr.51, ptr @fusb300_irq._entry_ptr.54, ptr @fusb300_irq._entry_ptr.57, ptr @fusb300_irq._entry_ptr.60, ptr @fusb300_irq._entry_ptr.63, ptr @fusb300_irq._entry_ptr.66, ptr @fusb300_irq._entry_ptr.69, ptr @fusb300_irq._entry_ptr.72, ptr @fusb300_irq._entry_ptr.75, ptr @fusb300_irq._entry_ptr.78, ptr @fusb300_probe._entry, ptr @fusb300_probe._entry.11, ptr @fusb300_probe._entry.15, ptr @fusb300_probe._entry.18, ptr @fusb300_probe._entry.21, ptr @fusb300_probe._entry.3, ptr @fusb300_probe._entry.8, ptr @fusb300_probe._entry_ptr, ptr @fusb300_probe._entry_ptr.10, ptr @fusb300_probe._entry_ptr.13, ptr @fusb300_probe._entry_ptr.17, ptr @fusb300_probe._entry_ptr.20, ptr @fusb300_probe._entry_ptr.24, ptr @fusb300_probe._entry_ptr.7, ptr @fusb300_rdcxf._entry, ptr @fusb300_rdcxf._entry.83, ptr @fusb300_rdcxf._entry.85, ptr @fusb300_rdcxf._entry.87, ptr @fusb300_rdcxf._entry_ptr, ptr @fusb300_rdcxf._entry_ptr.84, ptr @fusb300_rdcxf._entry_ptr.86, ptr @fusb300_rdcxf._entry_ptr.88, ptr @fusb300_rdfifo._entry, ptr @fusb300_rdfifo._entry.110, ptr @fusb300_rdfifo._entry_ptr, ptr @fusb300_rdfifo._entry_ptr.112, ptr @fusb300_set_start_entry._entry, ptr @fusb300_set_start_entry._entry_ptr, ptr @fusb300_wrcxf._entry, ptr @fusb300_wrcxf._entry.94, ptr @fusb300_wrcxf._entry.96, ptr @fusb300_wrcxf._entry.98, ptr @fusb300_wrcxf._entry_ptr, ptr @fusb300_wrcxf._entry_ptr.95, ptr @fusb300_wrcxf._entry_ptr.97, ptr @fusb300_wrcxf._entry_ptr.99, ptr @request_error._entry, ptr @request_error._entry_ptr, ptr @fusb300_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @fusb300_probe.__key, ptr @.str.14, ptr @fusb300_gadget_ops, ptr @udc_name, ptr @.str.16, ptr @.str.19, ptr @fusb300_ep_name, ptr @fusb300_ep_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @switch.table.fusb300_irq], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_ep_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_irq._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_device_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdcxf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdcxf._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdcxf._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdcxf._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_wrcxf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_wrcxf._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_wrcxf._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_wrcxf._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_fifo_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_fifo_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_clear_epnstall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_ep0out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdfifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_rdfifo._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb300_set_start_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fusb300_irq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @fusb300_driver, ptr noundef nonnull @fusb300_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fusb300_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @fusb300_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call18 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %add.i) #9
  %cmp = icmp eq ptr %call18, null
  br i1 %cmp, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1200) #13
  %cmp27 = icmp eq ptr %call7.i.i, null
  br i1 %cmp27, label %if.end25.if.then180_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.if.then180_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then180

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0291 = phi i32 [ %inc, %if.end35.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i269 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 60) #13
  %cmp33 = icmp eq ptr %call7.i.i269, null
  br i1 %cmp33, label %for.body.if.then161_crit_edge, label %if.end35

for.body.if.then161_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then161

if.end35:                                         ; preds = %for.body
  %arrayidx37 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 %i.0291
  %6 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i269, ptr %arrayidx37, align 4
  %inc = add nuw nsw i32 %i.0291, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body38, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body38:                                        ; preds = %if.end35
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @fusb300_probe.__key, i16 noundef signext 3) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3
  %ops = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fusb300_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 10
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @udc_name, ptr %name, align 4
  %reg44 = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg44 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %reg44, align 4
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call2, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @fusb300_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @udc_name, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp47 = icmp slt i32 %call.i, 0
  br i1 %cmp47, label %do.end51, label %if.end54

do.end51:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i) #12
  br label %if.then161

if.end54:                                         ; preds = %do.body38
  %14 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call9, align 4
  %call.i270 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @fusb300_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @udc_name, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp57 = icmp slt i32 %call.i270, 0
  br i1 %cmp57, label %do.end61, label %for.body68.peel.next

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i270) #12
  br label %if.then161

for.body68.peel.next:                             ; preds = %if.end54
  %ep_list = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ep_list, ptr %prev.i, align 4
  %arrayidx71.peel = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx71.peel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx71.peel, align 4
  %fusb30085.peel = getelementptr inbounds %struct.fusb300_ep, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %fusb30085.peel to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %fusb30085.peel, align 4
  %queue.peel = getelementptr inbounds %struct.fusb300_ep, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i273.peel = getelementptr inbounds %struct.fusb300_ep, ptr %19, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i273.peel to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %queue.peel, ptr %prev.i273.peel, align 4
  %name88.peel = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %name88.peel to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.113, ptr %name88.peel, align 4
  %ops90.peel = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %ops90.peel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fusb300_ep_ops, ptr %ops90.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %19, i32 noundef 512) #9
  %caps.peel = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.peel = load i8, ptr %caps.peel, align 4
  %caps112.peel = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 4
  %bf.set120.peel = or i8 %bf.load.peel, -116
  %26 = ptrtoint ptr %caps112.peel to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set120.peel, ptr %caps112.peel, align 4
  br label %if.then73

if.then73:                                        ; preds = %if.end110.if.then73_crit_edge, %for.body68.peel.next
  %i.1292 = phi i32 [ 1, %for.body68.peel.next ], [ %inc122, %if.end110.if.then73_crit_edge ]
  %arrayidx71 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 %i.1292
  %27 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx71, align 4
  %ep_list77 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ep_list77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %ep_list77, ptr %ep_list77, align 4
  %prev.i271 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i271 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ep_list77, ptr %prev.i271, align 4
  %31 = load ptr, ptr %arrayidx71, align 4
  %ep_list81 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list81, ptr noundef %33, ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then73.if.end110_crit_edge

if.then73.if.end110_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.end.i.i:                                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ep_list81, ptr %prev.i, align 4
  %35 = ptrtoint ptr %ep_list81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ep_list, ptr %ep_list81, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ep_list81, ptr %33, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end.i.i, %if.then73.if.end110_crit_edge
  %fusb30085 = getelementptr inbounds %struct.fusb300_ep, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %fusb30085 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %fusb30085, align 4
  %queue = getelementptr inbounds %struct.fusb300_ep, ptr %28, i32 0, i32 2
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i273 = getelementptr inbounds %struct.fusb300_ep, ptr %28, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %queue, ptr %prev.i273, align 4
  %arrayidx86 = getelementptr [16 x ptr], ptr @fusb300_ep_name, i32 0, i32 %i.1292
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx86, align 4
  %name88 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 1
  %43 = ptrtoint ptr %name88 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %name88, align 4
  %ops90 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 2
  %44 = ptrtoint ptr %ops90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @fusb300_ep_ops, ptr %ops90, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %28, i32 noundef 512) #9
  %caps96 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 4
  %45 = ptrtoint ptr %caps96 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load97 = load i8, ptr %caps96, align 4
  %caps112 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 4
  %bf.set120 = or i8 %bf.load97, 124
  %46 = ptrtoint ptr %caps112 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %bf.set120, ptr %caps112, align 4
  %inc122 = add nuw nsw i32 %i.1292, 1
  %exitcond294.not = icmp eq i32 %inc122, 16
  br i1 %exitcond294.not, label %for.end123, label %if.end110.if.then73_crit_edge, !llvm.loop !249

if.end110.if.then73_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

for.end123:                                       ; preds = %if.end110
  %47 = ptrtoint ptr %arrayidx71.peel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx71.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %48, i32 noundef 64) #9
  %49 = ptrtoint ptr %arrayidx71.peel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx71.peel, align 4
  %epnum = getelementptr inbounds %struct.fusb300_ep, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %epnum, align 1
  %52 = load ptr, ptr %arrayidx71.peel, align 4
  %ep0 = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %ep0, align 4
  %ep_list135 = getelementptr inbounds %struct.usb_ep, ptr %52, i32 0, i32 3
  %54 = ptrtoint ptr %ep_list135 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %ep_list135, ptr %ep_list135, align 4
  %prev.i274 = getelementptr inbounds %struct.usb_ep, ptr %52, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev.i274 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ep_list135, ptr %prev.i274, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 64) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %fusb300_alloc_request.exit.thread, label %if.end143

fusb300_alloc_request.exit.thread:                ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_req275 = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %ep0_req275 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ep0_req275, align 4
  br label %clean_up3

if.end143:                                        ; preds = %for.end123
  %queue.i = getelementptr inbounds %struct.fusb300_request, ptr %call7.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.fusb300_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %ep0_req = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %ep0_req, align 4
  tail call fastcc void @init_controller(ptr noundef nonnull %call7.i.i)
  %dev144 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call146 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev144, ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %do.end152, label %err_add_udc

do.end152:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev144, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #12
  br label %cleanup

err_add_udc:                                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ep0_req, align 4
  tail call void @kfree(ptr noundef %62) #9
  br label %clean_up3

clean_up3:                                        ; preds = %err_add_udc, %fusb300_alloc_request.exit.thread
  %ret.0 = phi i32 [ %call146, %err_add_udc ], [ -12, %fusb300_alloc_request.exit.thread ]
  %63 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call2, align 4
  %call159 = tail call ptr @free_irq(i32 noundef %64, ptr noundef nonnull %call7.i.i) #9
  br label %if.then161

if.then161:                                       ; preds = %clean_up3, %do.end61, %do.end51, %for.body.if.then161_crit_edge
  %ret.1 = phi i32 [ %call.i, %do.end51 ], [ %call.i270, %do.end61 ], [ %ret.0, %clean_up3 ], [ -12, %for.body.if.then161_crit_edge ]
  %ep0_req162 = getelementptr inbounds %struct.fusb300, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %ep0_req162 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ep0_req162, align 4
  %tobool163.not = icmp eq ptr %66, null
  br i1 %tobool163.not, label %if.then161.if.end169_crit_edge, label %if.then164

if.then161.if.end169_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then164:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %66) #9
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.then161.if.end169_crit_edge
  %arrayidx174 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 0
  %67 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx174, align 4
  tail call void @kfree(ptr noundef %68) #9
  %arrayidx174.1 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %arrayidx174.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx174.1, align 8
  tail call void @kfree(ptr noundef %70) #9
  %arrayidx174.2 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %arrayidx174.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx174.2, align 4
  tail call void @kfree(ptr noundef %72) #9
  %arrayidx174.3 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %arrayidx174.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx174.3, align 8
  tail call void @kfree(ptr noundef %74) #9
  %arrayidx174.4 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 4
  %75 = ptrtoint ptr %arrayidx174.4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx174.4, align 4
  tail call void @kfree(ptr noundef %76) #9
  %arrayidx174.5 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %arrayidx174.5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx174.5, align 8
  tail call void @kfree(ptr noundef %78) #9
  %arrayidx174.6 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 6
  %79 = ptrtoint ptr %arrayidx174.6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx174.6, align 4
  tail call void @kfree(ptr noundef %80) #9
  %arrayidx174.7 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 7
  %81 = ptrtoint ptr %arrayidx174.7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx174.7, align 8
  tail call void @kfree(ptr noundef %82) #9
  %arrayidx174.8 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 8
  %83 = ptrtoint ptr %arrayidx174.8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx174.8, align 4
  tail call void @kfree(ptr noundef %84) #9
  %arrayidx174.9 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 9
  %85 = ptrtoint ptr %arrayidx174.9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx174.9, align 8
  tail call void @kfree(ptr noundef %86) #9
  %arrayidx174.10 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 10
  %87 = ptrtoint ptr %arrayidx174.10 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx174.10, align 4
  tail call void @kfree(ptr noundef %88) #9
  %arrayidx174.11 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 11
  %89 = ptrtoint ptr %arrayidx174.11 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx174.11, align 8
  tail call void @kfree(ptr noundef %90) #9
  %arrayidx174.12 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 12
  %91 = ptrtoint ptr %arrayidx174.12 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx174.12, align 4
  tail call void @kfree(ptr noundef %92) #9
  %arrayidx174.13 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 13
  %93 = ptrtoint ptr %arrayidx174.13 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx174.13, align 8
  tail call void @kfree(ptr noundef %94) #9
  %arrayidx174.14 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 14
  %95 = ptrtoint ptr %arrayidx174.14 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx174.14, align 4
  tail call void @kfree(ptr noundef %96) #9
  %arrayidx174.15 = getelementptr %struct.fusb300, ptr %call7.i.i, i32 0, i32 5, i32 15
  %97 = ptrtoint ptr %arrayidx174.15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx174.15, align 8
  tail call void @kfree(ptr noundef %98) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then180

if.then180:                                       ; preds = %if.end169, %if.end25.if.then180_crit_edge
  %ret.1281289 = phi i32 [ %ret.1, %if.end169 ], [ -12, %if.end25.if.then180_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %do.end152, %if.then19, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %do.end152 ], [ %ret.1281289, %if.then180 ], [ -12, %if.then19 ], [ -19, %if.then11 ], [ -19, %if.then4 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_irq(i32 noundef %irq, ptr noundef %_fusb300) #2 align 64 {
entry:
  %ctrl = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 1060
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 1056
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl) #9
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %ctrl, align 8
  tail call void @_raw_spin_lock(ptr noundef %_fusb300) #9
  %17 = and i32 %5, %2
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = and i32 %11, %8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and12 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8388608) #9, !srcloc !254
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and14 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end22_crit_edge, label %if.then16

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg, align 4
  %add.ptr.i315 = getelementptr i8, ptr %24, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 256) #9, !srcloc !254
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end.if.end22_crit_edge
  %and23 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %add.ptr.i317 = getelementptr i8, ptr %26, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 524288) #9, !srcloc !254
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %and27 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end35_crit_edge, label %if.then29

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %add.ptr.i319 = getelementptr i8, ptr %28, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 65536) #9, !srcloc !254
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end26.if.end35_crit_edge
  %and36 = and i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %if.then38

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %add.ptr.i321 = getelementptr i8, ptr %30, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 64) #9, !srcloc !254
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end35.if.end44_crit_edge
  %and45 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %add.ptr.i323 = getelementptr i8, ptr %32, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 8) #9, !srcloc !254
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %and49 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 4
  %add.ptr.i325 = getelementptr i8, ptr %34, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325, i32 4) #9, !srcloc !254
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %and53 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %add.ptr.i327 = getelementptr i8, ptr %36, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 2) #9, !srcloc !254
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %and57 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end60_crit_edge, label %if.then59

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg, align 4
  %add.ptr.i329 = getelementptr i8, ptr %38, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 1) #9, !srcloc !254
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end56.if.end60_crit_edge
  %and61 = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end64_crit_edge, label %if.then63

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 4
  %add.ptr.i331 = getelementptr i8, ptr %40, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i331, i32 32768) #9, !srcloc !254
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %and65 = and i32 %18, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %if.then67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg, align 4
  %add.ptr.i333 = getelementptr i8, ptr %42, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i333, i32 16384) #9, !srcloc !254
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end64.if.end73_crit_edge
  %and74 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end82_crit_edge, label %if.then76

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg, align 4
  %add.ptr.i335 = getelementptr i8, ptr %44, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 8192) #9, !srcloc !254
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %if.end73.if.end82_crit_edge
  %and83 = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end91_crit_edge, label %if.then85

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg, align 4
  %add.ptr.i337 = getelementptr i8, ptr %46, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i337, i32 4096) #9, !srcloc !254
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.end82.if.end91_crit_edge
  %and92 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end100_crit_edge, label %if.then94

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  %add.ptr.i339 = getelementptr i8, ptr %48, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i339, i32 2048) #9, !srcloc !254
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg, align 4
  %add.ptr.i340 = getelementptr i8, ptr %50, i32 780
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %52 = or i32 %51, 65536
  %53 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg, align 4
  %add.ptr3.i = getelementptr i8, ptr %54, i32 780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %52) #9, !srcloc !254
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %if.end91.if.end100_crit_edge
  %and101 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end109_crit_edge, label %if.then103

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg, align 4
  %add.ptr.i342 = getelementptr i8, ptr %56, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342, i32 1024) #9, !srcloc !254
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %if.end100.if.end109_crit_edge
  %and110 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end118_crit_edge, label %if.then112

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg, align 4
  %add.ptr.i344 = getelementptr i8, ptr %58, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344, i32 512) #9, !srcloc !254
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.end109.if.end118_crit_edge
  %and119 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end127_crit_edge, label %if.then121

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg, align 4
  %add.ptr.i346 = getelementptr i8, ptr %60, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346, i32 4194304) #9, !srcloc !254
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %if.end127

if.end127:                                        ; preds = %if.then121, %if.end118.if.end127_crit_edge
  %and128 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end136_crit_edge, label %if.then130

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg, align 4
  %add.ptr.i348 = getelementptr i8, ptr %62, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348, i32 2097152) #9, !srcloc !254
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %if.end136

if.end136:                                        ; preds = %if.then130, %if.end127.if.end136_crit_edge
  %and137 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end145_crit_edge, label %if.then139

if.end136.if.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg, align 4
  %add.ptr.i350 = getelementptr i8, ptr %64, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 1048576) #9, !srcloc !254
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end136.if.end145_crit_edge
  %and146 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end149_crit_edge, label %if.then148

if.end145.if.end149_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then148:                                       ; preds = %if.end145
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg, align 4
  %add.ptr.i352 = getelementptr i8, ptr %66, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352, i32 131072) #9, !srcloc !254
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !251
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %and.i = and i32 %70, 3
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %71 = icmp ult i32 %switch.tableidx, 3
  br i1 %71, label %switch.lookup, label %if.then148.check_device_mode.exit_crit_edge

if.then148.check_device_mode.exit_crit_edge:      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_device_mode.exit

switch.lookup:                                    ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fusb300_irq, i32 0, i32 %switch.tableidx
  %72 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %check_device_mode.exit

check_device_mode.exit:                           ; preds = %switch.lookup, %if.then148.check_device_mode.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then148.check_device_mode.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 3, i32 5
  %73 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink.i, ptr %speed.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %and.i) #12
  br label %if.end149

if.end149:                                        ; preds = %check_device_mode.exit, %if.end145.if.end149_crit_edge
  %and150 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end158_crit_edge, label %if.then152

if.end149.if.end158_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 12
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %77 = or i32 %76, 33554432
  %78 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %79, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %77) #9, !srcloc !254
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #12
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.end149.if.end158_crit_edge
  %and159 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end158.if.end176_crit_edge, label %do.end164

if.end158.if.end176_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

do.end164:                                        ; preds = %if.end158
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  %80 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg, align 4
  %add.ptr.i.i354 = getelementptr i8, ptr %81, i32 16
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i354) #9, !srcloc !251
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %83) #12
  %conv.i.i = trunc i32 %83 to i8
  %84 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i.i, ptr %ctrl, align 8
  %shr3.i.i = lshr i32 %83, 8
  %conv5.i.i = trunc i32 %shr3.i.i to i8
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv5.i.i, ptr %12, align 1
  %shr7.i.i = lshr i32 %83, 16
  %conv9.i.i = trunc i32 %shr7.i.i to i8
  %86 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv9.i.i, ptr %13, align 2
  %shr11.i.i = lshr i32 %83, 24
  %conv13.i.i = trunc i32 %shr11.i.i to i8
  %add.ptr14.i.i = getelementptr inbounds i8, ptr %ctrl, i32 3
  %87 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv13.i.i, ptr %add.ptr14.i.i, align 1
  %88 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %89, i32 16
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #9, !srcloc !251
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call2.i.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %91) #12
  %conv.i.1.i = trunc i32 %91 to i8
  %92 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv.i.1.i, ptr %14, align 4
  %shr3.i.1.i = lshr i32 %91, 8
  %conv5.i.1.i = trunc i32 %shr3.i.1.i to i8
  %add.ptr6.i.1.i = getelementptr inbounds i8, ptr %ctrl, i32 5
  %93 = ptrtoint ptr %add.ptr6.i.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv5.i.1.i, ptr %add.ptr6.i.1.i, align 1
  %shr7.i.1.i = lshr i32 %91, 16
  %conv9.i.1.i = trunc i32 %shr7.i.1.i to i8
  %94 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv9.i.1.i, ptr %15, align 2
  %shr11.i.1.i = lshr i32 %91, 24
  %conv13.i.1.i = trunc i32 %shr11.i.1.i to i8
  %add.ptr14.i.1.i = getelementptr inbounds i8, ptr %ctrl, i32 7
  %95 = ptrtoint ptr %add.ptr14.i.1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv13.i.1.i, ptr %add.ptr14.i.1.i, align 1
  %96 = and i8 %conv.i.i, -128
  %ep0_dir.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 9
  %97 = ptrtoint ptr %ep0_dir.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %ep0_dir.i, align 8
  %98 = load i16, ptr %15, align 2
  %conv2.i = zext i16 %98 to i32
  %ep0_length.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 8
  %99 = ptrtoint ptr %ep0_length.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv2.i, ptr %ep0_length.i, align 4
  %100 = and i8 %conv.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp.i = icmp eq i8 %100, 0
  br i1 %cmp.i, label %if.then.i, label %do.end164.if.then169_crit_edge

do.end164.if.then169_crit_edge:                   ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then169

if.then.i:                                        ; preds = %do.end164
  %101 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %12, align 1
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values)
  switch i8 %102, label %if.then.i.if.then169_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb8.i
    i8 3, label %sw.bb9.i
    i8 5, label %sw.bb10.i
    i8 9, label %sw.bb11.i
  ]

if.then.i.if.then169_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then169

sw.bb.i:                                          ; preds = %if.then.i
  %104 = and i32 %83, 31
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %104, label %sw.default.i.i [
    i32 0, label %sw.bb.i.sw.epilog.i.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
  ]

sw.bb.i.sw.epilog.i.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  %106 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %14, align 4
  %108 = trunc i16 %107 to i8
  %conv5.i35.i = and i8 %108, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5.i35.i)
  %tobool.not.i.i = icmp eq i8 %conv5.i35.i, 0
  %109 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %conv5.i35.i to i32
  %111 = mul nuw nsw i32 %conv.i.i.i, 48
  %add.i.i.i = add nsw i32 %111, -16
  %add.ptr.i.i.i = getelementptr i8, ptr %110, i32 %add.i.i.i
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %113 = lshr i32 %112, 16
  %114 = trunc i32 %113 to i16
  %115 = and i16 %114, 256
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i33.i.i = getelementptr i8, ptr %110, i32 12
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %118, i32 12
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %120 = or i32 %119, 33554432
  %121 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i.i.i = getelementptr i8, ptr %122, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i.i, i32 %120) #9, !srcloc !254
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %if.end176

sw.epilog.i.i:                                    ; preds = %if.else.i.i, %if.then.i.i, %sw.bb1.i.i, %sw.bb.i.sw.epilog.i.i_crit_edge
  %status.0.i.i = phi i16 [ 0, %sw.bb1.i.i ], [ 256, %sw.bb.i.sw.epilog.i.i_crit_edge ], [ %115, %if.then.i.i ], [ 0, %if.else.i.i ]
  %ep0_data.i.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 7
  %123 = ptrtoint ptr %ep0_data.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %status.0.i.i, ptr %ep0_data.i.i, align 8
  %ep0_req.i.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 6
  %124 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ep0_req.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %ep0_data.i.i, ptr %125, align 4
  %127 = load ptr, ptr %ep0_req.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %length.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_fusb300) #9
  %ep0.i.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 3, i32 3
  %129 = ptrtoint ptr %ep0.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ep0.i.i, align 4
  %131 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ep0_req.i.i, align 4
  %call16.i.i = tail call i32 @fusb300_queue(ptr noundef %130, ptr noundef %132, i32 noundef 3264) #9
  tail call void @_raw_spin_lock(ptr noundef %_fusb300) #9
  br label %if.end176

sw.bb8.i:                                         ; preds = %if.then.i
  %133 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %14, align 4
  %135 = and i16 %134, 15
  %and.i37.i = zext i16 %135 to i32
  %arrayidx.i.i = getelementptr %struct.fusb300, ptr %_fusb300, i32 0, i32 5, i32 %and.i37.i
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i, align 4
  %138 = and i32 %83, 31
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %138, label %sw.default.i47.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb4.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %141, i32 12
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %143 = or i32 %142, 16777216
  %144 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %145, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i, i32 %143) #9, !srcloc !254
  br label %if.end176

sw.bb4.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg, align 4
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %147, i32 12
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %149 = or i32 %148, 16777216
  %150 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i43.i.i = getelementptr i8, ptr %151, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i43.i.i, i32 %149) #9, !srcloc !254
  br label %if.end176

sw.bb5.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool.not.i38.i = icmp eq i16 %135, 0
  br i1 %tobool.not.i38.i, label %sw.bb5.i.i.if.end25.i.i_crit_edge, label %if.then.i39.i

sw.bb5.i.i.if.end25.i.i_crit_edge:                ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then.i39.i:                                    ; preds = %sw.bb5.i.i
  %wedged.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %137, i32 0, i32 3
  %152 = ptrtoint ptr %wedged.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i.i = load i8, ptr %wedged.i.i, align 4
  %153 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool9.not.i.i = icmp eq i8 %153, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %155, i32 12
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %157 = or i32 %156, 16777216
  %158 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i46.i.i = getelementptr i8, ptr %159, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i46.i.i, i32 %157) #9, !srcloc !254
  br label %if.end176

if.end.i.i:                                       ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool14.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool14.not.i.i, label %if.end.i.i.if.end25.i.i_crit_edge, label %if.then15.i.i

if.end.i.i.if.end25.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  %bf.clear18.i.i = and i8 %bf.load.i.i, 127
  %160 = ptrtoint ptr %wedged.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %bf.clear18.i.i, ptr %wedged.i.i, align 4
  %epnum.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %137, i32 0, i32 4
  %161 = ptrtoint ptr %epnum.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %epnum.i.i, align 1
  %conv.i.i40.i = zext i8 %162 to i32
  %163 = mul nuw nsw i32 %conv.i.i40.i, 48
  %add.i.i41.i = add nsw i32 %163, -16
  %164 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg, align 4
  %add.ptr.i.i48.i.i = getelementptr i8, ptr %165, i32 %add.i.i41.i
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %167 = or i32 %166, 67108864
  %168 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i49.i.i = getelementptr i8, ptr %169, i32 %add.i.i41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i49.i.i, i32 %167) #9, !srcloc !254
  %170 = ptrtoint ptr %epnum.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %epnum.i.i, align 1
  %172 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg, align 4
  %conv.i50.i.i = zext i8 %171 to i32
  %174 = mul nuw nsw i32 %conv.i50.i.i, 48
  %add.i51.i.i = add nsw i32 %174, -16
  %add.ptr.i.i42.i = getelementptr i8, ptr %173, i32 %add.i51.i.i
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i) #9, !srcloc !251
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %and.i.i.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then15.i.i.fusb300_clear_epnstall.exit.i.i_crit_edge, label %do.end.i.i.i

if.then15.i.i.fusb300_clear_epnstall.exit.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_clear_epnstall.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv.i50.i.i) #12
  %or.i.i.i = or i32 %176, 8
  %177 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %178, i32 %add.i51.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %179 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %179) #9, !srcloc !254
  br label %fusb300_clear_epnstall.exit.i.i

fusb300_clear_epnstall.exit.i.i:                  ; preds = %do.end.i.i.i, %if.then15.i.i.fusb300_clear_epnstall.exit.i.i_crit_edge
  %queue.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %137, i32 0, i32 2
  %180 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %181, %queue.i.i
  br i1 %cmp.i.not.i.i, label %fusb300_clear_epnstall.exit.i.i.if.end25.i.i_crit_edge, label %if.then21.i.i

fusb300_clear_epnstall.exit.i.i.if.end25.i.i_crit_edge: ; preds = %fusb300_clear_epnstall.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then21.i.i:                                    ; preds = %fusb300_clear_epnstall.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @enable_fifo_int(ptr noundef %137) #9
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then21.i.i, %fusb300_clear_epnstall.exit.i.i.if.end25.i.i_crit_edge, %if.end.i.i.if.end25.i.i_crit_edge, %sw.bb5.i.i.if.end25.i.i_crit_edge
  %182 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg, align 4
  %add.ptr.i.i54.i.i = getelementptr i8, ptr %183, i32 12
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %185 = or i32 %184, 16777216
  %186 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i55.i.i = getelementptr i8, ptr %187, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i55.i.i, i32 %185) #9, !srcloc !254
  br label %if.end176

sw.default.i47.i:                                 ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i.i44.i = getelementptr i8, ptr %189, i32 12
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i44.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %191 = or i32 %190, 33554432
  %192 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i.i45.i = getelementptr i8, ptr %193, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i45.i, i32 %191) #9, !srcloc !254
  %call.i.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %if.end176

sw.bb9.i:                                         ; preds = %if.then.i
  %194 = and i32 %83, 31
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %194, label %sw.default.i68.i [
    i32 0, label %sw.bb.i53.i
    i32 1, label %sw.bb1.i54.i
    i32 2, label %sw.bb2.i58.i
  ]

sw.bb.i53.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i51.i = getelementptr i8, ptr %197, i32 12
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i51.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %199 = or i32 %198, 16777216
  %200 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i52.i = getelementptr i8, ptr %201, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i52.i, i32 %199) #9, !srcloc !254
  br label %if.end176

sw.bb1.i54.i:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %reg, align 4
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %203, i32 12
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %205 = or i32 %204, 16777216
  %206 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i15.i.i = getelementptr i8, ptr %207, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i15.i.i, i32 %205) #9, !srcloc !254
  br label %if.end176

sw.bb2.i58.i:                                     ; preds = %sw.bb9.i
  %208 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %14, align 4
  %210 = lshr i16 %209, 8
  %211 = trunc i16 %210 to i8
  %conv5.i56.i = and i8 %211, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5.i56.i)
  %tobool.not.i57.i = icmp eq i8 %conv5.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.else.i62.i, label %if.then.i61.i

if.then.i61.i:                                    ; preds = %sw.bb2.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i59.i = zext i8 %conv5.i56.i to i32
  %212 = mul nuw nsw i32 %conv.i.i59.i, 48
  %add.i.i60.i = add nsw i32 %212, -16
  %213 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %reg, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %214, i32 %add.i.i60.i
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %216 = or i32 %215, 16777216
  %217 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i18.i.i = getelementptr i8, ptr %218, i32 %add.i.i60.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i18.i.i, i32 %216) #9, !srcloc !254
  br label %if.end.i63.i

if.else.i62.i:                                    ; preds = %sw.bb2.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %reg, align 4
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %220, i32 12
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %222 = or i32 %221, 33554432
  %223 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i21.i.i = getelementptr i8, ptr %224, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i21.i.i, i32 %222) #9, !srcloc !254
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %if.else.i62.i, %if.then.i61.i
  %225 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %reg, align 4
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %226, i32 12
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %228 = or i32 %227, 16777216
  %229 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i24.i.i = getelementptr i8, ptr %230, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i24.i.i, i32 %228) #9, !srcloc !254
  br label %if.end176

sw.default.i68.i:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  %231 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i.i65.i = getelementptr i8, ptr %232, i32 12
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i65.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %234 = or i32 %233, 33554432
  %235 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i.i66.i = getelementptr i8, ptr %236, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i66.i, i32 %234) #9, !srcloc !254
  %call.i.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %if.end176

sw.bb10.i:                                        ; preds = %if.then.i
  %237 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %238)
  %cmp.i70.i = icmp ugt i16 %238, 255
  %239 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg, align 4
  br i1 %cmp.i70.i, label %if.then.i75.i, label %if.else.i80.i

if.then.i75.i:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i.i72.i = getelementptr i8, ptr %240, i32 12
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i72.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %242 = or i32 %241, 33554432
  %243 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i.i73.i = getelementptr i8, ptr %244, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i73.i, i32 %242) #9, !srcloc !254
  %call.i.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %if.end176

if.else.i80.i:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i76.i = getelementptr i8, ptr %240, i32 8
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %246 = and i32 %245, -2130706433
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #9
  %248 = and i16 %238, 127
  %and2.i.i.i = zext i16 %248 to i32
  %or.i.i77.i = or i32 %247, %and2.i.i.i
  %249 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %reg, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %250, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %251 = tail call i32 @llvm.bswap.i32(i32 %or.i.i77.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %251) #9, !srcloc !254
  %252 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i78.i = getelementptr i8, ptr %253, i32 12
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i78.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %255 = or i32 %254, 16777216
  %256 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i79.i = getelementptr i8, ptr %257, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i79.i, i32 %255) #9, !srcloc !254
  br label %if.end176

sw.bb11.i:                                        ; preds = %if.then.i
  %258 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %reg, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %259, i32 8
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %261 = or i32 %260, -2147483648
  %262 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i355 = getelementptr i8, ptr %263, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i355, i32 %261) #9, !srcloc !254
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb11.i
  %indvars.iv.i = phi i32 [ 1, %sw.bb11.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %264 = mul nuw nsw i32 %indvars.iv.i, 48
  %add.i.i = add nsw i32 %264, -16
  %265 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %reg, align 4
  %add.ptr.i.i84.i = getelementptr i8, ptr %266, i32 %add.i.i
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %268 = or i32 %267, 67108864
  %269 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %270, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %268) #9, !srcloc !254
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 17
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %reenum.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 12
  %271 = ptrtoint ptr %reenum.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 1, ptr %reenum.i, align 8
  br label %if.then169

if.then169:                                       ; preds = %for.end.i, %if.then.i.if.then169_crit_edge, %do.end164.if.then169_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %_fusb300) #9
  %driver = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 4
  %272 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %273, i32 0, i32 4
  %274 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %setup, align 4
  %gadget = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 3
  %call171 = call i32 %275(ptr noundef %gadget, ptr noundef nonnull %ctrl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp = icmp slt i32 %call171, 0
  br i1 %cmp, label %if.then172, label %if.then169.if.end173_crit_edge

if.then169.if.end173_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then172:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @fusb300_set_cxstall(ptr noundef %_fusb300)
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.then169.if.end173_crit_edge
  call void @_raw_spin_lock(ptr noundef %_fusb300) #9
  br label %if.end176

if.end176:                                        ; preds = %if.end173, %if.else.i80.i, %if.then.i75.i, %sw.default.i68.i, %if.end.i63.i, %sw.bb1.i54.i, %sw.bb.i53.i, %sw.default.i47.i, %if.end25.i.i, %if.then10.i.i, %sw.bb4.i.i, %sw.bb.i.i, %sw.epilog.i.i, %sw.default.i.i, %if.end158.if.end176_crit_edge
  %and177 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end176.if.end185_crit_edge, label %do.end182

if.end176.if.end185_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

do.end182:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %if.end185

if.end185:                                        ; preds = %do.end182, %if.end176.if.end185_crit_edge
  %and186 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end185.if.end194_crit_edge, label %do.end191

if.end185.if.end194_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

do.end191:                                        ; preds = %if.end185
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #12
  %ep1.i = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 5
  %276 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ep1.i, align 4
  %queue.i = getelementptr inbounds %struct.fusb300_ep, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %279, %queue.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.then.i357

if.then.i357:                                     ; preds = %do.end191
  %add.ptr.i356 = getelementptr i8, ptr %279, i32 -56
  %length.i = getelementptr i8, ptr %279, i32 -52
  %280 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool4.not.i = icmp eq i32 %281, 0
  br i1 %tobool4.not.i, label %if.then.i357.if.end.i_crit_edge, label %if.then5.i

if.then.i357.if.end.i_crit_edge:                  ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i357
  %fusb3006.i = getelementptr inbounds %struct.fusb300_ep, ptr %277, i32 0, i32 1
  %282 = ptrtoint ptr %fusb3006.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %fusb3006.i, align 4
  %284 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %add.ptr.i356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %281)
  %cmp88.not.i.i = icmp ult i32 %281, 4
  br i1 %cmp88.not.i.i, label %if.then5.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then5.i.for.end.i.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then5.i
  %shr.i.i = lshr i32 %281, 2
  %reg.i.i358 = getelementptr inbounds %struct.fusb300, ptr %283, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.090.i.i = phi i32 [ %shr.i.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %tmp.089.i.i = phi ptr [ %285, %for.body.lr.ph.i.i ], [ %add.ptr15.i.i370, %for.body.i.i.for.body.i.i_crit_edge ]
  %286 = ptrtoint ptr %reg.i.i358 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %reg.i.i358, align 4
  %add.ptr.i.i359 = getelementptr i8, ptr %287, i32 16
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i359) #9, !srcloc !251
  %289 = call i32 @llvm.bswap.i32(i32 %288) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call2.i.i360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %289) #12
  %conv.i27.i = trunc i32 %289 to i8
  %290 = ptrtoint ptr %tmp.089.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv.i27.i, ptr %tmp.089.i.i, align 1
  %shr3.i.i361 = lshr i32 %289, 8
  %conv5.i.i362 = trunc i32 %shr3.i.i361 to i8
  %add.ptr6.i.i363 = getelementptr i8, ptr %tmp.089.i.i, i32 1
  %291 = ptrtoint ptr %add.ptr6.i.i363 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv5.i.i362, ptr %add.ptr6.i.i363, align 1
  %shr7.i.i364 = lshr i32 %289, 16
  %conv9.i.i365 = trunc i32 %shr7.i.i364 to i8
  %add.ptr10.i.i366 = getelementptr i8, ptr %tmp.089.i.i, i32 2
  %292 = ptrtoint ptr %add.ptr10.i.i366 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv9.i.i365, ptr %add.ptr10.i.i366, align 1
  %shr11.i.i367 = lshr i32 %289, 24
  %conv13.i.i368 = trunc i32 %shr11.i.i367 to i8
  %add.ptr14.i.i369 = getelementptr i8, ptr %tmp.089.i.i, i32 3
  %293 = ptrtoint ptr %add.ptr14.i.i369 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv13.i.i368, ptr %add.ptr14.i.i369, align 1
  %add.ptr15.i.i370 = getelementptr i8, ptr %tmp.089.i.i, i32 4
  %dec.i.i = add nsw i32 %i.090.i.i, -1
  %cmp.i28.i = icmp ugt i32 %i.090.i.i, 1
  br i1 %cmp.i28.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then5.i.for.end.i.i_crit_edge
  %tmp.0.lcssa.i.i = phi ptr [ %285, %if.then5.i.for.end.i.i_crit_edge ], [ %add.ptr15.i.i370, %for.body.i.i.for.end.i.i_crit_edge ]
  %rem.i.i = and i32 %281, 3
  %294 = zext i32 %rem.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %294, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %rem.i.i, label %for.end.i.i.if.end.i_crit_edge [
    i32 1, label %sw.bb.i.i371
    i32 2, label %sw.bb26.i.i
    i32 3, label %sw.bb41.i.i
  ]

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb.i.i371:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg16.i.i = getelementptr inbounds %struct.fusb300, ptr %283, i32 0, i32 1
  %295 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %reg16.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %296, i32 16
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #9, !srcloc !251
  %298 = call i32 @llvm.bswap.i32(i32 %297) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %298) #12
  %conv25.i.i = trunc i32 %298 to i8
  %299 = ptrtoint ptr %tmp.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv25.i.i, ptr %tmp.0.lcssa.i.i, align 1
  br label %if.end.i

sw.bb26.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg27.i.i = getelementptr inbounds %struct.fusb300, ptr %283, i32 0, i32 1
  %300 = ptrtoint ptr %reg27.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg27.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %301, i32 16
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #9, !srcloc !251
  %303 = call i32 @llvm.bswap.i32(i32 %302) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %303) #12
  %conv36.i.i = trunc i32 %303 to i8
  %304 = ptrtoint ptr %tmp.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv36.i.i, ptr %tmp.0.lcssa.i.i, align 1
  %shr37.i.i = lshr i32 %303, 8
  %conv39.i.i = trunc i32 %shr37.i.i to i8
  %add.ptr40.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i, i32 1
  %305 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv39.i.i, ptr %add.ptr40.i.i, align 1
  br label %if.end.i

sw.bb41.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg42.i.i = getelementptr inbounds %struct.fusb300, ptr %283, i32 0, i32 1
  %306 = ptrtoint ptr %reg42.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %reg42.i.i, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %307, i32 16
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i.i) #9, !srcloc !251
  %309 = call i32 @llvm.bswap.i32(i32 %308) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %309) #12
  %conv51.i.i = trunc i32 %309 to i8
  %310 = ptrtoint ptr %tmp.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv51.i.i, ptr %tmp.0.lcssa.i.i, align 1
  %shr52.i.i = lshr i32 %309, 8
  %conv54.i.i = trunc i32 %shr52.i.i to i8
  %add.ptr55.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i, i32 1
  %311 = ptrtoint ptr %add.ptr55.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %conv54.i.i, ptr %add.ptr55.i.i, align 1
  %shr56.i.i = lshr i32 %309, 16
  %conv58.i.i = trunc i32 %shr56.i.i to i8
  %add.ptr59.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i, i32 2
  %312 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv58.i.i, ptr %add.ptr59.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb41.i.i, %sw.bb26.i.i, %sw.bb.i.i371, %for.end.i.i.if.end.i_crit_edge, %if.then.i357.if.end.i_crit_edge
  call fastcc void @done(ptr noundef %277, ptr noundef %add.ptr.i356, i32 noundef 0) #9
  %313 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %reg, align 4
  %add.ptr11.i = getelementptr i8, ptr %314, i32 1060
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %316 = and i32 %315, -536870913
  %317 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %reg, align 4
  %add.ptr14.i = getelementptr i8, ptr %318, i32 1060
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %316) #9, !srcloc !254
  br label %if.end194

do.end.i:                                         ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107) #12
  br label %if.end194

if.end194:                                        ; preds = %do.end.i, %if.end.i, %if.end185.if.end194_crit_edge
  %and195 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end194.if.end219_crit_edge, label %do.end200

if.end194.if.end219_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

do.end200:                                        ; preds = %if.end194
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  %ep1.i372 = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 5
  %319 = ptrtoint ptr %ep1.i372 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ep1.i372, align 4
  %queue.i373 = getelementptr inbounds %struct.fusb300_ep, ptr %320, i32 0, i32 2
  %321 = ptrtoint ptr %queue.i373 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile ptr, ptr %queue.i373, align 4
  %cmp.i.not.i374 = icmp eq ptr %322, %queue.i373
  br i1 %cmp.i.not.i374, label %do.end200.if.else.i_crit_edge, label %land.lhs.true.i

do.end200.if.else.i_crit_edge:                    ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end200
  %ep0_dir.i375 = getelementptr inbounds %struct.fusb300, ptr %_fusb300, i32 0, i32 9
  %323 = ptrtoint ptr %ep0_dir.i375 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %ep0_dir.i375, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool2.not.i = icmp eq i8 %324, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i378

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i378:                                     ; preds = %land.lhs.true.i
  %add.ptr.i376 = getelementptr i8, ptr %322, i32 -56
  %length.i377 = getelementptr i8, ptr %322, i32 -52
  %325 = ptrtoint ptr %length.i377 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %length.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool5.not.i = icmp eq i32 %326, 0
  br i1 %tobool5.not.i, label %if.then.i378.if.end.i380_crit_edge, label %if.then6.i

if.then.i378.if.end.i380_crit_edge:               ; preds = %if.then.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i380

if.then6.i:                                       ; preds = %if.then.i378
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @fusb300_wrcxf(ptr noundef %320, ptr noundef %add.ptr.i376) #9
  br label %if.end.i380

if.end.i380:                                      ; preds = %if.then6.i, %if.then.i378.if.end.i380_crit_edge
  %327 = ptrtoint ptr %length.i377 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %length.i377, align 4
  %actual.i = getelementptr i8, ptr %322, i32 -4
  %329 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %actual.i, align 4
  %sub.i = sub i32 %328, %330
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %320, i32 0, i32 7
  %331 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %331, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %bf.cast.i)
  %cmp.i379 = icmp ult i32 %sub.i, %bf.cast.i
  br i1 %cmp.i379, label %if.then12.i, label %if.end.i380.if.end219_crit_edge

if.end.i380.if.end219_crit_edge:                  ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then12.i:                                      ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @done(ptr noundef %320, ptr noundef %add.ptr.i376, i32 noundef 0) #9
  br label %if.end219

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end200.if.else.i_crit_edge
  %332 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i381 = getelementptr i8, ptr %333, i32 12
  %334 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i381) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %335 = or i32 %334, 16777216
  %336 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %reg, align 4
  %add.ptr3.i.i.i382 = getelementptr i8, ptr %337, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i382, i32 %335) #9, !srcloc !254
  br label %if.end219

if.end219:                                        ; preds = %if.else.i, %if.then12.i, %if.end.i380.if.end219_crit_edge, %if.end194.if.end219_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool220.not = icmp eq i32 %19, 0
  br i1 %tobool220.not, label %if.end219.if.end237_crit_edge, label %if.end219.for.body_crit_edge

if.end219.for.body_crit_edge:                     ; preds = %if.end219
  br label %for.body

if.end219.if.end237_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end219.for.body_crit_edge
  %i.0435 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end219.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0435
  %and223 = and i32 %shl, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %for.body.for.inc_crit_edge, label %if.then225

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then225:                                       ; preds = %for.body
  %338 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %reg, align 4
  %340 = mul nuw nsw i32 %i.0435, 48
  %add = add nsw i32 %340, -12
  %add.ptr227 = getelementptr i8, ptr %339, i32 %add
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %342 = and i32 %341, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool231.not = icmp eq i32 %342, 0
  %arrayidx234 = getelementptr %struct.fusb300, ptr %_fusb300, i32 0, i32 5, i32 %i.0435
  %343 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx234, align 4
  br i1 %tobool231.not, label %if.else, label %if.then232

if.then232:                                       ; preds = %if.then225
  %queue.i383 = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 2
  %345 = ptrtoint ptr %queue.i383 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %queue.i383, align 4
  %add.ptr.i384 = getelementptr i8, ptr %346, i32 -56
  %length.i385 = getelementptr i8, ptr %346, i32 -52
  %347 = ptrtoint ptr %length.i385 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %length.i385, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool.not.i = icmp eq i32 %348, 0
  br i1 %tobool.not.i, label %if.then232.for.inc.sink.split_crit_edge, label %if.then.i387

if.then232.for.inc.sink.split_crit_edge:          ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then.i387:                                     ; preds = %if.then232
  %fusb300.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 1
  %349 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %fusb300.i.i, align 4
  %gadget.i.i = getelementptr inbounds %struct.fusb300, ptr %350, i32 0, i32 3
  %call.i.i = call i32 @usb_gadget_map_request(ptr noundef %gadget.i.i, ptr noundef %add.ptr.i384, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i386 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i386, label %if.end.i.i394, label %if.then.i387.for.inc.sink.split_crit_edge

if.then.i387.for.inc.sink.split_crit_edge:        ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end.i.i394:                                    ; preds = %if.then.i387
  %351 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %fusb300.i.i, align 4
  %epnum.i.i388 = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 4
  %353 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %epnum.i.i388, align 1
  %conv.i.i389 = zext i8 %354 to i32
  %shl.i.i = shl i32 65536, %conv.i.i389
  %reg1.i.i.i390 = getelementptr inbounds %struct.fusb300, ptr %352, i32 0, i32 1
  %355 = ptrtoint ptr %reg1.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %reg1.i.i.i390, align 4
  %add.ptr.i.i.i391 = getelementptr i8, ptr %356, i32 1056
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i391) #9, !srcloc !251
  %358 = call i32 @llvm.bswap.i32(i32 %357) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %or.i.i.i392 = or i32 %358, %shl.i.i
  %359 = ptrtoint ptr %reg1.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %reg1.i.i.i390, align 4
  %add.ptr3.i.i.i393 = getelementptr i8, ptr %360, i32 1056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %361 = call i32 @llvm.bswap.i32(i32 %or.i.i.i392) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i393, i32 %361) #9, !srcloc !254
  %dma.i.i = getelementptr i8, ptr %346, i32 -48
  %362 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %dma.i.i, align 4
  %364 = ptrtoint ptr %length.i385 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %length.i385, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i394
  %366 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %fusb300.i.i, align 4
  %reg1.i16.i.i = getelementptr inbounds %struct.fusb300, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %reg1.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %reg1.i16.i.i, align 4
  %370 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %epnum.i.i388, align 1
  %conv.i.i.i395 = zext i8 %371 to i32
  %sub.i.i.i = shl nuw nsw i32 %conv.i.i.i395, 4
  %add.i.i.i396 = add nuw nsw i32 %sub.i.i.i, 1296
  %add.ptr.i17.i.i = getelementptr i8, ptr %369, i32 %add.i.i.i396
  %372 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %373 = and i32 %372, 1
  %tobool.not.i.i.i397 = icmp eq i32 %373, 0
  br i1 %tobool.not.i.i.i397, label %fusb300_fill_idma_prdtbl.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

fusb300_fill_idma_prdtbl.exit.i.i:                ; preds = %do.body.i.i.i
  %374 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %fusb300.i.i, align 4
  %reg3.i.i.i = getelementptr inbounds %struct.fusb300, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %reg3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %reg3.i.i.i, align 4
  %378 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %epnum.i.i388, align 1
  %conv5.i.i.i = zext i8 %379 to i32
  %sub6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 4
  %add8.i.i.i = add nuw nsw i32 %sub6.i.i.i, 1300
  %add.ptr9.i.i.i398 = getelementptr i8, ptr %377, i32 %add8.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %380 = call i32 @llvm.bswap.i32(i32 %363) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i398, i32 %380) #9, !srcloc !254
  %and10.i.i.i = and i32 %365, 16777215
  %or13.i.i.i = or i32 %and10.i.i.i, 452984832
  %381 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %fusb300.i.i, align 4
  %reg15.i.i.i = getelementptr inbounds %struct.fusb300, ptr %382, i32 0, i32 1
  %383 = ptrtoint ptr %reg15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %reg15.i.i.i, align 4
  %385 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %epnum.i.i388, align 1
  %conv17.i.i.i = zext i8 %386 to i32
  %sub18.i.i.i = shl nuw nsw i32 %conv17.i.i.i, 4
  %add20.i.i.i = add nuw nsw i32 %sub18.i.i.i, 1296
  %add.ptr21.i.i.i = getelementptr i8, ptr %384, i32 %add20.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %387 = call i32 @llvm.bswap.i32(i32 %or13.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i, i32 %387) #9, !srcloc !254
  %388 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %fusb300.i.i, align 4
  %reg23.i.i.i = getelementptr inbounds %struct.fusb300, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %reg23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %reg23.i.i.i, align 4
  %392 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %epnum.i.i388, align 1
  %conv25.i.i.i = zext i8 %393 to i32
  %sub26.i.i.i = shl nuw nsw i32 %conv25.i.i.i, 4
  %add28.i.i.i = add nuw nsw i32 %sub26.i.i.i, 1304
  %add.ptr29.i.i.i = getelementptr i8, ptr %391, i32 %add28.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i.i, i32 0) #9, !srcloc !254
  %394 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %fusb300.i.i, align 4
  %396 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %epnum.i.i388, align 1
  %conv32.i.i.i = zext i8 %397 to i32
  %shl.i.i.i = shl nuw i32 1, %conv32.i.i.i
  %reg1.i.i.i.i = getelementptr inbounds %struct.fusb300, ptr %395, i32 0, i32 1
  %398 = ptrtoint ptr %reg1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %reg1.i.i.i.i, align 4
  %add.ptr.i.i.i.i399 = getelementptr i8, ptr %399, i32 1284
  %400 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i399) #9, !srcloc !251
  %401 = call i32 @llvm.bswap.i32(i32 %400) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %or.i.i.i.i = or i32 %401, %shl.i.i.i
  %402 = ptrtoint ptr %reg1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %reg1.i.i.i.i, align 4
  %add.ptr3.i.i.i.i400 = getelementptr i8, ptr %403, i32 1284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %404 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i400, i32 %404) #9, !srcloc !254
  br label %do.body.i22.i.i

do.body.i22.i.i:                                  ; preds = %if.end.i.i.i.do.body.i22.i.i_crit_edge, %fusb300_fill_idma_prdtbl.exit.i.i
  %405 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %fusb300.i.i, align 4
  %reg1.i20.i.i = getelementptr inbounds %struct.fusb300, ptr %406, i32 0, i32 1
  %407 = ptrtoint ptr %reg1.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %reg1.i20.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %408, i32 1028
  %409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %410 = and i32 %409, 8913216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %411 = icmp eq i32 %410, 0
  %412 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %fusb300.i.i, align 4
  %reg11.i.i.i = getelementptr inbounds %struct.fusb300, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %reg11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %reg11.i.i.i, align 4
  br i1 %411, label %if.end.i.i.i, label %IDMA_RESET.i.i.i

if.end.i.i.i:                                     ; preds = %do.body.i22.i.i
  %add.ptr12.i.i.i = getelementptr i8, ptr %415, i32 1024
  %416 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i.i) #9, !srcloc !251
  %417 = call i32 @llvm.bswap.i32(i32 %416) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %418 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %epnum.i.i388, align 1
  %conv.i23.i.i = zext i8 %419 to i32
  %shl.i24.i.i = shl i32 65536, %conv.i23.i.i
  %and14.i.i.i = and i32 %shl.i24.i.i, %417
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end.i.i.i.do.body.i22.i.i_crit_edge, label %do.end.i.i.i401

if.end.i.i.i.do.body.i22.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i22.i.i

do.end.i.i.i401:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %420 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %fusb300.i.i, align 4
  %reg.i.i.i.i = getelementptr inbounds %struct.fusb300, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i25.i.i = getelementptr i8, ptr %423, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %424 = call i32 @llvm.bswap.i32(i32 %shl.i24.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i.i, i32 %424) #9, !srcloc !254
  br label %fusb300_wait_idma_finished.exit.i.i

IDMA_RESET.i.i.i:                                 ; preds = %do.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr23.i.i.i = getelementptr i8, ptr %415, i32 1056
  %425 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i.i) #9, !srcloc !251
  %426 = call i32 @llvm.bswap.i32(i32 %425) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %427 = ptrtoint ptr %epnum.i.i388 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %epnum.i.i388, align 1
  %conv26.i.i.i = zext i8 %428 to i32
  %shl28.i.i.i = shl i32 65536, %conv26.i.i.i
  %neg.i.i.i = xor i32 %shl28.i.i.i, -1
  %and29.i.i.i = and i32 %426, %neg.i.i.i
  %429 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %fusb300.i.i, align 4
  %reg31.i.i.i = getelementptr inbounds %struct.fusb300, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %reg31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %reg31.i.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %432, i32 1056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  %433 = call i32 @llvm.bswap.i32(i32 %and29.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i, i32 %433) #9, !srcloc !254
  br label %fusb300_wait_idma_finished.exit.i.i

fusb300_wait_idma_finished.exit.i.i:              ; preds = %IDMA_RESET.i.i.i, %do.end.i.i.i401
  %434 = ptrtoint ptr %fusb300.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %fusb300.i.i, align 4
  %gadget6.i.i = getelementptr inbounds %struct.fusb300, ptr %435, i32 0, i32 3
  call void @usb_gadget_unmap_request(ptr noundef %gadget6.i.i, ptr noundef %add.ptr.i384, i32 noundef 1) #9
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then225
  %fusb3001.i = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 1
  %436 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %fusb3001.i, align 4
  %queue.i403 = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 2
  %438 = ptrtoint ptr %queue.i403 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %queue.i403, align 4
  %add.ptr.i404 = getelementptr i8, ptr %439, i32 -56
  %reg2.i = getelementptr inbounds %struct.fusb300, ptr %437, i32 0, i32 1
  %440 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %reg2.i, align 4
  %epnum.i = getelementptr inbounds %struct.fusb300_ep, ptr %344, i32 0, i32 4
  %442 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %epnum.i, align 1
  %conv.i = zext i8 %443 to i32
  %444 = mul nuw nsw i32 %conv.i, 48
  %add.i = add nsw i32 %444, -4
  %add.ptr3.i405 = getelementptr i8, ptr %441, i32 %add.i
  %445 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i405) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %446 = and i32 %445, -65280
  %447 = call i32 @llvm.bswap.i32(i32 %446) #9
  %448 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %fusb3001.i, align 4
  %450 = ptrtoint ptr %add.ptr.i404 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %add.ptr.i404, align 4
  %actual.i.i = getelementptr i8, ptr %439, i32 -4
  %452 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %actual.i.i, align 4
  %add.ptr.i.i406 = getelementptr i8, ptr %451, i32 %453
  %add.i.i407 = add i32 %453, %447
  store i32 %add.i.i407, ptr %actual.i.i, align 4
  %length9.i.i = getelementptr i8, ptr %439, i32 -52
  %454 = ptrtoint ptr %length9.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %length9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i407, i32 %455)
  %cmp.i.i = icmp ugt i32 %add.i.i407, %455
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.if.end.i.i409_crit_edge

if.else.if.end.i.i409_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i409

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %if.end.i.i409

if.end.i.i409:                                    ; preds = %do.end.i.i, %if.else.if.end.i.i409_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %447)
  %cmp11126.not.i.i = icmp ult i32 %447, 4
  br i1 %cmp11126.not.i.i, label %if.end.i.i409.for.end.i.i419_crit_edge, label %for.body.lr.ph.i.i411

if.end.i.i409.for.end.i.i419_crit_edge:           ; preds = %if.end.i.i409
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i419

for.body.lr.ph.i.i411:                            ; preds = %if.end.i.i409
  %shr.i.i410 = lshr i32 %447, 2
  %reg12.i.i = getelementptr inbounds %struct.fusb300, ptr %449, i32 0, i32 1
  br label %for.body.i.i416

for.body.i.i416:                                  ; preds = %for.body.i.i416.for.body.i.i416_crit_edge, %for.body.lr.ph.i.i411
  %i.0128.i.i = phi i32 [ %shr.i.i410, %for.body.lr.ph.i.i411 ], [ %dec.i.i415, %for.body.i.i416.for.body.i.i416_crit_edge ]
  %tmp.0127.i.i = phi ptr [ %add.ptr.i.i406, %for.body.lr.ph.i.i411 ], [ %add.ptr29.i.i, %for.body.i.i416.for.body.i.i416_crit_edge ]
  %456 = ptrtoint ptr %reg12.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %reg12.i.i, align 4
  %458 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %epnum.i, align 1
  %conv.i.i412 = zext i8 %459 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i412, 4
  %add13.i.i = or i32 %sub.i.i, 4096
  %add.ptr14.i.i413 = getelementptr i8, ptr %457, i32 %add13.i.i
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i413) #9, !srcloc !251
  %461 = call i32 @llvm.bswap.i32(i32 %460) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %conv16.i.i = trunc i32 %461 to i8
  %462 = ptrtoint ptr %tmp.0127.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %conv16.i.i, ptr %tmp.0127.i.i, align 1
  %shr17.i.i = lshr i32 %461, 8
  %conv19.i.i = trunc i32 %shr17.i.i to i8
  %add.ptr20.i.i = getelementptr i8, ptr %tmp.0127.i.i, i32 1
  %463 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %conv19.i.i, ptr %add.ptr20.i.i, align 1
  %shr21.i.i = lshr i32 %461, 16
  %conv23.i.i = trunc i32 %shr21.i.i to i8
  %add.ptr24.i.i = getelementptr i8, ptr %tmp.0127.i.i, i32 2
  %464 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %conv23.i.i, ptr %add.ptr24.i.i, align 1
  %shr25.i.i = lshr i32 %461, 24
  %conv27.i.i = trunc i32 %shr25.i.i to i8
  %add.ptr28.i.i414 = getelementptr i8, ptr %tmp.0127.i.i, i32 3
  %465 = ptrtoint ptr %add.ptr28.i.i414 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %conv27.i.i, ptr %add.ptr28.i.i414, align 1
  %add.ptr29.i.i = getelementptr i8, ptr %tmp.0127.i.i, i32 4
  %dec.i.i415 = add nsw i32 %i.0128.i.i, -1
  %cmp11.i.i = icmp ugt i32 %i.0128.i.i, 1
  br i1 %cmp11.i.i, label %for.body.i.i416.for.body.i.i416_crit_edge, label %for.body.i.i416.for.end.i.i419_crit_edge

for.body.i.i416.for.end.i.i419_crit_edge:         ; preds = %for.body.i.i416
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i419

for.body.i.i416.for.body.i.i416_crit_edge:        ; preds = %for.body.i.i416
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i416

for.end.i.i419:                                   ; preds = %for.body.i.i416.for.end.i.i419_crit_edge, %if.end.i.i409.for.end.i.i419_crit_edge
  %tmp.0.lcssa.i.i417 = phi ptr [ %add.ptr.i.i406, %if.end.i.i409.for.end.i.i419_crit_edge ], [ %add.ptr29.i.i, %for.body.i.i416.for.end.i.i419_crit_edge ]
  %rem.i.i418 = and i32 %447, 3
  %466 = zext i32 %rem.i.i418 to i64
  call void @__sanitizer_cov_trace_switch(i64 %466, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %rem.i.i418, label %for.end.i.i419.sw.epilog.i.i423_crit_edge [
    i32 1, label %sw.bb.i.i421
    i32 2, label %sw.bb40.i.i
    i32 3, label %sw.bb55.i.i
  ]

for.end.i.i419.sw.epilog.i.i423_crit_edge:        ; preds = %for.end.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i423

sw.bb.i.i421:                                     ; preds = %for.end.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  %reg30.i.i = getelementptr inbounds %struct.fusb300, ptr %449, i32 0, i32 1
  %467 = ptrtoint ptr %reg30.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %reg30.i.i, align 4
  %469 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %epnum.i, align 1
  %conv32.i.i = zext i8 %470 to i32
  %sub33.i.i = shl nuw nsw i32 %conv32.i.i, 4
  %add35.i.i = or i32 %sub33.i.i, 4096
  %add.ptr36.i.i = getelementptr i8, ptr %468, i32 %add35.i.i
  %471 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i) #9, !srcloc !251
  %472 = lshr i32 %471, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %conv39.i.i420 = trunc i32 %472 to i8
  %473 = ptrtoint ptr %tmp.0.lcssa.i.i417 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv39.i.i420, ptr %tmp.0.lcssa.i.i417, align 1
  br label %sw.epilog.i.i423

sw.bb40.i.i:                                      ; preds = %for.end.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  %reg41.i.i = getelementptr inbounds %struct.fusb300, ptr %449, i32 0, i32 1
  %474 = ptrtoint ptr %reg41.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %reg41.i.i, align 4
  %476 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %epnum.i, align 1
  %conv43.i.i = zext i8 %477 to i32
  %sub44.i.i = shl nuw nsw i32 %conv43.i.i, 4
  %add46.i.i = or i32 %sub44.i.i, 4096
  %add.ptr47.i.i = getelementptr i8, ptr %475, i32 %add46.i.i
  %478 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #9, !srcloc !251
  %479 = call i32 @llvm.bswap.i32(i32 %478) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %conv50.i.i = trunc i32 %479 to i8
  %480 = ptrtoint ptr %tmp.0.lcssa.i.i417 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %conv50.i.i, ptr %tmp.0.lcssa.i.i417, align 1
  %shr51.i.i = lshr i32 %479, 8
  %conv53.i.i = trunc i32 %shr51.i.i to i8
  %add.ptr54.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i417, i32 1
  %481 = ptrtoint ptr %add.ptr54.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %conv53.i.i, ptr %add.ptr54.i.i, align 1
  br label %sw.epilog.i.i423

sw.bb55.i.i:                                      ; preds = %for.end.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  %reg56.i.i = getelementptr inbounds %struct.fusb300, ptr %449, i32 0, i32 1
  %482 = ptrtoint ptr %reg56.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %reg56.i.i, align 4
  %484 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %epnum.i, align 1
  %conv58.i.i422 = zext i8 %485 to i32
  %sub59.i.i = shl nuw nsw i32 %conv58.i.i422, 4
  %add61.i.i = or i32 %sub59.i.i, 4096
  %add.ptr62.i.i = getelementptr i8, ptr %483, i32 %add61.i.i
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i.i) #9, !srcloc !251
  %487 = call i32 @llvm.bswap.i32(i32 %486) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %conv65.i.i = trunc i32 %487 to i8
  %488 = ptrtoint ptr %tmp.0.lcssa.i.i417 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %conv65.i.i, ptr %tmp.0.lcssa.i.i417, align 1
  %shr66.i.i = lshr i32 %487, 8
  %conv68.i.i = trunc i32 %shr66.i.i to i8
  %add.ptr69.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i417, i32 1
  %489 = ptrtoint ptr %add.ptr69.i.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %conv68.i.i, ptr %add.ptr69.i.i, align 1
  %shr70.i.i = lshr i32 %487, 16
  %conv72.i.i = trunc i32 %shr70.i.i to i8
  %add.ptr73.i.i = getelementptr i8, ptr %tmp.0.lcssa.i.i417, i32 2
  %490 = ptrtoint ptr %add.ptr73.i.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %conv72.i.i, ptr %add.ptr73.i.i, align 1
  br label %sw.epilog.i.i423

sw.epilog.i.i423:                                 ; preds = %sw.bb55.i.i, %sw.bb40.i.i, %sw.bb.i.i421, %for.end.i.i419.sw.epilog.i.i423_crit_edge
  %reg75.i.i = getelementptr inbounds %struct.fusb300, ptr %449, i32 0, i32 1
  br label %do.body74.i.i

do.body74.i.i:                                    ; preds = %if.end85.i.i.do.body74.i.i_crit_edge, %sw.epilog.i.i423
  %i.1.i.i = phi i32 [ 0, %sw.epilog.i.i423 ], [ %inc.i.i, %if.end85.i.i.do.body74.i.i_crit_edge ]
  %491 = ptrtoint ptr %reg75.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %reg75.i.i, align 4
  %add.ptr76.i.i = getelementptr i8, ptr %492, i32 1028
  %493 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i.i) #9, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i.i)
  %tobool.not.i.i424 = icmp eq i32 %i.1.i.i, 0
  br i1 %tobool.not.i.i424, label %do.body74.i.i.if.end85.i.i_crit_edge, label %do.end82.i.i

do.body74.i.i.if.end85.i.i_crit_edge:             ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i

do.end82.i.i:                                     ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %do.end82.i.i, %do.body74.i.i.if.end85.i.i_crit_edge
  %inc.i.i = add i32 %i.1.i.i, 1
  %494 = and i32 %493, 16
  %tobool87.not.i.i = icmp eq i32 %494, 0
  br i1 %tobool87.not.i.i, label %if.end85.i.i.do.body74.i.i_crit_edge, label %fusb300_rdfifo.exit.i

if.end85.i.i.do.body74.i.i_crit_edge:             ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74.i.i

fusb300_rdfifo.exit.i:                            ; preds = %if.end85.i.i
  %495 = ptrtoint ptr %length9.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %length9.i.i, align 4
  %497 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %actual.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %496, i32 %498)
  %cmp.i425 = icmp eq i32 %496, %498
  br i1 %cmp.i425, label %fusb300_rdfifo.exit.i.for.inc.sink.split_crit_edge, label %lor.lhs.false.i

fusb300_rdfifo.exit.i.for.inc.sink.split_crit_edge: ; preds = %fusb300_rdfifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

lor.lhs.false.i:                                  ; preds = %fusb300_rdfifo.exit.i
  %maxpacket.i426 = getelementptr inbounds %struct.usb_ep, ptr %344, i32 0, i32 7
  %499 = ptrtoint ptr %maxpacket.i426 to i32
  call void @__asan_loadN_noabort(i32 %499, i32 7)
  %bf.load.i427 = load i56, ptr %maxpacket.i426, align 2
  %bf.lshr.i428 = lshr i56 %bf.load.i427, 40
  %bf.cast.i429 = trunc i56 %bf.lshr.i428 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %bf.cast.i429)
  %cmp9.i = icmp ult i32 %447, %bf.cast.i429
  br i1 %cmp9.i, label %lor.lhs.false.i.for.inc.sink.split_crit_edge, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i.for.inc.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %lor.lhs.false.i.for.inc.sink.split_crit_edge, %fusb300_rdfifo.exit.i.for.inc.sink.split_crit_edge, %fusb300_wait_idma_finished.exit.i.i, %if.then.i387.for.inc.sink.split_crit_edge, %if.then232.for.inc.sink.split_crit_edge
  %add.ptr.i404.sink = phi ptr [ %add.ptr.i384, %if.then232.for.inc.sink.split_crit_edge ], [ %add.ptr.i384, %if.then.i387.for.inc.sink.split_crit_edge ], [ %add.ptr.i384, %fusb300_wait_idma_finished.exit.i.i ], [ %add.ptr.i404, %lor.lhs.false.i.for.inc.sink.split_crit_edge ], [ %add.ptr.i404, %fusb300_rdfifo.exit.i.for.inc.sink.split_crit_edge ]
  call fastcc void @done(ptr noundef %344, ptr noundef %add.ptr.i404.sink, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0435, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.end237_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end237_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.end237:                                        ; preds = %for.inc.if.end237_crit_edge, %if.end219.if.end237_crit_edge
  call void @_raw_spin_unlock(ptr noundef %_fusb300) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fusb300_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !255

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.fusb300_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.fusb300_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_controller(ptr nocapture noundef readonly %fusb300) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.fusb300, ptr %fusb300, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1300
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %3 = or i32 %2, 768
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 1300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !254
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 772
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %9 = or i32 %8, 65536
  %10 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg1, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #9, !srcloc !254
  %12 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg1, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 784
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %15 = or i32 %14, -16777216
  %16 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg1, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #9, !srcloc !254
  %18 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %19, i32 784
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %21 = or i32 %20, 16711680
  %22 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg1, align 4
  %add.ptr4.i29 = getelementptr i8, ptr %23, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i29, i32 %21) #9, !srcloc !254
  %24 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg1, align 4
  %add.ptr13 = getelementptr i8, ptr %25, i32 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1610612785) #9, !srcloc !254
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fusb300_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fusb300_udc_pullup(ptr nocapture noundef readnone %_gadget, i32 noundef %is_active) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fusb300_udc_start(ptr nocapture noundef writeonly %g, ptr noundef %driver) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr i8, ptr %g, i32 1048
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_udc_stop(ptr nocapture noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %g, i32 -56
  tail call fastcc void @init_controller(ptr noundef %add.ptr)
  %driver = getelementptr i8, ptr %g, i32 1048
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fusb300_set_cxstall(ptr nocapture noundef readonly %fusb300) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1.i = getelementptr inbounds %struct.fusb300, ptr %fusb300, i32 0, i32 1
  %0 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #9, !srcloc !254
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb300 = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb300, align 4
  %speed = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %queue = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  %queue14 = getelementptr inbounds %struct.fusb300_request, ptr %_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue14, ptr noundef %7, ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %queue14, align 4
  %prev3.i.i = getelementptr inbounds %struct.fusb300_request, ptr %_req, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue14, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body4.list_add_tail.exit_crit_edge
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -115, ptr %status, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %list_add_tail.exit
  %16 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fusb300, align 4
  %ep0_dir.i = getelementptr inbounds %struct.fusb300, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %ep0_dir.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ep0_dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %length17.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %20 = ptrtoint ptr %length17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.else15.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  br i1 %tobool18.not.i, label %do.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fusb300_wrcxf(ptr noundef %_ep, ptr noundef %_req) #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then3.i
  %22 = ptrtoint ptr %length17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length17.i, align 4
  %24 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i44 = icmp eq i32 %23, %25
  br i1 %cmp.i44, label %if.end.i.if.then13.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %26 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %bf.cast.i)
  %cmp12.i = icmp ult i32 %25, %bf.cast.i
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.if.end27_crit_edge

lor.lhs.false.i.if.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  tail call fastcc void @done(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #9
  br label %if.end27

if.else15.i:                                      ; preds = %if.then21
  br i1 %tobool18.not.i, label %if.then19.i, label %if.else20.i

if.then19.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #9
  br label %if.end27

if.else20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i.i = getelementptr inbounds %struct.fusb300, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 1060
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %30 = or i32 %29, 536870912
  %31 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %32, i32 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %30) #9, !srcloc !254
  br label %if.end27

if.else:                                          ; preds = %list_add_tail.exit
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %stall = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 3
  %33 = ptrtoint ptr %stall to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %stall, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true
  %epnum.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 4
  %34 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %epnum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i45 = icmp eq i8 %35, 0
  br i1 %tobool.not.i45, label %do.end.i52, label %if.then.i50

if.then.i50:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fusb300, align 4
  %conv.i46 = zext i8 %35 to i32
  %shl.i = shl nuw i32 1, %conv.i46
  %reg1.i.i47 = getelementptr inbounds %struct.fusb300, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %reg1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg1.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %39, i32 1056
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #9, !srcloc !251
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %or.i.i = or i32 %41, %shl.i
  %42 = ptrtoint ptr %reg1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg1.i.i47, align 4
  %add.ptr3.i.i49 = getelementptr i8, ptr %43, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i49, i32 %44) #9, !srcloc !254
  br label %if.end27

do.end.i52:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end.i52, %if.then.i50, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.else20.i, %if.then19.i, %if.then13.i, %lor.lhs.false.i.if.end27_crit_edge
  %45 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fusb300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_fifo_int(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fusb3001 = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %fusb3001 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fusb3001, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %reg1.i = getelementptr inbounds %struct.fusb300, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !251
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %or.i = or i32 %7, %shl
  %8 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #9, !srcloc !254
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fusb300_wrcxf(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb3001 = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb3001 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb3001, align 4
  %length3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length3, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %sub = sub i32 %3, %5
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub)
  %cmp = icmp ugt i32 %sub, 512
  %reg1.i = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %11 = and i32 %10, -16776961
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = or i32 %11, 512
  %13 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg1.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #9, !srcloc !254
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.0137 = phi i32 [ 128, %if.then ], [ %dec, %for.body.for.body_crit_edge ]
  %tmp.0136 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr20, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %tmp.0136 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp.0136, align 1
  %conv = zext i8 %16 to i32
  %add.ptr9 = getelementptr i8, ptr %tmp.0136, i32 1
  %17 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr9, align 1
  %conv10 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %or = or i32 %shl, %conv
  %add.ptr11 = getelementptr i8, ptr %tmp.0136, i32 2
  %19 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr11, align 1
  %conv12 = zext i8 %20 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %or14 = or i32 %or, %shl13
  %add.ptr15 = getelementptr i8, ptr %tmp.0136, i32 3
  %21 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr15, align 1
  %conv16 = zext i8 %22 to i32
  %shl17 = shl nuw i32 %conv16, 24
  %or18 = or i32 %or14, %shl17
  %23 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg1.i, align 4
  %add.ptr19 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or18) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %25) #9, !srcloc !254
  %add.ptr20 = getelementptr i8, ptr %tmp.0136, i32 4
  %dec = add nsw i32 %i.0137, -1
  %cmp8 = icmp ugt i32 %i.0137, 1
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %26 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %and2.i = shl nuw nsw i32 %sub, 8
  %shl.i = and i32 %and2.i, 16776960
  %or.i131 = or i32 %26, %shl.i
  %27 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg1.i, align 4
  %add.ptr4.i132 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i131) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i132, i32 %29) #9, !srcloc !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp24133.not = icmp ult i32 %sub, 4
  br i1 %cmp24133.not, label %if.else.for.end46_crit_edge, label %for.body26.preheader

if.else.for.end46_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body26.preheader:                             ; preds = %if.else
  %shr = lshr i32 %sub, 2
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.preheader
  %i.1135 = phi i32 [ %dec45, %for.body26.for.body26_crit_edge ], [ %shr, %for.body26.preheader ]
  %tmp.1134 = phi ptr [ %add.ptr43, %for.body26.for.body26_crit_edge ], [ %add.ptr, %for.body26.preheader ]
  %30 = ptrtoint ptr %tmp.1134 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tmp.1134, align 1
  %conv27 = zext i8 %31 to i32
  %add.ptr28 = getelementptr i8, ptr %tmp.1134, i32 1
  %32 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr28, align 1
  %conv29 = zext i8 %33 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv27
  %add.ptr32 = getelementptr i8, ptr %tmp.1134, i32 2
  %34 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %35 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %or31, %shl34
  %add.ptr36 = getelementptr i8, ptr %tmp.1134, i32 3
  %36 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr36, align 1
  %conv37 = zext i8 %37 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %or39 = or i32 %or35, %shl38
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %or39) #12
  %38 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg1.i, align 4
  %add.ptr42 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or39) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %40) #9, !srcloc !254
  %add.ptr43 = getelementptr i8, ptr %tmp.1134, i32 4
  %dec45 = add nsw i32 %i.1135, -1
  %cmp24 = icmp ugt i32 %i.1135, 1
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end46_crit_edge

for.body26.for.end46_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.end46:                                        ; preds = %for.body26.for.end46_crit_edge, %if.else.for.end46_crit_edge
  %tmp.1.lcssa = phi ptr [ %add.ptr, %if.else.for.end46_crit_edge ], [ %add.ptr43, %for.body26.for.end46_crit_edge ]
  %rem = and i32 %sub, 3
  %41 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %rem, label %for.end46.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb55
    i32 3, label %sw.bb68
  ]

for.end46.if.end_crit_edge:                       ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb:                                            ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %tmp.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tmp.1.lcssa, align 1
  %conv47 = zext i8 %43 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv47) #12
  %44 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg1.i, align 4
  %add.ptr54 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %46 = shl nuw i32 %conv47, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %46) #9, !srcloc !254
  br label %if.end

sw.bb55:                                          ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %tmp.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmp.1.lcssa, align 1
  %conv56 = zext i8 %48 to i32
  %add.ptr57 = getelementptr i8, ptr %tmp.1.lcssa, i32 1
  %49 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr57, align 1
  %conv58 = zext i8 %50 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %or60 = or i32 %shl59, %conv56
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %or60) #12
  %51 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg1.i, align 4
  %add.ptr67 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %or60) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %53) #9, !srcloc !254
  br label %if.end

sw.bb68:                                          ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %tmp.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tmp.1.lcssa, align 1
  %conv69 = zext i8 %55 to i32
  %add.ptr70 = getelementptr i8, ptr %tmp.1.lcssa, i32 1
  %56 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr70, align 1
  %conv71 = zext i8 %57 to i32
  %shl72 = shl nuw nsw i32 %conv71, 8
  %or73 = or i32 %shl72, %conv69
  %add.ptr74 = getelementptr i8, ptr %tmp.1.lcssa, i32 2
  %58 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr74, align 1
  %conv75 = zext i8 %59 to i32
  %shl76 = shl nuw nsw i32 %conv75, 16
  %or77 = or i32 %or73, %shl76
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %or77) #12
  %60 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg1.i, align 4
  %add.ptr84 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or77) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %62) #9, !srcloc !254
  br label %if.end

if.end:                                           ; preds = %sw.bb68, %sw.bb55, %sw.bb, %for.end46.if.end_crit_edge, %for.body.if.end_crit_edge
  %sub.sink = phi i32 [ %sub, %for.end46.if.end_crit_edge ], [ %sub, %sw.bb68 ], [ %sub, %sw.bb55 ], [ %sub, %sw.bb ], [ 512, %for.body.if.end_crit_edge ]
  %63 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %actual, align 4
  %add87 = add i32 %64, %sub.sink
  store i32 %add87, ptr %actual, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.fusb300_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.fusb300_request, ptr %req, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.fusb300_request, ptr %req, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i3.i, align 4
  %fusb300 = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fusb300, align 4
  %speed = getelementptr inbounds %struct.fusb300, ptr %9, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %spec.select = select i1 %cmp, i32 -108, i32 %status
  %12 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %14 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fusb300, align 4
  tail call void @_raw_spin_unlock(ptr noundef %15) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #9
  %16 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fusb300, align 4
  tail call void @_raw_spin_lock(ptr noundef %17) #9
  %epnum = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 4
  %18 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fusb300, align 4
  br i1 %tobool.not, label %if.else17, label %disable_fifo_int.exit

disable_fifo_int.exit:                            ; preds = %list_del_init.exit
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %reg1.i.i = getelementptr inbounds %struct.fusb300, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 1056
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !251
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %25, %neg.i.i
  %26 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %27, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %28) #9, !srcloc !254
  %queue11 = getelementptr inbounds %struct.fusb300_ep, ptr %ep, i32 0, i32 2
  %29 = ptrtoint ptr %queue11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue11, align 4
  %cmp.i.not = icmp eq ptr %30, %queue11
  br i1 %cmp.i.not, label %disable_fifo_int.exit.if.end19_crit_edge, label %if.then14

disable_fifo_int.exit.if.end19_crit_edge:         ; preds = %disable_fifo_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %disable_fifo_int.exit
  %31 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i33 = icmp eq i8 %32, 0
  br i1 %tobool.not.i33, label %do.end.i42, label %if.then.i40

if.then.i40:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fusb300, align 4
  %conv.i35 = zext i8 %32 to i32
  %shl.i36 = shl nuw i32 1, %conv.i35
  %reg1.i.i37 = getelementptr inbounds %struct.fusb300, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %reg1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg1.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %36, i32 1056
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #9, !srcloc !251
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %or.i.i = or i32 %38, %shl.i36
  %39 = ptrtoint ptr %reg1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg1.i.i37, align 4
  %add.ptr3.i.i39 = getelementptr i8, ptr %40, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i39, i32 %41) #9, !srcloc !254
  br label %if.end19

do.end.i42:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %if.end19

if.else17:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i.i43 = getelementptr inbounds %struct.fusb300, ptr %21, i32 0, i32 1
  %42 = ptrtoint ptr %reg1.i.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg1.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %43, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %45 = or i32 %44, 16777216
  %46 = ptrtoint ptr %reg1.i.i43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg1.i.i43, align 4
  %add.ptr3.i.i45 = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i45, i32 %45) #9, !srcloc !254
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %do.end.i42, %if.then.i40, %disable_fifo_int.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb300 = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb300, align 4
  %reenum = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %reenum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reenum, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fifo_entry_num = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_entry_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fifo_entry_num, align 1
  %5 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fusb300, align 4
  %addrofs = getelementptr inbounds %struct.fusb300, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %addrofs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %addrofs, align 4
  %8 = load ptr, ptr %fusb300, align 4
  %reenum4 = getelementptr inbounds %struct.fusb300, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %reenum4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %reenum4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fusb300, align 4
  %desc3.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %12 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc, ptr %desc3.i, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i, align 1
  %15 = and i8 %14, 3
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i, align 1
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %18 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %20 = and i16 %19, -249
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %and.i.i = zext i16 %21 to i32
  %trunc.i = trunc i8 %14 to i2
  %22 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.137)
  switch i2 %trunc.i, label %if.end.if.end29.i_crit_edge [
    i2 -1, label %if.end.if.then.i_crit_edge
    i2 1, label %if.end.if.then.i_crit_edge9
  ]

if.end.if.then.i_crit_edge9:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.if.end29.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge9
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %23 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterval.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp23.i = icmp eq i8 %15, 1
  br i1 %cmp23.i, label %if.then25.i, label %if.then.i.if.end29.i_crit_edge

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = lshr i16 %19, 3
  %26 = and i16 %25, 3
  %narrow.i.i = add nuw nsw i16 %26, 1
  %add.i.i = zext i16 %narrow.i.i to i32
  %phi.bo.i = shl nuw nsw i32 %add.i.i, 16
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.then.i.if.end29.i_crit_edge, %if.end.if.end29.i_crit_edge
  %info.sroa.25.0.i = phi i32 [ %phi.bo.i, %if.then25.i ], [ 0, %if.then.i.if.end29.i_crit_edge ], [ 0, %if.end.if.end29.i_crit_edge ]
  %info.sroa.0.sroa.13.0.i = phi i8 [ %24, %if.then25.i ], [ %24, %if.then.i.if.end29.i_crit_edge ], [ 0, %if.end.if.end29.i_crit_edge ]
  %27 = and i8 %17, 15
  %info.sroa.0.sroa.13.0.insert.ext78.i = zext i8 %info.sroa.0.sroa.13.0.i to i32
  %info.sroa.0.sroa.0.0.insert.ext62.i = zext i8 %27 to i32
  %reg.i.i.i = getelementptr inbounds %struct.fusb300, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i, align 4
  %30 = mul nuw nsw i32 %info.sroa.0.sroa.0.0.insert.ext62.i, 48
  %add.i.i.i = add nsw i32 %30, -12
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %add.i.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %32 = and i32 %31, -15728897
  %33 = or i32 %32, 8388608
  %34 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %35, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %33) #9, !srcloc !254
  %36 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %37, i32 %add.i.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %fifo_entry_num.i.i.i = getelementptr inbounds %struct.fusb300, ptr %11, i32 0, i32 10
  %39 = ptrtoint ptr %fifo_entry_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fifo_entry_num.i.i.i, align 1
  %conv2.i.i.i = zext i8 %40 to i32
  %mul3.i.i.i = shl i32 %conv2.i.i.i, 27
  %41 = and i32 %38, -256
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %or.i.i.i = or i32 %mul3.i.i.i, %42
  %43 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %44, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 %45) #9, !srcloc !254
  %46 = ptrtoint ptr %fifo_entry_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fifo_entry_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %47)
  %cmp.i.i.i = icmp eq i8 %47, 8
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %fifo_entry_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %fifo_entry_num.i.i.i, align 1
  %addrofs.i.i.i = getelementptr inbounds %struct.fusb300, ptr %11, i32 0, i32 11
  %49 = ptrtoint ptr %addrofs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %addrofs.i.i.i, align 4
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #12
  br label %ep_fifo_setting.exit.i

if.else.i.i.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i.i = add i8 %47, 1
  %50 = ptrtoint ptr %fifo_entry_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %inc.i.i.i, ptr %fifo_entry_num.i.i.i, align 1
  br label %ep_fifo_setting.exit.i

ep_fifo_setting.exit.i:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %51 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i.i, align 4
  %add.i10.i.i = add nsw i32 %30, -8
  %add.ptr.i11.i.i = getelementptr i8, ptr %52, i32 %add.i10.i.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %54 = and i32 %53, -65408
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %addrofs.i12.i.i = getelementptr inbounds %struct.fusb300, ptr %11, i32 0, i32 11
  %56 = ptrtoint ptr %addrofs.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addrofs.i12.i.i, align 4
  %and2.i.i.i = shl i32 %57, 16
  %shl.i.i.i = and i32 %and2.i.i.i, 2147418112
  %or.i13.i.i = or i32 %shl.i.i.i, %55
  %58 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %59, i32 %add.i10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i13.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %60) #9, !srcloc !254
  %add11.i.i.i = add nuw nsw i32 %and.i.i, 7
  %div22.i.i.i = and i32 %add11.i.i.i, 4088
  %61 = ptrtoint ptr %addrofs.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addrofs.i12.i.i, align 4
  %add14.i.i.i = add i32 %62, %div22.i.i.i
  store i32 %add14.i.i.i, ptr %addrofs.i12.i.i, align 4
  %63 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %64, i32 %add.i.i.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %66 = and i32 %65, -201326593
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  %68 = shl nuw nsw i8 %15, 2
  %69 = zext i8 %68 to i32
  %or.i.i5.i = or i32 %67, %69
  %70 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr10.i.i6.i = getelementptr i8, ptr %71, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i5.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i6.i, i32 %72) #9, !srcloc !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool.not.i.i.i = icmp sgt i8 %17, -1
  br i1 %tobool.not.i.i.i, label %ep_fifo_setting.exit.i.fusb300_set_epdir.exit.i.i_crit_edge, label %if.end.i.i.i

ep_fifo_setting.exit.i.fusb300_set_epdir.exit.i.i_crit_edge: ; preds = %ep_fifo_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_set_epdir.exit.i.i

if.end.i.i.i:                                     ; preds = %ep_fifo_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %74, i32 %add.i.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %76 = or i32 %75, 33554432
  %77 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %78, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 %76) #9, !srcloc !254
  br label %fusb300_set_epdir.exit.i.i

fusb300_set_epdir.exit.i.i:                       ; preds = %if.end.i.i.i, %ep_fifo_setting.exit.i.fusb300_set_epdir.exit.i.i_crit_edge
  %79 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i112.i.i = getelementptr i8, ptr %80, i32 %add.i10.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %82 = and i32 %81, 16318463
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  %or.i113.i.i = or i32 %83, %and.i.i
  %84 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr10.i114.i.i = getelementptr i8, ptr %85, i32 %add.i10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i113.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i114.i.i, i32 %86) #9, !srcloc !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %info.sroa.0.sroa.13.0.i)
  %tobool.not.i.i = icmp eq i8 %info.sroa.0.sroa.13.0.i, 0
  br i1 %tobool.not.i.i, label %fusb300_set_epdir.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

fusb300_set_epdir.exit.i.i.if.end.i.i_crit_edge:  ; preds = %fusb300_set_epdir.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %fusb300_set_epdir.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i118.i.i = getelementptr i8, ptr %88, i32 %add.i.i.i
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %90 = and i32 %89, 1073676287
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  %92 = shl nuw nsw i32 %info.sroa.0.sroa.13.0.insert.ext78.i, 6
  %shl.i119.i.i = and i32 %92, 448
  %or.i120.i.i = or i32 %91, %shl.i119.i.i
  %93 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr10.i121.i.i = getelementptr i8, ptr %94, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i120.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i121.i.i, i32 %95) #9, !srcloc !254
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %fusb300_set_epdir.exit.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.25.0.i)
  %tobool5.not.i.i = icmp eq i32 %info.sroa.25.0.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.config_ep.exit_crit_edge, label %if.then6.i.i

if.end.i.i.config_ep.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %config_ep.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i125.i.i = getelementptr i8, ptr %97, i32 %add.i.i.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %99 = and i32 %98, -805306369
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %info.coerce1.sroa.3.0.insert.shift.i.i = lshr exact i32 %info.sroa.25.0.i, 12
  %shl.i126.i.i = and i32 %info.coerce1.sroa.3.0.insert.shift.i.i, 48
  %or.i127.i.i = or i32 %100, %shl.i126.i.i
  %101 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr10.i128.i.i = getelementptr i8, ptr %102, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i127.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i128.i.i, i32 %103) #9, !srcloc !254
  br label %config_ep.exit

config_ep.exit:                                   ; preds = %if.then6.i.i, %if.end.i.i.config_ep.exit_crit_edge
  %104 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i131.i.i = getelementptr i8, ptr %105, i32 %add.i.i.i
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %107 = or i32 %106, 16777216
  %108 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %109, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i.i, i32 %107) #9, !srcloc !254
  %epnum1.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 4
  %110 = ptrtoint ptr %epnum1.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %27, ptr %epnum1.i.i, align 1
  %type2.i.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 5
  %111 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %15, ptr %type2.i.i, align 2
  %arrayidx.i = getelementptr %struct.fusb300, ptr %11, i32 0, i32 5, i32 %info.sroa.0.sroa.0.0.insert.ext62.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %_ep, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !256

while.cond.preheader:                             ; preds = %entry
  %queue = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not35 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not35, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %fusb300 = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/fusb300_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #9, !srcloc !257
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %2, i32 -56
  %3 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fusb300, align 4
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %add.ptr16, i32 noundef -104)
  %5 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fusb300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call21) #9
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %epnum.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 4
  %9 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %epnum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %while.end.fusb300_ep_release.exit_crit_edge, label %if.end.i

while.end.fusb300_ep_release.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_ep_release.exit

if.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %epnum.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %epnum.i, align 1
  %stall.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 3
  %12 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %stall.i, align 4
  %bf.clear3.i = and i8 %bf.load.i, 63
  store i8 %bf.clear3.i, ptr %stall.i, align 4
  br label %fusb300_ep_release.exit

fusb300_ep_release.exit:                          ; preds = %if.end.i, %while.end.fusb300_ep_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb300 = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb300, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %queue = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %fusb300 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fusb300, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb3001.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb3001.i, align 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %queue.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.fusb300_set_halt_and_wedge.exit_crit_edge

entry.fusb300_set_halt_and_wedge.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_set_halt_and_wedge.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool9.not.i = icmp eq i32 %value, 0
  %epnum17.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %epnum17.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum17.i, align 1
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i39.i = zext i8 %5 to i32
  %6 = mul nuw nsw i32 %conv.i39.i, 48
  %add.i.i = add nsw i32 %6, -16
  %reg1.i.i.i = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %10 = or i32 %9, 16777216
  %11 = ptrtoint ptr %reg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg1.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %10) #9, !srcloc !254
  %stall.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 3
  %13 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %stall.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %stall.i, align 4
  br label %fusb300_set_halt_and_wedge.exit

if.else.i:                                        ; preds = %if.end.i
  %reg1.i.i = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg1.i.i, align 4
  %conv.i40.i = zext i8 %5 to i32
  %16 = mul nuw nsw i32 %conv.i40.i, 48
  %add.i41.i = add nsw i32 %16, -16
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i41.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !251
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.fusb300_clear_epnstall.exit.i_crit_edge, label %do.end.i.i

if.else.i.fusb300_clear_epnstall.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_clear_epnstall.exit.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv.i40.i) #12
  %or.i.i = or i32 %18, 8
  %19 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %20, i32 %add.i41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %21) #9, !srcloc !254
  br label %fusb300_clear_epnstall.exit.i

fusb300_clear_epnstall.exit.i:                    ; preds = %do.end.i.i, %if.else.i.fusb300_clear_epnstall.exit.i_crit_edge
  %stall18.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 3
  %22 = ptrtoint ptr %stall18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load19.i = load i8, ptr %stall18.i, align 4
  %bf.clear24.i = and i8 %bf.load19.i, 63
  store i8 %bf.clear24.i, ptr %stall18.i, align 4
  br label %fusb300_set_halt_and_wedge.exit

fusb300_set_halt_and_wedge.exit:                  ; preds = %fusb300_clear_epnstall.exit.i, %if.then10.i, %entry.fusb300_set_halt_and_wedge.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then10.i ], [ 0, %fusb300_clear_epnstall.exit.i ], [ -11, %entry.fusb300_set_halt_and_wedge.exit_crit_edge ]
  %23 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fusb3001.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call5.i) #9
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fusb3001.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fusb3001.i, align 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %queue.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.fusb300_set_halt_and_wedge.exit_crit_edge

entry.fusb300_set_halt_and_wedge.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fusb300_set_halt_and_wedge.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %epnum17.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %epnum17.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum17.i, align 1
  %conv.i39.i = zext i8 %5 to i32
  %6 = mul nuw nsw i32 %conv.i39.i, 48
  %add.i.i = add nsw i32 %6, -16
  %reg1.i.i.i = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %10 = or i32 %9, 16777216
  %11 = ptrtoint ptr %reg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg1.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %10) #9, !srcloc !254
  %stall.i = getelementptr inbounds %struct.fusb300_ep, ptr %_ep, i32 0, i32 3
  %13 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %stall.i, align 4
  %bf.set15.i = or i8 %bf.load.i, -64
  store i8 %bf.set15.i, ptr %stall.i, align 4
  br label %fusb300_set_halt_and_wedge.exit

fusb300_set_halt_and_wedge.exit:                  ; preds = %if.end.i, %entry.fusb300_set_halt_and_wedge.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i ], [ -11, %entry.fusb300_set_halt_and_wedge.exit_crit_edge ]
  %14 = ptrtoint ptr %fusb3001.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fusb3001.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call5.i) #9
  ret i32 %ret.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fusb300_fifo_flush(ptr nocapture noundef %_ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb300_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 3
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #9
  %reg = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %3) #9
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #9
  %ep0_req = getelementptr inbounds %struct.fusb300, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0_req, align 4
  tail call void @kfree(ptr noundef %5) #9
  %arrayidx5 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  tail call void @kfree(ptr noundef %7) #9
  %arrayidx5.1 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.1, align 4
  tail call void @kfree(ptr noundef %9) #9
  %arrayidx5.2 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.2, align 4
  tail call void @kfree(ptr noundef %11) #9
  %arrayidx5.3 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.3, align 4
  tail call void @kfree(ptr noundef %13) #9
  %arrayidx5.4 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.4, align 4
  tail call void @kfree(ptr noundef %15) #9
  %arrayidx5.5 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.5, align 4
  tail call void @kfree(ptr noundef %17) #9
  %arrayidx5.6 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5.6, align 4
  tail call void @kfree(ptr noundef %19) #9
  %arrayidx5.7 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 7
  %20 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.7, align 4
  tail call void @kfree(ptr noundef %21) #9
  %arrayidx5.8 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 8
  %22 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.8, align 4
  tail call void @kfree(ptr noundef %23) #9
  %arrayidx5.9 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5.9, align 4
  tail call void @kfree(ptr noundef %25) #9
  %arrayidx5.10 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 10
  %26 = ptrtoint ptr %arrayidx5.10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.10, align 4
  tail call void @kfree(ptr noundef %27) #9
  %arrayidx5.11 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 11
  %28 = ptrtoint ptr %arrayidx5.11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.11, align 4
  tail call void @kfree(ptr noundef %29) #9
  %arrayidx5.12 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 12
  %30 = ptrtoint ptr %arrayidx5.12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx5.12, align 4
  tail call void @kfree(ptr noundef %31) #9
  %arrayidx5.13 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 13
  %32 = ptrtoint ptr %arrayidx5.13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx5.13, align 4
  tail call void @kfree(ptr noundef %33) #9
  %arrayidx5.14 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 14
  %34 = ptrtoint ptr %arrayidx5.14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.14, align 4
  tail call void @kfree(ptr noundef %35) #9
  %arrayidx5.15 = getelementptr %struct.fusb300, ptr %1, i32 0, i32 5, i32 15
  %36 = ptrtoint ptr %arrayidx5.15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.15, align 4
  tail call void @kfree(ptr noundef %37) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__UNIQUE_ID_description234, !1, !"__UNIQUE_ID_description234", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_file235, !3, !"__UNIQUE_ID_file235", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_license236, !3, !"__UNIQUE_ID_license236", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author237, !6, !"__UNIQUE_ID_author237", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias238, !8, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 23, i32 1}
!9 = !{ptr @__initcall__kmod_fusb300_udc__239_1514_fusb300_driver_init6, !10, !"__initcall__kmod_fusb300_udc__239_1514_fusb300_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1514, i32 1}
!11 = !{ptr @__exitcall_fusb300_driver_exit, !10, !"__exitcall_fusb300_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1371, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fusb300_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @fusb300_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1378, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fusb300_probe._entry.3, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @fusb300_probe._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1386, i32 3}
!26 = !{ptr @fusb300_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fusb300_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1394, i32 3}
!30 = !{ptr @fusb300_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fusb300_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @fusb300_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1414, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1427, i32 3}
!37 = !{ptr @fusb300_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fusb300_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1434, i32 3}
!41 = !{ptr @fusb300_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fusb300_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1482, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fusb300_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @fusb300_probe._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fusb300_gadget_ops, !50, !"fusb300_gadget_ops", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1336, i32 36}
!51 = !{ptr @udc_name, !52, !"udc_name", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 27, i32 19}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1079, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fusb300_irq._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @fusb300_irq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1086, i32 3}
!60 = !{ptr @fusb300_irq._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @fusb300_irq._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1100, i32 3}
!64 = !{ptr @fusb300_irq._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @fusb300_irq._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1106, i32 3}
!68 = !{ptr @fusb300_irq._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fusb300_irq._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1137, i32 3}
!72 = !{ptr @fusb300_irq._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @fusb300_irq._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1143, i32 3}
!76 = !{ptr @fusb300_irq._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @fusb300_irq._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1149, i32 3}
!80 = !{ptr @fusb300_irq._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @fusb300_irq._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1155, i32 3}
!84 = !{ptr @fusb300_irq._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @fusb300_irq._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1163, i32 3}
!88 = !{ptr @fusb300_irq._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fusb300_irq._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1169, i32 3}
!92 = !{ptr @fusb300_irq._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fusb300_irq._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1175, i32 3}
!96 = !{ptr @fusb300_irq._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fusb300_irq._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1181, i32 3}
!100 = !{ptr @fusb300_irq._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fusb300_irq._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1187, i32 3}
!104 = !{ptr @fusb300_irq._entry.61, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @fusb300_irq._entry_ptr.63, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1198, i32 3}
!108 = !{ptr @fusb300_irq._entry.64, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @fusb300_irq._entry_ptr.66, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1202, i32 3}
!112 = !{ptr @fusb300_irq._entry.67, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @fusb300_irq._entry_ptr.69, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1212, i32 3}
!116 = !{ptr @fusb300_irq._entry.70, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @fusb300_irq._entry_ptr.72, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1216, i32 3}
!120 = !{ptr @fusb300_irq._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fusb300_irq._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1221, i32 3}
!124 = !{ptr @fusb300_irq._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @fusb300_irq._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1002, i32 2}
!128 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @check_device_mode._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @check_device_mode._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 568, i32 3}
!133 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @fusb300_rdcxf._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @fusb300_rdcxf._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @fusb300_rdcxf._entry.83, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 579, i32 3}
!138 = !{ptr @fusb300_rdcxf._entry_ptr.84, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @fusb300_rdcxf._entry.85, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 584, i32 3}
!141 = !{ptr @fusb300_rdcxf._entry_ptr.86, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @fusb300_rdcxf._entry.87, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 590, i32 3}
!144 = !{ptr @fusb300_rdcxf._entry_ptr.88, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.89, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 680, i32 2}
!147 = !{ptr @.str.90, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @request_error._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @request_error._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.91, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 405, i32 4}
!152 = !{ptr @.str.92, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ep0_queue._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ep0_queue._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 355, i32 4}
!157 = !{ptr @fusb300_wrcxf._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @fusb300_wrcxf._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @fusb300_wrcxf._entry.94, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 362, i32 4}
!161 = !{ptr @fusb300_wrcxf._entry_ptr.95, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @fusb300_wrcxf._entry.96, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 367, i32 4}
!164 = !{ptr @fusb300_wrcxf._entry_ptr.97, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @fusb300_wrcxf._entry.98, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 372, i32 4}
!167 = !{ptr @fusb300_wrcxf._entry_ptr.99, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 312, i32 3}
!170 = !{ptr @.str.101, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @disable_fifo_int._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @disable_fifo_int._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 297, i32 3}
!175 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @enable_fifo_int._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @enable_fifo_int._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 393, i32 3}
!180 = !{ptr @.str.105, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @fusb300_clear_epnstall._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @fusb300_clear_epnstall._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1024, i32 3}
!185 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @fusb300_ep0out._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @fusb300_ep0out._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 613, i32 3}
!190 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @fusb300_rdfifo._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @fusb300_rdfifo._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 652, i32 4}
!195 = !{ptr @fusb300_rdfifo._entry.110, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @fusb300_rdfifo._entry_ptr.112, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 2}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 9}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 16}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 23}
!205 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 30}
!207 = !{ptr @.str.118, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 37}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 44}
!211 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 51}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 58}
!215 = !{ptr @.str.122, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 29, i32 65}
!217 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 2}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 10}
!221 = !{ptr @.str.125, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 18}
!223 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 26}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 34}
!227 = !{ptr @.str.128, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 30, i32 42}
!229 = !{ptr @fusb300_ep_name, !230, !"fusb300_ep_name", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 28, i32 27}
!231 = !{ptr @fusb300_ep_ops, !232, !"fusb300_ep_ops", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 518, i32 32}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 94, i32 3}
!235 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @fusb300_set_start_entry._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @fusb300_set_start_entry._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @fusb300_driver, !239, !"fusb300_driver", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/udc/fusb300_udc.c", i32 1507, i32 31}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = distinct !{!249, !250}
!250 = !{!"llvm.loop.peeled.count", i32 1}
!251 = !{i64 6252109}
!252 = !{i64 2153792458}
!253 = !{i64 2153793813}
!254 = !{i64 6251691}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{i64 2154247772, i64 2154248273, i64 2154247809, i64 2154247865, i64 2154247899, i64 2154247923, i64 2154247964, i64 2154247985, i64 2154248013, i64 2154248047}
