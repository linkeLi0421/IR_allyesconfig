; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/goku_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/goku_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.goku_udc = type { %struct.usb_gadget, %struct.spinlock, [4 x %struct.goku_ep], ptr, i32, i8, ptr, ptr, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.goku_ep = type { %struct.usb_ep, ptr, i32, i16, %struct.list_head, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.goku_udc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [472 x i8], [4 x i32], [16 x i8], [4 x i32], [16 x i8], [4 x i32], [16 x i8], [4 x i32], [16 x i8], [4 x i32], [16 x i8], [4 x i32], [16 x i8], [4 x i32], [48 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i32, [8 x i8], i32, [4 x i8], i32, i32, [24 x i8], i32, [8 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [1116 x i8], [128 x i32], [1536 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.goku_request = type { %struct.usb_request, %struct.list_head, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_author236 = internal constant [34 x i8] c"goku_udc.author=source@mvista.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [52 x i8] c"goku_udc.description=TC86C001 USB Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [46 x i8] c"goku_udc.file=drivers/usb/gadget/udc/goku_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"goku_udc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_goku_udc__242_1859_goku_pci_driver_init6 = internal global ptr @goku_pci_driver_init, section ".initcall6.init", align 4
@goku_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @pci_ids, ptr @goku_probe, ptr @goku_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_goku_pci_driver_exit = internal global ptr @goku_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"goku_udc\00", [23 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"goku_udc\00", [23 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4143, i32 263, i32 -1, i32 -1, i32 787454, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@goku_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Check PCI %s IRQ setup!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"goku_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/udc/goku_udc.c\00", [62 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr = internal global ptr @goku_probe._entry, section ".printk_index", align 4
@goku_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@goku_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @goku_get_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @goku_udc_start, ptr @goku_udc_stop, ptr null, ptr null, ptr null, ptr @goku_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@goku_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s %s: can't enable, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.7 = internal global ptr @goku_probe._entry.5, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@goku_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %s: controller already in use\0A\00", [60 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.10 = internal global ptr @goku_probe._entry.8, section ".printk_index", align 4
@goku_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s %s: can't map memory\0A\00", [37 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.13 = internal global ptr @goku_probe._entry.11, section ".printk_index", align 4
@goku_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016%s %s: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.16 = internal global ptr @goku_probe._entry.14, section ".printk_index", align 4
@driver_desc = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TC86C001 USB Device Controller\00", [33 x i8] zeroinitializer }, align 32
@goku_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s %s: version: 30-Oct 2003 %s\0A\00", [62 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.19 = internal global ptr @goku_probe._entry.17, section ".printk_index", align 4
@goku_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s %s: irq %d, pci mem %p\0A\00", [35 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.22 = internal global ptr @goku_probe._entry.20, section ".printk_index", align 4
@goku_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %s: request interrupt %d failed\0A\00", [58 x i8] zeroinitializer }, align 32
@goku_probe._entry_ptr.25 = internal global ptr @goku_probe._entry.23, section ".printk_index", align 4
@proc_node_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"driver/udc\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@udc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s %s: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udc_enable\00", [21 x i8] zeroinitializer }, align 32
@udc_enable._entry_ptr = internal global ptr @udc_enable._entry, section ".printk_index", align 4
@stop_activity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.3, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stop_activity\00", [18 x i8] zeroinitializer }, align 32
@stop_activity._entry_ptr = internal global ptr @stop_activity._entry, section ".printk_index", align 4
@abort_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %s: IN dma active after reset!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abort_dma\00", [22 x i8] zeroinitializer }, align 32
@abort_dma._entry_ptr = internal global ptr @abort_dma._entry, section ".printk_index", align 4
@abort_dma._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %s: OUT dma active after reset!\0A\00", [58 x i8] zeroinitializer }, align 32
@abort_dma._entry_ptr.33 = internal global ptr @abort_dma._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(dma IN)\00", [23 x i8] zeroinitializer }, align 32
@udc_reinit.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep1-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep2-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep3-bulk\00", [23 x i8] zeroinitializer }, align 32
@goku_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @goku_ep_enable, ptr @goku_ep_disable, ptr null, ptr @goku_alloc_request, ptr @goku_free_request, ptr @goku_queue, ptr @goku_dequeue, ptr @goku_set_halt, ptr null, ptr @goku_fifo_status, ptr @goku_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@goku_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s %s: %s out-dma hides short packets\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"goku_ep_enable\00", [17 x i8] zeroinitializer }, align 32
@goku_ep_enable._entry_ptr = internal global ptr @goku_ep_enable._entry, section ".printk_index", align 4
@goku_ep_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s %s: enable %s %s %s maxpacket %u\0A\00", [57 x i8] zeroinitializer }, align 32
@goku_ep_enable._entry_ptr.45 = internal global ptr @goku_ep_enable._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %s: start, IN active dma %03x!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_dma\00", [22 x i8] zeroinitializer }, align 32
@start_dma._entry_ptr = internal global ptr @start_dma._entry, section ".printk_index", align 4
@start_dma._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s %s: start, OUT active dma %03x!!\0A\00", [57 x i8] zeroinitializer }, align 32
@start_dma._entry_ptr.54 = internal global ptr @start_dma._entry.52, section ".printk_index", align 4
@read_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s %s: %s overflow %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_fifo\00", [22 x i8] zeroinitializer }, align 32
@read_fifo._entry_ptr = internal global ptr @read_fifo._entry, section ".printk_index", align 4
@goku_set_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s %s: %s %s inactive?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"goku_set_halt\00", [18 x i8] zeroinitializer }, align 32
@goku_set_halt._entry_ptr = internal global ptr @goku_set_halt._entry, section ".printk_index", align 4
@goku_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.59, ptr @.str.3, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goku_fifo_flush\00", [16 x i8] zeroinitializer }, align 32
@goku_fifo_flush._entry_ptr = internal global ptr @goku_fifo_flush._entry, section ".printk_index", align 4
@goku_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s %s: system error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"goku_irq\00", [23 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr = internal global ptr @goku_irq._entry, section ".printk_index", align 4
@goku_irq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s %s: disconnect\0A\00", [43 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.64 = internal global ptr @goku_irq._entry.62, section ".printk_index", align 4
@goku_irq._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s %s: USB suspend\0A\00", [42 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.67 = internal global ptr @goku_irq._entry.65, section ".printk_index", align 4
@goku_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.3, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %s: bogus USB resume %d\0A\00", [34 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.70 = internal global ptr @goku_irq._entry.68, section ".printk_index", align 4
@goku_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.3, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s %s: USB resume\0A\00", [43 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.73 = internal global ptr @goku_irq._entry.71, section ".printk_index", align 4
@goku_irq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.61, ptr @.str.3, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %s: USB reset done, gadget %s\0A\00", [60 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.76 = internal global ptr @goku_irq._entry.74, section ".printk_index", align 4
@goku_irq._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.61, ptr @.str.3, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s %s: %s write timeout ?\0A\00", [35 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.79 = internal global ptr @goku_irq._entry.77, section ".printk_index", align 4
@goku_irq._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.61, ptr @.str.3, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s %s: unhandled irq status: %05x (%05x, %05x)\0A\00", [46 x i8] zeroinitializer }, align 32
@goku_irq._entry_ptr.82 = internal global ptr @goku_irq._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s - %s\0A%s version: %s %s\0AGadget driver: %s\0AHost %s, %s\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"30-Oct 2003\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full speed\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powered\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"int_status\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"int_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\0Airqs %lu\0Adataset %02x single.bcs %02x.%02x state %x addr %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dma %03X =%s%s%s%s%s%s%s%s%s %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" eopb-\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" eopb+\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" tmo-\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" tmo+\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" eopb\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" in_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" out_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IN\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OUT\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep1in/ep2out\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep1out/ep2in\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s %s max %u %s, irqs %lu, status %02x (%s) %s%s%s%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"data1\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"data0\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" suspend\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" disable\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ep0stat\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09(nothing queued)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09req %p len %u/%u buf %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0_disconnect\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep0_idle\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep0_in\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep0_out\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep0_status\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_stall\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep0_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep0_?\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s %05X =%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" power\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" sys\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" in-dma\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" wrtmo\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" out-dma\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" wrset\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" err\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" sof\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" ep3nak\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" ep2nak\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" ep1nak\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ep3\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ep2\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ep1\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ep0snak\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" ep0status\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" setup\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ep0\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" reset\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"packet\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_err\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_err\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stall\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@goku_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.152, ptr @.str.3, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"goku_remove\00", [20 x i8] zeroinitializer }, align 32
@goku_remove._entry_ptr = internal global ptr @goku_remove._entry, section ".printk_index", align 4
@goku_remove._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s %s: unbind\0A\00", [47 x i8] zeroinitializer }, align 32
@goku_remove._entry_ptr.155 = internal global ptr @goku_remove._entry.153, section ".printk_index", align 4
@switch.table.udc_proc_read = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], [36 x i8] zeroinitializer }, align 32
@switch.table.udc_proc_read.156 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"goku_pci_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1849, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1859, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 51, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1837, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1751, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1764, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [9 x i8] c"goku_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1030, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1775, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1783, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1791, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1797, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 52, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1798, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1799, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1806, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"proc_node_name\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1053, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1351, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1392, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 673, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 688, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1048, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1253, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1253, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1253, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1253, i32 47 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1253, i32 59 }
@___asan_gen_.290 = private unnamed_addr constant [12 x i8] c"goku_ep_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 975, i32 32 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 154, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 184, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 547, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 572, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 465, i32 6 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 900, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 959, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1553, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1567, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1588, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1599, i32 6 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1603, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1617, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1665, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1691, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1149, i32 6 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1155, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1156, i32 47 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1158, i32 30 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1158, i32 45 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1159, i32 9 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1162, i32 18 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1163, i32 18 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1169, i32 16 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1178, i32 16 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1180, i32 29 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1180, i32 40 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1181, i32 29 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1182, i32 32 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1183, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1185, i32 28 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1186, i32 29 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1187, i32 29 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1188, i32 27 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1190, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1191, i32 31 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1191, i32 48 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1204, i32 17 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1206, i32 19 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1206, i32 26 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1211, i32 34 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1211, i32 44 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1212, i32 35 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1213, i32 40 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1214, i32 39 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1219, i32 16 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1235, i32 18 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1093, i32 10 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1095, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1097, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1099, i32 10 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1101, i32 10 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1103, i32 10 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1105, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1108, i32 9 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1061, i32 16 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1063, i32 31 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1064, i32 30 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1065, i32 30 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1066, i32 32 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1068, i32 30 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1069, i32 30 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1070, i32 25 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1071, i32 25 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1073, i32 28 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1074, i32 28 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1075, i32 28 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1076, i32 32 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1078, i32 32 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1079, i32 32 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1080, i32 31 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1081, i32 28 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1083, i32 27 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1084, i32 31 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1085, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1115, i32 10 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1117, i32 10 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1119, i32 10 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1121, i32 10 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1123, i32 10 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1125, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1127, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1129, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1713, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private constant [37 x i8] c"../drivers/usb/gadget/udc/goku_udc.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1736, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [27 x i8] c"switch.table.udc_proc_read\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [31 x i8] c"switch.table.udc_proc_read.156\00", align 1
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_goku_pci_driver_exit, ptr @__initcall__kmod_goku_udc__242_1859_goku_pci_driver_init6, ptr @abort_dma._entry, ptr @abort_dma._entry.31, ptr @abort_dma._entry_ptr, ptr @abort_dma._entry_ptr.33, ptr @goku_ep_enable._entry, ptr @goku_ep_enable._entry.43, ptr @goku_ep_enable._entry_ptr, ptr @goku_ep_enable._entry_ptr.45, ptr @goku_fifo_flush._entry, ptr @goku_fifo_flush._entry_ptr, ptr @goku_irq._entry, ptr @goku_irq._entry.62, ptr @goku_irq._entry.65, ptr @goku_irq._entry.68, ptr @goku_irq._entry.71, ptr @goku_irq._entry.74, ptr @goku_irq._entry.77, ptr @goku_irq._entry.80, ptr @goku_irq._entry_ptr, ptr @goku_irq._entry_ptr.64, ptr @goku_irq._entry_ptr.67, ptr @goku_irq._entry_ptr.70, ptr @goku_irq._entry_ptr.73, ptr @goku_irq._entry_ptr.76, ptr @goku_irq._entry_ptr.79, ptr @goku_irq._entry_ptr.82, ptr @goku_pci_driver_exit, ptr @goku_probe._entry, ptr @goku_probe._entry.11, ptr @goku_probe._entry.14, ptr @goku_probe._entry.17, ptr @goku_probe._entry.20, ptr @goku_probe._entry.23, ptr @goku_probe._entry.5, ptr @goku_probe._entry.8, ptr @goku_probe._entry_ptr, ptr @goku_probe._entry_ptr.10, ptr @goku_probe._entry_ptr.13, ptr @goku_probe._entry_ptr.16, ptr @goku_probe._entry_ptr.19, ptr @goku_probe._entry_ptr.22, ptr @goku_probe._entry_ptr.25, ptr @goku_probe._entry_ptr.7, ptr @goku_remove._entry, ptr @goku_remove._entry.153, ptr @goku_remove._entry_ptr, ptr @goku_remove._entry_ptr.155, ptr @goku_set_halt._entry, ptr @goku_set_halt._entry_ptr, ptr @read_fifo._entry, ptr @read_fifo._entry_ptr, ptr @start_dma._entry, ptr @start_dma._entry.52, ptr @start_dma._entry_ptr, ptr @start_dma._entry_ptr.54, ptr @stop_activity._entry, ptr @stop_activity._entry_ptr, ptr @udc_enable._entry, ptr @udc_enable._entry_ptr, ptr @goku_pci_driver, ptr @.str, ptr @driver_name, ptr @pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @goku_probe.__key, ptr @.str.4, ptr @goku_ops, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @driver_desc, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @proc_node_name, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.36, ptr @udc_reinit.names, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @goku_ep_ops, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @switch.table.udc_proc_read, ptr @switch.table.udc_proc_read.156], section "llvm.metadata"
@0 = internal global [157 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_node_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_activity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_dma._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_reinit.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_ep_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_dma._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_set_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_irq._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goku_remove._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udc_proc_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udc_proc_read.156 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @goku_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goku_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @goku_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #12
  br label %if.end110

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1424) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.if.end110_crit_edge, label %if.end6

if.end.if.end110_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.goku_udc, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @goku_probe.__key, i16 noundef signext 3) #9
  %pdev11 = getelementptr inbounds %struct.goku_udc, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %pdev11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev11, align 8
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @goku_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @driver_name, ptr %name, align 4
  %call14 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev11, align 8
  %init_name.i.i161 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i161 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i161, align 8
  %tobool.not.i.i162 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i162, label %if.end.i.i164, label %do.end18.pci_name.exit166_crit_edge

do.end18.pci_name.exit166_crit_edge:              ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit166

if.end.i.i164:                                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i163 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i163, align 4
  br label %pci_name.exit166

pci_name.exit166:                                 ; preds = %if.end.i.i164, %do.end18.pci_name.exit166_crit_edge
  %retval.0.i.i165 = phi ptr [ %17, %if.end.i.i164 ], [ %15, %do.end18.pci_name.exit166_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i165, i32 noundef %call14) #12
  br label %if.then109

if.end23:                                         ; preds = %if.end6
  %enabled = getelementptr inbounds %struct.goku_udc, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %enabled, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %enabled, align 4
  %resource24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %19 = ptrtoint ptr %resource24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource24, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27 = icmp eq i32 %22, 0
  %sub = sub i32 1, %20
  %add = add i32 %sub, %22
  %cond = select i1 %cmp27, i32 0, i32 %add
  %call34 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %cond, ptr noundef nonnull @driver_name, i32 noundef 0) #9
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end23
  %23 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev11, align 8
  %init_name.i.i167 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i167 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i167, align 8
  %tobool.not.i.i168 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i168, label %if.end.i.i170, label %do.end39.pci_name.exit172_crit_edge

do.end39.pci_name.exit172_crit_edge:              ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit172

if.end.i.i170:                                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i169 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %27 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i169, align 4
  br label %pci_name.exit172

pci_name.exit172:                                 ; preds = %if.end.i.i170, %do.end39.pci_name.exit172_crit_edge
  %retval.0.i.i171 = phi ptr [ %28, %if.end.i.i170 ], [ %26, %do.end39.pci_name.exit172_crit_edge ]
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i171) #12
  br label %if.then109

if.end44:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load45 = load i8, ptr %enabled, align 4
  %bf.set47 = or i8 %bf.load45, 64
  store i8 %bf.set47, ptr %enabled, align 4
  %call48 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %cond) #9
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %do.end53, label %if.end58

do.end53:                                         ; preds = %if.end44
  %30 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev11, align 8
  %init_name.i.i173 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i173 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i173, align 8
  %tobool.not.i.i174 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i174, label %if.end.i.i176, label %do.end53.pci_name.exit178_crit_edge

do.end53.pci_name.exit178_crit_edge:              ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit178

if.end.i.i176:                                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i175 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i175 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i175, align 4
  br label %pci_name.exit178

pci_name.exit178:                                 ; preds = %if.end.i.i176, %do.end53.pci_name.exit178_crit_edge
  %retval.0.i.i177 = phi ptr [ %35, %if.end.i.i176 ], [ %33, %do.end53.pci_name.exit178_crit_edge ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i177) #12
  br label %if.then109

if.end58:                                         ; preds = %if.end44
  %regs = getelementptr inbounds %struct.goku_udc, ptr %call7.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call48, ptr %regs, align 4
  %37 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev11, align 8
  %init_name.i.i179 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %39 = ptrtoint ptr %init_name.i.i179 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i179, align 8
  %tobool.not.i.i180 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i180, label %if.end.i.i182, label %if.end58.pci_name.exit184_crit_edge

if.end58.pci_name.exit184_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit184

if.end.i.i182:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i181 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %41 = ptrtoint ptr %dev.i181 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i181, align 4
  br label %pci_name.exit184

pci_name.exit184:                                 ; preds = %if.end.i.i182, %if.end58.pci_name.exit184_crit_edge
  %retval.0.i.i183 = phi ptr [ %42, %if.end.i.i182 ], [ %40, %if.end58.pci_name.exit184_crit_edge ]
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i183, ptr noundef nonnull @driver_desc) #12
  %43 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev11, align 8
  %init_name.i.i185 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44, i32 3
  %45 = ptrtoint ptr %init_name.i.i185 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i185, align 8
  %tobool.not.i.i186 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i186, label %if.end.i.i188, label %pci_name.exit184.pci_name.exit190_crit_edge

pci_name.exit184.pci_name.exit190_crit_edge:      ; preds = %pci_name.exit184
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit190

if.end.i.i188:                                    ; preds = %pci_name.exit184
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i187 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %47 = ptrtoint ptr %dev.i187 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i187, align 4
  br label %pci_name.exit190

pci_name.exit190:                                 ; preds = %if.end.i.i188, %pci_name.exit184.pci_name.exit190_crit_edge
  %retval.0.i.i189 = phi ptr [ %48, %if.end.i.i188 ], [ %46, %pci_name.exit184.pci_name.exit190_crit_edge ]
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i189, ptr noundef nonnull @.str.36) #12
  %49 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev11, align 8
  %init_name.i.i191 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44, i32 3
  %51 = ptrtoint ptr %init_name.i.i191 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i191, align 8
  %tobool.not.i.i192 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i192, label %if.end.i.i194, label %pci_name.exit190.pci_name.exit196_crit_edge

pci_name.exit190.pci_name.exit196_crit_edge:      ; preds = %pci_name.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit196

if.end.i.i194:                                    ; preds = %pci_name.exit190
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i193 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %53 = ptrtoint ptr %dev.i193 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i193, align 4
  br label %pci_name.exit196

pci_name.exit196:                                 ; preds = %if.end.i.i194, %pci_name.exit190.pci_name.exit196_crit_edge
  %retval.0.i.i195 = phi ptr [ %54, %if.end.i.i194 ], [ %52, %pci_name.exit190.pci_name.exit196_crit_edge ]
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i195, i32 noundef %56, ptr noundef nonnull %call48) #12
  tail call fastcc void @udc_reset(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @udc_reinit(ptr noundef nonnull %call7.i.i)
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %58, ptr noundef nonnull @goku_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp84.not = icmp eq i32 %call.i, 0
  br i1 %cmp84.not, label %if.end94, label %do.end88

do.end88:                                         ; preds = %pci_name.exit196
  %59 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev11, align 8
  %init_name.i.i197 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44, i32 3
  %61 = ptrtoint ptr %init_name.i.i197 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i197, align 8
  %tobool.not.i.i198 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i198, label %if.end.i.i200, label %do.end88.pci_name.exit202_crit_edge

do.end88.pci_name.exit202_crit_edge:              ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit202

if.end.i.i200:                                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i199 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %63 = ptrtoint ptr %dev.i199 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i199, align 4
  br label %pci_name.exit202

pci_name.exit202:                                 ; preds = %if.end.i.i200, %do.end88.pci_name.exit202_crit_edge
  %retval.0.i.i201 = phi ptr [ %64, %if.end.i.i200 ], [ %62, %do.end88.pci_name.exit202_crit_edge ]
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i201, i32 noundef %66) #12
  br label %if.then109

if.end94:                                         ; preds = %pci_name.exit196
  %67 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load95 = load i8, ptr %enabled, align 4
  %bf.set97 = or i8 %bf.load95, -128
  store i8 %bf.set97, ptr %enabled, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call101 = tail call ptr @proc_create_single_data(ptr noundef nonnull @proc_node_name, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @udc_proc_read, ptr noundef nonnull %call7.i.i) #9
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call104 = tail call i32 @usb_add_gadget_udc_release(ptr noundef %dev102, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gadget_release) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end94.cleanup_crit_edge, label %if.end94.if.then109_crit_edge

if.end94.if.then109_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then109:                                       ; preds = %if.end94.if.then109_crit_edge, %pci_name.exit202, %pci_name.exit178, %pci_name.exit172, %pci_name.exit166
  %retval1.0.ph = phi i32 [ -16, %pci_name.exit172 ], [ %call104, %if.end94.if.then109_crit_edge ], [ -16, %pci_name.exit202 ], [ -14, %pci_name.exit178 ], [ %call14, %pci_name.exit166 ]
  tail call void @goku_remove(ptr noundef %pdev)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end.if.end110_crit_edge, %pci_name.exit
  %dev.0209 = phi ptr [ %call7.i.i, %if.then109 ], [ null, %pci_name.exit ], [ null, %if.end.if.end110_crit_edge ]
  %retval1.0207 = phi i32 [ %retval1.0.ph, %if.then109 ], [ -19, %pci_name.exit ], [ -12, %if.end.if.end110_crit_edge ]
  tail call void @kfree(ptr noundef %dev.0209) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end94.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0207, %if.end110 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goku_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.152) #12
  tail call void @usb_del_gadget_udc(ptr noundef %1) #9
  %driver = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end14, label %do.body7, !prof !322

do.body7:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/goku_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1717, 0\0A.popsection", ""() #9, !srcloc !323
  unreachable

do.end14:                                         ; preds = %pci_name.exit
  tail call void @remove_proc_entry(ptr noundef nonnull @proc_node_name, ptr noundef null) #9
  %regs = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %do.end14.if.end17_crit_edge, label %if.then16

do.end14.if.end17_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %power_detect.i = getelementptr inbounds %struct.goku_udc_regs, ptr %11, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  tail call void @arm_heavy_mb() #9
  %int_enable.i = getelementptr inbounds %struct.goku_udc_regs, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable.i, i32 0) #9, !srcloc !325
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %int_enable7.i = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %int_enable7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 53687000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 33554432) #9, !srcloc !325
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end14.if.end17_crit_edge
  %got_irq = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %got_irq to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %got_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call20 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %1) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %20) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %21 = ptrtoint ptr %got_irq to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load27 = load i8, ptr %got_irq, align 4
  %22 = and i8 %bf.load27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  br i1 %tobool30.not, label %if.end26.if.end40_crit_edge, label %if.then31

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %25 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  %sub = sub i32 1, %24
  %add = add i32 %sub, %26
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %cond) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end26.if.end40_crit_edge
  %27 = ptrtoint ptr %got_irq to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load41 = load i8, ptr %got_irq, align 4
  %28 = and i8 %bf.load41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool45.not = icmp eq i8 %28, 0
  br i1 %tobool45.not, label %if.end40.if.end47_crit_edge, label %if.then46

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end40.if.end47_crit_edge
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %regs, align 4
  %30 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev1, align 8
  %init_name.i.i75 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i75, align 8
  %tobool.not.i.i76 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i76, label %if.end.i.i78, label %if.end47.pci_name.exit80_crit_edge

if.end47.pci_name.exit80_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit80

if.end.i.i78:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i77 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i77, align 4
  br label %pci_name.exit80

pci_name.exit80:                                  ; preds = %if.end.i.i78, %if.end47.pci_name.exit80_crit_edge
  %retval.0.i.i79 = phi ptr [ %35, %if.end.i.i78 ], [ %33, %if.end47.pci_name.exit80_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i79) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_reset(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %power_detect = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect, i32 0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  tail call void @arm_heavy_mb() #9
  %int_enable = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable, i32 0) #9, !srcloc !325
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %int_enable7 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %int_enable7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %int_enable7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 53687000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect, i32 33554432) #9, !srcloc !325
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_reinit(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ep_list, ptr %prev.i, align 4
  %ep = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep, ptr %ep0, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 8
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ep0state, align 8
  %irqs = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %irqs, align 4
  %regs = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 7
  %num.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %num.peel to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.peel = load i16, ptr %num.peel, align 4
  %bf.clear.peel = and i16 %bf.load.peel, 255
  store i16 %bf.clear.peel, ptr %num.peel, align 4
  %name.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %name.peel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.37, ptr %name.peel, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %arrayidx9.peel = getelementptr %struct.goku_udc_regs, ptr %9, i32 0, i32 11, i32 0
  %reg_fifo.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 5
  %10 = ptrtoint ptr %reg_fifo.peel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx9.peel, ptr %reg_fifo.peel, align 4
  %arrayidx11.peel = getelementptr %struct.goku_udc_regs, ptr %9, i32 0, i32 15, i32 0
  %reg_status.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 7
  %11 = ptrtoint ptr %reg_status.peel to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx11.peel, ptr %reg_status.peel, align 4
  %arrayidx13.peel = getelementptr %struct.goku_udc_regs, ptr %9, i32 0, i32 13, i32 0
  %reg_mode.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 6
  %12 = ptrtoint ptr %reg_mode.peel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx13.peel, ptr %reg_mode.peel, align 4
  %ops.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %ops.peel to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @goku_ep_ops, ptr %ops.peel, align 4
  %ep_list16.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3
  %call.i.i.peel = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list16.peel, ptr noundef %ep_list, ptr noundef %ep_list) #9
  br i1 %call.i.i.peel, label %if.end.i.i.peel, label %entry.for.body.peel.next_crit_edge

entry.for.body.peel.next_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.peel.next

if.end.i.i.peel:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep_list16.peel, ptr %prev.i, align 4
  %15 = ptrtoint ptr %ep_list16.peel to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep_list, ptr %ep_list16.peel, align 4
  %prev3.i.i.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ep_list, ptr %prev3.i.i.peel, align 4
  %17 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ep_list16.peel, ptr %ep_list, align 4
  br label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.end.i.i.peel, %entry.for.body.peel.next_crit_edge
  %dev19.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %dev19.peel to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev19.peel, align 4
  %queue.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %19 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i86.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i86.peel to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue.peel, ptr %prev.i86.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #9
  %desc.i.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 9
  %21 = ptrtoint ptr %desc.i.peel to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %desc.i.peel, align 4
  %22 = ptrtoint ptr %num.peel to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load108.i.peel = load i16, ptr %num.peel, align 4
  %irqs.i.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %irqs.i.peel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %irqs.i.peel, align 4
  %bf.set.i.peel = and i16 %bf.load108.i.peel, -161
  %bf.clear112.i.peel = or i16 %bf.set.i.peel, 32
  store i16 %bf.clear112.i.peel, ptr %num.peel, align 4
  %caps.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 4
  %24 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load22.peel = load i8, ptr %caps.peel, align 4
  %caps31.peel = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 4
  %bf.set39.peel = or i8 %bf.load22.peel, -116
  %25 = ptrtoint ptr %caps31.peel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.set39.peel, ptr %caps31.peel, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.peel.next
  %i.089 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089
  %num = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 3
  %26 = trunc i32 %i.089 to i16
  %27 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %num, align 4
  %bf.shl = shl nuw nsw i16 %26, 8
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %num, align 4
  %arrayidx7 = getelementptr [4 x ptr], ptr @udc_reinit.names, i32 0, i32 %i.089
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 1
  %30 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %name, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.goku_udc_regs, ptr %32, i32 0, i32 11, i32 %i.089
  %reg_fifo = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 5
  %33 = ptrtoint ptr %reg_fifo to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx9, ptr %reg_fifo, align 4
  %34 = load ptr, ptr %regs, align 4
  %arrayidx11 = getelementptr %struct.goku_udc_regs, ptr %34, i32 0, i32 15, i32 %i.089
  %reg_status = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 7
  %35 = ptrtoint ptr %reg_status to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx11, ptr %reg_status, align 4
  %36 = load ptr, ptr %regs, align 4
  %arrayidx13 = getelementptr %struct.goku_udc_regs, ptr %36, i32 0, i32 13, i32 %i.089
  %reg_mode = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 6
  %37 = ptrtoint ptr %reg_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx13, ptr %reg_mode, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 2
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @goku_ep_ops, ptr %ops, align 4
  %ep_list16 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 3
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list16, ptr noundef %40, ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ep_list16, ptr %prev.i, align 4
  %42 = ptrtoint ptr %ep_list16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ep_list, ptr %ep_list16, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %ep_list16, ptr %40, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %for.body.if.end_crit_edge
  %dev19 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 1
  %45 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %dev19, align 4
  %queue = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 4
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i86 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 4, i32 1
  %47 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %queue, ptr %prev.i86, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx6, i32 noundef 64) #9
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 9
  %48 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %desc.i, align 4
  %49 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load108.i = load i16, ptr %num, align 4
  %irqs.i = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 %i.089, i32 2
  %50 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %irqs.i, align 4
  %bf.set.i = and i16 %bf.load108.i, -161
  %bf.clear112.i = or i16 %bf.set.i, 32
  store i16 %bf.clear112.i, ptr %num, align 4
  %caps26 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 4
  %51 = ptrtoint ptr %caps26 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load27 = load i8, ptr %caps26, align 4
  %caps31 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 4
  %bf.set39 = or i8 %bf.load27, 44
  %52 = ptrtoint ptr %caps31 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %bf.set39, ptr %caps31, align 4
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge, !llvm.loop !331

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  %53 = ptrtoint ptr %reg_mode.peel to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %reg_mode.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 8) #9
  %ep_list49 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3
  %call.i.i87 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list49) #9
  br i1 %call.i.i87, label %if.end.i.i88, label %for.end.list_del_init.exit_crit_edge

for.end.list_del_init.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i88:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %ep_list49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ep_list49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i88, %for.end.list_del_init.exit_crit_edge
  %60 = ptrtoint ptr %ep_list49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %ep_list49, ptr %ep_list49, align 4
  %prev.i3.i = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ep_list49, ptr %prev.i3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_irq(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  %ctrl.i = alloca %struct.usb_ctrlrequest, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %lock = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %int_enable = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 8
  %irqs = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 9
  %ep_status = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 15
  %ep0state68 = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 4
  %pdev73 = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 6
  %speed78 = getelementptr inbounds %struct.usb_gadget, ptr %_dev, i32 0, i32 5
  %driver80 = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 3
  %irqs160 = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 4
  %ep.i = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 2
  %stopped.i.i = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 0, i32 3
  %queue.i.i = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 0, i32 4
  %req_config.i = getelementptr inbounds %struct.goku_udc, ptr %_dev, i32 0, i32 5
  %EOP = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 40
  %arrayidx206 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 2
  %irqs207 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 2, i32 2
  %arrayidx219 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 1
  %irqs220 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 1, i32 2
  %name242 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 1, i32 0, i32 1
  %int_enable2.i = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 1
  %queue.i454 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 1, i32 4
  %is_in.i457 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 1, i32 3
  %queue.i454.1 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 2, i32 4
  %is_in.i457.1 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 2, i32 3
  %queue.i454.2 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 3, i32 4
  %arrayidx252.2 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 3
  %is_in.i457.2 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 3, i32 3
  %irqs259.2 = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 3, i32 2
  br label %rescan

rescan:                                           ; preds = %cleanup.2.rescan_crit_edge, %entry
  %rescans.0 = phi i32 [ 5, %entry ], [ %dec, %cleanup.2.rescan_crit_edge ]
  %handled.0 = phi i32 [ 0, %entry ], [ %handled.10.2, %cleanup.2.rescan_crit_edge ]
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !327
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  %8 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_enable, align 8
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rescan.done_crit_edge, label %if.end

rescan.done_crit_edge:                            ; preds = %rescan
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %rescan
  %10 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irqs, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %irqs, align 4
  %and3 = and i32 %and, 786435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end149_crit_edge, label %if.then7, !prof !322

if.end.if.end149_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then7:                                         ; preds = %if.end
  %and8 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.then7
  %12 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev73, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %do.end.pci_name.exit_crit_edge ]
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i) #12
  call fastcc void @stop_activity(ptr noundef %_dev)
  %18 = ptrtoint ptr %driver80 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver80, align 4
  br label %done

if.end14:                                         ; preds = %if.then7
  %and15 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end51, label %do.body18

do.body18:                                        ; preds = %if.end14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  call void @arm_heavy_mb() #9
  %neg = xor i32 %and, -1
  %19 = call i32 @llvm.bswap.i32(i32 %neg)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %19) #9, !srcloc !325
  %20 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1, align 4
  %power_detect = getelementptr inbounds %struct.goku_udc_regs, ptr %21, i32 0, i32 9
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %power_detect) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %do.end36, label %do.end33

do.end33:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ep0_start(ptr noundef %_dev)
  br label %done

do.end36:                                         ; preds = %do.body18
  %24 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev73, align 8
  %init_name.i.i409 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i409 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i409, align 8
  %tobool.not.i.i410 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i410, label %if.end.i.i412, label %do.end36.pci_name.exit414_crit_edge

do.end36.pci_name.exit414_crit_edge:              ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit414

if.end.i.i412:                                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i411 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i411 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i411, align 4
  br label %pci_name.exit414

pci_name.exit414:                                 ; preds = %if.end.i.i412, %do.end36.pci_name.exit414_crit_edge
  %retval.0.i.i413 = phi ptr [ %29, %if.end.i.i412 ], [ %27, %do.end36.pci_name.exit414_crit_edge ]
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i413) #12
  %30 = ptrtoint ptr %speed78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp = icmp eq i32 %31, 2
  br i1 %cmp, label %if.then41, label %pci_name.exit414.if.end42_crit_edge

pci_name.exit414.if.end42_crit_edge:              ; preds = %pci_name.exit414
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %pci_name.exit414
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @stop_activity(ptr noundef %_dev)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %pci_name.exit414.if.end42_crit_edge
  %32 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ep0state68, align 8
  %33 = ptrtoint ptr %int_enable to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 786435, ptr %int_enable, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %int_enable, align 8
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1, align 4
  %int_enable49 = getelementptr inbounds %struct.goku_udc_regs, ptr %38, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable49, i32 %36) #9, !srcloc !325
  br label %done

if.end51:                                         ; preds = %if.end14
  %and52 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.pm_next_crit_edge, label %if.then54

if.end51.pm_next_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

if.then54:                                        ; preds = %if.end51
  %and55 = and i32 %and, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -16777217) #9, !srcloc !325
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_status) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  %40 = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool66.not = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ep0state68, align 8
  br i1 %tobool66.not, label %if.else92, label %if.then67

if.then67:                                        ; preds = %if.then54
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %do.end71 [
    i32 0, label %if.then67.pm_next_crit_edge
    i32 6, label %if.then67.pm_next_crit_edge493
  ]

if.then67.pm_next_crit_edge493:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

if.then67.pm_next_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

do.end71:                                         ; preds = %if.then67
  %44 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev73, align 8
  %init_name.i.i415 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i415 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i415, align 8
  %tobool.not.i.i416 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i416, label %if.end.i.i418, label %do.end71.pci_name.exit420_crit_edge

do.end71.pci_name.exit420_crit_edge:              ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit420

if.end.i.i418:                                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i417 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i417 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i417, align 4
  br label %pci_name.exit420

pci_name.exit420:                                 ; preds = %if.end.i.i418, %do.end71.pci_name.exit420_crit_edge
  %retval.0.i.i419 = phi ptr [ %49, %if.end.i.i418 ], [ %47, %do.end71.pci_name.exit420_crit_edge ]
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i419) #12
  %50 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %ep0state68, align 8
  %51 = ptrtoint ptr %speed78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp79.not = icmp eq i32 %52, 0
  br i1 %cmp79.not, label %pci_name.exit420.pm_next_crit_edge, label %land.lhs.true

pci_name.exit420.pm_next_crit_edge:               ; preds = %pci_name.exit420
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

land.lhs.true:                                    ; preds = %pci_name.exit420
  %53 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver80, align 4
  %tobool81.not = icmp eq ptr %54, null
  br i1 %tobool81.not, label %land.lhs.true.pm_next_crit_edge, label %land.lhs.true82

land.lhs.true.pm_next_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

land.lhs.true82:                                  ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %suspend, align 4
  %tobool84.not = icmp eq ptr %56, null
  br i1 %tobool84.not, label %land.lhs.true82.pm_next_crit_edge, label %if.then85

land.lhs.true82.pm_next_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %57 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver80, align 4
  %suspend88 = getelementptr inbounds %struct.usb_gadget_driver, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %suspend88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %suspend88, align 4
  call void %60(ptr noundef %_dev) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %pm_next

if.else92:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp94.not = icmp eq i32 %42, 6
  %61 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev73, align 8
  %init_name.i.i427 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44, i32 3
  %63 = ptrtoint ptr %init_name.i.i427 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i427, align 8
  %tobool.not.i.i428 = icmp eq ptr %64, null
  br i1 %cmp94.not, label %do.end107, label %do.end98

do.end98:                                         ; preds = %if.else92
  br i1 %tobool.not.i.i428, label %if.end.i.i424, label %do.end98.pci_name.exit426_crit_edge

do.end98.pci_name.exit426_crit_edge:              ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit426

if.end.i.i424:                                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i423 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %65 = ptrtoint ptr %dev.i423 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i423, align 4
  br label %pci_name.exit426

pci_name.exit426:                                 ; preds = %if.end.i.i424, %do.end98.pci_name.exit426_crit_edge
  %retval.0.i.i425 = phi ptr [ %66, %if.end.i.i424 ], [ %64, %do.end98.pci_name.exit426_crit_edge ]
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i425, i32 noundef %42) #12
  br label %pm_next

do.end107:                                        ; preds = %if.else92
  br i1 %tobool.not.i.i428, label %if.end.i.i430, label %do.end107.pci_name.exit432_crit_edge

do.end107.pci_name.exit432_crit_edge:             ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit432

if.end.i.i430:                                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i429 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %67 = ptrtoint ptr %dev.i429 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i429, align 4
  br label %pci_name.exit432

pci_name.exit432:                                 ; preds = %if.end.i.i430, %do.end107.pci_name.exit432_crit_edge
  %retval.0.i.i431 = phi ptr [ %68, %if.end.i.i430 ], [ %64, %do.end107.pci_name.exit432_crit_edge ]
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i431) #12
  %69 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %ep0state68, align 8
  %70 = ptrtoint ptr %speed78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp115.not = icmp eq i32 %71, 0
  br i1 %cmp115.not, label %pci_name.exit432.pm_next_crit_edge, label %land.lhs.true116

pci_name.exit432.pm_next_crit_edge:               ; preds = %pci_name.exit432
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

land.lhs.true116:                                 ; preds = %pci_name.exit432
  %72 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver80, align 4
  %tobool118.not = icmp eq ptr %73, null
  br i1 %tobool118.not, label %land.lhs.true116.pm_next_crit_edge, label %land.lhs.true119

land.lhs.true116.pm_next_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resume, align 4
  %tobool121.not = icmp eq ptr %75, null
  br i1 %tobool121.not, label %land.lhs.true119.pm_next_crit_edge, label %if.then122

land.lhs.true119.pm_next_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_next

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %76 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver80, align 4
  %resume125 = getelementptr inbounds %struct.usb_gadget_driver, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %resume125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resume125, align 4
  call void %79(ptr noundef %_dev) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %pm_next

pm_next:                                          ; preds = %if.then122, %land.lhs.true119.pm_next_crit_edge, %land.lhs.true116.pm_next_crit_edge, %pci_name.exit432.pm_next_crit_edge, %pci_name.exit426, %if.then85, %land.lhs.true82.pm_next_crit_edge, %land.lhs.true.pm_next_crit_edge, %pci_name.exit420.pm_next_crit_edge, %if.then67.pm_next_crit_edge, %if.then67.pm_next_crit_edge493, %if.end51.pm_next_crit_edge
  %handled.1 = phi i32 [ 1, %if.then85 ], [ 1, %land.lhs.true82.pm_next_crit_edge ], [ 1, %land.lhs.true.pm_next_crit_edge ], [ 1, %pci_name.exit420.pm_next_crit_edge ], [ 1, %if.then67.pm_next_crit_edge ], [ 1, %if.then67.pm_next_crit_edge493 ], [ 1, %pci_name.exit426 ], [ 1, %if.then122 ], [ 1, %land.lhs.true119.pm_next_crit_edge ], [ 1, %land.lhs.true116.pm_next_crit_edge ], [ 1, %pci_name.exit432.pm_next_crit_edge ], [ %handled.0, %if.end51.pm_next_crit_edge ]
  %stat.0 = phi i32 [ %and55, %if.then85 ], [ %and55, %land.lhs.true82.pm_next_crit_edge ], [ %and55, %land.lhs.true.pm_next_crit_edge ], [ %and55, %pci_name.exit420.pm_next_crit_edge ], [ %and55, %if.then67.pm_next_crit_edge ], [ %and55, %if.then67.pm_next_crit_edge493 ], [ %and55, %pci_name.exit426 ], [ %and55, %if.then122 ], [ %and55, %land.lhs.true119.pm_next_crit_edge ], [ %and55, %land.lhs.true116.pm_next_crit_edge ], [ %and55, %pci_name.exit432.pm_next_crit_edge ], [ %and, %if.end51.pm_next_crit_edge ]
  %and131 = and i32 %stat.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %pm_next.if.end149_crit_edge, label %if.then133

pm_next.if.end149_crit_edge:                      ; preds = %pm_next
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then133:                                       ; preds = %pm_next
  %and134 = and i32 %stat.0, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -33554433) #9, !srcloc !325
  %80 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev73, align 8
  %init_name.i.i433 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44, i32 3
  %82 = ptrtoint ptr %init_name.i.i433 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i433, align 8
  %tobool.not.i.i434 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i434, label %if.end.i.i436, label %if.then133.pci_name.exit438_crit_edge

if.then133.pci_name.exit438_crit_edge:            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit438

if.end.i.i436:                                    ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i435 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %84 = ptrtoint ptr %dev.i435 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i435, align 4
  br label %pci_name.exit438

pci_name.exit438:                                 ; preds = %if.end.i.i436, %if.then133.pci_name.exit438_crit_edge
  %retval.0.i.i437 = phi ptr [ %85, %if.end.i.i436 ], [ %83, %if.then133.pci_name.exit438_crit_edge ]
  %86 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver80, align 4
  %driver146 = getelementptr inbounds %struct.usb_gadget_driver, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %driver146 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver146, align 4
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i437, ptr noundef %89) #12
  br label %if.end149

if.end149:                                        ; preds = %pci_name.exit438, %pm_next.if.end149_crit_edge, %if.end.if.end149_crit_edge
  %handled.2 = phi i32 [ 1, %pci_name.exit438 ], [ %handled.1, %pm_next.if.end149_crit_edge ], [ %handled.0, %if.end.if.end149_crit_edge ]
  %stat.1 = phi i32 [ %and134, %pci_name.exit438 ], [ %stat.0, %pm_next.if.end149_crit_edge ], [ %and, %if.end.if.end149_crit_edge ]
  %and150 = and i32 %stat.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end162_crit_edge, label %if.then152

if.end149.if.end162_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then152:                                       ; preds = %if.end149
  %and153 = and i32 %stat.1, -9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -134217729) #9, !srcloc !325
  %90 = ptrtoint ptr %irqs160 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irqs160, align 4
  %inc161 = add i32 %91, 1
  store i32 %inc161, ptr %irqs160, align 4
  %92 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i) #9
  %bRequestType.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 25
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bRequestType.i) #9, !srcloc !327
  %95 = lshr i32 %94, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  %conv.i = trunc i32 %95 to i8
  %96 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.i, ptr %ctrl.i, align 1
  %bRequest.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 26
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bRequest.i) #9, !srcloc !327
  %98 = lshr i32 %97, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %conv10.i = trunc i32 %98 to i8
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv10.i, ptr %2, align 1
  %wValueH.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 28
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wValueH.i) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  %101 = lshr i32 %100, 16
  %shl.i = and i32 %101, 65280
  %wValueL.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 27
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wValueL.i) #9, !srcloc !327
  %103 = call i32 @llvm.bswap.i32(i32 %102) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  %or.i = or i32 %103, %shl.i
  %conv22.i = trunc i32 %or.i to i16
  %104 = call i16 @llvm.bswap.i16(i16 %conv22.i) #9
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %3, align 1
  %wIndexH.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 30
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wIndexH.i) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  %107 = lshr i32 %106, 16
  %shl28.i = and i32 %107, 65280
  %wIndexL.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 29
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wIndexL.i) #9, !srcloc !327
  %109 = call i32 @llvm.bswap.i32(i32 %108) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  %or34.i = or i32 %109, %shl28.i
  %conv35.i = trunc i32 %or34.i to i16
  %110 = call i16 @llvm.bswap.i16(i16 %conv35.i) #9
  %111 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %4, align 1
  %wLengthH.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 32
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wLengthH.i) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %113 = lshr i32 %112, 16
  %shl41.i = and i32 %113, 65280
  %wLengthL.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 31
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wLengthL.i) #9, !srcloc !327
  %115 = call i32 @llvm.bswap.i32(i32 %114) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  %or47.i = or i32 %115, %shl41.i
  %conv48.i = trunc i32 %or47.i to i16
  %116 = call i16 @llvm.bswap.i16(i16 %conv48.i) #9
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %5, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  call void @arm_heavy_mb() #9
  %SetupRecv.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SetupRecv.i, i32 0) #9, !srcloc !325
  %118 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load.i.i = load i16, ptr %stopped.i.i, align 4
  %bf.set.i.i = or i16 %bf.load.i.i, 32
  store i16 %bf.set.i.i, ptr %stopped.i.i, align 4
  %119 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %120, %queue.i.i
  br i1 %cmp.i.not.i.i, label %if.then152.nuke.exit.i_crit_edge, label %if.end.i.i439

if.then152.nuke.exit.i_crit_edge:                 ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

if.end.i.i439:                                    ; preds = %if.then152
  %121 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool3.not.i.i = icmp eq i16 %121, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i439.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end.i.i439.if.end5.i.i_crit_edge:              ; preds = %if.end.i.i439
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i439
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @abort_dma(ptr noundef %ep.i, i32 noundef 0) #9
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i439.if.end5.i.i_crit_edge
  %122 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i17.not19.i.i = icmp eq ptr %123, %queue.i.i
  br i1 %cmp.i17.not19.i.i, label %if.end5.i.i.nuke.exit.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  br label %while.body.i.i

if.end5.i.i.nuke.exit.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end5.i.i.while.body.i.i_crit_edge
  %124 = phi ptr [ %126, %while.body.i.i.while.body.i.i_crit_edge ], [ %123, %if.end5.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 -56
  call fastcc void @done(ptr noundef %ep.i, ptr noundef %add.ptr.i.i, i32 noundef 0) #9
  %125 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i17.not.i.i = icmp eq ptr %126, %queue.i.i
  br i1 %cmp.i17.not.i.i, label %while.body.i.i.nuke.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.nuke.exit.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %while.body.i.i.nuke.exit.i_crit_edge, %if.end5.i.i.nuke.exit.i_crit_edge, %if.then152.nuke.exit.i_crit_edge
  %127 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load.i = load i16, ptr %stopped.i.i, align 4
  %128 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %tobool.not.i = icmp sgt i8 %129, -1
  %bf.clear68.i = and i16 %bf.load.i, -97
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !350

if.then.i:                                        ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set59.i = or i16 %bf.clear68.i, 64
  %130 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %bf.set59.i, ptr %stopped.i.i, align 4
  %131 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2, ptr %ep0state68, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  call void @arm_heavy_mb() #9
  %132 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs1, align 4
  %IntControl.i = getelementptr inbounds %struct.goku_udc_regs, ptr %133, i32 0, i32 46
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IntControl.i, i32 16777216) #9, !srcloc !325
  %134 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %134)
  %.pr.i = load i8, ptr %2, align 1
  br label %if.end146.i

if.else.i:                                        ; preds = %nuke.exit.i
  %135 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %bf.clear68.i, ptr %stopped.i.i, align 4
  %136 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 3, ptr %ep0state68, align 8
  %137 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %138)
  %cond.i = icmp eq i8 %138, 1
  br i1 %cond.i, label %sw.bb.i, label %if.else.i.if.end146.i_crit_edge

if.else.i.if.end146.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146.i

sw.bb.i:                                          ; preds = %if.else.i
  %139 = zext i8 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %129, label %sw.bb.i.land.end.thread.i_crit_edge [
    i8 2, label %sw.bb75.i
    i8 0, label %sw.bb133.i
    i8 1, label %sw.bb.i.stall.i_crit_edge
  ]

sw.bb.i.stall.i_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

sw.bb.i.land.end.thread.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.thread.i

sw.bb75.i:                                        ; preds = %sw.bb.i
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %4, align 1
  %142 = lshr i16 %141, 8
  %143 = and i16 %142, 15
  %and78.i = zext i16 %143 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %143)
  %cmp.i = icmp ugt i16 %143, 3
  br i1 %cmp.i, label %sw.bb75.i.stall.i_crit_edge, label %lor.lhs.false.i

sw.bb75.i.stall.i_crit_edge:                      ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

lor.lhs.false.i:                                  ; preds = %sw.bb75.i
  %arrayidx81.i = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 %and78.i
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx81.i, i32 0, i32 9
  %144 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %desc.i, align 4
  %tobool83.not.i = icmp ne ptr %145, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp84.not.i = icmp eq i16 %143, 0
  %or.cond.i = select i1 %tobool83.not.i, i1 true, i1 %cmp84.not.i
  br i1 %or.cond.i, label %if.end.i, label %lor.lhs.false.i.stall.i_crit_edge

lor.lhs.false.i.stall.i_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %141)
  %tobool90.not.i = icmp sgt i16 %141, -1
  %is_in103.i = getelementptr %struct.goku_udc, ptr %_dev, i32 0, i32 2, i32 %and78.i, i32 3
  %146 = ptrtoint ptr %is_in103.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %bf.load104.i = load i16, ptr %is_in103.i, align 4
  %147 = and i16 %bf.load104.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool108.not.i = icmp eq i16 %147, 0
  br i1 %tobool90.not.i, label %if.else100.i, label %if.then91.i

if.then91.i:                                      ; preds = %if.end.i
  br i1 %tobool108.not.i, label %if.then91.i.stall.i_crit_edge, label %if.then91.i.if.end111.i_crit_edge

if.then91.i.if.end111.i_crit_edge:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.then91.i.stall.i_crit_edge:                    ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

if.else100.i:                                     ; preds = %if.end.i
  br i1 %tobool108.not.i, label %if.else100.i.if.end111.i_crit_edge, label %if.else100.i.stall.i_crit_edge

if.else100.i.stall.i_crit_edge:                   ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

if.else100.i.if.end111.i_crit_edge:               ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else100.i.if.end111.i_crit_edge, %if.then91.i.if.end111.i_crit_edge
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp114.not.i = icmp eq i16 %149, 0
  br i1 %cmp114.not.i, label %if.end117.i, label %if.end111.i.stall.i_crit_edge

if.end111.i.stall.i_crit_edge:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

if.end117.i:                                      ; preds = %if.end111.i
  br i1 %cmp84.not.i, label %if.end117.i.do.body123.i_crit_edge, label %if.then119.i

if.end117.i.do.body123.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body123.i

if.then119.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @goku_clear_halt(ptr noundef %arrayidx81.i) #9
  br label %do.body123.i

do.body123.i:                                     ; preds = %sw.bb133.i.do.body123.i_crit_edge, %if.then119.i, %if.end117.i.do.body123.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  call void @arm_heavy_mb() #9
  %EOP.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EOP.i, i32 -16777217) #9, !srcloc !325
  br label %ep0_setup.exit.sink.split

sw.bb133.i:                                       ; preds = %sw.bb.i
  %150 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %151)
  %cmp136.not.i = icmp eq i16 %151, 256
  br i1 %cmp136.not.i, label %sw.bb133.i.do.body123.i_crit_edge, label %sw.bb133.i.stall.i_crit_edge

sw.bb133.i.stall.i_crit_edge:                     ; preds = %sw.bb133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

sw.bb133.i.do.body123.i_crit_edge:                ; preds = %sw.bb133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body123.i

if.end146.i:                                      ; preds = %if.else.i.if.end146.i_crit_edge, %if.then.i
  %152 = phi i8 [ %138, %if.else.i.if.end146.i_crit_edge ], [ %.pr.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %152)
  %cmp149.i = icmp eq i8 %152, 9
  br i1 %cmp149.i, label %land.rhs.i, label %if.end146.i.land.end.thread.i_crit_edge

if.end146.i.land.end.thread.i_crit_edge:          ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.thread.i

land.rhs.i:                                       ; preds = %if.end146.i
  %153 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp153.i = icmp eq i8 %154, 0
  br i1 %cmp153.i, label %if.then170.i, label %land.rhs.i.land.end.thread.i_crit_edge

land.rhs.i.land.end.thread.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.rhs.i.land.end.thread.i_crit_edge, %if.end146.i.land.end.thread.i_crit_edge, %sw.bb.i.land.end.thread.i_crit_edge
  %155 = ptrtoint ptr %req_config.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load155244.i = load i8, ptr %req_config.i, align 4
  %bf.clear156245.i = and i8 %bf.load155244.i, -33
  br label %if.end181.i

if.then170.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %req_config.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load155.i = load i8, ptr %req_config.i, align 4
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %cmp173.not.i = icmp eq i16 %158, 0
  %bf.shl177.i = select i1 %cmp173.not.i, i8 0, i8 16
  %bf.set157.i = and i8 %bf.load155.i, -49
  %bf.clear178.i = or i8 %bf.set157.i, %bf.shl177.i
  %bf.set179.i = or i8 %bf.clear178.i, 32
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then170.i, %land.end.thread.i
  %storemerge = phi i8 [ %bf.clear156245.i, %land.end.thread.i ], [ %bf.set179.i, %if.then170.i ]
  %159 = ptrtoint ptr %req_config.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %storemerge, ptr %req_config.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %160 = ptrtoint ptr %driver80 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %driver80, align 4
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %setup.i, align 4
  %call182.i = call i32 %163(ptr noundef %_dev, ptr noundef nonnull %ctrl.i) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %cmp184.i = icmp slt i32 %call182.i, 0
  br i1 %cmp184.i, label %if.end181.i.stall.i_crit_edge, label %if.end181.i.ep0_setup.exit_crit_edge, !prof !350

if.end181.i.ep0_setup.exit_crit_edge:             ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep0_setup.exit

if.end181.i.stall.i_crit_edge:                    ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stall.i

stall.i:                                          ; preds = %if.end181.i.stall.i_crit_edge, %sw.bb133.i.stall.i_crit_edge, %if.end111.i.stall.i_crit_edge, %if.else100.i.stall.i_crit_edge, %if.then91.i.stall.i_crit_edge, %lor.lhs.false.i.stall.i_crit_edge, %sw.bb75.i.stall.i_crit_edge, %sw.bb.i.stall.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  call void @arm_heavy_mb() #9
  %Command.i.i = getelementptr inbounds %struct.goku_udc_regs, ptr %93, i32 0, i32 41
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i.i, i32 67108864) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %164(i32 noundef 64424400) #9
  br label %ep0_setup.exit.sink.split

ep0_setup.exit.sink.split:                        ; preds = %stall.i, %do.body123.i
  %.sink = phi i32 [ 4, %do.body123.i ], [ 5, %stall.i ]
  %165 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %bf.load129.i = load i16, ptr %stopped.i.i, align 4
  %bf.set131.i = or i16 %bf.load129.i, 32
  store i16 %bf.set131.i, ptr %stopped.i.i, align 4
  %166 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %.sink, ptr %ep0state68, align 8
  br label %ep0_setup.exit

ep0_setup.exit:                                   ; preds = %ep0_setup.exit.sink.split, %if.end181.i.ep0_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i) #9
  br label %if.end162

if.end162:                                        ; preds = %ep0_setup.exit, %if.end149.if.end162_crit_edge
  %handled.3 = phi i32 [ 1, %ep0_setup.exit ], [ %handled.2, %if.end149.if.end162_crit_edge ]
  %stat.2 = phi i32 [ %and153, %ep0_setup.exit ], [ %stat.1, %if.end149.if.end162_crit_edge ]
  %and163 = and i32 %stat.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end162.if.end183_crit_edge, label %if.then165

if.end162.if.end183_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then165:                                       ; preds = %if.end162
  %and166 = and i32 %stat.2, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -536870913) #9, !srcloc !325
  %167 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ep0state68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %168)
  %cmp172 = icmp eq i32 %168, 2
  br i1 %cmp172, label %if.then173, label %if.then165.if.end183_crit_edge

if.then165.if.end183_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then173:                                       ; preds = %if.then165
  %169 = ptrtoint ptr %irqs160 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %irqs160, align 4
  %inc177 = add i32 %170, 1
  store i32 %inc177, ptr %irqs160, align 4
  %171 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %bf.load.i440 = load i16, ptr %stopped.i.i, align 4
  %bf.set.i = or i16 %bf.load.i440, 32
  store i16 %bf.set.i, ptr %stopped.i.i, align 4
  %172 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %173, %queue.i.i
  br i1 %cmp.i.not.i, label %if.then173.nuke.exit_crit_edge, label %if.end.i441

if.then173.nuke.exit_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

if.end.i441:                                      ; preds = %if.then173
  %174 = and i16 %bf.load.i440, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool3.not.i = icmp eq i16 %174, 0
  br i1 %tobool3.not.i, label %if.end.i441.if.end5.i_crit_edge, label %if.then4.i

if.end.i441.if.end5.i_crit_edge:                  ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @abort_dma(ptr noundef %ep.i, i32 noundef 0) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i441.if.end5.i_crit_edge
  %175 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i17.not19.i = icmp eq ptr %176, %queue.i.i
  br i1 %cmp.i17.not19.i, label %if.end5.i.nuke.exit_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.nuke.exit_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %177 = phi ptr [ %179, %while.body.i.while.body.i_crit_edge ], [ %176, %if.end5.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %177, i32 -56
  call fastcc void @done(ptr noundef %ep.i, ptr noundef %add.ptr.i, i32 noundef 0) #9
  %178 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i17.not.i = icmp eq ptr %179, %queue.i.i
  br i1 %cmp.i17.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end5.i.nuke.exit_crit_edge, %if.then173.nuke.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EOP, i32 -16777217) #9, !srcloc !325
  %180 = ptrtoint ptr %ep0state68 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 4, ptr %ep0state68, align 8
  br label %if.end183

if.end183:                                        ; preds = %nuke.exit, %if.then165.if.end183_crit_edge, %if.end162.if.end183_crit_edge
  %handled.4 = phi i32 [ 1, %nuke.exit ], [ 1, %if.then165.if.end183_crit_edge ], [ %handled.3, %if.end162.if.end183_crit_edge ]
  %stat.3 = phi i32 [ %and166, %nuke.exit ], [ %and166, %if.then165.if.end183_crit_edge ], [ %stat.2, %if.end162.if.end183_crit_edge ]
  %and184 = and i32 %stat.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end183.if.end196_crit_edge, label %if.then186

if.end183.if.end196_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then186:                                       ; preds = %if.end183
  %and187 = and i32 %stat.3, -5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -67108865) #9, !srcloc !325
  %181 = ptrtoint ptr %irqs160 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %irqs160, align 4
  %inc195 = add i32 %182, 1
  store i32 %inc195, ptr %irqs160, align 4
  %183 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i443 = icmp eq ptr %184, %queue.i.i
  br i1 %cmp.i.not.i443, label %if.then186.if.end196_crit_edge, label %if.end.i447, !prof !350

if.then186.if.end196_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.end.i447:                                      ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i444 = getelementptr i8, ptr %184, i32 -56
  %185 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %bf.load.i445 = load i16, ptr %stopped.i.i, align 4
  %186 = and i16 %bf.load.i445, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool4.not.i = icmp eq i16 %186, 0
  %cond.i446 = select i1 %tobool4.not.i, ptr @read_fifo, ptr @write_fifo
  %call5.i = call i32 %cond.i446(ptr noundef %ep.i, ptr noundef %add.ptr.i444) #9, !callees !357
  br label %if.end196

if.end196:                                        ; preds = %if.end.i447, %if.then186.if.end196_crit_edge, %if.end183.if.end196_crit_edge
  %handled.5 = phi i32 [ %handled.4, %if.end183.if.end196_crit_edge ], [ 1, %if.then186.if.end196_crit_edge ], [ 1, %if.end.i447 ]
  %stat.4 = phi i32 [ %stat.3, %if.end183.if.end196_crit_edge ], [ %and187, %if.then186.if.end196_crit_edge ], [ %and187, %if.end.i447 ]
  %and197 = and i32 %stat.4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.end196.if.end209_crit_edge, label %if.then199

if.end196.if.end209_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %and200 = and i32 %stat.4, -131073
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -513) #9, !srcloc !325
  %187 = ptrtoint ptr %irqs207 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %irqs207, align 4
  %inc208 = add i32 %188, 1
  store i32 %inc208, ptr %irqs207, align 4
  call fastcc void @dma_advance(ptr noundef %_dev, ptr noundef %arrayidx206)
  br label %if.end209

if.end209:                                        ; preds = %if.then199, %if.end196.if.end209_crit_edge
  %handled.6 = phi i32 [ 1, %if.then199 ], [ %handled.5, %if.end196.if.end209_crit_edge ]
  %stat.5 = phi i32 [ %and200, %if.then199 ], [ %stat.4, %if.end196.if.end209_crit_edge ]
  %and210 = and i32 %stat.5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end209.if.end222_crit_edge, label %if.then212

if.end209.if.end222_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %and213 = and i32 %stat.5, -32769
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -8388609) #9, !srcloc !325
  %189 = ptrtoint ptr %irqs220 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %irqs220, align 4
  %inc221 = add i32 %190, 1
  store i32 %inc221, ptr %irqs220, align 4
  call fastcc void @dma_advance(ptr noundef %_dev, ptr noundef %arrayidx219)
  br label %if.end222

if.end222:                                        ; preds = %if.then212, %if.end209.if.end222_crit_edge
  %handled.7 = phi i32 [ 1, %if.then212 ], [ %handled.6, %if.end209.if.end222_crit_edge ]
  %stat.6 = phi i32 [ %and213, %if.then212 ], [ %stat.5, %if.end209.if.end222_crit_edge ]
  %and223 = and i32 %stat.6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end222.if.end244_crit_edge, label %if.then225

if.end222.if.end244_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

if.then225:                                       ; preds = %if.end222
  %and226 = and i32 %stat.6, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !360
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -257) #9, !srcloc !325
  %191 = ptrtoint ptr %irqs220 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irqs220, align 4
  %inc234 = add i32 %192, 1
  store i32 %inc234, ptr %irqs220, align 4
  %193 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev73, align 8
  %init_name.i.i448 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44, i32 3
  %195 = ptrtoint ptr %init_name.i.i448 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %init_name.i.i448, align 8
  %tobool.not.i.i449 = icmp eq ptr %196, null
  br i1 %tobool.not.i.i449, label %if.end.i.i451, label %if.then225.pci_name.exit453_crit_edge

if.then225.pci_name.exit453_crit_edge:            ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit453

if.end.i.i451:                                    ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i450 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %197 = ptrtoint ptr %dev.i450 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev.i450, align 4
  br label %pci_name.exit453

pci_name.exit453:                                 ; preds = %if.end.i.i451, %if.then225.pci_name.exit453_crit_edge
  %retval.0.i.i452 = phi ptr [ %198, %if.end.i.i451 ], [ %196, %if.then225.pci_name.exit453_crit_edge ]
  %199 = ptrtoint ptr %name242 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %name242, align 4
  %call243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i452, ptr noundef %200) #12
  br label %if.end244

if.end244:                                        ; preds = %pci_name.exit453, %if.end222.if.end244_crit_edge
  %handled.8 = phi i32 [ 1, %pci_name.exit453 ], [ %handled.7, %if.end222.if.end244_crit_edge ]
  %stat.7 = phi i32 [ %and226, %pci_name.exit453 ], [ %stat.6, %if.end222.if.end244_crit_edge ]
  %and247 = and i32 %stat.7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end244.cleanup_crit_edge, label %if.end250

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end250:                                        ; preds = %if.end244
  %201 = ptrtoint ptr %queue.i454 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile ptr, ptr %queue.i454, align 4
  %cmp.i.not.i455 = icmp eq ptr %202, %queue.i454
  br i1 %cmp.i.not.i455, label %if.end250.pio_advance.exit463_crit_edge, label %if.end.i462, !prof !350

if.end250.pio_advance.exit463_crit_edge:          ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %pio_advance.exit463

if.end.i462:                                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i456 = getelementptr i8, ptr %202, i32 -56
  %203 = ptrtoint ptr %is_in.i457 to i32
  call void @__asan_load2_noabort(i32 %203)
  %bf.load.i458 = load i16, ptr %is_in.i457, align 4
  %204 = and i16 %bf.load.i458, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool4.not.i459 = icmp eq i16 %204, 0
  %cond.i460 = select i1 %tobool4.not.i459, ptr @read_fifo, ptr @write_fifo
  %call5.i461 = call i32 %cond.i460(ptr noundef %arrayidx219, ptr noundef %add.ptr.i456) #9, !callees !357
  br label %pio_advance.exit463

pio_advance.exit463:                              ; preds = %if.end.i462, %if.end250.pio_advance.exit463_crit_edge
  %205 = ptrtoint ptr %queue.i454 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile ptr, ptr %queue.i454, align 4
  %cmp.i464.not = icmp eq ptr %206, %queue.i454
  br i1 %cmp.i464.not, label %if.then255, label %pio_advance.exit463.if.end256_crit_edge

pio_advance.exit463.if.end256_crit_edge:          ; preds = %pio_advance.exit463
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

if.then255:                                       ; preds = %pio_advance.exit463
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %int_enable, align 8
  %and.i = and i32 %208, -65
  store i32 %and.i, ptr %int_enable, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %int_enable, align 8
  %211 = call i32 @llvm.bswap.i32(i32 %210) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable2.i, i32 %211) #9, !srcloc !325
  br label %if.end256

if.end256:                                        ; preds = %if.then255, %pio_advance.exit463.if.end256_crit_edge
  %and258 = and i32 %stat.7, -65
  %212 = ptrtoint ptr %irqs220 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %irqs220, align 4
  %inc260 = add i32 %213, 1
  store i32 %inc260, ptr %irqs220, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end256, %if.end244.cleanup_crit_edge
  %handled.10 = phi i32 [ 1, %if.end256 ], [ %handled.8, %if.end244.cleanup_crit_edge ]
  %stat.9 = phi i32 [ %and258, %if.end256 ], [ %stat.7, %if.end244.cleanup_crit_edge ]
  %and247.1 = and i32 %stat.9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247.1)
  %tobool248.not.1 = icmp eq i32 %and247.1, 0
  br i1 %tobool248.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end250.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end250.1:                                      ; preds = %cleanup
  %214 = ptrtoint ptr %queue.i454.1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %queue.i454.1, align 4
  %cmp.i.not.i455.1 = icmp eq ptr %215, %queue.i454.1
  br i1 %cmp.i.not.i455.1, label %if.end250.1.pio_advance.exit463.1_crit_edge, label %if.end.i462.1, !prof !350

if.end250.1.pio_advance.exit463.1_crit_edge:      ; preds = %if.end250.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %pio_advance.exit463.1

if.end.i462.1:                                    ; preds = %if.end250.1
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i456.1 = getelementptr i8, ptr %215, i32 -56
  %216 = ptrtoint ptr %is_in.i457.1 to i32
  call void @__asan_load2_noabort(i32 %216)
  %bf.load.i458.1 = load i16, ptr %is_in.i457.1, align 4
  %217 = and i16 %bf.load.i458.1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %217)
  %tobool4.not.i459.1 = icmp eq i16 %217, 0
  %cond.i460.1 = select i1 %tobool4.not.i459.1, ptr @read_fifo, ptr @write_fifo
  %call5.i461.1 = call i32 %cond.i460.1(ptr noundef %arrayidx206, ptr noundef %add.ptr.i456.1) #9, !callees !357
  br label %pio_advance.exit463.1

pio_advance.exit463.1:                            ; preds = %if.end.i462.1, %if.end250.1.pio_advance.exit463.1_crit_edge
  %218 = ptrtoint ptr %queue.i454.1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile ptr, ptr %queue.i454.1, align 4
  %cmp.i464.not.1 = icmp eq ptr %219, %queue.i454.1
  br i1 %cmp.i464.not.1, label %if.then255.1, label %pio_advance.exit463.1.if.end256.1_crit_edge

pio_advance.exit463.1.if.end256.1_crit_edge:      ; preds = %pio_advance.exit463.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256.1

if.then255.1:                                     ; preds = %pio_advance.exit463.1
  call void @__sanitizer_cov_trace_pc() #11
  %220 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %int_enable, align 8
  %and.i.1 = and i32 %221, -129
  store i32 %and.i.1, ptr %int_enable, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %222 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %int_enable, align 8
  %224 = call i32 @llvm.bswap.i32(i32 %223) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable2.i, i32 %224) #9, !srcloc !325
  br label %if.end256.1

if.end256.1:                                      ; preds = %if.then255.1, %pio_advance.exit463.1.if.end256.1_crit_edge
  %and258.1 = and i32 %stat.9, -129
  %225 = ptrtoint ptr %irqs207 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %irqs207, align 4
  %inc260.1 = add i32 %226, 1
  store i32 %inc260.1, ptr %irqs207, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end256.1, %cleanup.cleanup.1_crit_edge
  %handled.10.1 = phi i32 [ 1, %if.end256.1 ], [ %handled.10, %cleanup.cleanup.1_crit_edge ]
  %stat.9.1 = phi i32 [ %and258.1, %if.end256.1 ], [ %stat.9, %cleanup.cleanup.1_crit_edge ]
  %and247.2 = and i32 %stat.9.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247.2)
  %tobool248.not.2 = icmp eq i32 %and247.2, 0
  br i1 %tobool248.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end250.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end250.2:                                      ; preds = %cleanup.1
  %227 = ptrtoint ptr %queue.i454.2 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %queue.i454.2, align 4
  %cmp.i.not.i455.2 = icmp eq ptr %228, %queue.i454.2
  br i1 %cmp.i.not.i455.2, label %if.end250.2.pio_advance.exit463.2_crit_edge, label %if.end.i462.2, !prof !350

if.end250.2.pio_advance.exit463.2_crit_edge:      ; preds = %if.end250.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %pio_advance.exit463.2

if.end.i462.2:                                    ; preds = %if.end250.2
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i456.2 = getelementptr i8, ptr %228, i32 -56
  %229 = ptrtoint ptr %is_in.i457.2 to i32
  call void @__asan_load2_noabort(i32 %229)
  %bf.load.i458.2 = load i16, ptr %is_in.i457.2, align 4
  %230 = and i16 %bf.load.i458.2, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %tobool4.not.i459.2 = icmp eq i16 %230, 0
  %cond.i460.2 = select i1 %tobool4.not.i459.2, ptr @read_fifo, ptr @write_fifo
  %call5.i461.2 = call i32 %cond.i460.2(ptr noundef %arrayidx252.2, ptr noundef %add.ptr.i456.2) #9, !callees !357
  br label %pio_advance.exit463.2

pio_advance.exit463.2:                            ; preds = %if.end.i462.2, %if.end250.2.pio_advance.exit463.2_crit_edge
  %231 = ptrtoint ptr %queue.i454.2 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile ptr, ptr %queue.i454.2, align 4
  %cmp.i464.not.2 = icmp eq ptr %232, %queue.i454.2
  br i1 %cmp.i464.not.2, label %if.then255.2, label %pio_advance.exit463.2.if.end256.2_crit_edge

pio_advance.exit463.2.if.end256.2_crit_edge:      ; preds = %pio_advance.exit463.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256.2

if.then255.2:                                     ; preds = %pio_advance.exit463.2
  call void @__sanitizer_cov_trace_pc() #11
  %233 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %int_enable, align 8
  %and.i.2 = and i32 %234, -257
  store i32 %and.i.2, ptr %int_enable, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %235 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %int_enable, align 8
  %237 = call i32 @llvm.bswap.i32(i32 %236) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable2.i, i32 %237) #9, !srcloc !325
  br label %if.end256.2

if.end256.2:                                      ; preds = %if.then255.2, %pio_advance.exit463.2.if.end256.2_crit_edge
  %and258.2 = and i32 %stat.9.1, -257
  %238 = ptrtoint ptr %irqs259.2 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %irqs259.2, align 4
  %inc260.2 = add i32 %239, 1
  store i32 %inc260.2, ptr %irqs259.2, align 4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end256.2, %cleanup.1.cleanup.2_crit_edge
  %handled.10.2 = phi i32 [ 1, %if.end256.2 ], [ %handled.10.1, %cleanup.1.cleanup.2_crit_edge ]
  %stat.9.2 = phi i32 [ %and258.2, %if.end256.2 ], [ %stat.9.1, %cleanup.1.cleanup.2_crit_edge ]
  %dec = add nsw i32 %rescans.0, -1
  %tobool262.not = icmp eq i32 %rescans.0, 0
  br i1 %tobool262.not, label %cleanup.2.done_crit_edge, label %cleanup.2.rescan_crit_edge

cleanup.2.rescan_crit_edge:                       ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan

cleanup.2.done_crit_edge:                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %cleanup.2.done_crit_edge, %if.end42, %do.end33, %pci_name.exit, %rescan.done_crit_edge
  %handled.11 = phi i32 [ 1, %pci_name.exit ], [ 1, %if.end42 ], [ 1, %do.end33 ], [ %handled.0, %rescan.done_crit_edge ], [ %handled.10.2, %cleanup.2.done_crit_edge ]
  %stat.10 = phi i32 [ 0, %pci_name.exit ], [ 0, %if.end42 ], [ 0, %do.end33 ], [ 0, %rescan.done_crit_edge ], [ %stat.9.2, %cleanup.2.done_crit_edge ]
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable2.i) #9, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.10)
  %tobool272.not = icmp eq i32 %stat.10, 0
  br i1 %tobool272.not, label %done.if.end288_crit_edge, label %do.end276

done.if.end288_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end288

do.end276:                                        ; preds = %done
  %241 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pdev73, align 8
  %init_name.i.i467 = getelementptr inbounds %struct.pci_dev, ptr %242, i32 0, i32 44, i32 3
  %243 = ptrtoint ptr %init_name.i.i467 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %init_name.i.i467, align 8
  %tobool.not.i.i468 = icmp eq ptr %244, null
  br i1 %tobool.not.i.i468, label %if.end.i.i470, label %do.end276.pci_name.exit472_crit_edge

do.end276.pci_name.exit472_crit_edge:             ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit472

if.end.i.i470:                                    ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i469 = getelementptr inbounds %struct.pci_dev, ptr %242, i32 0, i32 44
  %245 = ptrtoint ptr %dev.i469 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev.i469, align 4
  br label %pci_name.exit472

pci_name.exit472:                                 ; preds = %if.end.i.i470, %do.end276.pci_name.exit472_crit_edge
  %retval.0.i.i471 = phi ptr [ %246, %if.end.i.i470 ], [ %244, %do.end276.pci_name.exit472_crit_edge ]
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !327
  %248 = call i32 @llvm.bswap.i32(i32 %247)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  %249 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %int_enable, align 8
  %call287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i471, i32 noundef %stat.10, i32 noundef %248, i32 noundef %250) #12
  br label %if.end288

if.end288:                                        ; preds = %pci_name.exit472, %done.if.end288_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.11)
  %tobool289.not = icmp ne i32 %handled.11, 0
  %cond = zext i1 %tobool289.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_proc_read(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !364
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %power_detect = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %power_detect) #9, !srcloc !327
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  %and = and i32 %6, 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end12.pci_name.exit_crit_edge

do.end12.pci_name.exit_crit_edge:                 ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end12.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %do.end12.pci_name.exit_crit_edge ]
  %driver = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %pci_name.exit.cond.end_crit_edge, label %cond.true

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver20 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %driver20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %pci_name.exit.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.true ], [ @.str.85, %pci_name.exit.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %and23 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.87, ptr @.str.86
  %cond28 = select i1 %tobool21.not, ptr @.str.88, ptr %cond25
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %switch.lookup, label %cond.end.udc_ep_state.exit_crit_edge

cond.end.udc_ep_state.exit_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %udc_ep_state.exit

switch.lookup:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.udc_proc_read, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %udc_ep_state.exit

udc_ep_state.exit:                                ; preds = %switch.lookup, %cond.end.udc_ep_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.122, %cond.end.udc_ep_state.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i, ptr noundef nonnull @driver_desc, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.36, ptr noundef %cond, ptr noundef nonnull %cond28, ptr noundef nonnull %retval.0.i) #9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !327
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call fastcc void @dump_intmask(ptr noundef %m, ptr noundef nonnull @.str.89, i32 noundef %22)
  %int_enable = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable) #9, !srcloc !327
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call fastcc void @dump_intmask(ptr noundef %m, ptr noundef nonnull @.str.90, i32 noundef %24)
  br i1 %tobool21.not, label %udc_ep_state.exit.do.body220_crit_edge, label %lor.lhs.false

udc_ep_state.exit.do.body220_crit_edge:           ; preds = %udc_ep_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

lor.lhs.false:                                    ; preds = %udc_ep_state.exit
  %25 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver, align 4
  %tobool42.not = icmp eq ptr %26, null
  %or.cond = select i1 %tobool42.not, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %lor.lhs.false.do.body220_crit_edge, label %if.end48

lor.lhs.false.do.body220_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end48:                                         ; preds = %lor.lhs.false
  %irqs = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irqs, align 4
  %DataSet = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 37
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DataSet) #9, !srcloc !327
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  %EPxSingle = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 42
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxSingle) #9, !srcloc !327
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  %EPxBCS = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 44
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxBCS) #9, !srcloc !327
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  %UsbState = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 39
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %UsbState) #9, !srcloc !327
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  %address = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 53
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %address) #9, !srcloc !327
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #9
  %count.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i, align 4
  %size.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.i = icmp eq i32 %40, %42
  br i1 %cmp.i, label %if.end48.do.body220_crit_edge, label %if.end76

if.end48.do.body220_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end76:                                         ; preds = %if.end48
  %dma_master = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 2
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  %and82 = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %cond84 = select i1 %tobool83.not, ptr @.str.94, ptr @.str.93
  %and85 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %cond87 = select i1 %tobool86.not, ptr @.str.94, ptr @.str.95
  %and88 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %cond90 = select i1 %tobool89.not, ptr @.str.94, ptr @.str.96
  %and91 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %cond93 = select i1 %tobool92.not, ptr @.str.94, ptr @.str.97
  %and94 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %cond96 = select i1 %tobool95.not, ptr @.str.94, ptr @.str.98
  %and97 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %cond99 = select i1 %tobool98.not, ptr @.str.94, ptr @.str.99
  %and100 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %cond102 = select i1 %tobool101.not, ptr @.str.94, ptr @.str.100
  %and103 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cond105 = select i1 %tobool104.not, ptr @.str.94, ptr @.str.101
  %and106 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %cond108 = select i1 %tobool107.not, ptr @.str.94, ptr @.str.102
  %and109 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %cond111 = select i1 %tobool110.not, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %44, ptr noundef nonnull %cond84, ptr noundef nonnull %cond87, ptr noundef nonnull %cond90, ptr noundef nonnull %cond93, ptr noundef nonnull %cond96, ptr noundef nonnull %cond99, ptr noundef nonnull %cond102, ptr noundef nonnull %cond105, ptr noundef nonnull %cond108, ptr noundef nonnull %cond111) #9
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 4
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i337 = icmp eq i32 %46, %48
  br i1 %cmp.i337, label %if.end76.do.body220_crit_edge, label %for.cond.preheader

if.end76.do.body220_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

for.cond.preheader:                               ; preds = %if.end76
  %out_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 5
  %in_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.cond.preheader
  %i.0359 = phi i32 [ 0, %for.cond.preheader ], [ %i.0359.be, %for.body.backedge ]
  %arrayidx = getelementptr %struct.goku_udc, ptr %1, i32 0, i32 2, i32 %i.0359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0359)
  %tobool118.not = icmp eq i32 %i.0359, 0
  br i1 %tobool118.not, label %for.body.if.end122_crit_edge, label %land.lhs.true

for.body.if.end122_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 9
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc, align 4
  %tobool120.not = icmp eq ptr %50, null
  br i1 %tobool120.not, label %land.lhs.true.for.inc217_crit_edge, label %land.lhs.true.if.end122_crit_edge

land.lhs.true.if.end122_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

land.lhs.true.for.inc217_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

if.end122:                                        ; preds = %land.lhs.true.if.end122_crit_edge, %for.body.if.end122_crit_edge
  %reg_status = getelementptr %struct.goku_udc, ptr %1, i32 0, i32 2, i32 %i.0359, i32 7
  %51 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_status, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !327
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  %name129 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 1
  %55 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name129, align 4
  %is_in = getelementptr %struct.goku_udc, ptr %1, i32 0, i32 2, i32 %i.0359, i32 3
  %57 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load = load i16, ptr %is_in, align 4
  %58 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool130.not = icmp eq i16 %58, 0
  %cond131 = select i1 %tobool130.not, ptr @.str.107, ptr @.str.106
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 7
  %59 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %59, i32 7)
  %bf.load133 = load i56, ptr %maxpacket, align 2
  %bf.lshr134 = lshr i56 %bf.load133, 40
  %bf.cast135 = trunc i56 %bf.lshr134 to i32
  %60 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool140.not = icmp eq i16 %60, 0
  %cond141 = select i1 %tobool140.not, ptr @.str.49, ptr @.str.48
  %irqs142 = getelementptr %struct.goku_udc, ptr %1, i32 0, i32 2, i32 %i.0359, i32 2
  %61 = ptrtoint ptr %irqs142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irqs142, align 4
  %and.i338 = lshr i32 %54, 2
  %63 = and i32 %and.i338, 7
  %switch.gep366 = getelementptr inbounds [8 x ptr], ptr @switch.table.udc_proc_read.156, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep366 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load367 = load ptr, ptr %switch.gep366, align 4
  %and144 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  %cond146 = select i1 %tobool145.not, ptr @.str.109, ptr @.str.108
  %and147 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %cond149 = select i1 %tobool148.not, ptr @.str.94, ptr @.str.110
  %and150 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %cond152 = select i1 %tobool151.not, ptr @.str.94, ptr @.str.111
  %and153 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %cond155 = select i1 %tobool154.not, ptr @.str.94, ptr @.str.112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, ptr noundef %56, ptr noundef nonnull %cond131, i32 noundef %bf.cast135, ptr noundef nonnull %cond141, i32 noundef %62, i32 noundef %54, ptr noundef nonnull %switch.load367, ptr noundef nonnull %cond146, ptr noundef nonnull %cond149, ptr noundef nonnull %cond152, ptr noundef nonnull %cond155) #9
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i, align 4
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.i348 = icmp eq i32 %66, %68
  br i1 %cmp.i348, label %if.end122.do.body220_crit_edge, label %if.end158

if.end122.do.body220_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end158:                                        ; preds = %if.end122
  %queue = getelementptr %struct.goku_udc, ptr %1, i32 0, i32 2, i32 %i.0359, i32 4
  %69 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %queue, align 4
  %cmp.i349.not = icmp eq ptr %70, %queue
  br i1 %cmp.i349.not, label %if.then161, label %for.cond168.preheader

for.cond168.preheader:                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0359)
  %cmp186 = icmp eq i32 %i.0359, 2
  br label %for.cond168

if.then161:                                       ; preds = %if.end158
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.113) #9
  %71 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count.i, align 4
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp.i352 = icmp eq i32 %72, %74
  %inc218 = add nuw nsw i32 %i.0359, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc218)
  %exitcond.not = icmp eq i32 %inc218, 4
  %or.cond363 = select i1 %cmp.i352, i1 true, i1 %exitcond.not
  br i1 %or.cond363, label %if.then161.do.body220_crit_edge, label %if.then161.for.body.backedge_crit_edge

if.then161.for.body.backedge_crit_edge:           ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

if.then161.do.body220_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

for.cond168:                                      ; preds = %if.end204.for.cond168_crit_edge, %for.cond168.preheader
  %.pn.in = phi ptr [ %.pn, %if.end204.for.cond168_crit_edge ], [ %queue, %for.cond168.preheader ]
  %75 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp171.not = icmp eq ptr %.pn, %queue
  br i1 %cmp171.not, label %for.cond168.for.inc217_crit_edge, label %for.body173

for.cond168.for.inc217_crit_edge:                 ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

for.body173:                                      ; preds = %for.cond168
  %76 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load175 = load i16, ptr %is_in, align 4
  %77 = and i16 %bf.load175, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool179.not = icmp eq i16 %77, 0
  br i1 %tobool179.not, label %for.body173.if.else202_crit_edge, label %land.lhs.true180

for.body173.if.else202_crit_edge:                 ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else202

land.lhs.true180:                                 ; preds = %for.body173
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %78 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev, align 4
  %cmp183 = icmp eq ptr %79, %queue
  br i1 %cmp183, label %if.then185, label %land.lhs.true180.if.else202_crit_edge

land.lhs.true180.if.else202_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else202

if.then185:                                       ; preds = %land.lhs.true180
  br i1 %cmp186, label %if.then188, label %if.else

if.then188:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %in_dma_current) #9, !srcloc !327
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  br label %if.end199

if.else:                                          ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %out_dma_current) #9, !srcloc !327
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  br label %if.end199

if.end199:                                        ; preds = %if.else, %if.then188
  %tmp.0 = phi i32 [ %81, %if.then188 ], [ %83, %if.else ]
  %dma201 = getelementptr i8, ptr %.pn, i32 -48
  %84 = ptrtoint ptr %dma201 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma201, align 4
  %sub = add i32 %tmp.0, 1
  %inc = sub i32 %sub, %85
  br label %if.end204

if.else202:                                       ; preds = %land.lhs.true180.if.else202_crit_edge, %for.body173.if.else202_crit_edge
  %actual = getelementptr i8, ptr %.pn, i32 -4
  %86 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %actual, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.else202, %if.end199
  %tmp.1 = phi i32 [ %inc, %if.end199 ], [ %87, %if.else202 ]
  %length = getelementptr i8, ptr %.pn, i32 -52
  %88 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length, align 4
  %90 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req.0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.114, ptr noundef %req.0, i32 noundef %tmp.1, i32 noundef %89, ptr noundef %91) #9
  %92 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count.i, align 4
  %94 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size.i, align 4
  %cmp.i355 = icmp eq i32 %93, %95
  br i1 %cmp.i355, label %if.end204.do.body220_crit_edge, label %if.end204.for.cond168_crit_edge

if.end204.for.cond168_crit_edge:                  ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond168

if.end204.do.body220_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

for.inc217:                                       ; preds = %for.cond168.for.inc217_crit_edge, %land.lhs.true.for.inc217_crit_edge
  %inc218.old = add nuw nsw i32 %i.0359, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc218.old)
  %exitcond.not.old = icmp eq i32 %inc218.old, 4
  br i1 %exitcond.not.old, label %for.inc217.do.body220_crit_edge, label %for.inc217.for.body.backedge_crit_edge

for.inc217.for.body.backedge_crit_edge:           ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

for.inc217.do.body220_crit_edge:                  ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

for.body.backedge:                                ; preds = %for.inc217.for.body.backedge_crit_edge, %if.then161.for.body.backedge_crit_edge
  %i.0359.be = phi i32 [ %inc218.old, %for.inc217.for.body.backedge_crit_edge ], [ %inc218, %if.then161.for.body.backedge_crit_edge ]
  br label %for.body

do.body220:                                       ; preds = %for.inc217.do.body220_crit_edge, %if.end204.do.body220_crit_edge, %if.then161.do.body220_crit_edge, %if.end122.do.body220_crit_edge, %if.end76.do.body220_crit_edge, %if.end48.do.body220_crit_edge, %lor.lhs.false.do.body220_crit_edge, %udc_ep_state.exit.do.body220_crit_edge
  br i1 %tobool.not, label %if.then229, label %do.body220.do.body231_crit_edge

do.body220.do.body231_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body231

if.then229:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body231

do.body231:                                       ; preds = %if.then229, %do.body220.do.body231_crit_edge
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !377
  %and.i.i = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool239.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool239.not, label %if.then244, label %do.body231.cleanup252_crit_edge, !prof !350

do.body231.cleanup252_crit_edge:                  ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup252

if.then244:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %cleanup252

cleanup252:                                       ; preds = %if.then244, %do.body231.cleanup252_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #9, !srcloc !378
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc_release(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_release(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @goku_get_frame(ptr nocapture noundef readnone %_gadget) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_udc_start(ptr noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 3
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 4
  %regs.i = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 7
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %power_detect.i = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %power_detect.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep0_start(ptr noundef %g) #9
  br label %udc_enable.exit

do.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 6
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.end.i.i.i ], [ %9, %do.end.i.pci_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.27) #12
  %int_enable.i = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 8
  %12 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 524288, ptr %int_enable.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_enable.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %int_enable9.i = getelementptr inbounds %struct.goku_udc_regs, ptr %17, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable9.i, i32 %15) #9, !srcloc !325
  br label %udc_enable.exit

udc_enable.exit:                                  ; preds = %pci_name.exit.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_udc_stop(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver = getelementptr inbounds %struct.goku_udc, ptr %g, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 4
  tail call fastcc void @stop_activity(ptr noundef %g)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @goku_match_ep(ptr noundef %g, ptr noundef %desc, ptr noundef %ep_comp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bmAttributes.i, align 1
  %2 = and i8 %1, 3
  %and.i = zext i8 %2 to i32
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %and.i, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.goku_udc, ptr %g, i32 0, i32 2, i32 3
  %call3 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %g, ptr noundef %arrayidx, ptr noundef %desc, ptr noundef %ep_comp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool6.not = icmp sgt i8 %5, -1
  br i1 %tobool6.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then7

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb4
  %arrayidx9 = getelementptr %struct.goku_udc, ptr %g, i32 0, i32 2, i32 2
  %call11 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %g, ptr noundef %arrayidx9, ptr noundef %desc, ptr noundef %ep_comp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then7.sw.epilog_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.epilog ], [ %arrayidx, %sw.bb.cleanup_crit_edge ], [ %arrayidx9, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %power_detect.i = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  tail call void @arm_heavy_mb() #9
  %int_enable.i = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable.i, i32 0) #9, !srcloc !325
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %int_enable7.i = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %int_enable7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 53687000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 33554432) #9, !srcloc !325
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call fastcc void @udc_reinit(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  tail call void @arm_heavy_mb() #9
  %reqmode = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqmode, i32 -100663296) #9, !srcloc !325
  %irqs = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irqs, align 4
  %irqs.1 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 1, i32 2
  %7 = ptrtoint ptr %irqs.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irqs.1, align 4
  %irqs.2 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 2, i32 2
  %8 = ptrtoint ptr %irqs.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irqs.2, align 4
  %irqs.3 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 3, i32 2
  %9 = ptrtoint ptr %irqs.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %irqs.3, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %entry
  %i.147 = phi i32 [ %inc13, %do.body8.do.body8_crit_edge ], [ 0, %entry ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %arrayidx11 = getelementptr %struct.goku_udc_regs, ptr %1, i32 0, i32 60, i32 %i.147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 0) #9, !srcloc !325
  %inc13 = add nuw nsw i32 %i.147, 1
  %exitcond.not = icmp eq i32 %inc13, 128
  br i1 %exitcond.not, label %do.body15, label %do.body8.do.body8_crit_edge

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.body15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %UsbReady = getelementptr inbounds %struct.goku_udc_regs, ptr %1, i32 0, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %UsbReady, i32 0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 50331648) #9, !srcloc !325
  %10 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 786479, ptr %int_enable7.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_enable7.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1, align 4
  %int_enable26 = getelementptr inbounds %struct.goku_udc_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable26, i32 %13) #9, !srcloc !325
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %speed, align 8
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ep0state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.28) #12
  %regs1.i = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %power_detect.i = getelementptr inbounds %struct.goku_udc_regs, ptr %7, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  tail call void @arm_heavy_mb() #9
  %int_enable.i = getelementptr inbounds %struct.goku_udc_regs, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable.i, i32 0) #9, !srcloc !325
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %int_enable7.i = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %int_enable7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 53687000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %power_detect.i, i32 33554432) #9, !srcloc !325
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable.i) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  %arrayidx = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0
  %stopped.i = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.set.i = or i16 %bf.load.i, 32
  store i16 %bf.set.i, ptr %stopped.i, align 4
  %queue.i = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %queue.i
  br i1 %cmp.i.not.i, label %pci_name.exit.nuke.exit_crit_edge, label %if.end.i

pci_name.exit.nuke.exit_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

if.end.i:                                         ; preds = %pci_name.exit
  %15 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool3.not.i = icmp eq i16 %15, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef %arrayidx, i32 noundef -108) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %16 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i17.not19.i = icmp eq ptr %17, %queue.i
  br i1 %cmp.i17.not19.i, label %if.end5.i.nuke.exit_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.nuke.exit_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %18 = phi ptr [ %20, %while.body.i.while.body.i_crit_edge ], [ %17, %if.end5.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %18, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %19 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i17.not.i = icmp eq ptr %20, %queue.i
  br i1 %cmp.i17.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end5.i.nuke.exit_crit_edge, %pci_name.exit.nuke.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 1
  %stopped.i.1 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 1, i32 3
  %21 = ptrtoint ptr %stopped.i.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.1 = load i16, ptr %stopped.i.1, align 4
  %bf.set.i.1 = or i16 %bf.load.i.1, 32
  store i16 %bf.set.i.1, ptr %stopped.i.1, align 4
  %queue.i.1 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 1, i32 4
  %22 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %23, %queue.i.1
  br i1 %cmp.i.not.i.1, label %nuke.exit.nuke.exit.1_crit_edge, label %if.end.i.1

nuke.exit.nuke.exit.1_crit_edge:                  ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1

if.end.i.1:                                       ; preds = %nuke.exit
  %24 = and i16 %bf.load.i.1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool3.not.i.1 = icmp eq i16 %24, 0
  br i1 %tobool3.not.i.1, label %if.end.i.1.if.end5.i.1_crit_edge, label %if.then4.i.1

if.end.i.1.if.end5.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.1

if.then4.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.1, i32 noundef -108) #9
  br label %if.end5.i.1

if.end5.i.1:                                      ; preds = %if.then4.i.1, %if.end.i.1.if.end5.i.1_crit_edge
  %25 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i17.not19.i.1 = icmp eq ptr %26, %queue.i.1
  br i1 %cmp.i17.not19.i.1, label %if.end5.i.1.nuke.exit.1_crit_edge, label %if.end5.i.1.while.body.i.1_crit_edge

if.end5.i.1.while.body.i.1_crit_edge:             ; preds = %if.end5.i.1
  br label %while.body.i.1

if.end5.i.1.nuke.exit.1_crit_edge:                ; preds = %if.end5.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %if.end5.i.1.while.body.i.1_crit_edge
  %27 = phi ptr [ %29, %while.body.i.1.while.body.i.1_crit_edge ], [ %26, %if.end5.i.1.while.body.i.1_crit_edge ]
  %add.ptr.i.1 = getelementptr i8, ptr %27, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.1, ptr noundef %add.ptr.i.1, i32 noundef -108) #9
  %28 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i17.not.i.1 = icmp eq ptr %29, %queue.i.1
  br i1 %cmp.i17.not.i.1, label %while.body.i.1.nuke.exit.1_crit_edge, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.1

while.body.i.1.nuke.exit.1_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1

nuke.exit.1:                                      ; preds = %while.body.i.1.nuke.exit.1_crit_edge, %if.end5.i.1.nuke.exit.1_crit_edge, %nuke.exit.nuke.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 2
  %stopped.i.2 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 2, i32 3
  %30 = ptrtoint ptr %stopped.i.2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.2 = load i16, ptr %stopped.i.2, align 4
  %bf.set.i.2 = or i16 %bf.load.i.2, 32
  store i16 %bf.set.i.2, ptr %stopped.i.2, align 4
  %queue.i.2 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 2, i32 4
  %31 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %32, %queue.i.2
  br i1 %cmp.i.not.i.2, label %nuke.exit.1.nuke.exit.2_crit_edge, label %if.end.i.2

nuke.exit.1.nuke.exit.2_crit_edge:                ; preds = %nuke.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2

if.end.i.2:                                       ; preds = %nuke.exit.1
  %33 = and i16 %bf.load.i.2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool3.not.i.2 = icmp eq i16 %33, 0
  br i1 %tobool3.not.i.2, label %if.end.i.2.if.end5.i.2_crit_edge, label %if.then4.i.2

if.end.i.2.if.end5.i.2_crit_edge:                 ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.2

if.then4.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.2, i32 noundef -108) #9
  br label %if.end5.i.2

if.end5.i.2:                                      ; preds = %if.then4.i.2, %if.end.i.2.if.end5.i.2_crit_edge
  %34 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i17.not19.i.2 = icmp eq ptr %35, %queue.i.2
  br i1 %cmp.i17.not19.i.2, label %if.end5.i.2.nuke.exit.2_crit_edge, label %if.end5.i.2.while.body.i.2_crit_edge

if.end5.i.2.while.body.i.2_crit_edge:             ; preds = %if.end5.i.2
  br label %while.body.i.2

if.end5.i.2.nuke.exit.2_crit_edge:                ; preds = %if.end5.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2

while.body.i.2:                                   ; preds = %while.body.i.2.while.body.i.2_crit_edge, %if.end5.i.2.while.body.i.2_crit_edge
  %36 = phi ptr [ %38, %while.body.i.2.while.body.i.2_crit_edge ], [ %35, %if.end5.i.2.while.body.i.2_crit_edge ]
  %add.ptr.i.2 = getelementptr i8, ptr %36, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.2, ptr noundef %add.ptr.i.2, i32 noundef -108) #9
  %37 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i17.not.i.2 = icmp eq ptr %38, %queue.i.2
  br i1 %cmp.i17.not.i.2, label %while.body.i.2.nuke.exit.2_crit_edge, label %while.body.i.2.while.body.i.2_crit_edge

while.body.i.2.while.body.i.2_crit_edge:          ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.2

while.body.i.2.nuke.exit.2_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2

nuke.exit.2:                                      ; preds = %while.body.i.2.nuke.exit.2_crit_edge, %if.end5.i.2.nuke.exit.2_crit_edge, %nuke.exit.1.nuke.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 3
  %stopped.i.3 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 3, i32 3
  %39 = ptrtoint ptr %stopped.i.3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i.3 = load i16, ptr %stopped.i.3, align 4
  %bf.set.i.3 = or i16 %bf.load.i.3, 32
  store i16 %bf.set.i.3, ptr %stopped.i.3, align 4
  %queue.i.3 = getelementptr %struct.goku_udc, ptr %dev, i32 0, i32 2, i32 3, i32 4
  %40 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %41, %queue.i.3
  br i1 %cmp.i.not.i.3, label %nuke.exit.2.nuke.exit.3_crit_edge, label %if.end.i.3

nuke.exit.2.nuke.exit.3_crit_edge:                ; preds = %nuke.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3

if.end.i.3:                                       ; preds = %nuke.exit.2
  %42 = and i16 %bf.load.i.3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool3.not.i.3 = icmp eq i16 %42, 0
  br i1 %tobool3.not.i.3, label %if.end.i.3.if.end5.i.3_crit_edge, label %if.then4.i.3

if.end.i.3.if.end5.i.3_crit_edge:                 ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.3

if.then4.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.3, i32 noundef -108) #9
  br label %if.end5.i.3

if.end5.i.3:                                      ; preds = %if.then4.i.3, %if.end.i.3.if.end5.i.3_crit_edge
  %43 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i17.not19.i.3 = icmp eq ptr %44, %queue.i.3
  br i1 %cmp.i17.not19.i.3, label %if.end5.i.3.nuke.exit.3_crit_edge, label %if.end5.i.3.while.body.i.3_crit_edge

if.end5.i.3.while.body.i.3_crit_edge:             ; preds = %if.end5.i.3
  br label %while.body.i.3

if.end5.i.3.nuke.exit.3_crit_edge:                ; preds = %if.end5.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3

while.body.i.3:                                   ; preds = %while.body.i.3.while.body.i.3_crit_edge, %if.end5.i.3.while.body.i.3_crit_edge
  %45 = phi ptr [ %47, %while.body.i.3.while.body.i.3_crit_edge ], [ %44, %if.end5.i.3.while.body.i.3_crit_edge ]
  %add.ptr.i.3 = getelementptr i8, ptr %45, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.3, ptr noundef %add.ptr.i.3, i32 noundef -108) #9
  %46 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i17.not.i.3 = icmp eq ptr %47, %queue.i.3
  br i1 %cmp.i17.not.i.3, label %while.body.i.3.nuke.exit.3_crit_edge, label %while.body.i.3.while.body.i.3_crit_edge

while.body.i.3.while.body.i.3_crit_edge:          ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.3

while.body.i.3.nuke.exit.3_crit_edge:             ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3

nuke.exit.3:                                      ; preds = %while.body.i.3.nuke.exit.3_crit_edge, %if.end5.i.3.nuke.exit.3_crit_edge, %nuke.exit.2.nuke.exit.3_crit_edge
  %driver = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 3
  %48 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %49, null
  br i1 %tobool.not, label %nuke.exit.3.if.end_crit_edge, label %if.then

nuke.exit.3.if.end_crit_edge:                     ; preds = %nuke.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %nuke.exit.3
  %50 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs1.i, align 4
  %power_detect.i8 = getelementptr inbounds %struct.goku_udc_regs, ptr %51, i32 0, i32 9
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %power_detect.i8) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %53 = and i32 %52, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep0_start(ptr noundef %dev) #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44, i32 3
  %56 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %59, %if.end.i.i.i ], [ %57, %do.end.i.pci_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.27) #12
  %60 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 524288, ptr %int_enable7.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %int_enable7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %int_enable7.i, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i, align 4
  %int_enable9.i = getelementptr inbounds %struct.goku_udc_regs, ptr %65, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable9.i, i32 %63) #9, !srcloc !325
  br label %if.end

if.end:                                           ; preds = %pci_name.exit.i, %if.then.i, %nuke.exit.3.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_dma(ptr nocapture noundef readonly %ep, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %num = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %5 = lshr i16 %bf.load, 4
  %6 = and i16 %5, 4080
  %7 = or i16 %6, 7
  %or.i = zext i16 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %8) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 64424400) #9
  %queue = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %dma_master = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  %13 = and i32 %12, 1729036288
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load4 = load i16, ptr %num, align 4
  %16 = and i16 %bf.load4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %18 = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.finished_crit_edge, label %if.end, !prof !350

if.then.finished_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %finished

if.end:                                           ; preds = %if.then
  %in_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %in_dma_current) #9, !srcloc !327
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %in_dma_end = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %in_dma_end, i32 %19) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %in_dma_start = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %in_dma_start, i32 %19) #9, !srcloc !325
  %and25 = and i32 %14, 803
  %or = or i32 %and25, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_master, i32 %21) #9, !srcloc !325
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.end.if.end98_crit_edge, label %do.end41

if.end.if.end98_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end41:                                         ; preds = %if.end
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end41.pci_name.exit_crit_edge

do.end41.pci_name.exit_crit_edge:                 ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end41.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %do.end41.pci_name.exit_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i) #12
  br label %if.end98

if.else:                                          ; preds = %entry
  %32 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp54 = icmp eq i32 %32, 0
  br i1 %cmp54, label %if.else.finished_crit_edge, label %if.end62, !prof !350

if.else.finished_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %finished

if.end62:                                         ; preds = %if.else
  %out_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 5
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %out_dma_current) #9, !srcloc !327
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  %out_dma_end = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %out_dma_end, i32 %33) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  tail call void @arm_heavy_mb() #9
  %out_dma_start = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %out_dma_start, i32 %33) #9, !srcloc !325
  %and74 = and i32 %14, 3141
  %or75 = or i32 %and74, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or75)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_master, i32 %35) #9, !srcloc !325
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool87.not = icmp eq i32 %37, 0
  br i1 %tobool87.not, label %if.end62.if.end98_crit_edge, label %do.end91

if.end62.if.end98_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end91:                                         ; preds = %if.end62
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %pdev94 = getelementptr inbounds %struct.goku_udc, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %pdev94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev94, align 8
  %init_name.i.i158 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %42 = ptrtoint ptr %init_name.i.i158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i158, align 8
  %tobool.not.i.i159 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i159, label %if.end.i.i161, label %do.end91.pci_name.exit163_crit_edge

do.end91.pci_name.exit163_crit_edge:              ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit163

if.end.i.i161:                                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i160 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %44 = ptrtoint ptr %dev.i160 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i160, align 4
  br label %pci_name.exit163

pci_name.exit163:                                 ; preds = %if.end.i.i161, %do.end91.pci_name.exit163_crit_edge
  %retval.0.i.i162 = phi ptr [ %45, %if.end.i.i161 ], [ %43, %do.end91.pci_name.exit163_crit_edge ]
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i162) #12
  br label %if.end98

if.end98:                                         ; preds = %pci_name.exit163, %if.end62.if.end98_crit_edge, %pci_name.exit, %if.end.if.end98_crit_edge
  %curr.0 = phi i32 [ %20, %pci_name.exit ], [ %20, %if.end.if.end98_crit_edge ], [ %34, %pci_name.exit163 ], [ %34, %if.end62.if.end98_crit_edge ]
  %dma = getelementptr i8, ptr %11, i32 -48
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma, align 4
  %sub = add i32 %curr.0, 1
  %add = sub i32 %sub, %47
  %actual = getelementptr i8, ptr %11, i32 -4
  %48 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %actual, align 4
  %status102 = getelementptr i8, ptr %11, i32 -8
  %49 = ptrtoint ptr %status102 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %status, ptr %status102, align 4
  %50 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load107 = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %51 = lshr i16 %bf.load107, 4
  %52 = and i16 %51, 4080
  %53 = or i16 %52, 8
  %or.i165 = zext i16 %53 to i32
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i165) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %54) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 64424400) #9
  br label %cleanup

finished:                                         ; preds = %if.else.finished_crit_edge, %if.then.finished_crit_edge
  %56 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load111 = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %57 = lshr i16 %bf.load111, 4
  %58 = and i16 %57, 4080
  %59 = or i16 %58, 8
  %or.i168 = zext i16 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i168) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %60) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 64424400) #9
  %length = getelementptr i8, ptr %11, i32 -52
  %62 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length, align 4
  %actual116 = getelementptr i8, ptr %11, i32 -4
  %64 = ptrtoint ptr %actual116 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %actual116, align 4
  %status118 = getelementptr i8, ptr %11, i32 -8
  %65 = ptrtoint ptr %status118 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %status118, align 4
  br label %cleanup

cleanup:                                          ; preds = %finished, %if.end98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped1 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %stopped1, align 4
  %queue = getelementptr inbounds %struct.goku_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.goku_request, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.goku_request, ptr %req, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %10)
  %cmp = icmp eq i32 %10, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge, !prof !322

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %dev9 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %14 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load10 = load i16, ptr %stopped1, align 4
  %15 = and i16 %bf.load10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool14.not = icmp eq i16 %15, 0
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr18 = lshr i16 %bf.load10, 6
  %bf.clear19 = and i16 %bf.lshr18, 1
  %bf.cast20 = zext i16 %bf.clear19 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %13, ptr noundef %req, i32 noundef %bf.cast20) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end.if.end21_crit_edge
  %bf.clear = and i16 %bf.load, 32
  %16 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load27 = load i16, ptr %stopped1, align 4
  %bf.set = or i16 %bf.load27, 32
  store i16 %bf.set, ptr %stopped1, align 4
  %lock = getelementptr inbounds %struct.goku_udc, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %17 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load33 = load i16, ptr %stopped1, align 4
  %bf.clear34 = and i16 %bf.load33, -33
  %bf.set35 = or i16 %bf.clear34, %bf.clear
  store i16 %bf.set35, ptr %stopped1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_reset(ptr noundef %regs, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %regs, null
  br i1 %tobool.not, label %entry.if.end105_crit_edge, label %if.then

entry.if.end105_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then:                                          ; preds = %entry
  %num = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %3 = lshr i16 %bf.load, 4
  %4 = and i16 %3, 4080
  %5 = or i16 %4, 5
  %or.i = zext i16 %5 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %regs, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %6) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 64424400) #9
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load3 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load3)
  %tobool6.not = icmp ult i16 %bf.load3, 256
  br i1 %tobool6.not, label %if.then.do.body_crit_edge, label %if.then7

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then7:                                         ; preds = %if.then
  %bf.lshr4 = lshr i16 %bf.load3, 8
  %trunc = trunc i16 %bf.lshr4 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %trunc, label %if.then7.if.end21_crit_edge [
    i8 1, label %if.then7.if.end21.sink.split_crit_edge
    i8 2, label %if.then18
  ]

if.then7.if.end21.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then18, %if.then7.if.end21.sink.split_crit_edge
  %.sink149 = phi i32 [ -131073, %if.then18 ], [ -98305, %if.then7.if.end21.sink.split_crit_edge ]
  %int_enable = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_enable, align 8
  %and20 = and i32 %11, %.sink149
  store i32 %and20, ptr %int_enable, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.then7.if.end21_crit_edge
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load23 = load i16, ptr %num, align 4
  %bf.lshr24 = lshr i16 %bf.load23, 8
  %bf.cast25 = zext i16 %bf.lshr24 to i32
  %shl = shl i32 32, %bf.cast25
  %neg = xor i32 %shl, -1
  br label %do.body

do.body:                                          ; preds = %if.end21, %if.then.do.body_crit_edge
  %neg.sink = phi i32 [ %neg, %if.end21 ], [ -45, %if.then.do.body_crit_edge ]
  %int_enable26 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %int_enable26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_enable26, align 8
  %and27 = and i32 %14, %neg.sink
  store i32 %and27, ptr %int_enable26, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  tail call void @arm_heavy_mb() #9
  %int_enable32 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %int_enable32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_enable32, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %int_enable33 = getelementptr inbounds %struct.goku_udc_regs, ptr %regs, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable33, i32 %17) #9, !srcloc !325
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable33) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load37 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %bf.load37)
  %cmp40 = icmp ult i16 %bf.load37, 768
  br i1 %cmp40, label %if.then41, label %do.body.if.end77_crit_edge

do.body.if.end77_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  %regs43 = getelementptr inbounds %struct.goku_udc, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs43, align 4
  %EPxSingle = getelementptr inbounds %struct.goku_udc_regs, ptr %23, i32 0, i32 42
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxSingle) #9, !srcloc !327
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load51 = load i16, ptr %num, align 4
  %bf.lshr52 = lshr i16 %bf.load51, 8
  %bf.cast53 = zext i16 %bf.lshr52 to i32
  %shl54 = shl i32 17, %bf.cast53
  %neg55 = xor i32 %shl54, -1
  %and56 = and i32 %25, %neg55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and56)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPxSingle, i32 %27) #9, !srcloc !325
  %EPxBCS = getelementptr inbounds %struct.goku_udc_regs, ptr %23, i32 0, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxBCS) #9, !srcloc !327
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load67 = load i16, ptr %num, align 4
  %bf.lshr68 = lshr i16 %bf.load67, 8
  %bf.cast69 = zext i16 %bf.lshr68 to i32
  %shl70 = shl i32 17, %bf.cast69
  %neg71 = xor i32 %shl70, -1
  %and72 = and i32 %29, %neg71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %and72)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPxBCS, i32 %31) #9, !srcloc !325
  br label %if.end77

if.end77:                                         ; preds = %if.then41, %do.body.if.end77_crit_edge
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load78 = load i16, ptr %num, align 4
  %33 = and i16 %bf.load78, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool81.not = icmp eq i16 %33, 0
  br i1 %tobool81.not, label %if.end77.if.end105_crit_edge, label %if.then82

if.end77.if.end105_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %dma_master = getelementptr inbounds %struct.goku_udc_regs, ptr %regs, i32 0, i32 2
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  %35 = and i32 %34, 1729036288
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load90 = load i16, ptr %num, align 4
  %bf.lshr91.mask = and i16 %bf.load90, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.lshr91.mask)
  %cmp93 = icmp eq i16 %bf.lshr91.mask, 256
  %and95 = and i32 %36, 3141
  %or = or i32 %and95, 32
  %and97 = and i32 %36, 803
  %or98 = or i32 %and97, 64
  %master.0 = select i1 %cmp93, i32 %or, i32 %or98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %master.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_master, i32 %38) #9, !srcloc !325
  br label %if.end105

if.end105:                                        ; preds = %if.then82, %if.end77.if.end105_crit_edge, %entry.if.end105_crit_edge
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #9
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %desc, align 4
  %stopped = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %40 = ptrtoint ptr %stopped to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load108 = load i16, ptr %stopped, align 4
  %irqs = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 2
  %41 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %irqs, align 4
  %bf.set = and i16 %bf.load108, -161
  %bf.clear112 = or i16 %bf.set, 32
  store i16 %bf.clear112, ptr %stopped, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %dev4 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  %ep5 = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 2
  %cmp6 = icmp eq ptr %ep5, %_ep
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %lor.lhs.false11.cleanup_crit_edge, label %if.end15

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %num = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %num, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress.i, align 1
  %11 = and i8 %10, 15
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %12)
  %cmp16.not = icmp eq i16 %bf.lshr, %12
  br i1 %cmp16.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.not = icmp eq i8 %15, 0
  br i1 %switch.not, label %if.end19.cleanup_crit_edge, label %sw.epilog

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end19
  %reg_status = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 7
  %16 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_status, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  %19 = and i32 %18, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 469762048, i32 %19)
  %cmp24.not = icmp eq i32 %19, 469762048
  br i1 %cmp24.not, label %if.end27, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %conv29 = zext i16 %22 to i32
  %23 = add nsw i32 %conv29, -8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 29)
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %24, label %if.end27.cleanup_crit_edge [
    i32 7, label %sw.bb30
    i32 3, label %if.end27.sw.bb31_crit_edge
    i32 1, label %if.end27.sw.bb33_crit_edge
    i32 0, label %if.end27.sw.bb35_crit_edge
  ]

if.end27.sw.bb35_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end27.sw.bb33_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.end27.sw.bb31_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb30, %if.end27.sw.bb31_crit_edge
  %mode.0 = phi i32 [ 8, %if.end27.sw.bb31_crit_edge ], [ 16, %sw.bb30 ]
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb31, %if.end27.sw.bb33_crit_edge
  %mode.1 = phi i32 [ 0, %if.end27.sw.bb33_crit_edge ], [ %mode.0, %sw.bb31 ]
  %phi.bo = add nuw nsw i32 %mode.1, 8
  %phi.bo272 = or i32 %phi.bo, 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %sw.bb33, %if.end27.sw.bb35_crit_edge
  %mode.2 = phi i32 [ 4, %if.end27.sw.bb35_crit_edge ], [ %phi.bo272, %sw.bb33 ]
  %26 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i, align 1
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load39 = load i16, ptr %num, align 4
  %29 = lshr i8 %27, 1
  %30 = and i8 %29, 64
  %bf.value = zext i8 %30 to i16
  %bf.clear = and i16 %bf.load39, -65
  %bf.set = or i16 %bf.clear, %bf.value
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool45.not = icmp sgt i8 %27, -1
  br i1 %tobool45.not, label %land.end71, label %if.then46

if.then46:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %or47 = or i32 %mode.2, 1
  %bf.lshr52.mask = and i16 %bf.load39, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %bf.lshr52.mask)
  %cmp54 = icmp eq i16 %bf.lshr52.mask, 512
  %bf.shl58 = select i1 %cmp54, i16 128, i16 0
  %bf.clear59 = and i16 %bf.set, -129
  %bf.set60 = or i16 %bf.clear59, %bf.shl58
  br label %do.body94

land.end71:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear77 = and i16 %bf.set, -129
  br label %do.body94

do.body94:                                        ; preds = %land.end71, %if.then46
  %storemerge = phi i16 [ %bf.set60, %if.then46 ], [ %bf.clear77, %land.end71 ]
  %mode.3 = phi i32 [ %or47, %if.then46 ], [ %mode.2, %land.end71 ]
  %31 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge, ptr %num, align 4
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 4
  %lock = getelementptr inbounds %struct.goku_udc, ptr %33, i32 0, i32 1
  %call100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load106 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %bf.load106)
  %cmp109 = icmp ult i16 %bf.load106, 768
  br i1 %cmp109, label %if.then111, label %do.body94.do.body165_crit_edge

do.body94.do.body165_crit_edge:                   ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then111:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4, align 4
  %regs113 = getelementptr inbounds %struct.goku_udc, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs113, align 4
  %39 = and i16 %bf.load106, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool120.not = icmp eq i16 %39, 0
  %40 = and i16 %bf.load106, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool126.not = icmp eq i16 %40, 0
  %phi.sel = select i1 %tobool126.not, i32 16, i32 17
  %41 = select i1 %tobool120.not, i32 %phi.sel, i32 16
  %bf.lshr129 = lshr i16 %bf.load106, 8
  %bf.cast130 = zext i16 %bf.lshr129 to i32
  %shl131 = shl nuw nsw i32 %41, %bf.cast130
  %EPxSingle = getelementptr inbounds %struct.goku_udc_regs, ptr %38, i32 0, i32 42
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxSingle) #9, !srcloc !327
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  %or137 = or i32 %43, %shl131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %or137)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPxSingle, i32 %44) #9, !srcloc !325
  %45 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load143 = load i16, ptr %num, align 4
  %46 = and i16 %bf.load143, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool147.not = icmp eq i16 %46, 0
  %cond148 = select i1 %tobool147.not, i32 17, i32 16
  %bf.lshr151 = lshr i16 %bf.load143, 8
  %bf.cast152 = zext i16 %bf.lshr151 to i32
  %shl153 = shl i32 %cond148, %bf.cast152
  %EPxBCS = getelementptr inbounds %struct.goku_udc_regs, ptr %38, i32 0, i32 44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPxBCS) #9, !srcloc !327
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  %or159 = or i32 %shl153, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or159)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPxBCS, i32 %49) #9, !srcloc !325
  br label %do.body165

do.body165:                                       ; preds = %if.then111, %do.body94.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %mode.3)
  %reg_mode = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 6
  %51 = ptrtoint ptr %reg_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mode, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !325
  %53 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev4, align 4
  %regs169 = getelementptr inbounds %struct.goku_udc, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %regs169 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs169, align 4
  %57 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load171 = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %58 = lshr i16 %bf.load171, 4
  %59 = and i16 %58, 4080
  %60 = or i16 %59, 3
  %or.i = zext i16 %60 to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %56, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %61) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 64424400) #9
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %63 = zext i16 %22 to i56
  %64 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %64, i32 7)
  %bf.load176 = load i56, ptr %maxpacket, align 2
  %bf.shl178 = shl nuw i56 %63, 40
  %bf.clear179 = and i56 %bf.load176, 1099511627775
  %bf.set180 = or i56 %bf.clear179, %bf.shl178
  store i56 %bf.set180, ptr %maxpacket, align 2
  %65 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load182 = load i16, ptr %num, align 4
  %bf.clear183 = and i16 %bf.load182, -33
  store i16 %bf.clear183, ptr %num, align 4
  %desc186 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %66 = ptrtoint ptr %desc186 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %desc, ptr %desc186, align 4
  %67 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev4, align 4
  %lock188 = getelementptr inbounds %struct.goku_udc, ptr %68, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock188, i32 noundef %call100) #9
  %pdev193 = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 6
  %69 = ptrtoint ptr %pdev193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev193, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44, i32 3
  %71 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body165.pci_name.exit_crit_edge

do.body165.pci_name.exit_crit_edge:               ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.body165.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %74, %if.end.i.i ], [ %72, %do.body165.pci_name.exit_crit_edge ]
  %name196 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %75 = ptrtoint ptr %name196 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name196, align 4
  %77 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load198 = load i16, ptr %num, align 4
  %78 = and i16 %bf.load198, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool202.not = icmp eq i16 %78, 0
  %cond203 = select i1 %tobool202.not, ptr @.str.47, ptr @.str.46
  %79 = and i16 %bf.load198, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool209.not = icmp eq i16 %79, 0
  %cond210 = select i1 %tobool209.not, ptr @.str.49, ptr @.str.48
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef %76, ptr noundef nonnull %cond203, ptr noundef nonnull %cond210, i32 noundef %conv29) #12
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %if.end27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pci_name.exit ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -108, %lor.lhs.false11.cleanup_crit_edge ], [ -108, %if.end9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -16, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dev3 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stopped.i = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %6 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.set.i = or i16 %bf.load.i, 32
  store i16 %bf.set.i, ptr %stopped.i, align 4
  %queue.i = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 4
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not.i, label %do.body7.nuke.exit_crit_edge, label %if.end.i

do.body7.nuke.exit_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

if.end.i:                                         ; preds = %do.body7
  %9 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not.i = icmp eq i16 %9, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef nonnull %_ep, i32 noundef -108) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i17.not19.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i17.not19.i, label %if.end5.i.nuke.exit_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.nuke.exit_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %12 = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %11, %if.end5.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %12, i32 -56
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i17.not.i = icmp eq ptr %14, %queue.i
  br i1 %cmp.i17.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end5.i.nuke.exit_crit_edge, %do.body7.nuke.exit_crit_edge
  %regs = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  tail call fastcc void @ep_reset(ptr noundef %16, ptr noundef nonnull %_ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %nuke.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nuke.exit ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @goku_alloc_request(ptr noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !322

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
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

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 68) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.goku_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.goku_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goku_free_request(ptr noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.goku_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !322

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 293, i32 noundef 9, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %_req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !350

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2, !prof !350

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.rhs, !prof !350

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false2
  %queue = getelementptr inbounds %struct.goku_request, ptr %_req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp ne ptr %5, %queue
  %tobool11.not = icmp eq ptr %_ep, null
  %or.cond240 = or i1 %tobool11.not, %cmp.i
  br i1 %or.cond240, label %lor.rhs.cleanup_crit_edge, label %lor.rhs12, !prof !412

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs12:                                        ; preds = %lor.rhs
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.rhs, label %lor.rhs12.if.end23_crit_edge

lor.rhs12.if.end23_crit_edge:                     ; preds = %lor.rhs12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.rhs:                                         ; preds = %lor.rhs12
  %num = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %bf.load)
  %cmp = icmp ugt i16 %bf.load, 255
  br i1 %cmp, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end23_crit_edge, !prof !350

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %land.rhs.if.end23_crit_edge, %lor.rhs12.if.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %9 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev24, align 4
  %driver = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %lor.rhs26, !prof !350

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs26:                                        ; preds = %if.end23
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp27 = icmp eq i32 %14, 0
  br i1 %cmp27, label %lor.rhs26.cleanup_crit_edge, label %if.end36, !prof !350

lor.rhs26.cleanup_crit_edge:                      ; preds = %lor.rhs26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %lor.rhs26
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 4
  %15 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp37 = icmp eq i32 %16, 6
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %dma = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load40 = load i16, ptr %dma, align 4
  %18 = and i16 %bf.load40, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool43.not = icmp eq i16 %18, 0
  br i1 %tobool43.not, label %if.end39.do.body56_crit_edge, label %if.then44

if.end39.do.body56_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.then44:                                        ; preds = %if.end39
  %bf.lshr48 = lshr i16 %bf.load40, 6
  %bf.clear49 = and i16 %bf.lshr48, 1
  %bf.cast50 = zext i16 %bf.clear49 to i32
  %call51 = tail call i32 @usb_gadget_map_request(ptr noundef %10, ptr noundef nonnull %_req, i32 noundef %bf.cast50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then44.do.body56_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44.do.body56_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

do.body56:                                        ; preds = %if.then44.do.body56_crit_edge, %if.end39.do.body56_crit_edge
  %lock = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 1
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %status63 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %19 = ptrtoint ptr %status63 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -115, ptr %status63, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %actual, align 4
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load65 = load i16, ptr %dma, align 4
  %22 = and i16 %bf.load65, -192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %22)
  %23 = icmp eq i16 %22, 64
  br i1 %23, label %if.then84, label %do.body56.if.end87_crit_edge, !prof !350

do.body56.if.end87_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then84:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %24 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load85 = load i32, ptr %zero, align 4
  %bf.set = or i32 %bf.load85, 8192
  store i32 %bf.set, ptr %zero, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %do.body56.if.end87_crit_edge
  %queue88 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 4
  %25 = ptrtoint ptr %queue88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue88, align 4
  %cmp.i241.not = icmp eq ptr %26, %queue88
  br i1 %cmp.i241.not, label %land.lhs.true, label %if.end87.if.then144_crit_edge

if.end87.if.then144_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

land.lhs.true:                                    ; preds = %if.end87
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load91 = load i16, ptr %dma, align 4
  %28 = and i16 %bf.load91, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool95.not = icmp eq i16 %28, 0
  br i1 %tobool95.not, label %if.then104, label %land.lhs.true.if.then144_crit_edge, !prof !322

land.lhs.true.if.then144_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

if.then104:                                       ; preds = %land.lhs.true
  %29 = and i16 %bf.load91, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool110.not = icmp eq i16 %29, 0
  br i1 %tobool110.not, label %if.end120, label %if.end120.thread

if.end120.thread:                                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_dma(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.then144

if.end120:                                        ; preds = %if.then104
  %30 = and i16 %bf.load91, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool118.not = icmp eq i16 %30, 0
  %cond = select i1 %tobool118.not, ptr @read_fifo, ptr @write_fifo
  %call119 = tail call i32 %cond(ptr noundef nonnull %_ep, ptr noundef nonnull %_req) #9, !callees !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp121.not = icmp eq i32 %call119, 0
  br i1 %cmp121.not, label %if.end120.if.then144_crit_edge, label %if.end135, !prof !322

if.end120.if.then144_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

if.end135:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 @llvm.smin.i32(i32 %call119, i32 0)
  br label %if.end147

if.then144:                                       ; preds = %if.end120.if.then144_crit_edge, %if.end120.thread, %land.lhs.true.if.then144_crit_edge, %if.end87.if.then144_crit_edge
  %prev.i = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %33, ptr noundef %queue88) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then144.if.end147_crit_edge

if.then144.if.end147_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.end.i.i:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue, ptr %prev.i, align 4
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %queue88, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.goku_request, ptr %_req, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue, ptr %33, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end.i.i, %if.then144.if.end147_crit_edge, %if.end135
  %status.1251 = phi i32 [ %31, %if.end135 ], [ 0, %if.then144.if.end147_crit_edge ], [ 0, %if.end.i.i ]
  %38 = ptrtoint ptr %queue88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %queue88, align 4
  %cmp.i243.not = icmp eq ptr %39, %queue88
  br i1 %cmp.i243.not, label %if.end147.if.end190_crit_edge, label %land.lhs.true159, !prof !350

if.end147.if.end190_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

land.lhs.true159:                                 ; preds = %if.end147
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load161 = load i16, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %bf.load161)
  %cmp164.not = icmp ugt i16 %bf.load161, 255
  %41 = and i16 %bf.load161, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool178.not = icmp eq i16 %41, 0
  %or.cond = and i1 %cmp164.not, %tobool178.not
  br i1 %or.cond, label %land.lhs.true179, label %land.lhs.true159.if.end190_crit_edge, !prof !413

land.lhs.true159.if.end190_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

land.lhs.true179:                                 ; preds = %land.lhs.true159
  %bf.lshr162 = lshr i16 %bf.load161, 8
  %bf.cast163 = zext i16 %bf.lshr162 to i32
  %int_enable = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 8
  %42 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %int_enable, align 8
  %shl = shl i32 32, %bf.cast163
  %and = and i32 %43, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool184.not = icmp eq i32 %and, 0
  br i1 %tobool184.not, label %if.then185, label %land.lhs.true179.if.end190_crit_edge

land.lhs.true179.if.end190_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then185:                                       ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 7
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %or.i = or i32 %43, %shl
  %46 = ptrtoint ptr %int_enable to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i, ptr %int_enable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %int_enable, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %int_enable2.i = getelementptr inbounds %struct.goku_udc_regs, ptr %45, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable2.i, i32 %49) #9, !srcloc !325
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %land.lhs.true179.if.end190_crit_edge, %land.lhs.true159.if.end190_crit_edge, %if.end147.if.end190_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call60) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.then44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %lor.rhs26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1251, %if.end190 ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -108, %lor.rhs26.cleanup_crit_edge ], [ -16, %if.end36.cleanup_crit_edge ], [ %call51, %if.then44.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %num = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 256
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %dev5 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %driver = getelementptr inbounds %struct.goku_udc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp9 = icmp eq i32 %8, 6
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %do.body13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.goku_udc, ptr %4, i32 0, i32 1
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.body13
  %.pn.in = phi ptr [ %queue, %do.body13 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp26.not = icmp eq ptr %.pn, %queue
  %cmp29 = icmp eq ptr %req.0, %_req
  %or.cond101 = or i1 %cmp26.not, %cmp29
  br i1 %or.cond101, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp29, label %if.end43, label %if.then41

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  br label %cleanup

if.end43:                                         ; preds = %for.end
  %dma = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load44 = load i16, ptr %dma, align 4
  %11 = and i16 %bf.load44, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool47.not = icmp eq i16 %11, 0
  br i1 %tobool47.not, label %if.end43.if.else_crit_edge, label %land.lhs.true48

if.end43.if.else_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true48:                                  ; preds = %if.end43
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue, align 4
  %cmp52 = icmp eq ptr %13, %.pn
  %14 = and i16 %bf.load44, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool59.not = icmp eq i16 %14, 0
  %or.cond102 = select i1 %cmp52, i1 %tobool59.not, i1 false
  br i1 %or.cond102, label %if.then60, label %land.lhs.true48.if.else_crit_edge

land.lhs.true48.if.else_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then60:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @abort_dma(ptr noundef nonnull %_ep, i32 noundef -104)
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  tail call fastcc void @dma_advance(ptr noundef %4, ptr noundef nonnull %_ep)
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true48.if.else_crit_edge, %if.end43.if.else_crit_edge
  %15 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %.pn, align 4
  %cmp.i.not = icmp eq ptr %16, %.pn
  br i1 %cmp.i.not, label %if.else.if.end67_crit_edge, label %if.then64

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.else.if.end67_crit_edge, %if.then60
  %req.1 = phi ptr [ %_req, %if.then64 ], [ %_req, %if.then60 ], [ null, %if.else.if.end67_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  %tobool69.not = icmp eq ptr %req.1, null
  %cond = select i1 %tobool69.not, i32 -95, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then41, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then41 ], [ %cond, %if.end67 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 256
  br i1 %cmp, label %if.then2, label %if.else9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool3.not = icmp eq i32 %value, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %ep0state, align 8
  %4 = load ptr, ptr %dev, align 4
  %stopped = getelementptr inbounds %struct.goku_udc, ptr %4, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %stopped to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load7 = load i16, ptr %stopped, align 4
  %bf.set = or i16 %bf.load7, 32
  store i16 %bf.set, ptr %stopped, align 4
  br label %do.body20

if.else9:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end, label %if.else9.do.body20_crit_edge

if.else9.do.body20_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

do.end:                                           ; preds = %if.else9
  %dev14 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14, align 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.58, ptr noundef %17) #12
  br label %cleanup

do.body20:                                        ; preds = %if.else9.do.body20_crit_edge, %if.then4
  %dev23 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  %lock = getelementptr inbounds %struct.goku_udc, ptr %19, i32 0, i32 1
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 4
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %21, %queue
  br i1 %cmp.i.not, label %if.else33, label %do.body20.if.end75_crit_edge

do.body20.if.end75_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else33:                                        ; preds = %do.body20
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load34 = load i16, ptr %num, align 4
  %23 = and i16 %bf.load34, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool38.not = icmp eq i16 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool39.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool39.not, %tobool38.not
  br i1 %or.cond, label %if.else33.if.else51_crit_edge, label %land.lhs.true40

if.else33.if.else51_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

land.lhs.true40:                                  ; preds = %if.else33
  %24 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev23, align 4
  %regs = getelementptr inbounds %struct.goku_udc, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %DataSet = getelementptr inbounds %struct.goku_udc_regs, ptr %27, i32 0, i32 37
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DataSet) #9, !srcloc !327
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load46 = load i16, ptr %num, align 4
  %31 = lshr i16 %bf.load46, 7
  %32 = and i16 %31, 510
  %mul = zext i16 %32 to i32
  %shl = shl i32 3, %mul
  %and = and i32 %shl, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %land.lhs.true40.if.else51_crit_edge, label %land.lhs.true40.if.end75_crit_edge

land.lhs.true40.if.end75_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true40.if.else51_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true40.if.else51_crit_edge, %if.else33.if.else51_crit_edge
  br i1 %tobool39.not, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @goku_clear_halt(ptr noundef nonnull %_ep)
  br label %if.end75

if.else54:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load56 = load i16, ptr %num, align 4
  %bf.set58 = or i16 %bf.load56, 32
  store i16 %bf.set58, ptr %num, align 4
  %34 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev23, align 4
  %regs63 = getelementptr inbounds %struct.goku_udc, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %regs63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs63, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %38 = lshr i16 %bf.load56, 4
  %39 = and i16 %38, 4080
  %40 = or i16 %39, 4
  %or.i = zext i16 %40 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %37, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %41) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 64424400) #9
  %reg_status = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 7
  %43 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_status, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  br label %if.end75

if.end75:                                         ; preds = %if.else54, %if.then53, %land.lhs.true40.if.end75_crit_edge, %do.body20.if.end75_crit_edge
  %retval1.0 = phi i32 [ 0, %if.else54 ], [ 0, %if.then53 ], [ -11, %do.body20.if.end75_crit_edge ], [ -11, %land.lhs.true40.if.end75_crit_edge ]
  %46 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev23, align 4
  %lock77 = getelementptr inbounds %struct.goku_udc, ptr %47, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock77, i32 noundef %call25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %pci_name.exit, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end75 ], [ -22, %pci_name.exit ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goku_fifo_status(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_in = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_in, align 4
  %1 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %regs4 = getelementptr inbounds %struct.goku_udc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs4, align 4
  %bf.lshr6 = lshr i16 %bf.load, 8
  %bf.cast7 = zext i16 %bf.lshr6 to i32
  %arrayidx = getelementptr %struct.goku_udc_regs, ptr %5, i32 0, i32 17, i32 %bf.cast7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !327
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  %and = and i32 %7, 127
  %8 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load13 = load i16, ptr %is_in, align 4
  %bf.lshr14 = lshr i16 %bf.load13, 8
  %bf.cast15 = zext i16 %bf.lshr14 to i32
  %arrayidx16 = getelementptr %struct.goku_udc_regs, ptr %5, i32 0, i32 19, i32 %bf.cast15
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx16) #9, !srcloc !327
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %and20 = and i32 %10, 127
  %add = add nuw nsw i32 %and20, %and
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end3 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goku_fifo_flush(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %num = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 256
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %do.end6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end6:                                          ; preds = %land.lhs.true
  %dev = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end6.pci_name.exit_crit_edge

do.end6.pci_name.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end6.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %do.end6.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.59, ptr noundef %12) #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 1
  %13 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev11, align 4
  %regs12 = getelementptr inbounds %struct.goku_udc, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs12, align 4
  %num13 = getelementptr inbounds %struct.goku_ep, ptr %_ep, i32 0, i32 3
  %17 = ptrtoint ptr %num13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load14 = load i16, ptr %num13, align 4
  %bf.lshr15 = lshr i16 %bf.load14, 8
  %bf.cast16 = zext i16 %bf.lshr15 to i32
  %arrayidx = getelementptr %struct.goku_udc_regs, ptr %16, i32 0, i32 17, i32 %bf.cast16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  %19 = and i32 %18, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.end10.cleanup_crit_edge, label %if.then21

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %num13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load23 = load i16, ptr %num13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %21 = lshr i16 %bf.load23, 4
  %22 = and i16 %21, 4080
  %23 = or i16 %22, 10
  %or.i = zext i16 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %16, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %24) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 64424400) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end10.cleanup_crit_edge, %pci_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_dma(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %7
  %dma_master = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  %9 = and i32 %8, 1729036288
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %is_in = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %11 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %is_in, align 4
  %12 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else56, label %if.then, !prof !350

if.then:                                          ; preds = %entry
  %and7 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.do.body20_crit_edge, label %do.end, !prof !322

if.then.do.body20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

do.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %do.end.pci_name.exit_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, i32 noundef %10) #12
  br label %do.body20

do.body20:                                        ; preds = %pci_name.exit, %if.then.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %in_dma_end = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %in_dma_end, i32 %21) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %5)
  %in_dma_start = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %in_dma_start, i32 %22) #9, !srcloc !325
  %and26 = and i32 %10, 803
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %do.body20.if.end53_crit_edge, label %if.else, !prof !350

do.body20.if.end53_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else:                                          ; preds = %do.body20
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %25 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %25, i32 7)
  %bf.load39 = load i56, ptr %maxpacket, align 2
  %bf.lshr40 = lshr i56 %bf.load39, 40
  %bf.cast41 = trunc i56 %bf.lshr40 to i32
  %rem = urem i32 %24, %bf.cast41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp42.not = icmp eq i32 %rem, 0
  br i1 %cmp42.not, label %lor.lhs.false, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %26 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load44 = load i32, ptr %zero, align 4
  %27 = and i32 %bf.load44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool47.not, i32 2052, i32 1028
  br label %if.end53

if.end53:                                         ; preds = %lor.lhs.false, %if.else.if.end53_crit_edge, %do.body20.if.end53_crit_edge
  %.sink = phi i32 [ 132, %do.body20.if.end53_crit_edge ], [ 1028, %if.else.if.end53_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %or49 = or i32 %and26, %.sink
  br label %do.body87

if.else56:                                        ; preds = %entry
  %and57 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else56.do.body75_crit_edge, label %do.end68, !prof !322

if.else56.do.body75_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

do.end68:                                         ; preds = %if.else56
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %pdev71 = getelementptr inbounds %struct.goku_udc, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev71, align 8
  %init_name.i.i1 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i1, align 8
  %tobool.not.i.i2 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i2, label %if.end.i.i4, label %do.end68.pci_name.exit6_crit_edge

do.end68.pci_name.exit6_crit_edge:                ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit6

if.end.i.i4:                                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i3 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %34 = ptrtoint ptr %dev.i3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i3, align 4
  br label %pci_name.exit6

pci_name.exit6:                                   ; preds = %if.end.i.i4, %do.end68.pci_name.exit6_crit_edge
  %retval.0.i.i5 = phi ptr [ %35, %if.end.i.i4 ], [ %33, %do.end68.pci_name.exit6_crit_edge ]
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i5, i32 noundef %10) #12
  br label %do.body75

do.body75:                                        ; preds = %pci_name.exit6, %if.else56.do.body75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %out_dma_end = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %out_dma_end, i32 %36) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %5)
  %out_dma_start = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %out_dma_start, i32 %37) #9, !srcloc !325
  %and81 = and i32 %10, 3141
  %or82 = or i32 %and81, 514
  br label %do.body87

do.body87:                                        ; preds = %do.body75, %if.end53
  %.sink8 = phi i32 [ 131072, %if.end53 ], [ 98304, %do.body75 ]
  %master.1 = phi i32 [ %or49, %if.end53 ], [ %or82, %do.body75 ]
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %int_enable = getelementptr inbounds %struct.goku_udc, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %int_enable, align 8
  %or55 = or i32 %41, %.sink8
  store i32 %or55, ptr %int_enable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %master.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_master, i32 %42) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %int_enable95 = getelementptr inbounds %struct.goku_udc, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %int_enable95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %int_enable95, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %int_enable96 = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable96, i32 %47) #9, !srcloc !325
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DataSet = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 37
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DataSet) #9, !srcloc !327
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #9, !srcloc !428
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %num = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 256
  br i1 %cmp, label %land.rhs, label %if.end.thread

land.rhs:                                         ; preds = %entry
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp8.not = icmp eq i32 %14, 2
  br i1 %cmp8.not, label %if.end, label %land.rhs.cleanup_crit_edge, !prof !322

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.rhs
  %15 = lshr i16 %bf.load, 7
  %16 = and i16 %15, 510
  %mul = zext i16 %16 to i32
  %shl = shl nuw nsw i32 1, %mul
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %if.end.if.end35_crit_edge, label %if.end.cleanup_crit_edge, !prof !322

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.thread:                                    ; preds = %entry
  %17 = lshr i16 %bf.load, 7
  %18 = and i16 %17, 510
  %mul125 = zext i16 %18 to i32
  %shl126 = shl nuw i32 1, %mul125
  %and127 = and i32 %shl126, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp14.not128 = icmp eq i32 %and127, 0
  br i1 %cmp14.not128, label %do.body, label %if.end.thread.cleanup_crit_edge, !prof !322

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load30 = load i16, ptr %num, align 4
  %bf.lshr31 = lshr i16 %bf.load30, 8
  %bf.cast32 = zext i16 %bf.lshr31 to i32
  %shl33 = shl i32 32, %bf.cast32
  %neg = xor i32 %shl33, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %regs34 = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 7
  %21 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !325
  br label %if.end35

if.end35:                                         ; preds = %do.body, %if.end.if.end35_crit_edge
  %reg_fifo = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 5
  %23 = ptrtoint ptr %reg_fifo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_fifo, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %25 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %25, i32 7)
  %bf.load37 = load i56, ptr %maxpacket, align 2
  %bf.lshr38 = lshr i56 %bf.load37, 40
  %bf.cast39 = trunc i56 %bf.lshr38 to i32
  %length2.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %length2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length2.i, align 4
  %28 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual, align 4
  %sub.i = sub i32 %27, %29
  %30 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %bf.cast39) #9
  %add.i = add i32 %30, %29
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not14.i = icmp eq i32 %30, 0
  br i1 %tobool.not14.i, label %if.end35.write_packet.exit_crit_edge, label %if.end35.do.body.i_crit_edge, !prof !350

if.end35.do.body.i_crit_edge:                     ; preds = %if.end35
  br label %do.body.i

if.end35.write_packet.exit_crit_edge:             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_packet.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end35.do.body.i_crit_edge
  %buf.addr.016.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr, %if.end35.do.body.i_crit_edge ]
  %count.015.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %30, %if.end35.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.015.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  tail call void @arm_heavy_mb() #9
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.016.i, i32 1
  %32 = ptrtoint ptr %buf.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf.addr.016.i, align 1
  %conv.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %34) #9, !srcloc !325
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.write_packet.exit_crit_edge, label %do.body.i.do.body.i_crit_edge, !prof !350

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.write_packet.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_packet.exit

write_packet.exit:                                ; preds = %do.body.i.write_packet.exit_crit_edge, %if.end35.write_packet.exit_crit_edge
  %35 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load43 = load i56, ptr %maxpacket, align 2
  %bf.lshr44 = lshr i56 %bf.load43, 40
  %bf.cast45 = trunc i56 %bf.lshr44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %bf.cast45)
  %cmp46.not = icmp eq i32 %30, %bf.cast45
  br i1 %cmp46.not, label %if.else, label %do.body54, !prof !322

do.body54:                                        ; preds = %write_packet.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load58 = load i16, ptr %num, align 4
  %bf.lshr59 = lshr i16 %bf.load58, 8
  %bf.cast60 = zext i16 %bf.lshr59 to i32
  %shl61 = shl nuw i32 1, %bf.cast60
  %neg62 = xor i32 %shl61, -1
  %37 = tail call i32 @llvm.bswap.i32(i32 %neg62)
  %regs63 = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 7
  %38 = ptrtoint ptr %regs63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs63, align 4
  %EOP = getelementptr inbounds %struct.goku_udc_regs, ptr %39, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EOP, i32 %37) #9, !srcloc !325
  %40 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load65 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load65)
  %cmp68 = icmp ult i16 %bf.load65, 256
  br i1 %cmp68, label %if.then69, label %do.body54.if.then94_crit_edge

do.body54.if.then94_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

if.then69:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %stopped = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %stopped to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load71 = load i16, ptr %stopped, align 4
  %bf.set = or i16 %bf.load71, 32
  store i16 %bf.set, ptr %stopped, align 4
  %ep0state72 = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 4
  %42 = ptrtoint ptr %ep0state72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %ep0state72, align 8
  br label %if.then94

if.else:                                          ; preds = %write_packet.exit
  %43 = ptrtoint ptr %length2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length2.i, align 4
  %45 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp77.not = icmp eq i32 %44, %46
  br i1 %cmp77.not, label %lor.lhs.false, label %if.else.cleanup_crit_edge, !prof !350

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %47 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load85 = load i32, ptr %zero, align 4
  %48 = and i32 %bf.load85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool88.not = icmp eq i32 %48, 0
  br i1 %tobool88.not, label %lor.lhs.false.if.then94_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %if.then69, %do.body54.if.then94_crit_edge
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then94 ], [ -51, %land.rhs.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %regs1 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %num = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %DataSet = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 37
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %reg_fifo = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 5
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %UsbState = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 39
  %EOP = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 40
  %queue = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 4
  br label %top

top:                                              ; preds = %land.lhs.true.top_crit_edge, %entry
  %req.addr.0 = phi ptr [ %req, %entry ], [ %add.ptr201, %land.lhs.true.top_crit_edge ]
  %4 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req.addr.0, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 256
  br i1 %cmp, label %land.rhs, label %top.if.end_crit_edge

top.if.end_crit_edge:                             ; preds = %top
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %top
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %ep0state = getelementptr inbounds %struct.goku_udc, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ep0state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp6.not = icmp eq i32 %12, 3
  br i1 %cmp6.not, label %land.rhs.if.end_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !322

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %top.if.end_crit_edge
  %bf.lshr10 = lshr i16 %bf.load, 8
  %length = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 1
  %status = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 11
  %bf.lshr10.off260 = add nsw i16 %bf.lshr10, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr10.off260)
  %switch261 = icmp ult i16 %bf.lshr10.off260, 2
  br label %do.body

do.body:                                          ; preds = %do.cond204.do.body_crit_edge, %if.end
  %buf.0 = phi ptr [ %add.ptr, %if.end ], [ %buf.1.lcssa, %do.cond204.do.body_crit_edge ]
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load19 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load19)
  %cmp22.not = icmp ult i16 %bf.load19, 256
  br i1 %cmp22.not, label %do.body.if.end29_crit_edge, label %do.body24

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load26 = load i16, ptr %num, align 4
  %bf.lshr27 = lshr i16 %bf.load26, 8
  %bf.cast28 = zext i16 %bf.lshr27 to i32
  %shl = shl i32 32, %bf.cast28
  %neg = xor i32 %shl, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %neg)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %15) #9, !srcloc !325
  br label %if.end29

if.end29:                                         ; preds = %do.body24, %do.body.if.end29_crit_edge
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DataSet) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load32 = load i16, ptr %num, align 4
  %bf.lshr33 = lshr i16 %bf.load32, 8
  %bf.cast34 = zext i16 %bf.lshr33 to i32
  %arrayidx = getelementptr %struct.goku_udc_regs, ptr %3, i32 0, i32 17, i32 %bf.cast34
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !327
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  %sub = sub i32 %21, %23
  %24 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load49 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %bf.load49)
  %cmp52.not = icmp ugt i16 %bf.load49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp54 = icmp ne i32 %sub, 0
  %spec.select259 = select i1 %cmp52.not, i1 true, i1 %cmp54
  br i1 %spec.select259, label %if.then63, label %if.end29.if.end92_crit_edge, !prof !322

if.end29.if.end92_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then63:                                        ; preds = %if.end29
  %25 = tail call i32 @llvm.bswap.i32(i32 %16)
  %mul = shl nuw nsw i32 %bf.cast34, 1
  %shl35 = shl i32 3, %mul
  %and = and i32 %shl35, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp64 = icmp eq i32 %and, 0
  br i1 %cmp64, label %if.then63.cleanup_crit_edge, label %if.end72, !prof !350

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %if.then63
  %and73 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end86, label %if.end72.if.end90_crit_edge

if.end72.if.end90_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end86:                                         ; preds = %if.end72
  %bf.lshr80 = lshr i16 %bf.load49, 8
  %bf.cast81 = zext i16 %bf.lshr80 to i32
  %arrayidx82 = getelementptr %struct.goku_udc_regs, ptr %3, i32 0, i32 19, i32 %bf.cast81
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx82) #9, !srcloc !327
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %.pre = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool88.not = icmp eq i32 %.pre, 0
  br i1 %tobool88.not, label %if.end86.cleanup_crit_edge, label %if.end86.if.end90_crit_edge

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end90:                                         ; preds = %if.end86.if.end90_crit_edge, %if.end72.if.end90_crit_edge
  %size.0272 = phi i32 [ %27, %if.end86.if.end90_crit_edge ], [ %19, %if.end72.if.end90_crit_edge ]
  %and91 = and i32 %size.0272, 127
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %if.end29.if.end92_crit_edge
  %size.1 = phi i32 [ %and91, %if.end90 ], [ 0, %if.end29.if.end92_crit_edge ]
  %28 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual, align 4
  %add = add i32 %29, %size.1
  store i32 %add, ptr %actual, align 4
  %30 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %30, i32 7)
  %bf.load96 = load i56, ptr %maxpacket, align 2
  %bf.lshr97 = lshr i56 %bf.load96, 40
  %bf.cast98 = trunc i56 %bf.lshr97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1, i32 %bf.cast98)
  %cmp99 = icmp ult i32 %size.1, %bf.cast98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %cmp100.not264 = icmp eq i32 %size.1, 0
  br i1 %cmp100.not264, label %if.end92.while.end_crit_edge, label %if.end92.while.body_crit_edge, !prof !350

if.end92.while.body_crit_edge:                    ; preds = %if.end92
  br label %while.body

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end140.while.body_crit_edge, %if.end92.while.body_crit_edge
  %dec267.in = phi i32 [ %dec267, %if.end140.while.body_crit_edge ], [ %size.1, %if.end92.while.body_crit_edge ]
  %buf.1266 = phi ptr [ %buf.2, %if.end140.while.body_crit_edge ], [ %buf.0, %if.end92.while.body_crit_edge ]
  %bufferspace.0265 = phi i32 [ %bufferspace.1, %if.end140.while.body_crit_edge ], [ %sub, %if.end92.while.body_crit_edge ]
  %dec267 = add nsw i32 %dec267.in, -1
  %31 = ptrtoint ptr %reg_fifo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_fifo, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufferspace.0265)
  %cmp114 = icmp eq i32 %bufferspace.0265, 0
  br i1 %cmp114, label %if.then122, label %if.else138, !prof !350

if.then122:                                       ; preds = %while.body
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %35)
  %cmp124.not = icmp eq i32 %35, -75
  br i1 %cmp124.not, label %if.then122.if.end135_crit_edge, label %do.end129

if.then122.if.end135_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

do.end129:                                        ; preds = %if.then122
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.goku_udc, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end129.pci_name.exit_crit_edge

do.end129.pci_name.exit_crit_edge:                ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end129.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %do.end129.pci_name.exit_crit_edge ]
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @driver_name, ptr noundef %retval.0.i.i, ptr noundef %45, i32 noundef %dec267) #12
  br label %if.end135

if.end135:                                        ; preds = %pci_name.exit, %if.then122.if.end135_crit_edge
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -75, ptr %status, align 4
  br label %if.end140

if.else138:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = lshr i32 %33, 24
  %conv113 = trunc i32 %47 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.1266, i32 1
  %48 = ptrtoint ptr %buf.1266 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv113, ptr %buf.1266, align 1
  %dec139 = add i32 %bufferspace.0265, -1
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %if.end135
  %bufferspace.1 = phi i32 [ 0, %if.end135 ], [ %dec139, %if.else138 ]
  %buf.2 = phi ptr [ %buf.1266, %if.end135 ], [ %incdec.ptr, %if.else138 ]
  %cmp100.not = icmp eq i32 %dec267, 0
  br i1 %cmp100.not, label %if.end140.while.end_crit_edge, label %if.end140.while.body_crit_edge, !prof !350

if.end140.while.body_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end140.while.end_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end140.while.end_crit_edge, %if.end92.while.end_crit_edge
  %buf.1.lcssa = phi ptr [ %buf.0, %if.end92.while.end_crit_edge ], [ %buf.2, %if.end140.while.end_crit_edge ]
  br i1 %cmp99, label %while.end.if.then157_crit_edge, label %lor.rhs142, !prof !350

while.end.if.then157_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157

lor.rhs142:                                       ; preds = %while.end
  %49 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual, align 4
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp147 = icmp eq i32 %50, %52
  br i1 %cmp147, label %lor.rhs142.if.then157_crit_edge, label %do.cond204, !prof !350

lor.rhs142.if.then157_crit_edge:                  ; preds = %lor.rhs142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157

if.then157:                                       ; preds = %lor.rhs142.if.then157_crit_edge, %while.end.if.then157_crit_edge
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load159 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load159)
  %cmp162 = icmp ult i16 %bf.load159, 256
  br i1 %cmp162, label %if.then170, label %if.then157.if.end194_crit_edge, !prof !350

if.then157.if.end194_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then170:                                       ; preds = %if.then157
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %req_config = getelementptr inbounds %struct.goku_udc, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %req_config to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load172 = load i8, ptr %req_config, align 4
  %57 = and i8 %bf.load172, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool175.not = icmp eq i8 %57, 0
  br i1 %tobool175.not, label %if.then170.do.body187_crit_edge, label %do.body177

if.then170.do.body187_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body187

do.body177:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %configured = getelementptr inbounds %struct.goku_udc, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load181 = load i8, ptr %configured, align 4
  %61 = lshr i8 %bf.load181, 2
  %62 = and i8 %61, 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %UsbState, i32 %64) #9, !srcloc !325
  br label %do.body187

do.body187:                                       ; preds = %do.body177, %if.then170.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EOP, i32 -16777217) #9, !srcloc !325
  %65 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load190 = load i16, ptr %num, align 4
  %bf.set = or i16 %bf.load190, 32
  store i16 %bf.set, ptr %num, align 4
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %ep0state193 = getelementptr inbounds %struct.goku_udc, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %ep0state193 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %ep0state193, align 8
  br label %if.end194

if.end194:                                        ; preds = %do.body187, %if.then157.if.end194_crit_edge
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %req.addr.0, i32 noundef 0)
  br i1 %switch261, label %land.lhs.true, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end194
  %69 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %70, %queue
  %add.ptr201 = getelementptr i8, ptr %70, i32 -56
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.top_crit_edge

land.lhs.true.top_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %top

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond204:                                       ; preds = %lor.rhs142
  br i1 %switch261, label %do.cond204.do.body_crit_edge, label %do.cond204.cleanup_crit_edge

do.cond204.cleanup_crit_edge:                     ; preds = %do.cond204
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond204.do.body_crit_edge:                     ; preds = %do.cond204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %do.cond204.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end86.cleanup_crit_edge ], [ 0, %if.then63.cleanup_crit_edge ], [ 0, %do.cond204.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end194.cleanup_crit_edge ], [ -51, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_advance(ptr nocapture noundef %dev, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs2 = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 4
  %dma_master = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_master) #9, !srcloc !327
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %queue = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %7, %queue
  br i1 %cmp.i.not, label %entry.stop_crit_edge, label %if.end13, !prof !350

entry.stop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop

stop:                                             ; preds = %if.end63.stop_crit_edge, %entry.stop_crit_edge
  %is_in = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %is_in, align 4
  %9 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool7.not = icmp eq i16 %9, 0
  %int_enable9 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %int_enable9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_enable9, align 8
  %. = select i1 %tobool7.not, i32 -98305, i32 -131073
  %and = and i32 %11, %.
  store i32 %and, ptr %int_enable9, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %int_enable11 = getelementptr inbounds %struct.goku_udc, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %int_enable11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_enable11, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %int_enable12 = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable12, i32 %14) #9, !srcloc !325
  br label %cleanup

if.end13:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %7, i32 -56
  %is_in16 = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %is_in16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load17 = load i16, ptr %is_in16, align 4
  %16 = and i16 %bf.load17, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool21.not = icmp eq i16 %16, 0
  br i1 %tobool21.not, label %if.else45, label %if.then28, !prof !350

if.then28:                                        ; preds = %if.end13
  %and29 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end38, label %if.then28.cleanup_crit_edge, !prof !322

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %in_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %in_dma_current) #9, !srcloc !327
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  br label %if.end63

if.else45:                                        ; preds = %if.end13
  %and46 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end55, label %if.else45.cleanup_crit_edge, !prof !322

if.else45.cleanup_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  %out_dma_current = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %out_dma_current) #9, !srcloc !327
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  br label %if.end63

if.end63:                                         ; preds = %if.end55, %if.end38
  %.sink104 = phi i32 [ %20, %if.end55 ], [ %18, %if.end38 ]
  %actual62 = getelementptr i8, ptr %7, i32 -4
  %21 = ptrtoint ptr %actual62 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink104, ptr %actual62, align 4
  %dma = getelementptr i8, ptr %7, i32 -48
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma, align 4
  %actual66 = getelementptr i8, ptr %7, i32 -4
  %sub = sub i32 1, %23
  %inc = add i32 %sub, %.sink104
  %24 = ptrtoint ptr %actual66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %actual66, align 4
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0)
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue, align 4
  %cmp.i102.not = icmp eq ptr %26, %queue
  br i1 %cmp.i102.not, label %if.end63.stop_crit_edge, label %if.end73

if.end63.stop_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop

if.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr78 = getelementptr i8, ptr %26, i32 -56
  tail call fastcc void @start_dma(ptr noundef %ep, ptr noundef %add.ptr78)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.else45.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %stop
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @goku_clear_halt(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %regs = getelementptr inbounds %struct.goku_udc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %num = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %5 = lshr i16 %bf.load, 4
  %6 = and i16 %5, 4080
  %7 = or i16 %6, 2
  %or.i = zext i16 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %Command.i = getelementptr inbounds %struct.goku_udc_regs, ptr %3, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i, i32 %8) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 64424400) #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %regs2 = getelementptr inbounds %struct.goku_udc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs2, align 4
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load4 = load i16, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %15 = lshr i16 %bf.load4, 4
  %16 = and i16 %15, 4080
  %17 = or i16 %16, 11
  %or.i36 = zext i16 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #9
  %Command.i37 = getelementptr inbounds %struct.goku_udc_regs, ptr %13, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Command.i37, i32 %18) #9, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 64424400) #9
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load7 = load i16, ptr %num, align 4
  %21 = and i16 %bf.load7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  %bf.clear12 = and i16 %bf.load7, -33
  %22 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.clear12, ptr %num, align 4
  %23 = and i16 %bf.load7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  %queue.i = getelementptr inbounds %struct.goku_ep, ptr %ep, i32 0, i32 4
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %queue.i
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then
  br i1 %cmp.i.not.i, label %if.then18.if.end24_crit_edge, label %if.end

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %25, i32 -56
  tail call fastcc void @start_dma(ptr noundef %ep, ptr noundef %add.ptr)
  br label %if.end24

if.else:                                          ; preds = %if.then
  br i1 %cmp.i.not.i, label %if.else.if.end24_crit_edge, label %if.end.i, !prof !350

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %25, i32 -56
  %26 = and i16 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool4.not.i = icmp eq i16 %26, 0
  %cond.i = select i1 %tobool4.not.i, ptr @read_fifo, ptr @write_fifo
  %call5.i = tail call i32 %cond.i(ptr noundef %ep, ptr noundef %add.ptr.i) #9, !callees !357
  br label %if.end24

if.end24:                                         ; preds = %if.end.i, %if.else.if.end24_crit_edge, %if.end, %if.then18.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_intmask(ptr noundef %m, ptr noundef %label, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.94, ptr @.str.124
  %and1 = and i32 %mask, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.94, ptr @.str.125
  %and4 = and i32 %mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.94, ptr @.str.126
  %and7 = and i32 %mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.94, ptr @.str.127
  %and10 = and i32 %mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.94, ptr @.str.128
  %and13 = and i32 %mask, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.94, ptr @.str.129
  %and16 = and i32 %mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.94, ptr @.str.130
  %and19 = and i32 %mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.94, ptr @.str.131
  %and22 = and i32 %mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.94, ptr @.str.132
  %and25 = and i32 %mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.94, ptr @.str.133
  %and28 = and i32 %mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.94, ptr @.str.134
  %and31 = and i32 %mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.94, ptr @.str.135
  %and34 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.94, ptr @.str.136
  %and37 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.94, ptr @.str.137
  %and40 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.94, ptr @.str.138
  %and43 = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, ptr @.str.94, ptr @.str.139
  %and46 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.94, ptr @.str.140
  %and49 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.94, ptr @.str.141
  %and52 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.94, ptr @.str.142
  %and55 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.94, ptr @.str.110
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.123, ptr noundef %label, i32 noundef %mask, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, ptr noundef nonnull %cond6, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15, ptr noundef nonnull %cond18, ptr noundef nonnull %cond21, ptr noundef nonnull %cond24, ptr noundef nonnull %cond27, ptr noundef nonnull %cond30, ptr noundef nonnull %cond33, ptr noundef nonnull %cond36, ptr noundef nonnull %cond39, ptr noundef nonnull %cond42, ptr noundef nonnull %cond45, ptr noundef nonnull %cond48, ptr noundef nonnull %cond51, ptr noundef nonnull %cond54, ptr noundef nonnull %cond57) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !308, !309, !311, !312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 56, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_goku_udc__242_1859_goku_pci_driver_init6, !8, !"__initcall__kmod_goku_udc__242_1859_goku_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1859, i32 1}
!9 = !{ptr @__exitcall_goku_pci_driver_exit, !8, !"__exitcall_goku_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @goku_pci_driver, !12, !"goku_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1849, i32 26}
!13 = !{ptr @driver_name, !14, !"driver_name", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 51, i32 19}
!15 = !{ptr @pci_ids, !16, !"pci_ids", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1837, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1751, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @goku_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @goku_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @goku_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1764, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1775, i32 3}
!28 = !{ptr @goku_probe._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @goku_probe._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1783, i32 3}
!32 = !{ptr @goku_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @goku_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1791, i32 3}
!36 = !{ptr @goku_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @goku_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1797, i32 2}
!40 = !{ptr @goku_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @goku_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1798, i32 2}
!44 = !{ptr @goku_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @goku_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1799, i32 2}
!48 = !{ptr @goku_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @goku_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1806, i32 3}
!52 = !{ptr @goku_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @goku_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @goku_ops, !55, !"goku_ops", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1030, i32 36}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1351, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @udc_enable._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @udc_enable._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1392, i32 2}
!63 = !{ptr @stop_activity._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @stop_activity._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 673, i32 4}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @abort_dma._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @abort_dma._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 688, i32 4}
!72 = !{ptr @abort_dma._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @abort_dma._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @driver_desc, !75, !"driver_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 52, i32 19}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1044, i32 10}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1046, i32 10}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1048, i32 10}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1253, i32 28}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1253, i32 35}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1253, i32 47}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1253, i32 59}
!90 = !{ptr @udc_reinit.names, !91, !"names", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1253, i32 15}
!92 = !{ptr @goku_ep_ops, !93, !"goku_ep_ops", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 975, i32 32}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 154, i32 4}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @goku_ep_enable._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @goku_ep_enable._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 184, i32 2}
!101 = !{ptr @goku_ep_enable._entry.43, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @goku_ep_enable._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 547, i32 4}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @start_dma._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @start_dma._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 572, i32 4}
!114 = !{ptr @start_dma._entry.52, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @start_dma._entry_ptr.54, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 465, i32 6}
!118 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @read_fifo._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @read_fifo._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 900, i32 3}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @goku_set_halt._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @goku_set_halt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 959, i32 3}
!128 = !{ptr @goku_fifo_flush._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @goku_fifo_flush._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1553, i32 4}
!132 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @goku_irq._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @goku_irq._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1567, i32 5}
!137 = !{ptr @goku_irq._entry.62, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @goku_irq._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1588, i32 5}
!141 = !{ptr @goku_irq._entry.65, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @goku_irq._entry_ptr.67, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1599, i32 6}
!145 = !{ptr @goku_irq._entry.68, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @goku_irq._entry_ptr.70, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1603, i32 5}
!149 = !{ptr @goku_irq._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @goku_irq._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1617, i32 4}
!153 = !{ptr @goku_irq._entry.74, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @goku_irq._entry_ptr.76, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1665, i32 3}
!157 = !{ptr @goku_irq._entry.77, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @goku_irq._entry_ptr.79, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1691, i32 3}
!161 = !{ptr @goku_irq._entry.80, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @goku_irq._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!163 = distinct !{null, !164, !"use_dma", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 67, i32 17}
!165 = !{ptr @proc_node_name, !166, !"proc_node_name", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1053, i32 19}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1149, i32 6}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1155, i32 19}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1156, i32 47}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1158, i32 30}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1158, i32 45}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1159, i32 9}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1162, i32 18}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1163, i32 18}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1169, i32 16}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1178, i32 16}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1180, i32 29}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1180, i32 40}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1181, i32 29}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1182, i32 32}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1183, i32 32}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1185, i32 28}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1186, i32 29}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1187, i32 29}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1188, i32 27}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1190, i32 27}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1191, i32 31}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1191, i32 48}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1204, i32 17}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1206, i32 19}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1206, i32 26}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1211, i32 34}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1211, i32 44}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1212, i32 35}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1213, i32 40}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1214, i32 39}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1219, i32 16}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1235, i32 18}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1093, i32 10}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1095, i32 10}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1097, i32 10}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1099, i32 10}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1101, i32 10}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1103, i32 10}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1105, i32 10}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1108, i32 9}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1061, i32 16}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1063, i32 31}
!251 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1064, i32 30}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1065, i32 30}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1066, i32 32}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1068, i32 30}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1069, i32 30}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1070, i32 25}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1071, i32 25}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1073, i32 28}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1074, i32 28}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1075, i32 28}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1076, i32 32}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1078, i32 32}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1079, i32 32}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1080, i32 31}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1081, i32 28}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1083, i32 27}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1084, i32 31}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1085, i32 30}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1115, i32 10}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1117, i32 10}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1119, i32 10}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1121, i32 10}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1123, i32 10}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1125, i32 10}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1127, i32 10}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1129, i32 10}
!303 = distinct !{null, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1132, i32 9}
!305 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1713, i32 2}
!307 = !{ptr @goku_remove._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @goku_remove._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/gadget/udc/goku_udc.c", i32 1736, i32 2}
!311 = !{ptr @goku_remove._entry.153, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @goku_remove._entry_ptr.155, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{!"branch_weights", i32 2000, i32 1}
!323 = !{i64 2154733784, i64 2154734283, i64 2154733821, i64 2154733877, i64 2154733911, i64 2154733935, i64 2154733976, i64 2154733997, i64 2154734025, i64 2154734059}
!324 = !{i64 2154687722}
!325 = !{i64 5024322}
!326 = !{i64 2154688105}
!327 = !{i64 5024740}
!328 = !{i64 2154688760}
!329 = !{i64 2154689530}
!330 = !{i64 2154690196}
!331 = distinct !{!331, !332}
!332 = !{!"llvm.loop.peeled.count", i32 1}
!333 = !{i64 2154709656}
!334 = !{i64 2154711747}
!335 = !{i64 2154712442}
!336 = !{i64 2154714452}
!337 = !{i64 2154715006}
!338 = !{i64 2154715693}
!339 = !{i64 2154721153}
!340 = !{i64 2154723566}
!341 = !{i64 2154700682}
!342 = !{i64 2154701160}
!343 = !{i64 2154702935}
!344 = !{i64 2154703193}
!345 = !{i64 2154704980}
!346 = !{i64 2154705238}
!347 = !{i64 2154707036}
!348 = !{i64 2154707295}
!349 = !{i64 2154707518}
!350 = !{!"branch_weights", i32 1, i32 2000}
!351 = !{i64 2154707962}
!352 = !{i64 2154708691}
!353 = !{i64 2154596417}
!354 = !{i64 2154724135}
!355 = !{i64 2154724569}
!356 = !{i64 2154725087}
!357 = !{ptr @read_fifo, ptr @write_fifo}
!358 = !{i64 2154725618}
!359 = !{i64 2154726151}
!360 = !{i64 2154726684}
!361 = !{i64 2154628750}
!362 = !{i64 2154729157}
!363 = !{i64 2154731746}
!364 = !{i64 646686, i64 646747}
!365 = !{i64 2154678004}
!366 = !{i64 2154678514}
!367 = !{i64 2154679000}
!368 = !{i64 2154679479}
!369 = !{i64 2154679961}
!370 = !{i64 2154680431}
!371 = !{i64 2154680909}
!372 = !{i64 2154681383}
!373 = !{i64 2154681869}
!374 = !{i64 2154682453}
!375 = !{i64 2154686182}
!376 = !{i64 2154686688}
!377 = !{i64 649418}
!378 = !{i64 649703}
!379 = !{i64 2154693660}
!380 = !{i64 2154695539}
!381 = !{i64 2154690514}
!382 = !{i64 2154691051}
!383 = !{i64 2154691434}
!384 = !{i64 2154691835}
!385 = !{i64 2154692444}
!386 = !{i64 2154693146}
!387 = !{i64 2154644574}
!388 = !{i64 2154646098}
!389 = !{i64 2154646313}
!390 = !{i64 2154646708}
!391 = !{i64 2154647200}
!392 = !{i64 2154647870}
!393 = !{i64 2154650971}
!394 = !{i64 2154651187}
!395 = !{i64 2154651584}
!396 = !{i64 2154652083}
!397 = !{i64 2154652753}
!398 = !{i64 2154605731}
!399 = !{i64 2154606428}
!400 = !{i64 2154606898}
!401 = !{i64 2154607108}
!402 = !{i64 2154607737}
!403 = !{i64 2154607944}
!404 = !{i64 2154608598}
!405 = !{i64 2154609249}
!406 = !{i64 2154598808}
!407 = !{i64 2154601646}
!408 = !{i64 2154601859}
!409 = !{i64 2154602503}
!410 = !{i64 2154602713}
!411 = !{i64 2154603094}
!412 = !{!"branch_weights", i32 4001, i32 4000000}
!413 = !{!"branch_weights", i32 2000, i32 2002}
!414 = !{i64 2154628121}
!415 = !{i64 2154669044}
!416 = !{i64 2154669565}
!417 = !{i64 2154671192}
!418 = !{i64 2154671715}
!419 = !{i64 2154675181}
!420 = !{i64 2154631033}
!421 = !{i64 2154633412}
!422 = !{i64 2154633805}
!423 = !{i64 2154636289}
!424 = !{i64 2154636684}
!425 = !{i64 2154637209}
!426 = !{i64 2154637623}
!427 = !{i64 2154619497}
!428 = !{i64 751696}
!429 = !{i64 2154619921}
!430 = !{i64 2154618832}
!431 = !{i64 2154620445}
!432 = !{i64 2154621075}
!433 = !{i64 2154621793}
!434 = !{i64 2154622336}
!435 = !{i64 2154622957}
!436 = !{i64 2154623474}
!437 = !{i64 2154625671}
!438 = !{i64 2154626157}
!439 = !{i64 2154638332}
!440 = !{i64 2154638632}
!441 = !{i64 2154640798}
!442 = !{i64 2154641354}
