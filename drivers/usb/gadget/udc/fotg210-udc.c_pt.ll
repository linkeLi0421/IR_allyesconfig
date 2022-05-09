; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/fotg210-udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/fotg210-udc.c"
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
%struct.fotg210_udc = type { %struct.spinlock, ptr, i32, %struct.usb_gadget, ptr, [5 x ptr], ptr, i16, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fotg210_ep = type { %struct.usb_ep, ptr, %struct.list_head, i8, i8, i8, i8, i32, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.fotg210_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_fotg210_udc__234_1220_fotg210_driver_init6 = internal global ptr @fotg210_driver_init, section ".initcall6.init", align 4
@fotg210_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fotg210_udc_probe, ptr @fotg210_udc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @udc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fotg210_driver_exit = internal global ptr @fotg210_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [79 x i8] c"fotg210_udc.author=Yuan-Hsin Chen, Feng-Hsin Chiang <john453@faraday-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [52 x i8] c"fotg210_udc.file=drivers/usb/gadget/udc/fotg210-udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [24 x i8] c"fotg210_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"fotg210_udc.description=FOTG210 USB Device Controller Driver\00", section ".modinfo", align 1
@udc_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fotg210_udc\00", [20 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013platform_get_resource error.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fotg210_udc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/fotg210-udc.c\00", [59 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry_ptr = internal global ptr @fotg210_udc_probe._entry, section ".printk_index", align 4
@fotg210_udc_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013platform_get_resource IORESOURCE_IRQ error.\0A\00", [49 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry_ptr.5 = internal global ptr @fotg210_udc_probe._entry.3, section ".printk_index", align 4
@fotg210_udc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013ioremap error.\0A\00", [46 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry_ptr.8 = internal global ptr @fotg210_udc_probe._entry.6, section ".printk_index", align 4
@fotg210_udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fotg210->lock\00", [17 x i8] zeroinitializer }, align 32
@fotg210_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fotg210_udc_start, ptr @fotg210_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fotg210_ep_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [44 x i8] zeroinitializer }, align 32
@fotg210_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @fotg210_ep_enable, ptr @fotg210_ep_disable, ptr null, ptr @fotg210_ep_alloc_request, ptr @fotg210_ep_free_request, ptr @fotg210_ep_queue, ptr @fotg210_ep_dequeue, ptr @fotg210_ep_set_halt, ptr @fotg210_ep_set_wedge, ptr null, ptr @fotg210_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013request_irq error (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry_ptr.12 = internal global ptr @fotg210_udc_probe._entry.10, section ".printk_index", align 4
@fotg210_udc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1190, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fotg210_udc_probe._entry_ptr.17 = internal global ptr @fotg210_udc_probe._entry.13, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"30-April-2013\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep3\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@fotg210_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013dma_mapping_error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fotg210_start_dma\00", [46 x i8] zeroinitializer }, align 32
@fotg210_start_dma._entry_ptr = internal global ptr @fotg210_start_dma._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@fotg210_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016fotg210 udc reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fotg210_irq\00", [20 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr = internal global ptr @fotg210_irq._entry, section ".printk_index", align 4
@fotg210_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016fotg210 udc suspend\0A\00", [41 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.32 = internal global ptr @fotg210_irq._entry.30, section ".printk_index", align 4
@fotg210_irq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016fotg210 udc resume\0A\00", [42 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.35 = internal global ptr @fotg210_irq._entry.33, section ".printk_index", align 4
@fotg210_irq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016fotg210 iso sequence error\0A\00", [34 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.38 = internal global ptr @fotg210_irq._entry.36, section ".printk_index", align 4
@fotg210_irq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016fotg210 iso sequence abort\0A\00", [34 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.41 = internal global ptr @fotg210_irq._entry.39, section ".printk_index", align 4
@fotg210_irq._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016fotg210 transferred 0 byte\0A\00", [34 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.44 = internal global ptr @fotg210_irq._entry.42, section ".printk_index", align 4
@fotg210_irq._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016fotg210 received 0 byte\0A\00", [37 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.47 = internal global ptr @fotg210_irq._entry.45, section ".printk_index", align 4
@fotg210_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.29, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016fotg210 CX command abort\0A\00", [36 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.50 = internal global ptr @fotg210_irq._entry.48, section ".printk_index", align 4
@fotg210_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.29, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016fotg210 cmd end\0A\00", [45 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.53 = internal global ptr @fotg210_irq._entry.51, section ".printk_index", align 4
@fotg210_irq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.29, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016fotg210 ep0 fail\0A\00", [44 x i8] zeroinitializer }, align 32
@fotg210_irq._entry_ptr.56 = internal global ptr @fotg210_irq._entry.54, section ".printk_index", align 4
@fotg210_request_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013request error!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fotg210_request_error\00", [42 x i8] zeroinitializer }, align 32
@fotg210_request_error._entry_ptr = internal global ptr @fotg210_request_error._entry, section ".printk_index", align 4
@fotg210_ep0out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s : empty queue\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fotg210_ep0out\00", [17 x i8] zeroinitializer }, align 32
@fotg210_ep0out._entry_ptr = internal global ptr @fotg210_ep0out._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"fotg210_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1212, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"udc_name\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 24, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1098, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1104, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1124, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1128, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"fotg210_gadget_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1066, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"fotg210_ep_name\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 25, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"fotg210_ep_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 523, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1182, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1190, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 26, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 26, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 26, i32 16 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 26, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 26, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 357, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 326, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 889, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 895, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 901, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 907, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 913, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 920, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 927, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 947, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 960, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 970, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 626, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [40 x i8] c"../drivers/usb/gadget/udc/fotg210-udc.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 806, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_fotg210_driver_exit, ptr @__initcall__kmod_fotg210_udc__234_1220_fotg210_driver_init6, ptr @fotg210_driver_exit, ptr @fotg210_ep0out._entry, ptr @fotg210_ep0out._entry_ptr, ptr @fotg210_irq._entry, ptr @fotg210_irq._entry.30, ptr @fotg210_irq._entry.33, ptr @fotg210_irq._entry.36, ptr @fotg210_irq._entry.39, ptr @fotg210_irq._entry.42, ptr @fotg210_irq._entry.45, ptr @fotg210_irq._entry.48, ptr @fotg210_irq._entry.51, ptr @fotg210_irq._entry.54, ptr @fotg210_irq._entry_ptr, ptr @fotg210_irq._entry_ptr.32, ptr @fotg210_irq._entry_ptr.35, ptr @fotg210_irq._entry_ptr.38, ptr @fotg210_irq._entry_ptr.41, ptr @fotg210_irq._entry_ptr.44, ptr @fotg210_irq._entry_ptr.47, ptr @fotg210_irq._entry_ptr.50, ptr @fotg210_irq._entry_ptr.53, ptr @fotg210_irq._entry_ptr.56, ptr @fotg210_request_error._entry, ptr @fotg210_request_error._entry_ptr, ptr @fotg210_start_dma._entry, ptr @fotg210_start_dma._entry_ptr, ptr @fotg210_udc_probe._entry, ptr @fotg210_udc_probe._entry.10, ptr @fotg210_udc_probe._entry.13, ptr @fotg210_udc_probe._entry.3, ptr @fotg210_udc_probe._entry.6, ptr @fotg210_udc_probe._entry_ptr, ptr @fotg210_udc_probe._entry_ptr.12, ptr @fotg210_udc_probe._entry_ptr.17, ptr @fotg210_udc_probe._entry_ptr.5, ptr @fotg210_udc_probe._entry_ptr.8, ptr @fotg210_driver, ptr @udc_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @fotg210_udc_probe.__key, ptr @.str.9, ptr @fotg210_gadget_ops, ptr @fotg210_ep_name, ptr @fotg210_ep_ops, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_ep_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_udc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_irq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_request_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fotg210_ep0out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fotg210_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fotg210_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fotg210_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1136) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %for.body.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i234 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 68) #12
  %cmp17 = icmp eq ptr %call7.i.i234, null
  br i1 %cmp17, label %for.body.preheader.err_alloc_crit_edge, label %if.end19

for.body.preheader.err_alloc_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc

if.end19:                                         ; preds = %for.body.preheader
  %arrayidx21 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i234, ptr %arrayidx21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i234.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 68) #12
  %cmp17.1 = icmp eq ptr %call7.i.i234.1, null
  br i1 %cmp17.1, label %if.end19.err_alloc_crit_edge, label %if.end19.1

if.end19.err_alloc_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc

if.end19.1:                                       ; preds = %if.end19
  %arrayidx21.1 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i234.1, ptr %arrayidx21.1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i234.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #12
  %cmp17.2 = icmp eq ptr %call7.i.i234.2, null
  br i1 %cmp17.2, label %if.end19.1.err_alloc_crit_edge, label %if.end19.2

if.end19.1.err_alloc_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc

if.end19.2:                                       ; preds = %if.end19.1
  %arrayidx21.2 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i234.2, ptr %arrayidx21.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i234.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 68) #12
  %cmp17.3 = icmp eq ptr %call7.i.i234.3, null
  br i1 %cmp17.3, label %if.end19.2.err_alloc_crit_edge, label %if.end19.3

if.end19.2.err_alloc_crit_edge:                   ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc

if.end19.3:                                       ; preds = %if.end19.2
  %arrayidx21.3 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i234.3, ptr %arrayidx21.3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i234.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 68) #12
  %cmp17.4 = icmp eq ptr %call7.i.i234.4, null
  br i1 %cmp17.4, label %if.end19.3.err_alloc_crit_edge, label %if.end19.4

if.end19.3.err_alloc_crit_edge:                   ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc

if.end19.4:                                       ; preds = %if.end19.3
  %arrayidx21.4 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i234.4, ptr %arrayidx21.4, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %12
  %add.i = add i32 %sub.i, %14
  %call23 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i) #8
  %reg = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %reg, align 4
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %do.end29, label %for.body48.peel.next

do.end29:                                         ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %err_alloc

for.body48.peel.next:                             ; preds = %if.end19.4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @fotg210_udc_probe.__key, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fotg210_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %max_speed, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 11, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %20 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_mask, align 8
  %dma_mask43 = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 11, i32 18
  %22 = ptrtoint ptr %dma_mask43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dma_mask43, align 8
  %name = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 10
  %23 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @udc_name, ptr %name, align 4
  %ep_list = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ep_list, ptr %prev.i, align 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx21, align 4
  %fotg21065.peel = getelementptr inbounds %struct.fotg210_ep, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %fotg21065.peel to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %fotg21065.peel, align 4
  %queue.peel = getelementptr inbounds %struct.fotg210_ep, ptr %27, i32 0, i32 2
  %29 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i237.peel = getelementptr inbounds %struct.fotg210_ep, ptr %27, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i237.peel to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %queue.peel, ptr %prev.i237.peel, align 4
  %name68.peel = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %name68.peel to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.19, ptr %name68.peel, align 4
  %ops70.peel = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %ops70.peel to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fotg210_ep_ops, ptr %ops70.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %27, i32 noundef 65535) #8
  %caps.peel = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 4
  %33 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.peel = load i8, ptr %caps.peel, align 4
  %caps92.peel = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 4
  %bf.set100.peel = or i8 %bf.load.peel, -116
  %34 = ptrtoint ptr %caps92.peel to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set100.peel, ptr %caps92.peel, align 4
  %arrayidx51 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx51, align 8
  %ep_list57 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ep_list57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ep_list57, ptr %ep_list57, align 4
  %prev.i235 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i235 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ep_list57, ptr %prev.i235, align 4
  %39 = load ptr, ptr %arrayidx51, align 8
  %ep_list61 = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list61, ptr noundef %41, ptr noundef %ep_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body48.peel.next.if.end90_crit_edge

for.body48.peel.next.if.end90_crit_edge:          ; preds = %for.body48.peel.next
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.end.i.i:                                       ; preds = %for.body48.peel.next
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ep_list61, ptr %prev.i, align 4
  %43 = ptrtoint ptr %ep_list61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ep_list, ptr %ep_list61, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %ep_list61, ptr %41, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end.i.i, %for.body48.peel.next.if.end90_crit_edge
  %fotg21065 = getelementptr inbounds %struct.fotg210_ep, ptr %36, i32 0, i32 1
  %46 = ptrtoint ptr %fotg21065 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %fotg21065, align 4
  %queue = getelementptr inbounds %struct.fotg210_ep, ptr %36, i32 0, i32 2
  %47 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i237 = getelementptr inbounds %struct.fotg210_ep, ptr %36, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i237 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %queue, ptr %prev.i237, align 4
  %name68 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 1
  %49 = ptrtoint ptr %name68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.20, ptr %name68, align 4
  %ops70 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 2
  %50 = ptrtoint ptr %ops70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @fotg210_ep_ops, ptr %ops70, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %36, i32 noundef 65535) #8
  %caps76 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 4
  %51 = ptrtoint ptr %caps76 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load77 = load i8, ptr %caps76, align 4
  %caps92 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 4
  %bf.set100 = or i8 %bf.load77, 124
  %52 = ptrtoint ptr %caps92 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %bf.set100, ptr %caps92, align 4
  %arrayidx51.1 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx51.1, align 4
  %ep_list57.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ep_list57.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %ep_list57.1, ptr %ep_list57.1, align 4
  %prev.i235.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i235.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ep_list57.1, ptr %prev.i235.1, align 4
  %57 = load ptr, ptr %arrayidx51.1, align 4
  %ep_list61.1 = getelementptr inbounds %struct.usb_ep, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list61.1, ptr noundef %59, ptr noundef %ep_list) #8
  br i1 %call.i.i.1, label %if.end.i.i.1, label %if.end90.if.end90.1_crit_edge

if.end90.if.end90.1_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.1

if.end.i.i.1:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ep_list61.1, ptr %prev.i, align 4
  %61 = ptrtoint ptr %ep_list61.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ep_list, ptr %ep_list61.1, align 4
  %prev3.i.i.1 = getelementptr inbounds %struct.usb_ep, ptr %57, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.1, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %ep_list61.1, ptr %59, align 4
  br label %if.end90.1

if.end90.1:                                       ; preds = %if.end.i.i.1, %if.end90.if.end90.1_crit_edge
  %fotg21065.1 = getelementptr inbounds %struct.fotg210_ep, ptr %54, i32 0, i32 1
  %64 = ptrtoint ptr %fotg21065.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %fotg21065.1, align 4
  %queue.1 = getelementptr inbounds %struct.fotg210_ep, ptr %54, i32 0, i32 2
  %65 = ptrtoint ptr %queue.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %queue.1, ptr %queue.1, align 4
  %prev.i237.1 = getelementptr inbounds %struct.fotg210_ep, ptr %54, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %prev.i237.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %queue.1, ptr %prev.i237.1, align 4
  %name68.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 1
  %67 = ptrtoint ptr %name68.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.21, ptr %name68.1, align 4
  %ops70.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 2
  %68 = ptrtoint ptr %ops70.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @fotg210_ep_ops, ptr %ops70.1, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %54, i32 noundef 65535) #8
  %caps76.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 4
  %69 = ptrtoint ptr %caps76.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load77.1 = load i8, ptr %caps76.1, align 4
  %caps92.1 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 4
  %bf.set100.1 = or i8 %bf.load77.1, 124
  %70 = ptrtoint ptr %caps92.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %bf.set100.1, ptr %caps92.1, align 4
  %arrayidx51.2 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 3
  %71 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx51.2, align 8
  %ep_list57.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %ep_list57.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %ep_list57.2, ptr %ep_list57.2, align 4
  %prev.i235.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %prev.i235.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %ep_list57.2, ptr %prev.i235.2, align 4
  %75 = load ptr, ptr %arrayidx51.2, align 8
  %ep_list61.2 = getelementptr inbounds %struct.usb_ep, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list61.2, ptr noundef %77, ptr noundef %ep_list) #8
  br i1 %call.i.i.2, label %if.end.i.i.2, label %if.end90.1.if.end90.2_crit_edge

if.end90.1.if.end90.2_crit_edge:                  ; preds = %if.end90.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.2

if.end.i.i.2:                                     ; preds = %if.end90.1
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ep_list61.2, ptr %prev.i, align 4
  %79 = ptrtoint ptr %ep_list61.2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ep_list, ptr %ep_list61.2, align 4
  %prev3.i.i.2 = getelementptr inbounds %struct.usb_ep, ptr %75, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.2, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %ep_list61.2, ptr %77, align 4
  br label %if.end90.2

if.end90.2:                                       ; preds = %if.end.i.i.2, %if.end90.1.if.end90.2_crit_edge
  %fotg21065.2 = getelementptr inbounds %struct.fotg210_ep, ptr %72, i32 0, i32 1
  %82 = ptrtoint ptr %fotg21065.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i, ptr %fotg21065.2, align 4
  %queue.2 = getelementptr inbounds %struct.fotg210_ep, ptr %72, i32 0, i32 2
  %83 = ptrtoint ptr %queue.2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %queue.2, ptr %queue.2, align 4
  %prev.i237.2 = getelementptr inbounds %struct.fotg210_ep, ptr %72, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %prev.i237.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %queue.2, ptr %prev.i237.2, align 4
  %name68.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 1
  %85 = ptrtoint ptr %name68.2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.22, ptr %name68.2, align 4
  %ops70.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 2
  %86 = ptrtoint ptr %ops70.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @fotg210_ep_ops, ptr %ops70.2, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %72, i32 noundef 65535) #8
  %caps76.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 4
  %87 = ptrtoint ptr %caps76.2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load77.2 = load i8, ptr %caps76.2, align 4
  %caps92.2 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 4
  %bf.set100.2 = or i8 %bf.load77.2, 124
  %88 = ptrtoint ptr %caps92.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bf.set100.2, ptr %caps92.2, align 4
  %arrayidx51.3 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 4
  %89 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx51.3, align 4
  %ep_list57.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %ep_list57.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %ep_list57.3, ptr %ep_list57.3, align 4
  %prev.i235.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %prev.i235.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ep_list57.3, ptr %prev.i235.3, align 4
  %93 = load ptr, ptr %arrayidx51.3, align 4
  %ep_list61.3 = getelementptr inbounds %struct.usb_ep, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i, align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list61.3, ptr noundef %95, ptr noundef %ep_list) #8
  br i1 %call.i.i.3, label %if.end.i.i.3, label %if.end90.2.if.end90.3_crit_edge

if.end90.2.if.end90.3_crit_edge:                  ; preds = %if.end90.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.3

if.end.i.i.3:                                     ; preds = %if.end90.2
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %ep_list61.3, ptr %prev.i, align 4
  %97 = ptrtoint ptr %ep_list61.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %ep_list, ptr %ep_list61.3, align 4
  %prev3.i.i.3 = getelementptr inbounds %struct.usb_ep, ptr %93, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i.3, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %ep_list61.3, ptr %95, align 4
  br label %if.end90.3

if.end90.3:                                       ; preds = %if.end.i.i.3, %if.end90.2.if.end90.3_crit_edge
  %fotg21065.3 = getelementptr inbounds %struct.fotg210_ep, ptr %90, i32 0, i32 1
  %100 = ptrtoint ptr %fotg21065.3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %fotg21065.3, align 4
  %queue.3 = getelementptr inbounds %struct.fotg210_ep, ptr %90, i32 0, i32 2
  %101 = ptrtoint ptr %queue.3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %queue.3, ptr %queue.3, align 4
  %prev.i237.3 = getelementptr inbounds %struct.fotg210_ep, ptr %90, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %prev.i237.3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %queue.3, ptr %prev.i237.3, align 4
  %name68.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 1
  %103 = ptrtoint ptr %name68.3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.23, ptr %name68.3, align 4
  %ops70.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 2
  %104 = ptrtoint ptr %ops70.3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @fotg210_ep_ops, ptr %ops70.3, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %90, i32 noundef 65535) #8
  %caps76.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 4
  %105 = ptrtoint ptr %caps76.3 to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load77.3 = load i8, ptr %caps76.3, align 4
  %caps92.3 = getelementptr inbounds %struct.usb_ep, ptr %90, i32 0, i32 4
  %bf.set100.3 = or i8 %bf.load77.3, 124
  %106 = ptrtoint ptr %caps92.3 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.set100.3, ptr %caps92.3, align 4
  %gadget = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx21, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %108, i32 noundef 64) #8
  %109 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx21, align 4
  %ep0 = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %ep0, align 4
  %ep_list113 = getelementptr inbounds %struct.usb_ep, ptr %110, i32 0, i32 3
  %112 = ptrtoint ptr %ep_list113 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %ep_list113, ptr %ep_list113, align 4
  %prev.i238 = getelementptr inbounds %struct.usb_ep, ptr %110, i32 0, i32 3, i32 1
  %113 = ptrtoint ptr %prev.i238 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %ep_list113, ptr %prev.i238, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %114 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %fotg210_ep_alloc_request.exit.thread, label %if.end121

fotg210_ep_alloc_request.exit.thread:             ; preds = %if.end90.3
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_req240 = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 6
  %115 = ptrtoint ptr %ep0_req240 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %ep0_req240, align 8
  br label %err_map

if.end121:                                        ; preds = %if.end90.3
  %queue.i = getelementptr inbounds %struct.fotg210_request, ptr %call7.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.fotg210_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %ep0_req = getelementptr inbounds %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 6
  %118 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i.i, ptr %ep0_req, align 8
  %119 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %120, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 234881024) #8, !srcloc !128
  %121 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg, align 4
  %add.ptr2.i = getelementptr i8, ptr %122, i32 256
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %124 = and i32 %123, -67108865
  %125 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg, align 4
  %add.ptr4.i = getelementptr i8, ptr %126, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %124) #8, !srcloc !128
  %127 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg, align 4
  %add.ptr6.i = getelementptr i8, ptr %128, i32 316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -2130771969) #8, !srcloc !128
  %129 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg, align 4
  %add.ptr8.i = getelementptr i8, ptr %130, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #8, !srcloc !128
  %131 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg, align 4
  %add.ptr10.i = getelementptr i8, ptr %132, i32 308
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %134 = or i32 %133, 134217728
  %135 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg, align 4
  %add.ptr13.i = getelementptr i8, ptr %136, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %134) #8, !srcloc !128
  %137 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg, align 4
  %add.ptr.i239 = getelementptr i8, ptr %138, i32 276
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %140 = and i32 %139, -16777217
  %141 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg, align 4
  %add.ptr3.i = getelementptr i8, ptr %142, i32 276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %140) #8, !srcloc !128
  %143 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %call2, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %144, ptr noundef nonnull @fotg210_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @udc_name, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp124 = icmp slt i32 %call.i, 0
  br i1 %cmp124, label %do.end128, label %if.end131

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call.i) #11
  br label %err_req

if.end131:                                        ; preds = %if.end121
  %call134 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef %gadget) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.end140, label %err_add_udc

do.end140:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18) #11
  br label %cleanup

err_add_udc:                                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %call2, align 4
  %call143 = tail call ptr @free_irq(i32 noundef %146, ptr noundef nonnull %call7.i.i) #8
  br label %err_req

err_req:                                          ; preds = %err_add_udc, %do.end128
  %ret.0 = phi i32 [ %call.i, %do.end128 ], [ %call134, %err_add_udc ]
  %147 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ep0_req, align 8
  tail call void @kfree(ptr noundef %148) #8
  br label %err_map

err_map:                                          ; preds = %err_req, %fotg210_ep_alloc_request.exit.thread
  %ret.1 = phi i32 [ %ret.0, %err_req ], [ -12, %fotg210_ep_alloc_request.exit.thread ]
  %149 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %150) #8
  br label %err_alloc

err_alloc:                                        ; preds = %err_map, %do.end29, %if.end19.3.err_alloc_crit_edge, %if.end19.2.err_alloc_crit_edge, %if.end19.1.err_alloc_crit_edge, %if.end19.err_alloc_crit_edge, %for.body.preheader.err_alloc_crit_edge
  %ret.2 = phi i32 [ -12, %do.end29 ], [ %ret.1, %err_map ], [ -12, %if.end19.3.err_alloc_crit_edge ], [ -12, %if.end19.2.err_alloc_crit_edge ], [ -12, %if.end19.1.err_alloc_crit_edge ], [ -12, %if.end19.err_alloc_crit_edge ], [ -12, %for.body.preheader.err_alloc_crit_edge ]
  %arrayidx153 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 0
  %151 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx153, align 4
  tail call void @kfree(ptr noundef %152) #8
  %arrayidx153.1 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 1
  %153 = ptrtoint ptr %arrayidx153.1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx153.1, align 8
  tail call void @kfree(ptr noundef %154) #8
  %arrayidx153.2 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 2
  %155 = ptrtoint ptr %arrayidx153.2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx153.2, align 4
  tail call void @kfree(ptr noundef %156) #8
  %arrayidx153.3 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 3
  %157 = ptrtoint ptr %arrayidx153.3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx153.3, align 8
  tail call void @kfree(ptr noundef %158) #8
  %arrayidx153.4 = getelementptr %struct.fotg210_udc, ptr %call7.i.i, i32 0, i32 5, i32 4
  %159 = ptrtoint ptr %arrayidx153.4 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx153.4, align 4
  tail call void @kfree(ptr noundef %160) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %do.end140, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.end140 ], [ -19, %do.end7 ], [ -19, %do.end ], [ -12, %if.end10.cleanup_crit_edge ], [ %ret.2, %err_alloc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 3
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #8
  %reg = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %3) #8
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #8
  %ep0_req = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0_req, align 8
  tail call void @kfree(ptr noundef %5) #8
  %arrayidx5 = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  tail call void @kfree(ptr noundef %7) #8
  %arrayidx5.1 = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.1, align 4
  tail call void @kfree(ptr noundef %9) #8
  %arrayidx5.2 = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.2, align 4
  tail call void @kfree(ptr noundef %11) #8
  %arrayidx5.3 = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.3, align 4
  tail call void @kfree(ptr noundef %13) #8
  %arrayidx5.4 = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.4, align 4
  tail call void @kfree(ptr noundef %15) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fotg210_ep_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !131

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %queue = getelementptr inbounds %struct.fotg210_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.fotg210_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_irq(i32 noundef %irq, ptr noundef %_fotg210) #2 align 64 {
entry:
  %ctrl = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 304
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void @_raw_spin_lock(ptr noundef %_fotg210) #8
  %and4 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end92_crit_edge, label %if.then

entry.if.end92_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 332
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 316
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and14 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then.if.end_crit_edge, label %if.then16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %gadget = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 3
  %driver = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 4
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget, ptr noundef %19) #8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %21 = and i32 %20, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %21) #8, !srcloc !128
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then.if.end_crit_edge
  %and20 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end.if.end30_crit_edge, label %if.then22

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %23 = and i32 %22, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %23) #8, !srcloc !128
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end.if.end30_crit_edge
  %and31 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %if.then33

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %25 = and i32 %24, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %25) #8, !srcloc !128
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.end30.if.end41_crit_edge
  %and42 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end52_crit_edge, label %if.then44

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %27 = and i32 %26, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %27) #8, !srcloc !128
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %if.end41.if.end52_crit_edge
  %and53 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end63_crit_edge, label %if.then55

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %29 = and i32 %28, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %29) #8, !srcloc !128
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.end52.if.end63_crit_edge
  %and64 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end74_crit_edge, label %if.then66

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 340
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %33 = and i32 %32, -251658241
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %add.ptr2.i = getelementptr i8, ptr %35, i32 340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %33) #8, !srcloc !128
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %37 = and i32 %36, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %37) #8, !srcloc !128
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then66, %if.end63.if.end74_crit_edge
  %and75 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end85_crit_edge, label %if.then77

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg, align 4
  %add.ptr.i270 = getelementptr i8, ptr %39, i32 336
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %41 = and i32 %40, -251658241
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr2.i271 = getelementptr i8, ptr %43, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i271, i32 %41) #8, !srcloc !128
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %45 = and i32 %44, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %45) #8, !srcloc !128
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %if.end74.if.end85_crit_edge
  %and86 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end92_crit_edge, label %if.then88

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %47 = and i32 %46, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %47) #8, !srcloc !128
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end85.if.end92_crit_edge, %entry.if.end92_crit_edge
  %and93 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end155_crit_edge, label %if.then95

if.end92.if.end155_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then95:                                        ; preds = %if.end92
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg, align 4
  %add.ptr98 = getelementptr i8, ptr %49, i32 324
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg, align 4
  %add.ptr101 = getelementptr i8, ptr %52, i32 308
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl) #8
  %54 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %57 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %58 = xor i32 %53, -1
  %59 = and i32 %50, %58
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %and105 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  %61 = ptrtoint ptr %ctrl to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %ctrl, align 8
  br i1 %tobool106.not, label %if.then95.if.end113_crit_edge, label %if.then107

if.then95.if.end113_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then107:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg, align 4
  %add.ptr.i273 = getelementptr i8, ptr %63, i32 324
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %65 = and i32 %64, -536870913
  %66 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg, align 4
  %add.ptr2.i274 = getelementptr i8, ptr %67, i32 324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i274, i32 %65) #8, !srcloc !128
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #11
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.then95.if.end113_crit_edge
  %and114 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end128_crit_edge, label %if.then116

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then116:                                       ; preds = %if.end113
  %68 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 268435456) #8, !srcloc !128
  %70 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %71, i32 464
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !129
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv.i.i = trunc i32 %73 to i8
  %74 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i.i, ptr %ctrl, align 8
  %shr3.i.i = lshr i32 %73, 8
  %conv5.i.i = trunc i32 %shr3.i.i to i8
  %75 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv5.i.i, ptr %54, align 1
  %shr7.i.i = lshr i32 %73, 16
  %conv9.i.i = trunc i32 %shr7.i.i to i8
  %76 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv9.i.i, ptr %55, align 2
  %shr11.i.i = lshr i32 %73, 24
  %conv13.i.i = trunc i32 %shr11.i.i to i8
  %add.ptr14.i.i = getelementptr inbounds i8, ptr %ctrl, i32 3
  %77 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv13.i.i, ptr %add.ptr14.i.i, align 1
  %78 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg, align 4
  %add.ptr2.1.i.i = getelementptr i8, ptr %79, i32 464
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1.i.i) #8, !srcloc !129
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv.1.i.i = trunc i32 %81 to i8
  %82 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.1.i.i, ptr %56, align 4
  %shr3.1.i.i = lshr i32 %81, 8
  %conv5.1.i.i = trunc i32 %shr3.1.i.i to i8
  %add.ptr6.1.i.i = getelementptr inbounds i8, ptr %ctrl, i32 5
  %83 = ptrtoint ptr %add.ptr6.1.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv5.1.i.i, ptr %add.ptr6.1.i.i, align 1
  %shr7.1.i.i = lshr i32 %81, 16
  %conv9.1.i.i = trunc i32 %shr7.1.i.i to i8
  %84 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv9.1.i.i, ptr %57, align 2
  %shr11.1.i.i = lshr i32 %81, 24
  %conv13.1.i.i = trunc i32 %shr11.1.i.i to i8
  %add.ptr14.1.i.i = getelementptr inbounds i8, ptr %ctrl, i32 7
  %85 = ptrtoint ptr %add.ptr14.1.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv13.1.i.i, ptr %add.ptr14.1.i.i, align 1
  %86 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %87, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i, i32 0) #8, !srcloc !128
  %88 = and i8 %conv.i.i, -128
  %ep.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5
  %89 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ep.i, align 4
  %dir_in.i = getelementptr inbounds %struct.fotg210_ep, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %88, ptr %dir_in.i, align 1
  %speed.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 3, i32 5
  %92 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i = icmp eq i32 %93, 0
  br i1 %cmp.i, label %if.then.i, label %if.then116.if.end.i_crit_edge

if.then116.if.end.i_crit_edge:                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg, align 4
  %add.ptr.i275 = getelementptr i8, ptr %95, i32 256
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %97 = and i32 %96, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i = icmp eq i32 %97, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 3
  %98 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond.i, ptr %speed.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then116.if.end.i_crit_edge
  %99 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ctrl, align 8
  %101 = and i8 %100, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp9.i = icmp eq i8 %101, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.if.then119_crit_edge

if.end.i.if.then119_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then11.i:                                      ; preds = %if.end.i
  %102 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %54, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i8 %103, label %if.then11.i.if.then119_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb13.i
    i8 3, label %sw.bb14.i
    i8 5, label %sw.bb15.i
    i8 9, label %sw.bb16.i
  ]

if.then11.i.if.then119_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

sw.bb.i:                                          ; preds = %if.then11.i
  %105 = and i8 %100, 31
  %and.i.i = zext i8 %105 to i32
  %106 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb3.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_data.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 7
  %107 = ptrtoint ptr %ep0_data.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %ep0_data.i.i, align 4
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_data2.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 7
  %108 = ptrtoint ptr %ep0_data2.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %ep0_data2.i.i, align 4
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  %109 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %56, align 4
  %111 = trunc i16 %110 to i8
  %conv6.i.i = and i8 %111, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i.i)
  %tobool.not.i.i = icmp eq i8 %conv6.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i = zext i8 %conv6.i.i to i32
  %arrayidx.i.i = getelementptr %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5, i32 %idxprom.i.i
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i, align 4
  %fotg2101.i.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %fotg2101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fotg2101.i.i.i, align 4
  %dir_in.i.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %113, i32 0, i32 6
  %116 = ptrtoint ptr %dir_in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dir_in.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i.i.i = icmp eq i8 %117, 0
  %reg4.i.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %115, i32 0, i32 1
  %118 = ptrtoint ptr %reg4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg4.i.i.i, align 4
  %epnum5.i.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %113, i32 0, i32 4
  %120 = ptrtoint ptr %epnum5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %epnum5.i.i.i, align 1
  %conv6.i.i.i = zext i8 %121 to i32
  %sub7.i.i.i = shl nuw nsw i32 %conv6.i.i.i, 2
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 380, i32 348
  %add9.i.i.i = add nuw nsw i32 %sub7.i.i.i, %..i.i.i
  %add.ptr10.i.i.i = getelementptr i8, ptr %119, i32 %add9.i.i.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #8, !srcloc !129
  %123 = lshr i32 %122, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %124 = trunc i32 %123 to i16
  %conv7.i.i = and i16 %124, 1
  %ep0_data8.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 7
  %125 = ptrtoint ptr %ep0_data8.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv7.i.i, ptr %ep0_data8.i.i, align 4
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %127, i32 288
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %129 = or i32 %128, 67108864
  %130 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %131, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i.i, i32 %129) #8, !srcloc !128
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg, align 4
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %133, i32 288
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %135 = or i32 %134, 67108864
  %136 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i30.i.i = getelementptr i8, ptr %137, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i30.i.i, i32 %135) #8, !srcloc !128
  %call.i31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %if.end128

sw.epilog.i.i:                                    ; preds = %if.else.i.i, %if.then.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %ep0_data9.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 7
  %ep0_req.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 6
  %138 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ep0_req.i.i, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %ep0_data9.i.i, ptr %139, align 4
  %141 = load ptr, ptr %ep0_req.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %length.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_fotg210) #8
  %ep0.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 3, i32 3
  %143 = ptrtoint ptr %ep0.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ep0.i.i, align 4
  %145 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ep0_req.i.i, align 8
  %call12.i.i = tail call i32 @fotg210_ep_queue(ptr noundef %144, ptr noundef %146, i32 noundef 2592) #8
  tail call void @_raw_spin_lock(ptr noundef %_fotg210) #8
  br label %if.end128

sw.bb13.i:                                        ; preds = %if.then11.i
  %147 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %56, align 4
  %149 = and i16 %148, 15
  %and.i36.i = zext i16 %149 to i32
  %arrayidx.i37.i = getelementptr %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5, i32 %and.i36.i
  %150 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i37.i, align 4
  %152 = and i8 %100, 31
  %and3.i.i = zext i8 %152 to i32
  %153 = zext i32 %and3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and3.i.i, label %sw.default.i45.i [
    i32 0, label %sw.bb.i38.i
    i32 1, label %sw.bb4.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i38.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %155, i32 288
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %157 = or i32 %156, 16777216
  %158 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %159, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 %157) #8, !srcloc !128
  br label %if.end128

sw.bb4.i.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reg, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %161, i32 288
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %163 = or i32 %162, 16777216
  %164 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg, align 4
  %add.ptr2.i30.i.i = getelementptr i8, ptr %165, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i30.i.i, i32 %163) #8, !srcloc !128
  br label %if.end128

sw.bb5.i.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool.not.i39.i = icmp eq i16 %149, 0
  br i1 %tobool.not.i39.i, label %sw.bb5.i.i.if.end18.i.i_crit_edge, label %if.then.i40.i

sw.bb5.i.i.if.end18.i.i_crit_edge:                ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then.i40.i:                                    ; preds = %sw.bb5.i.i
  %wedged.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %151, i32 0, i32 3
  %166 = ptrtoint ptr %wedged.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load.i.i = load i8, ptr %wedged.i.i, align 4
  %167 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool9.not.i.i = icmp eq i8 %167, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %169, i32 288
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %171 = or i32 %170, 16777216
  %172 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg, align 4
  %add.ptr2.i33.i.i = getelementptr i8, ptr %173, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i33.i.i, i32 %171) #8, !srcloc !128
  br label %if.end128

if.end.i.i:                                       ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool14.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool14.not.i.i, label %if.end.i.i.if.end18.i.i_crit_edge, label %if.then15.i.i

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fotg210_set_halt_and_wedge(ptr noundef %151, i32 noundef 0, i32 noundef 0) #8
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %if.end.i.i.if.end18.i.i_crit_edge, %sw.bb5.i.i.if.end18.i.i_crit_edge
  %174 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg, align 4
  %add.ptr.i35.i.i = getelementptr i8, ptr %175, i32 288
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %177 = or i32 %176, 16777216
  %178 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg, align 4
  %add.ptr2.i36.i.i = getelementptr i8, ptr %179, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i36.i.i, i32 %177) #8, !srcloc !128
  br label %if.end128

sw.default.i45.i:                                 ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i42.i = getelementptr i8, ptr %181, i32 288
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i42.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %183 = or i32 %182, 67108864
  %184 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i.i43.i = getelementptr i8, ptr %185, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i43.i, i32 %183) #8, !srcloc !128
  %call.i.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %if.end128

sw.bb14.i:                                        ; preds = %if.then11.i
  %186 = and i8 %100, 31
  %and.i47.i = zext i8 %186 to i32
  %187 = zext i32 %and.i47.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.i47.i, label %sw.default.i68.i [
    i32 0, label %sw.bb.i51.i
    i32 1, label %sw.bb1.i52.i
    i32 2, label %sw.bb2.i.i
  ]

sw.bb.i51.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %189, i32 288
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %191 = or i32 %190, 16777216
  %192 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i50.i = getelementptr i8, ptr %193, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i50.i, i32 %191) #8, !srcloc !128
  br label %if.end128

sw.bb1.i52.i:                                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %reg, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %195, i32 288
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %197 = or i32 %196, 16777216
  %198 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %reg, align 4
  %add.ptr2.i15.i.i = getelementptr i8, ptr %199, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15.i.i, i32 %197) #8, !srcloc !128
  br label %if.end128

sw.bb2.i.i:                                       ; preds = %sw.bb14.i
  %200 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %56, align 4
  %202 = lshr i16 %201, 8
  %203 = trunc i16 %202 to i8
  %conv5.i54.i = and i8 %203, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5.i54.i)
  %tobool.not.i55.i = icmp eq i8 %conv5.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.else.i62.i, label %if.then.i61.i

if.then.i61.i:                                    ; preds = %sw.bb2.i.i
  %idxprom.i56.i = zext i8 %conv5.i54.i to i32
  %arrayidx.i57.i = getelementptr %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5, i32 %idxprom.i56.i
  %204 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx.i57.i, align 4
  %fotg2101.i.i58.i = getelementptr inbounds %struct.fotg210_ep, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %fotg2101.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %fotg2101.i.i58.i, align 4
  %dir_in.i.i59.i = getelementptr inbounds %struct.fotg210_ep, ptr %205, i32 0, i32 6
  %208 = ptrtoint ptr %dir_in.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %dir_in.i.i59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i.i60.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i.i60.i, label %if.then.i61.i.cond.false.i.i.i_crit_edge, label %do.body.preheader.i.i.i

if.then.i61.i.cond.false.i.i.i_crit_edge:         ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i.i

do.body.preheader.i.i.i:                          ; preds = %if.then.i61.i
  %reg2.i.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %207, i32 0, i32 1
  %epnum.i.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %205, i32 0, i32 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.preheader.i.i.i
  %210 = ptrtoint ptr %reg2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg2.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %211, i32 288
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #8, !srcloc !129
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %214 = ptrtoint ptr %epnum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %epnum.i.i.i, align 1
  %conv.i.i.i = zext i8 %215 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %shl.i.i.i = shl i32 256, %sub.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %213
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %216 = ptrtoint ptr %dir_in.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %.pr.i.i.i = load i8, ptr %dir_in.i.i59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i.i)
  %tobool6.not.i.i.i = icmp eq i8 %.pr.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.cond.false.i.i.i_crit_edge, label %if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge

if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fotg210_set_epnstall.exit.i.i

if.end.i.i.i.cond.false.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i.i.cond.false.i.i.i_crit_edge, %if.then.i61.i.cond.false.i.i.i_crit_edge
  %reg12.i.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %207, i32 0, i32 1
  %epnum13.i.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %205, i32 0, i32 4
  br label %fotg210_set_epnstall.exit.i.i

fotg210_set_epnstall.exit.i.i:                    ; preds = %cond.false.i.i.i, %if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge
  %epnum13.sink.i.i.i = phi ptr [ %epnum13.i.i.i, %cond.false.i.i.i ], [ %epnum.i.i.i, %if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge ]
  %.sink31.i.i.i = phi i32 [ 380, %cond.false.i.i.i ], [ 348, %if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge ]
  %.sink.in.i.i.i = phi ptr [ %reg12.i.i.i, %cond.false.i.i.i ], [ %reg2.i.i.i, %if.end.i.i.i.fotg210_set_epnstall.exit.i.i_crit_edge ]
  %217 = ptrtoint ptr %.sink.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.sink.i.i.i = load ptr, ptr %.sink.in.i.i.i, align 4
  %218 = ptrtoint ptr %epnum13.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %epnum13.sink.i.i.i, align 1
  %conv14.i.i.i = zext i8 %219 to i32
  %sub15.i.i.i = shl nuw nsw i32 %conv14.i.i.i, 2
  %add17.i.i.i = add nuw nsw i32 %sub15.i.i.i, %.sink31.i.i.i
  %add.ptr18.i.i.i = getelementptr i8, ptr %.sink.i.i.i, i32 %add17.i.i.i
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %221 = or i32 %220, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 %221) #8, !srcloc !128
  br label %if.end.i63.i

if.else.i62.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %222 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %223, i32 288
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %225 = or i32 %224, 67108864
  %226 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reg, align 4
  %add.ptr2.i19.i.i = getelementptr i8, ptr %227, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19.i.i, i32 %225) #8, !srcloc !128
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %if.else.i62.i, %fotg210_set_epnstall.exit.i.i
  %228 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reg, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %229, i32 288
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %231 = or i32 %230, 16777216
  %232 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %reg, align 4
  %add.ptr2.i22.i.i = getelementptr i8, ptr %233, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22.i.i, i32 %231) #8, !srcloc !128
  br label %if.end128

sw.default.i68.i:                                 ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg, align 4
  %add.ptr.i.i.i65.i = getelementptr i8, ptr %235, i32 288
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i65.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %237 = or i32 %236, 67108864
  %238 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i.i66.i = getelementptr i8, ptr %239, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i66.i, i32 %237) #8, !srcloc !128
  %call.i.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %if.end128

sw.bb15.i:                                        ; preds = %if.then11.i
  %240 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %241)
  %cmp.i.i = icmp ugt i16 %241, 255
  %242 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reg, align 4
  br i1 %cmp.i.i, label %if.then.i74.i, label %if.else.i78.i

if.then.i74.i:                                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i71.i = getelementptr i8, ptr %243, i32 288
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %245 = or i32 %244, 67108864
  %246 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i.i72.i = getelementptr i8, ptr %247, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i72.i, i32 %245) #8, !srcloc !128
  %call.i.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %if.end128

if.else.i78.i:                                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i75.i = getelementptr i8, ptr %243, i32 260
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.i) #8, !srcloc !129
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %250 = and i16 %241, 127
  %and.i.i76.i = zext i16 %250 to i32
  %or.i.i.i = or i32 %249, %and.i.i76.i
  %251 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i77.i = getelementptr i8, ptr %252, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %253 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i77.i, i32 %253) #8, !srcloc !128
  %254 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %reg, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %255, i32 288
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %257 = or i32 %256, 16777216
  %258 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %reg, align 4
  %add.ptr2.i9.i.i = getelementptr i8, ptr %259, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i, i32 %257) #8, !srcloc !128
  br label %if.end128

sw.bb16.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %reg, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %261, i32 260
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %263 = or i32 %262, -2147483648
  %264 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg, align 4
  %add.ptr2.i82.i = getelementptr i8, ptr %265, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i82.i, i32 %263) #8, !srcloc !128
  br label %if.then119

if.then119:                                       ; preds = %sw.bb16.i, %if.then11.i.if.then119_crit_edge, %if.end.i.if.then119_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %_fotg210) #8
  %driver121 = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 4
  %266 = ptrtoint ptr %driver121 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %driver121, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %267, i32 0, i32 4
  %268 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %setup, align 4
  %gadget122 = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 3
  %call123 = call i32 %269(ptr noundef %gadget122, ptr noundef nonnull %ctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp = icmp slt i32 %call123, 0
  br i1 %cmp, label %if.then124, label %if.then119.if.end125_crit_edge

if.then119.if.end125_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then124:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %270 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %reg, align 4
  %add.ptr.i277 = getelementptr i8, ptr %271, i32 288
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %273 = or i32 %272, 67108864
  %274 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %reg, align 4
  %add.ptr2.i278 = getelementptr i8, ptr %275, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i278, i32 %273) #8, !srcloc !128
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.then119.if.end125_crit_edge
  call void @_raw_spin_lock(ptr noundef %_fotg210) #8
  br label %if.end128

if.end128:                                        ; preds = %if.end125, %if.else.i78.i, %if.then.i74.i, %sw.default.i68.i, %if.end.i63.i, %sw.bb1.i52.i, %sw.bb.i51.i, %sw.default.i45.i, %if.end18.i.i, %if.then10.i.i, %sw.bb4.i.i, %sw.bb.i38.i, %sw.epilog.i.i, %sw.default.i.i, %if.end113.if.end128_crit_edge
  %and129 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end137_crit_edge, label %do.end134

if.end128.if.end137_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end134, %if.end128.if.end137_crit_edge
  %and138 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end137.if.end141_crit_edge, label %if.then140

if.end137.if.end141_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then140:                                       ; preds = %if.end137
  %ep1.i = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5
  %276 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ep1.i, align 4
  %queue.i = getelementptr inbounds %struct.fotg210_ep, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %279, %queue.i
  br i1 %cmp.i.not.i, label %if.then140.if.else.i_crit_edge, label %land.lhs.true.i

if.then140.if.else.i_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then140
  %dir_in.i279 = getelementptr inbounds %struct.fotg210_ep, ptr %277, i32 0, i32 6
  %280 = ptrtoint ptr %dir_in.i279 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %dir_in.i279, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool2.not.i = icmp eq i8 %281, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i281

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i281:                                     ; preds = %land.lhs.true.i
  %add.ptr.i280 = getelementptr i8, ptr %279, i32 -56
  %length.i = getelementptr i8, ptr %279, i32 -52
  %282 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool5.not.i = icmp eq i32 %283, 0
  br i1 %tobool5.not.i, label %if.then.i281.if.end.i283_crit_edge, label %if.then6.i

if.then.i281.if.end.i283_crit_edge:               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i283

if.then6.i:                                       ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fotg210_start_dma(ptr noundef %277, ptr noundef %add.ptr.i280) #8
  br label %if.end.i283

if.end.i283:                                      ; preds = %if.then6.i, %if.then.i281.if.end.i283_crit_edge
  %actual.i = getelementptr i8, ptr %279, i32 -4
  %284 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %actual.i, align 4
  %286 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %287)
  %cmp.i282 = icmp eq i32 %285, %287
  br i1 %cmp.i282, label %if.then11.i284, label %if.end.i283.if.end141_crit_edge

if.end.i283.if.end141_crit_edge:                  ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then11.i284:                                   ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fotg210_done(ptr noundef %277, ptr noundef %add.ptr.i280, i32 noundef 0) #8
  br label %if.end141

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then140.if.else.i_crit_edge
  %288 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %reg, align 4
  %add.ptr.i.i286 = getelementptr i8, ptr %289, i32 288
  %290 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i286) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %291 = or i32 %290, 16777216
  %292 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %reg, align 4
  %add.ptr2.i.i287 = getelementptr i8, ptr %293, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i287, i32 %291) #8, !srcloc !128
  br label %if.end141

if.end141:                                        ; preds = %if.else.i, %if.then11.i284, %if.end.i283.if.end141_crit_edge, %if.end137.if.end141_crit_edge
  %and142 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end145_crit_edge, label %if.then144

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then144:                                       ; preds = %if.end141
  %ep1.i288 = getelementptr inbounds %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5
  %294 = ptrtoint ptr %ep1.i288 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ep1.i288, align 4
  %queue.i289 = getelementptr inbounds %struct.fotg210_ep, ptr %295, i32 0, i32 2
  %296 = ptrtoint ptr %queue.i289 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile ptr, ptr %queue.i289, align 4
  %cmp.i.not.i290 = icmp eq ptr %297, %queue.i289
  br i1 %cmp.i.not.i290, label %if.then144.do.end.i_crit_edge, label %land.lhs.true.i293

if.then144.do.end.i_crit_edge:                    ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i293:                               ; preds = %if.then144
  %dir_in.i291 = getelementptr inbounds %struct.fotg210_ep, ptr %295, i32 0, i32 6
  %298 = ptrtoint ptr %dir_in.i291 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %dir_in.i291, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool2.not.i292 = icmp eq i8 %299, 0
  br i1 %tobool2.not.i292, label %if.then.i297, label %land.lhs.true.i293.do.end.i_crit_edge

land.lhs.true.i293.do.end.i_crit_edge:            ; preds = %land.lhs.true.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i297:                                     ; preds = %land.lhs.true.i293
  %add.ptr.i294 = getelementptr i8, ptr %297, i32 -56
  %length.i295 = getelementptr i8, ptr %297, i32 -52
  %300 = ptrtoint ptr %length.i295 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %length.i295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool5.not.i296 = icmp eq i32 %301, 0
  br i1 %tobool5.not.i296, label %if.then.i297.if.end.i301_crit_edge, label %if.then6.i298

if.then.i297.if.end.i301_crit_edge:               ; preds = %if.then.i297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i301

if.then6.i298:                                    ; preds = %if.then.i297
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fotg210_start_dma(ptr noundef %295, ptr noundef %add.ptr.i294) #8
  br label %if.end.i301

if.end.i301:                                      ; preds = %if.then6.i298, %if.then.i297.if.end.i301_crit_edge
  %302 = ptrtoint ptr %length.i295 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %length.i295, align 4
  %actual.i299 = getelementptr i8, ptr %297, i32 -4
  %304 = ptrtoint ptr %actual.i299 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %actual.i299, align 4
  %sub.i = sub i32 %303, %305
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %295, i32 0, i32 7
  %306 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %306, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %bf.cast.i)
  %cmp.i300 = icmp ult i32 %sub.i, %bf.cast.i
  br i1 %cmp.i300, label %if.then11.i302, label %if.end.i301.if.end145_crit_edge

if.end.i301.if.end145_crit_edge:                  ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then11.i302:                                   ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fotg210_done(ptr noundef %295, ptr noundef %add.ptr.i294, i32 noundef 0) #8
  br label %if.end145

do.end.i:                                         ; preds = %land.lhs.true.i293.do.end.i_crit_edge, %if.then144.do.end.i_crit_edge
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #11
  br label %if.end145

if.end145:                                        ; preds = %do.end.i, %if.then11.i302, %if.end.i301.if.end145_crit_edge, %if.end141.if.end145_crit_edge
  %and146 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end154_crit_edge, label %if.then148

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %307 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg, align 4
  %add.ptr.i304 = getelementptr i8, ptr %308, i32 288
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %310 = or i32 %309, 67108864
  %311 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %reg, align 4
  %add.ptr2.i305 = getelementptr i8, ptr %312, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i305, i32 %310) #8, !srcloc !128
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #11
  br label %if.end154

if.end154:                                        ; preds = %if.then148, %if.end145.if.end154_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl) #8
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end92.if.end155_crit_edge
  %and156 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.end185_crit_edge, label %if.then158

if.end155.if.end185_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then158:                                       ; preds = %if.end155
  %313 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %reg, align 4
  %add.ptr161 = getelementptr i8, ptr %314, i32 328
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %316 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %reg, align 4
  %add.ptr164 = getelementptr i8, ptr %317, i32 312
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %319 = xor i32 %318, -1
  %320 = and i32 %315, %319
  %321 = call i32 @llvm.bswap.i32(i32 %320)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then158
  %fifo.0324 = phi i32 [ 0, %if.then158 ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 65536, %fifo.0324
  %and169 = and i32 %shl, %321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %for.body.if.end172_crit_edge, label %if.then171

for.body.if.end172_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then171:                                       ; preds = %for.body
  %add = add nuw nsw i32 %fifo.0324, 1
  %arrayidx = getelementptr %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5, i32 %add
  %322 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx, align 4
  %queue.i306 = getelementptr inbounds %struct.fotg210_ep, ptr %323, i32 0, i32 2
  %324 = ptrtoint ptr %queue.i306 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %queue.i306, align 4
  %add.ptr.i307 = getelementptr i8, ptr %325, i32 -56
  %length.i308 = getelementptr i8, ptr %325, i32 -52
  %326 = ptrtoint ptr %length.i308 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %length.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.not.i309 = icmp eq i32 %327, 0
  br i1 %tobool.not.i309, label %if.then171.fotg210_in_fifo_handler.exit_crit_edge, label %if.then.i310

if.then171.fotg210_in_fifo_handler.exit_crit_edge: ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %fotg210_in_fifo_handler.exit

if.then.i310:                                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @fotg210_start_dma(ptr noundef %323, ptr noundef %add.ptr.i307) #8
  br label %fotg210_in_fifo_handler.exit

fotg210_in_fifo_handler.exit:                     ; preds = %if.then.i310, %if.then171.fotg210_in_fifo_handler.exit_crit_edge
  call fastcc void @fotg210_done(ptr noundef %323, ptr noundef %add.ptr.i307, i32 noundef 0) #8
  br label %if.end172

if.end172:                                        ; preds = %fotg210_in_fifo_handler.exit, %for.body.if.end172_crit_edge
  %mul = shl nuw i32 %fifo.0324, 1
  %shl173 = shl nuw i32 1, %mul
  %and174 = and i32 %shl173, %321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %lor.lhs.false, label %if.end172.if.then180_crit_edge

if.end172.if.then180_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180

lor.lhs.false:                                    ; preds = %if.end172
  %shl177 = shl i32 2, %mul
  %and178 = and i32 %shl177, %321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then180_crit_edge

lor.lhs.false.if.then180_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add nuw nsw i32 %fifo.0324, 1
  br label %for.inc

if.then180:                                       ; preds = %lor.lhs.false.if.then180_crit_edge, %if.end172.if.then180_crit_edge
  %add182 = add nuw nsw i32 %fifo.0324, 1
  %arrayidx183 = getelementptr %struct.fotg210_udc, ptr %_fotg210, i32 0, i32 5, i32 %add182
  %328 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx183, align 4
  %queue.i312 = getelementptr inbounds %struct.fotg210_ep, ptr %329, i32 0, i32 2
  %330 = ptrtoint ptr %queue.i312 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %queue.i312, align 4
  %add.ptr.i313 = getelementptr i8, ptr %331, i32 -56
  %fotg210.i = getelementptr inbounds %struct.fotg210_ep, ptr %329, i32 0, i32 1
  %332 = ptrtoint ptr %fotg210.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %fotg210.i, align 4
  %reg.i314 = getelementptr inbounds %struct.fotg210_udc, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %reg.i314 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %reg.i314, align 4
  %add.ptr1.i = getelementptr i8, ptr %335, i32 328
  %336 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call fastcc void @fotg210_start_dma(ptr noundef %329, ptr noundef %add.ptr.i313) #8
  %length.i315 = getelementptr i8, ptr %331, i32 -52
  %337 = ptrtoint ptr %length.i315 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %length.i315, align 4
  %actual.i316 = getelementptr i8, ptr %331, i32 -4
  %339 = ptrtoint ptr %actual.i316 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %actual.i316, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %338, i32 %340)
  %cmp.i317 = icmp eq i32 %338, %340
  br i1 %cmp.i317, label %if.then180.if.then.i320_crit_edge, label %lor.lhs.false.i

if.then180.if.then.i320_crit_edge:                ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i320

lor.lhs.false.i:                                  ; preds = %if.then180
  %341 = call i32 @llvm.bswap.i32(i32 %336) #8
  %epnum.i = getelementptr inbounds %struct.fotg210_ep, ptr %329, i32 0, i32 4
  %342 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %epnum.i, align 1
  %conv.i = zext i8 %343 to i32
  %sub.i318 = shl nuw nsw i32 %conv.i, 1
  %mul.i = add nsw i32 %sub.i318, -2
  %shl.i = shl i32 2, %mul.i
  %and.i = and i32 %shl.i, %341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i319 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i319, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.if.then.i320_crit_edge

lor.lhs.false.i.if.then.i320_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i320

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i320:                                     ; preds = %lor.lhs.false.i.if.then.i320_crit_edge, %if.then180.if.then.i320_crit_edge
  call fastcc void @fotg210_done(ptr noundef %329, ptr noundef %add.ptr.i313, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i320, %lor.lhs.false.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %lor.lhs.false.for.inc_crit_edge ], [ %add182, %if.then.i320 ], [ %add182, %lor.lhs.false.i.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 4
  br i1 %exitcond.not, label %for.inc.if.end185_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end185_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.end185:                                        ; preds = %for.inc.if.end185_crit_edge, %if.end155.if.end185_crit_edge
  call void @_raw_spin_unlock(ptr noundef %_fotg210) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fotg210_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_udc_start(ptr nocapture noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr i8, ptr %g, i32 1048
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 8
  %reg = getelementptr i8, ptr %g, i32 -12
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %5 = or i32 %4, 67108864
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #8, !srcloc !128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_udc_stop(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %g, i32 -56
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #8
  %reg.i = getelementptr i8, ptr %g, i32 -12
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 234881024) #8, !srcloc !128
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %5 = and i32 %4, -67108865
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !128
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -2130771969) #8, !srcloc !128
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #8, !srcloc !128
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 308
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %15 = or i32 %14, 134217728
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %17, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %15) #8, !srcloc !128
  %driver = getelementptr i8, ptr %g, i32 1048
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 8
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %desc1, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %1 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bEndpointAddress.i, align 1
  %3 = and i8 %2, 15
  %epnum = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %epnum, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes.i, align 1
  %7 = and i8 %6, 3
  %type = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %type, align 2
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %9, 7
  %dir_in = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 6
  %10 = ptrtoint ptr %dir_in to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.lobit.i, ptr %dir_in, align 1
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %11 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wMaxPacketSize.i, align 1
  %13 = and i16 %12, -249
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %15 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %14 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket, align 2
  %fotg2101.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  %16 = ptrtoint ptr %fotg2101.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fotg2101.i, align 4
  %reg.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 424
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !129
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not.i.i = icmp sgt i8 %9, -1
  %22 = shl nuw nsw i8 %3, 3
  %sub.i.i = zext i8 %22 to i32
  %mul.i.i = add nsw i32 %sub.i.i, -8
  %shl.i.i = shl i32 16, %mul.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %shl.i.i
  %or.i.i = or i32 %21, %cond.i.i
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %24, i32 424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %25) #8, !srcloc !128
  %26 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %epnum, align 1
  %conv4.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type, align 2
  %conv5.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %fotg2101.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fotg2101.i, align 4
  %reg.i2.i = getelementptr inbounds %struct.fotg210_udc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %reg.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %33, i32 428
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #8, !srcloc !129
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %sub.i4.i = shl nuw nsw i32 %conv4.i, 3
  %mul.i5.i = add nsw i32 %sub.i4.i, -8
  %shl.i6.i = shl i32 %conv5.i, %mul.i5.i
  %or.i7.i = or i32 %35, %shl.i6.i
  %36 = ptrtoint ptr %reg.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i2.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %37, i32 428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i7.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %38) #8, !srcloc !128
  %39 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %epnum, align 1
  %conv7.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load.i = load i56, ptr %maxpacket, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %42 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dir_in, align 1
  %44 = ptrtoint ptr %fotg2101.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fotg2101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i9.i = icmp eq i8 %43, 0
  %sub.i10.i = shl nuw nsw i32 %conv7.i, 2
  %cond.v.i.i = select i1 %tobool.not.i9.i, i32 380, i32 348
  %cond.i11.i = add nuw nsw i32 %cond.v.i.i, %sub.i10.i
  %reg.i12.i = getelementptr inbounds %struct.fotg210_udc, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %reg.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %47, i32 %cond.i11.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #8, !srcloc !129
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %and.i.i = and i32 %bf.cast.i, 767
  %or.i14.i = or i32 %49, %and.i.i
  %50 = ptrtoint ptr %reg.i12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i12.i, align 4
  %add.ptr6.i15.i = getelementptr i8, ptr %51, i32 %cond.i11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i14.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i15.i, i32 %52) #8, !srcloc !128
  %53 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %epnum, align 1
  %conv12.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dir_in, align 1
  %57 = ptrtoint ptr %fotg2101.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fotg2101.i, align 4
  %reg.i17.i = getelementptr inbounds %struct.fotg210_udc, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %60, i32 416
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !129
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %sub.i19.i = add nsw i32 %conv12.i, -1
  %mul.i20.i = shl nsw i32 %sub.i19.i, 3
  %shl.i21.i = shl i32 3, %mul.i20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i22.i = icmp eq i8 %56, 0
  %cond.i23.i = select i1 %tobool.not.i22.i, i32 4, i32 0
  %shl2.i.i = shl i32 %shl.i21.i, %cond.i23.i
  %neg.i.i = xor i32 %shl2.i.i, -1
  %and.i24.i = and i32 %62, %neg.i.i
  %shl6.i.i = shl i32 %sub.i19.i, %mul.i20.i
  %shl9.i.i = shl i32 %shl6.i.i, %cond.i23.i
  %or.i25.i = or i32 %and.i24.i, %shl9.i.i
  %63 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %64, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i25.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %65) #8, !srcloc !128
  %66 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %67, i32 424
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #8, !srcloc !129
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %shl17.i.i = shl i32 15, %mul.i20.i
  %neg18.i.i = xor i32 %shl17.i.i, -1
  %and19.i.i = and i32 %69, %neg18.i.i
  %shl22.i.i = shl i32 %conv12.i, %mul.i20.i
  %or23.i.i = or i32 %and19.i.i, %shl22.i.i
  %70 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %71, i32 424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %72 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %72) #8, !srcloc !128
  %73 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %74, i32 428
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #8, !srcloc !129
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %shl32.i.i = shl i32 32, %mul.i20.i
  %or33.i.i = or i32 %76, %shl32.i.i
  %77 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i17.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %78, i32 428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %79 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 %79) #8, !srcloc !128
  %80 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %epnum, align 1
  %idxprom.i = zext i8 %81 to i32
  %arrayidx.i = getelementptr %struct.fotg210_udc, ptr %17, i32 0, i32 5, i32 %idxprom.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %_ep, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !132

while.cond.preheader:                             ; preds = %entry
  %queue = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not35 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not35, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %fotg210 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/fotg210-udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %2, i32 -56
  %3 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fotg210, align 4
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  tail call fastcc void @fotg210_done(ptr noundef nonnull %_ep, ptr noundef %add.ptr16, i32 noundef -104)
  %5 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fotg210, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call21) #8
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %epnum.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  %9 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %epnum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %while.end.fotg210_ep_release.exit_crit_edge, label %if.end.i

while.end.fotg210_ep_release.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fotg210_ep_release.exit

if.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %epnum.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %epnum.i, align 1
  %stall.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 3
  %12 = ptrtoint ptr %stall.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %stall.i, align 4
  %bf.clear3.i = and i8 %bf.load.i, 63
  store i8 %bf.clear3.i, ptr %stall.i, align 4
  %fotg210.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  %13 = ptrtoint ptr %fotg210.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fotg210.i, align 4
  %arrayidx.i.i = getelementptr %struct.fotg210_udc, ptr %14, i32 0, i32 5, i32 0
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %dir_in.i.i = getelementptr inbounds %struct.fotg210_ep, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %dir_in.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %reg4.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %reg4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg4.i.i, align 4
  %..i.i = select i1 %tobool.not.i.i, i32 380, i32 348
  %add.ptr9.i.i = getelementptr i8, ptr %20, i32 %..i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %22 = or i32 %21, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %22) #8, !srcloc !128
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %24 = and i32 %23, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %24) #8, !srcloc !128
  br label %fotg210_ep_release.exit

fotg210_ep_release.exit:                          ; preds = %if.end.i, %while.end.fotg210_ep_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fotg210 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fotg210, align 4
  %speed = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %queue = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  %queue14 = getelementptr inbounds %struct.fotg210_request, ptr %_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue14, ptr noundef %7, ptr noundef %queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %queue14, align 4
  %prev3.i.i = getelementptr inbounds %struct.fotg210_request, ptr %_req, i32 0, i32 1, i32 1
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
  %epnum = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  %14 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %list_add_tail.exit
  %length.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fotg210_done(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #8
  br label %if.end24

if.end.i:                                         ; preds = %if.then19
  %dir_in.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 6
  %18 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dir_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  tail call fastcc void @fotg210_start_dma(ptr noundef %_ep, ptr noundef %_req) #8
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i41 = icmp eq i32 %21, %23
  br i1 %cmp.i41, label %if.then7.i, label %if.then3.i.if.end24_crit_edge

if.then3.i.if.end24_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fotg210_done(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #8
  br label %if.end24

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fotg210, align 4
  %reg.i = getelementptr inbounds %struct.fotg210_udc, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 308
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %29 = and i32 %28, -67108865
  %30 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fotg210, align 4
  %reg10.i = getelementptr inbounds %struct.fotg210_udc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %33, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %29) #8, !srcloc !128
  br label %if.end24

if.else:                                          ; preds = %list_add_tail.exit
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %stall = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 3
  %34 = ptrtoint ptr %stall to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %stall, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fotg210, align 4
  %reg.i43 = getelementptr inbounds %struct.fotg210_udc, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %38, i32 312
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %dir_in.i45 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 6
  %40 = ptrtoint ptr %dir_in.i45 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dir_in.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i46 = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %epnum, align 1
  %conv2.i = zext i8 %43 to i32
  %shl.i = shl i32 32768, %conv2.i
  %sub3.i = shl nuw nsw i32 %conv2.i, 1
  %mul.i = add nsw i32 %sub3.i, -2
  %shl4.i = shl i32 3, %mul.i
  %neg.pn.in.i = select i1 %tobool.not.i46, i32 %shl4.i, i32 %shl.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %neg.pn.i = xor i32 %neg.pn.in.i, -1
  %value.0.i = and i32 %44, %neg.pn.i
  %45 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fotg210, align 4
  %reg8.i = getelementptr inbounds %struct.fotg210_udc, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %reg8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %48, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %49) #8, !srcloc !128
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.else.i, %if.then7.i, %if.then3.i.if.end24_crit_edge, %if.then.i
  %50 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fotg210, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fotg210 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fotg210, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %queue = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fotg210_done(ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fotg210, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fotg210_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fotg210_ep_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fotg210_set_halt_and_wedge(ptr noundef %_ep, i32 noundef 1, i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fotg210_ep_fifo_flush(ptr nocapture noundef %_ep) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fotg210_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.fotg210_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.fotg210_request, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.fotg210_request, ptr %req, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i3.i, align 4
  %fotg210 = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fotg210, align 4
  %speed = getelementptr inbounds %struct.fotg210_udc, ptr %9, i32 0, i32 3, i32 5
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
  %14 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fotg210, align 4
  tail call void @_raw_spin_unlock(ptr noundef %15) #8
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #8
  %16 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fotg210, align 4
  tail call void @_raw_spin_lock(ptr noundef %17) #8
  %epnum = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 4
  %18 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.else15, label %if.then10

if.then10:                                        ; preds = %list_del_init.exit
  %queue11 = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 2
  %20 = ptrtoint ptr %queue11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue11, align 4
  %cmp.i.not = icmp eq ptr %21, %queue11
  br i1 %cmp.i.not, label %if.then13, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fotg210, align 4
  %reg.i = getelementptr inbounds %struct.fotg210_udc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 312
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %dir_in.i = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 6
  %27 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dir_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %epnum, align 1
  %conv2.i = zext i8 %30 to i32
  %shl.i = shl i32 32768, %conv2.i
  %sub3.i = shl nuw nsw i32 %conv2.i, 1
  %mul.i = add nsw i32 %sub3.i, -2
  %shl4.i = shl i32 3, %mul.i
  %shl.pn.i = select i1 %tobool.not.i, i32 %shl4.i, i32 %shl.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %value.0.i = or i32 %shl.pn.i, %31
  %32 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fotg210, align 4
  %reg7.i = getelementptr inbounds %struct.fotg210_udc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %reg7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %35, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %36) #8, !srcloc !128
  br label %if.end17

if.else15:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fotg210, align 4
  %reg.i28 = getelementptr inbounds %struct.fotg210_udc, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %reg.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %40, i32 288
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %42 = or i32 %41, 16777216
  %43 = ptrtoint ptr %reg.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i28, align 4
  %add.ptr2.i = getelementptr i8, ptr %44, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %42) #8, !srcloc !128
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13, %if.then10.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fotg210_start_dma(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fotg210 = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fotg210, align 4
  %dev1 = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 3, i32 11
  %epnum = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %dir_in = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dir_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %length6 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length6, align 4
  br label %if.end53

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %reg = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %conv = zext i8 %3 to i32
  %sub = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %sub, 428
  %add.ptr12 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %15 = and i32 %14, -16318464
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %length14 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length14, align 4
  %19 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual, align 4
  %sub17 = sub i32 %18, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub17)
  br label %if.end53

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %actual30 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %24 = ptrtoint ptr %actual30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual30, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 %25
  %length33 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %length33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length33, align 4
  %sub36 = sub i32 %27, %25
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %29 = tail call i32 @llvm.umin.i32(i32 %sub36, i32 %bf.cast)
  br label %if.end53

if.end53:                                         ; preds = %if.else26, %if.else, %if.then3
  %buffer.0 = phi ptr [ %7, %if.then3 ], [ %add.ptr, %if.else ], [ %add.ptr31, %if.else26 ]
  %length.0 = phi i32 [ %9, %if.then3 ], [ %21, %if.else ], [ %29, %if.else26 ]
  %dir_in54 = getelementptr inbounds %struct.fotg210_ep, ptr %ep, i32 0, i32 6
  %30 = ptrtoint ptr %dir_in54 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dir_in54, align 1
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buffer.0) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end53
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !131

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #8
  %init_name.i.i = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 3, i32 11, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool56.not = icmp eq i8 %31, 0
  %cond = select i1 %tobool56.not, i32 2, i32 1
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %buffer.0, i32 noundef %length.0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %buffer.0 to i32
  %sub.i = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %36, i32 %shr.i
  %and.i = and i32 %37, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %length.0, i32 noundef %cond, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end62

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end62:                                         ; preds = %dma_map_single_attrs.exit
  %38 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fotg210, align 4
  %reg.i = getelementptr inbounds %struct.fotg210_udc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %41, i32 456
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %43 = and i32 %42, -50331393
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  %and2.i = shl i32 %length.0, 8
  %shl.i = and i32 %and2.i, 16776960
  %45 = ptrtoint ptr %dir_in54 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dir_in54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.not.i = icmp eq i8 %46, 0
  %shl3.i = select i1 %tobool.not.not.i, i32 0, i32 2
  %or.i = or i32 %44, %shl.i
  %or4.i = or i32 %or.i, %shl3.i
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %48, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %49) #8, !srcloc !128
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %51, i32 448
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !129
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %54 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool10.not.i = icmp eq i8 %55, 0
  %conv12.i = zext i8 %55 to i32
  %sub.i102 = add nsw i32 %conv12.i, -1
  %shl13.i = shl nuw i32 1, %sub.i102
  %shl13.pn.i = select i1 %tobool10.not.i, i32 16, i32 %shl13.i
  %value.0.i = or i32 %shl13.pn.i, %53
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %58) #8, !srcloc !128
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %60, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %61) #8, !srcloc !128
  %62 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %63, i32 316
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %65 = and i32 %64, 2147418111
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %67, i32 316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %65) #8, !srcloc !128
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %69, i32 456
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %71 = or i32 %70, 16777216
  %72 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %73, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %71) #8, !srcloc !128
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end62
  %74 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fotg210, align 4
  %reg.i103 = getelementptr inbounds %struct.fotg210_udc, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %77, i32 332
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #8, !srcloc !129
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %80 = and i32 %79, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %do.cond.i, label %dma_reset.i

do.cond.i:                                        ; preds = %do.body.i
  %and3.i = and i32 %79, 128
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.cond.i.do.body.i_crit_edge, label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %79, -129
  %82 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fotg210, align 4
  %reg7.i = getelementptr inbounds %struct.fotg210_udc, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %reg7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg7.i, align 4
  %add.ptr8.i105 = getelementptr i8, ptr %85, i32 332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %86 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i105, i32 %86) #8, !srcloc !128
  br label %fotg210_wait_dma_done.exit

dma_reset.i:                                      ; preds = %do.body.i
  %87 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fotg210, align 4
  %reg10.i = getelementptr inbounds %struct.fotg210_udc, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %reg10.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %90, i32 456
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %92 = or i32 %91, 134217728
  %93 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fotg210, align 4
  %reg14.i = getelementptr inbounds %struct.fotg210_udc, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %reg14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %96, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %92) #8, !srcloc !128
  %97 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %epnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool16.not.i = icmp eq i8 %98, 0
  %99 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fotg210, align 4
  %reg33.i = getelementptr inbounds %struct.fotg210_udc, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %reg33.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg33.i, align 4
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %dma_reset.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %98 to i32
  %sub.i107 = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %sub.i107, 428
  %add.ptr21.i108 = getelementptr i8, ptr %102, i32 %add.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i108) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %104 = or i32 %103, 1048576
  %105 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fotg210, align 4
  %reg25.i = getelementptr inbounds %struct.fotg210_udc, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %reg25.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg25.i, align 4
  %109 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %epnum, align 1
  %conv27.i = zext i8 %110 to i32
  %sub28.i = shl nuw nsw i32 %conv27.i, 2
  %add30.i = add nuw nsw i32 %sub28.i, 428
  %add.ptr31.i109 = getelementptr i8, ptr %108, i32 %add30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i109, i32 %104) #8, !srcloc !128
  br label %fotg210_wait_dma_done.exit

if.else.i:                                        ; preds = %dma_reset.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr34.i = getelementptr i8, ptr %102, i32 288
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %112 = or i32 %111, 134217728
  %113 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fotg210, align 4
  %reg38.i = getelementptr inbounds %struct.fotg210_udc, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %reg38.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg38.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %116, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %112) #8, !srcloc !128
  br label %fotg210_wait_dma_done.exit

fotg210_wait_dma_done.exit:                       ; preds = %if.else.i, %if.then17.i, %do.end.i
  %117 = ptrtoint ptr %fotg210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fotg210, align 4
  %reg.i111 = getelementptr inbounds %struct.fotg210_udc, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %reg.i111 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg.i111, align 4
  %add.ptr.i112 = getelementptr i8, ptr %120, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #8, !srcloc !128
  %actual64 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %121 = ptrtoint ptr %actual64 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %actual64, align 4
  %add65 = add i32 %122, %length.0
  store i32 %add65, ptr %actual64, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %call41.i, i32 noundef %length.0, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %fotg210_wait_dma_done.exit, %do.end
  ret void
}

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fotg210_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef %wedge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fotg2101 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fotg2101, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fotg2101, align 4
  %dir_in.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 6
  %4 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dir_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.cond.false.i_crit_edge, label %do.body.preheader.i

if.then.cond.false.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

do.body.preheader.i:                              ; preds = %if.then
  %reg2.i = getelementptr inbounds %struct.fotg210_udc, ptr %3, i32 0, i32 1
  %epnum.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %6 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 288
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %10 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %epnum.i, align 1
  %conv.i = zext i8 %11 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shl.i = shl i32 256, %sub.i
  %and.i = and i32 %shl.i, %9
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.body.i_crit_edge, label %if.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i:                                         ; preds = %do.body.i
  %12 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr.i = load i8, ptr %dir_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool6.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool6.not.i, label %if.end.i.cond.false.i_crit_edge, label %if.end.i.fotg210_set_epnstall.exit_crit_edge

if.end.i.fotg210_set_epnstall.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fotg210_set_epnstall.exit

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i.cond.false.i_crit_edge, %if.then.cond.false.i_crit_edge
  %reg12.i = getelementptr inbounds %struct.fotg210_udc, ptr %3, i32 0, i32 1
  %epnum13.i = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  br label %fotg210_set_epnstall.exit

fotg210_set_epnstall.exit:                        ; preds = %cond.false.i, %if.end.i.fotg210_set_epnstall.exit_crit_edge
  %epnum13.sink.i = phi ptr [ %epnum13.i, %cond.false.i ], [ %epnum.i, %if.end.i.fotg210_set_epnstall.exit_crit_edge ]
  %.sink31.i = phi i32 [ 380, %cond.false.i ], [ 348, %if.end.i.fotg210_set_epnstall.exit_crit_edge ]
  %.sink.in.i = phi ptr [ %reg12.i, %cond.false.i ], [ %reg2.i, %if.end.i.fotg210_set_epnstall.exit_crit_edge ]
  %13 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %14 = ptrtoint ptr %epnum13.sink.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %epnum13.sink.i, align 1
  %conv14.i = zext i8 %15 to i32
  %sub15.i = shl nuw nsw i32 %conv14.i, 2
  %add17.i = add nuw nsw i32 %sub15.i, %.sink31.i
  %add.ptr18.i = getelementptr i8, ptr %.sink.i, i32 %add17.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %17 = or i32 %16, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %17) #8, !srcloc !128
  %stall = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 3
  %18 = ptrtoint ptr %stall to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %stall, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %stall, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool8.not = icmp eq i32 %wedge, 0
  br i1 %tobool8.not, label %fotg210_set_epnstall.exit.if.end25_crit_edge, label %if.then9

fotg210_set_epnstall.exit.if.end25_crit_edge:     ; preds = %fotg210_set_epnstall.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then9:                                         ; preds = %fotg210_set_epnstall.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set12 = or i8 %bf.load, -64
  %19 = ptrtoint ptr %stall to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set12, ptr %stall, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %epnum = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 4
  %20 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %epnum, align 1
  %idxprom.i = zext i8 %21 to i32
  %arrayidx.i = getelementptr %struct.fotg210_udc, ptr %1, i32 0, i32 5, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %dir_in.i1 = getelementptr inbounds %struct.fotg210_ep, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dir_in.i1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dir_in.i1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i2 = icmp eq i8 %25, 0
  %reg4.i = getelementptr inbounds %struct.fotg210_udc, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg4.i, align 4
  %sub6.i = shl nuw nsw i32 %idxprom.i, 2
  %..i = select i1 %tobool.not.i2, i32 380, i32 348
  %add8.i = add nuw nsw i32 %..i, %sub6.i
  %add.ptr9.i = getelementptr i8, ptr %27, i32 %add8.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %29 = or i32 %28, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %29) #8, !srcloc !128
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %31 = and i32 %30, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %31) #8, !srcloc !128
  %32 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fotg2101, align 4
  %dir_in.i4 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 6
  %34 = ptrtoint ptr %dir_in.i4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dir_in.i4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i5 = icmp eq i8 %35, 0
  %reg4.i6 = getelementptr inbounds %struct.fotg210_udc, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %reg4.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg4.i6, align 4
  %38 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %epnum, align 1
  %conv6.i = zext i8 %39 to i32
  %sub7.i = shl nuw nsw i32 %conv6.i, 2
  %..i7 = select i1 %tobool.not.i5, i32 380, i32 348
  %add9.i = add nuw nsw i32 %sub7.i, %..i7
  %add.ptr10.i = getelementptr i8, ptr %37, i32 %add9.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %41 = and i32 %40, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %41) #8, !srcloc !128
  %stall13 = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 3
  %42 = ptrtoint ptr %stall13 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load14 = load i8, ptr %stall13, align 4
  %bf.clear19 = and i8 %bf.load14, 63
  store i8 %bf.clear19, ptr %stall13, align 4
  %queue = getelementptr inbounds %struct.fotg210_ep, ptr %_ep, i32 0, i32 2
  %43 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %44, %queue
  br i1 %cmp.i.not, label %if.else.if.end25_crit_edge, label %if.then23

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fotg2101, align 4
  %reg.i = getelementptr inbounds %struct.fotg210_udc, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %48, i32 312
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %50 = ptrtoint ptr %dir_in.i4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dir_in.i4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i11 = icmp eq i8 %51, 0
  %52 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %epnum, align 1
  %conv2.i = zext i8 %53 to i32
  %shl.i12 = shl i32 32768, %conv2.i
  %sub3.i = shl nuw nsw i32 %conv2.i, 1
  %mul.i = add nsw i32 %sub3.i, -2
  %shl4.i = shl i32 3, %mul.i
  %neg.pn.in.i = select i1 %tobool.not.i11, i32 %shl4.i, i32 %shl.i12
  %54 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %neg.pn.i = xor i32 %neg.pn.in.i, -1
  %value.0.i = and i32 %54, %neg.pn.i
  %55 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fotg2101, align 4
  %reg8.i = getelementptr inbounds %struct.fotg210_udc, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %reg8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg8.i, align 4
  %add.ptr9.i13 = getelementptr i8, ptr %58, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i13, i32 %59) #8, !srcloc !128
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge, %if.then9, %fotg210_set_epnstall.exit.if.end25_crit_edge
  %60 = ptrtoint ptr %fotg2101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fotg2101, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %call5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_fotg210_udc__234_1220_fotg210_driver_init6, !1, !"__initcall__kmod_fotg210_udc__234_1220_fotg210_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1220, i32 1}
!2 = !{ptr @__exitcall_fotg210_driver_exit, !1, !"__exitcall_fotg210_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1222, i32 1}
!5 = !{ptr @__UNIQUE_ID_file236, !6, !"__UNIQUE_ID_file236", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1223, i32 1}
!7 = !{ptr @__UNIQUE_ID_license237, !6, !"__UNIQUE_ID_license237", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1224, i32 1}
!10 = !{ptr @fotg210_driver, !11, !"fotg210_driver", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1212, i32 31}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1098, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fotg210_udc_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @fotg210_udc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1104, i32 3}
!20 = !{ptr @fotg210_udc_probe._entry.3, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @fotg210_udc_probe._entry_ptr.5, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1124, i32 3}
!24 = !{ptr @fotg210_udc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fotg210_udc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @fotg210_udc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1128, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1182, i32 3}
!31 = !{ptr @fotg210_udc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fotg210_udc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1190, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fotg210_udc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @fotg210_udc_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fotg210_gadget_ops, !41, !"fotg210_gadget_ops", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 1066, i32 36}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 26, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 26, i32 9}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 26, i32 16}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 26, i32 23}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 26, i32 30}
!52 = !{ptr @fotg210_ep_name, !53, !"fotg210_ep_name", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 25, i32 27}
!54 = !{ptr @fotg210_ep_ops, !55, !"fotg210_ep_ops", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 523, i32 32}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 357, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fotg210_start_dma._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fotg210_start_dma._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 889, i32 4}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fotg210_irq._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @fotg210_irq._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 895, i32 4}
!72 = !{ptr @fotg210_irq._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @fotg210_irq._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 901, i32 4}
!76 = !{ptr @fotg210_irq._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @fotg210_irq._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 907, i32 4}
!80 = !{ptr @fotg210_irq._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @fotg210_irq._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 913, i32 4}
!84 = !{ptr @fotg210_irq._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @fotg210_irq._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 920, i32 4}
!88 = !{ptr @fotg210_irq._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fotg210_irq._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 927, i32 4}
!92 = !{ptr @fotg210_irq._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fotg210_irq._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 947, i32 4}
!96 = !{ptr @fotg210_irq._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fotg210_irq._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 960, i32 4}
!100 = !{ptr @fotg210_irq._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fotg210_irq._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 970, i32 4}
!104 = !{ptr @fotg210_irq._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @fotg210_irq._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 626, i32 2}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @fotg210_request_error._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @fotg210_request_error._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 806, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fotg210_ep0out._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @fotg210_ep0out._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @udc_name, !117, !"udc_name", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/fotg210-udc.c", i32 24, i32 19}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2153786829}
!128 = !{i64 6244707}
!129 = !{i64 6245125}
!130 = !{i64 2153785474}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2154217533, i64 2154218034, i64 2154217570, i64 2154217626, i64 2154217660, i64 2154217684, i64 2154217725, i64 2154217746, i64 2154217774, i64 2154217808}
