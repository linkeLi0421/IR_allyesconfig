; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/gr_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/gr_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gr_udc = type { %struct.usb_gadget, [16 x %struct.gr_ep], [16 x %struct.gr_ep], ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, i32, %struct.list_head, %struct.spinlock }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.gr_ep = type { %struct.usb_ep, ptr, i16, i32, ptr, i16, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.gr_regs = type { [16 x %struct.gr_epregs], [16 x %struct.gr_epregs], i32, i32 }
%struct.gr_epregs = type { i32, %union.anon.71, i32 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.gr_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i16, i16, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.gr_dma_desc = type { i32, i32, i32, i32, ptr }
%union.anon.75 = type { [2 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_gr_udc__270_2253_gr_driver_init6 = internal global ptr @gr_driver_init, section ".initcall6.init", align 4
@gr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gr_probe, ptr @gr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gr_driver_exit = internal global ptr @gr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author271 = internal constant [35 x i8] c"gr_udc.author=Aeroflex Gaisler AB.\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [70 x i8] c"gr_udc.description=Aeroflex Gaisler GRUSBDC USB Peripheral Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [42 x i8] c"gr_udc.file=drivers/usb/gadget/udc/gr_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [19 x i8] c"gr_udc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gr_udc\00", [25 x i8] zeroinitializer }, align 32
@gr_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] c"GAISLER_USBDC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"01_021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gr_udc\00", [25 x i8] zeroinitializer }, align 32
@gr_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @gr_get_frame, ptr @gr_wakeup, ptr null, ptr null, ptr null, ptr @gr_pullup, ptr null, ptr null, ptr @gr_udc_start, ptr @gr_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@gr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Slave mode cores are not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gr_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/gadget/udc/gr_udc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr = internal global ptr @gr_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"desc_pool\00", [22 x i8] zeroinitializer }, align 32
@gr_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not allocate DMA pool\00", [36 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.10 = internal global ptr @gr_probe._entry.8, section ".printk_index", align 4
@gr_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not add gadget udc\00", [39 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.13 = internal global ptr @gr_probe._entry.11, section ".printk_index", align 4
@gr_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.16 = internal global ptr @gr_probe._entry.14, section ".printk_index", align 4
@gr_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 2214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irqi %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.19 = internal global ptr @gr_probe._entry.17, section ".printk_index", align 4
@gr_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 2220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irqo %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.22 = internal global ptr @gr_probe._entry.20, section ".printk_index", align 4
@gr_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 2227, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regs: %p, irqs %d, %d, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.26 = internal global ptr @gr_probe._entry.23, section ".printk_index", align 4
@gr_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 2229, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"regs: %p, irq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@gr_probe._entry_ptr.29 = internal global ptr @gr_probe._entry.27, section ".printk_index", align 4
@gr_finish_request.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gr_finish_request\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Overflow for ep %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OVFL\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SENT\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECV\00", [27 x i8] zeroinitializer }, align 32
@gr_finish_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unexpected non setup packet on ep0in\0A\00", [58 x i8] zeroinitializer }, align 32
@gr_finish_request._entry_ptr = internal global ptr @gr_finish_request._entry, section ".printk_index", align 4
@gr_dbgprint_request.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gr_dbgprint_request\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: 0x%p, %d bytes data%s:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (truncated)\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gr_dbgprint_request.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.40, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@gr_ep0_setup.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 1, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gr_ep0_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected setup packet at state %s\0A\00", [59 x i8] zeroinitializer }, align 32
@gr_ep0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 1077, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unexpected ep0out request at state %s - stalling\0A\00", [46 x i8] zeroinitializer }, align 32
@gr_ep0_setup._entry_ptr = internal global ptr @gr_ep0_setup._entry, section ".printk_index", align 4
@gr_ep0_setup.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.45, i8 1, i8 14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unexpected ZLP at state %s\0A\00", [36 x i8] zeroinitializer }, align 32
@gr_ep0_setup.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.46, i8 1, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DELEGATE\0A\00", [22 x i8] zeroinitializer }, align 32
@gr_ep0_setup.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.47, i8 1, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STALL\0A\00", [25 x i8] zeroinitializer }, align 32
@gr_ep0_setup.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.48, i8 1, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATUS: deconfigured\0A\00", [42 x i8] zeroinitializer }, align 32
@gr_ep0_setup.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.49, i8 1, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STATUS: configured: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gr_ep0state_string.names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idata\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"odata\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"istatus\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ostatus\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stall\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@gr_dbgprint_devreq.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gr_dbgprint_devreq\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"REQ: %02x.%02x v%04x i%04x l%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@gr_device_request.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gr_device_request\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STATUS: address %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gr_ep0_respond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not queue ep0in setup response: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gr_ep0_respond\00", [17 x i8] zeroinitializer }, align 32
@gr_ep0_respond._entry_ptr = internal global ptr @gr_ep0_respond._entry, section ".printk_index", align 4
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RESP\00", [27 x i8] zeroinitializer }, align 32
@gr_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No ep descriptor for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gr_queue\00", [23 x i8] zeroinitializer }, align 32
@gr_queue._entry_ptr = internal global ptr @gr_queue._entry, section ".printk_index", align 4
@gr_queue._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 590, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid request for %s: buf=%p list_empty=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@gr_queue._entry_ptr.70 = internal global ptr @gr_queue._entry.68, section ".printk_index", align 4
@gr_queue._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-ESHUTDOWN\00", [21 x i8] zeroinitializer }, align 32
@gr_queue._entry_ptr.73 = internal global ptr @gr_queue._entry.71, section ".printk_index", align 4
@gr_queue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-EBUSY\00", [25 x i8] zeroinitializer }, align 32
@gr_queue._entry_ptr.76 = internal global ptr @gr_queue._entry.74, section ".printk_index", align 4
@gr_queue._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.4, i32 608, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_gadget_map_request\00", [41 x i8] zeroinitializer }, align 32
@gr_queue._entry_ptr.79 = internal global ptr @gr_queue._entry.77, section ".printk_index", align 4
@gr_alloc_dma_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not allocate from DMA pool\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gr_alloc_dma_desc\00", [46 x i8] zeroinitializer }, align 32
@gr_alloc_dma_desc._entry_ptr = internal global ptr @gr_alloc_dma_desc._entry, section ".printk_index", align 4
@gr_ep_halt_wedge.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gr_ep_halt_wedge\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EP: stall ep0\0A\00", [17 x i8] zeroinitializer }, align 32
@gr_ep_halt_wedge.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.4, ptr @.str.84, i8 0, i8 -75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EP: %s halt %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wedge\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@gr_ep0out_requeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 1034, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not queue ep0out setup request: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gr_ep0out_requeue\00", [46 x i8] zeroinitializer }, align 32
@gr_ep0out_requeue._entry_ptr = internal global ptr @gr_ep0out_requeue._entry, section ".printk_index", align 4
@gr_set_ep0state.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 0, i8 -68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gr_set_ep0state\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STATE:  ep0state=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epobufsizes\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epibufsizes\00", [20 x i8] zeroinitializer }, align 32
@inames = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [32 x i8] zeroinitializer }, align 32
@onames = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], [32 x i8] zeroinitializer }, align 32
@gr_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @gr_ep_enable, ptr @gr_ep_disable, ptr null, ptr @gr_alloc_request, ptr @gr_free_request, ptr @gr_queue_ext, ptr @gr_dequeue, ptr @gr_set_halt, ptr @gr_set_wedge, ptr @gr_fifo_status, ptr @gr_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep0in\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep1in\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep2in\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep3in\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep4in\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep5in\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep6in\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep7in\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep8in\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep9in\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep10in\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep11in\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep12in\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep13in\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep14in\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep15in\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep0out\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep1out\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep2out\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep3out\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep4out\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep5out\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep6out\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep7out\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep8out\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep9out\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep10out\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep11out\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep12out\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep13out\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep14out\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep15out\00", [24 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.4, i32 1514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown transfer type for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gr_ep_enable\00", [19 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr = internal global ptr @gr_ep_enable._entry, section ".printk_index", align 4
@gr_ep_enable._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.4, i32 1528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s mode: multiple trans./microframe not valid\0A\00", [49 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr.130 = internal global ptr @gr_ep_enable._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Control\00", [24 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.127, ptr @.str.4, i32 1532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid value 0x3 for additional trans./microframe\0A\00", [44 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr.135 = internal global ptr @gr_ep_enable._entry.133, section ".printk_index", align 4
@gr_ep_enable._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.127, ptr @.str.4, i32 1536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Hw buffer size %d < max payload %d * %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr.138 = internal global ptr @gr_ep_enable._entry.136, section ".printk_index", align 4
@gr_ep_enable._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.127, ptr @.str.4, i32 1539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Max payload cannot be set to 0\0A\00", [32 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr.141 = internal global ptr @gr_ep_enable._entry.139, section ".printk_index", align 4
@gr_ep_enable._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.127, ptr @.str.4, i32 1543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Requested max payload %d > limit %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gr_ep_enable._entry_ptr.144 = internal global ptr @gr_ep_enable._entry.142, section ".printk_index", align 4
@gr_ep_enable.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.4, ptr @.str.145, i8 1, i8 -114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"EP: %s enabled - %s with %d bytes/buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@gr_modestring = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iso\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@gr_ep_disable.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.4, ptr @.str.151, i8 1, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gr_ep_disable\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EP: disable %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EXTERN\00", [25 x i8] zeroinitializer }, align 32
@gr_fifo_flush.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.4, ptr @.str.154, i8 1, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gr_fifo_flush\00", [18 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EP: flush fifo %s\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.155 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"request not dequeued properly before freeing\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gr_udc_state\00", [19 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@gr_dfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @gr_dfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb state = %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"address = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speed = %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0state = %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_enabled = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"remote_wakeup = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_mode = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  mode = %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  halted: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  disabled: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  valid: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  dma_start = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  stopped = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  wedged = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  callback = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  maxpacket = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  maxpacket_limit = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  bytes_per_buffer = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  nt = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Buffer 0: %s %s%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"selected \00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Buffer 1: %s %s%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Queue: empty\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  Queue:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    0x%p: 0x%p %d %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"    %c 0x%p (0x%08x): 0x%05x 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@gr_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.4, i32 1439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AMBA Error occurred for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gr_irq_handler\00", [17 x i8] zeroinitializer }, align 32
@gr_irq_handler._entry_ptr = internal global ptr @gr_irq_handler._entry, section ".printk_index", align 4
@gr_handle_state_changes.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.191, i8 1, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gr_handle_state_changes\00", [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"STATUS: vbus valid detected\0A\00", [35 x i8] zeroinitializer }, align 32
@gr_handle_state_changes.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.192, i8 1, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STATUS: vbus invalid detected\0A\00", [33 x i8] zeroinitializer }, align 32
@gr_handle_state_changes.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.193, i8 1, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"STATUS: USB reset - speed is %s\0A\00", [63 x i8] zeroinitializer }, align 32
@gr_handle_state_changes.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.194, i8 1, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"STATUS: USB Speed change to %s\0A\00", [32 x i8] zeroinitializer }, align 32
@gr_handle_state_changes.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.195, i8 1, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STATUS: USB suspend\0A\00", [43 x i8] zeroinitializer }, align 32
@gr_handle_state_changes.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.4, ptr @.str.196, i8 1, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STATUS: USB resume\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"gr_driver\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2245, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2247, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"gr_match\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2238, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 50, i32 19 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"gr_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1933, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2156, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2167, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2174, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2177, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2184, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2206, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2213, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2219, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2226, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2229, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 315, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 317, i32 24 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 324, i32 24 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 326, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 335, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 98, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 100, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1069, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1075, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1082, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1128, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1136, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1143, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1147, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 72, i32 27 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 73, i32 25 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 74, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 75, i32 20 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 76, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 77, i32 22 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 78, i32 22 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 79, i32 20 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 80, i32 22 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 84, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 107, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 895, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 835, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 639, i32 23 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 583, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 588, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 595, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 601, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 608, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 239, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 720, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 726, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1033, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 753, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2049, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 2057, i32 38 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"inames\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1951, i32 27 }
@___asan_gen_.495 = private unnamed_addr constant [7 x i8] c"onames\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1945, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant [10 x i8] c"gr_ep_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1825, i32 32 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 11 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 20 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 29 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 38 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1952, i32 47 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 20 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 29 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 38 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1953, i32 48 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1954, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1954, i32 12 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1954, i32 22 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1954, i32 32 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 12 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 22 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 32 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 42 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1946, i32 52 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 12 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 22 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 32 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 42 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1947, i32 53 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1948, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1948, i32 13 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1948, i32 24 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1948, i32 35 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1513, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1526, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1531, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1535, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1539, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1542, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1594, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [14 x i8] c"gr_modestring\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 68, i32 27 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 68, i32 46 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 68, i32 57 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 68, i32 64 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 68, i32 72 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1619, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1681, i32 23 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1814, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1645, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 209, i32 21 }
@___asan_gen_.681 = private unnamed_addr constant [12 x i8] c"gr_dfs_fops\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 205, i32 1 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 189, i32 18 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 191, i32 18 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 193, i32 18 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 194, i32 18 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 195, i32 18 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 196, i32 18 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 197, i32 18 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 198, i32 16 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 132, i32 18 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 133, i32 18 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 134, i32 18 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 135, i32 18 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 136, i32 18 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 137, i32 18 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 138, i32 18 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 139, i32 18 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 140, i32 18 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 141, i32 18 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 142, i32 18 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 143, i32 18 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 145, i32 19 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 148, i32 18 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 149, i32 30 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 149, i32 40 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 150, i32 30 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 150, i32 36 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 152, i32 18 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 158, i32 17 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 162, i32 16 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 167, i32 19 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 174, i32 20 }
@___asan_gen_.777 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1437, i32 5 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1325, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1332, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1339, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1348, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1356, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.805 = private constant [35 x i8] c"../drivers/usb/gadget/udc/gr_udc.c\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.805, i32 1374, i32 3 }
@llvm.compiler.used = appending global [233 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_gr_driver_exit, ptr @__initcall__kmod_gr_udc__270_2253_gr_driver_init6, ptr @gr_alloc_dma_desc._entry, ptr @gr_alloc_dma_desc._entry_ptr, ptr @gr_driver_exit, ptr @gr_ep0_respond._entry, ptr @gr_ep0_respond._entry_ptr, ptr @gr_ep0_setup._entry, ptr @gr_ep0_setup._entry_ptr, ptr @gr_ep0out_requeue._entry, ptr @gr_ep0out_requeue._entry_ptr, ptr @gr_ep_enable._entry, ptr @gr_ep_enable._entry.128, ptr @gr_ep_enable._entry.133, ptr @gr_ep_enable._entry.136, ptr @gr_ep_enable._entry.139, ptr @gr_ep_enable._entry.142, ptr @gr_ep_enable._entry_ptr, ptr @gr_ep_enable._entry_ptr.130, ptr @gr_ep_enable._entry_ptr.135, ptr @gr_ep_enable._entry_ptr.138, ptr @gr_ep_enable._entry_ptr.141, ptr @gr_ep_enable._entry_ptr.144, ptr @gr_finish_request._entry, ptr @gr_finish_request._entry_ptr, ptr @gr_irq_handler._entry, ptr @gr_irq_handler._entry_ptr, ptr @gr_probe._entry, ptr @gr_probe._entry.11, ptr @gr_probe._entry.14, ptr @gr_probe._entry.17, ptr @gr_probe._entry.20, ptr @gr_probe._entry.23, ptr @gr_probe._entry.27, ptr @gr_probe._entry.8, ptr @gr_probe._entry_ptr, ptr @gr_probe._entry_ptr.10, ptr @gr_probe._entry_ptr.13, ptr @gr_probe._entry_ptr.16, ptr @gr_probe._entry_ptr.19, ptr @gr_probe._entry_ptr.22, ptr @gr_probe._entry_ptr.26, ptr @gr_probe._entry_ptr.29, ptr @gr_queue._entry, ptr @gr_queue._entry.68, ptr @gr_queue._entry.71, ptr @gr_queue._entry.74, ptr @gr_queue._entry.77, ptr @gr_queue._entry_ptr, ptr @gr_queue._entry_ptr.70, ptr @gr_queue._entry_ptr.73, ptr @gr_queue._entry_ptr.76, ptr @gr_queue._entry_ptr.79, ptr @gr_driver, ptr @.str, ptr @gr_match, ptr @driver_name, ptr @gr_ops, ptr @gr_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @gr_ep0state_string.names, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @inames, ptr @onames, ptr @gr_ep_ops, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @gr_modestring, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @gr_dfs_fops, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_finish_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep0state_string.names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep0_respond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_queue._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_queue._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_queue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_queue._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_alloc_dma_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep0out_requeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inames to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onames to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_ep_enable._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_modestring to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_dfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gr_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @gr_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 3976, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev2, ptr %dev4, align 8
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 10
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp = icmp slt i32 %call10, 1
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %irqi = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %irqi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call14, ptr %irqi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp sgt i32 %call14, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #9
  %irqo = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %irqo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call18, ptr %irqo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 1
  br i1 %cmp20, label %if.then17.cleanup_crit_edge, label %if.then17.if.end24_crit_edge

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %irqi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %irqi, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17.if.end24_crit_edge
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @driver_name, ptr %name, align 4
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %max_speed, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gr_ops, ptr %ops, align 8
  %lock = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gr_probe.__key, i16 noundef signext 3) #9
  %regs28 = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %regs28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %regs28, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %status30 = getelementptr inbounds %struct.gr_regs, ptr %call5, i32 0, i32 3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status30) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  %shr = lshr i32 %11, 28
  %add = add nuw nsw i32 %shr, 1
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %nepi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %nepi, align 8
  %and32 = lshr i32 %11, 24
  %shr33 = and i32 %and32, 15
  %add34 = add nuw nsw i32 %shr33, 1
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %nepo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add34, ptr %nepo, align 4
  %and35 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4, align 8
  br i1 %tobool36.not, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end24
  %call44 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.7, ptr noundef %15, i32 noundef 20, i32 noundef 4, i32 noundef 0) #9
  %desc_pool = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call44, ptr %desc_pool, align 4
  %tobool46.not = icmp eq ptr %call44, null
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 8
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %call55 = tail call i32 @usb_add_gadget_udc(ptr noundef %18, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12) #12
  br label %if.then124

if.end62:                                         ; preds = %if.end52
  %added = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %added to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %added, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %added, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call64 = tail call fastcc i32 @gr_udc_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.then124

if.end68:                                         ; preds = %if.end62
  tail call fastcc void @gr_disable_interrupts_and_pullup(ptr noundef nonnull %call.i)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call fastcc void @gr_dfs_create(ptr noundef nonnull %call.i)
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %24 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev4, align 8
  %call.i202 = tail call i32 @devm_request_threaded_irq(ptr noundef %25, i32 noundef %23, ptr noundef nonnull @gr_irq, ptr noundef nonnull @gr_irq_handler, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool72.not = icmp eq i32 %call.i202, 0
  br i1 %tobool72.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev4, align 8
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %29) #12
  br label %if.then124

if.end79:                                         ; preds = %if.end68
  %30 = ptrtoint ptr %irqi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irqi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool81.not = icmp eq i32 %31, 0
  br i1 %tobool81.not, label %if.end79.do.end118_crit_edge, label %if.then82

if.end79.do.end118_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.then82:                                        ; preds = %if.end79
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 8
  %call.i204 = tail call i32 @devm_request_threaded_irq(ptr noundef %33, i32 noundef %31, ptr noundef nonnull @gr_irq, ptr noundef nonnull @gr_irq_handler, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool85.not = icmp eq i32 %call.i204, 0
  br i1 %tobool85.not, label %if.end92, label %do.end89

do.end89:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev4, align 8
  %36 = ptrtoint ptr %irqi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irqi, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18, i32 noundef %37) #12
  br label %if.then124

if.end92:                                         ; preds = %if.then82
  %irqo93 = getelementptr inbounds %struct.gr_udc, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %irqo93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqo93, align 4
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 8
  %call.i206 = tail call i32 @devm_request_threaded_irq(ptr noundef %41, i32 noundef %39, ptr noundef nonnull @gr_irq, ptr noundef nonnull @gr_irq_handler, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool95.not = icmp eq i32 %call.i206, 0
  br i1 %tobool95.not, label %if.end103, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev4, align 8
  %44 = ptrtoint ptr %irqo93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irqo93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21, i32 noundef %45) #12
  br label %if.then124

if.end103:                                        ; preds = %if.end92
  %46 = ptrtoint ptr %irqi to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %irqi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool105.not = icmp eq i32 %.pr, 0
  br i1 %tobool105.not, label %if.end103.do.end118_crit_edge, label %do.end109

if.end103.do.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev4, align 8
  %49 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs28, align 8
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %53 = ptrtoint ptr %irqo93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irqo93, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.24, ptr noundef %50, i32 noundef %52, i32 noundef %.pr, i32 noundef %54) #12
  br label %cleanup

do.end118:                                        ; preds = %if.end103.do.end118_crit_edge, %if.end79.do.end118_crit_edge
  %55 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev4, align 8
  %57 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs28, align 8
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.28, ptr noundef %58, i32 noundef %60) #12
  br label %cleanup

if.then124:                                       ; preds = %do.end99, %do.end89, %do.end76, %if.then66, %do.end60
  %retval1.1.ph = phi i32 [ %call.i206, %do.end99 ], [ %call.i204, %do.end89 ], [ %call.i202, %do.end76 ], [ %call64, %if.then66 ], [ %call55, %do.end60 ]
  %call125 = tail call i32 @gr_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %do.end118, %do.end109, %do.end50, %do.end40, %if.then17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ -12, %do.end50 ], [ -19, %do.end40 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ -19, %if.then17.cleanup_crit_edge ], [ %retval1.1.ph, %if.then124 ], [ 0, %do.end109 ], [ 0, %do.end118 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %added = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %added to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %added, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_del_gadget_udc(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %driver = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.gr_dfs_delete.exit_crit_edge

if.end3.gr_dfs_delete.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_dfs_delete.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %gr_dfs_delete.exit

gr_dfs_delete.exit:                               ; preds = %if.end.i.i, %if.end3.gr_dfs_delete.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end3.gr_dfs_delete.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %11 = load ptr, ptr @usb_debug_root, align 4
  %call2.i = tail call ptr @debugfs_lookup(ptr noundef %retval.0.i.i, ptr noundef %11) #9
  tail call void @debugfs_remove(ptr noundef %call2.i) #9
  %desc_pool = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %13) #9
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  %epi = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 1
  %ep0reqi = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %ep0reqi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep0reqi, align 4
  %tobool.not.i = icmp eq ptr %epi, null
  %tobool1.not.i = icmp eq ptr %16, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %gr_dfs_delete.exit.gr_free_request.exit_crit_edge, label %if.end.i

gr_dfs_delete.exit.gr_free_request.exit_crit_edge: ; preds = %gr_dfs_delete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_free_request.exit

if.end.i:                                         ; preds = %gr_dfs_delete.exit
  %queue.i = getelementptr inbounds %struct.gr_request, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %queue.i
  br i1 %cmp.i.not.i, label %if.end.i.if.end18.i_crit_edge, label %do.end.i, !prof !416

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.155) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.end.i.if.end18.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %16) #9
  br label %gr_free_request.exit

gr_free_request.exit:                             ; preds = %if.end18.i, %gr_dfs_delete.exit.gr_free_request.exit_crit_edge
  %epo = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 2
  %ep0reqo = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %ep0reqo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep0reqo, align 8
  %tobool.not.i33 = icmp eq ptr %epo, null
  %tobool1.not.i34 = icmp eq ptr %20, null
  %or.cond.i35 = or i1 %tobool.not.i33, %tobool1.not.i34
  br i1 %or.cond.i35, label %gr_free_request.exit.gr_free_request.exit41_crit_edge, label %if.end.i38

gr_free_request.exit.gr_free_request.exit41_crit_edge: ; preds = %gr_free_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_free_request.exit41

if.end.i38:                                       ; preds = %gr_free_request.exit
  %queue.i36 = getelementptr inbounds %struct.gr_request, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %queue.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue.i36, align 4
  %cmp.i.not.i37 = icmp eq ptr %22, %queue.i36
  br i1 %cmp.i.not.i37, label %if.end.i38.if.end18.i40_crit_edge, label %do.end.i39, !prof !416

if.end.i38.if.end18.i40_crit_edge:                ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i40

do.end.i39:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.155) #9
  br label %if.end18.i40

if.end18.i40:                                     ; preds = %do.end.i39, %if.end.i38.if.end18.i40_crit_edge
  tail call void @kfree(ptr noundef nonnull %20) #9
  br label %gr_free_request.exit41

gr_free_request.exit41:                           ; preds = %if.end18.i40, %gr_free_request.exit.gr_free_request.exit41_crit_edge
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nepo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54.not = icmp eq i32 %24, 0
  br i1 %cmp54.not, label %gr_free_request.exit41.for.cond7.preheader_crit_edge, label %gr_free_request.exit41.for.body_crit_edge

gr_free_request.exit41.for.body_crit_edge:        ; preds = %gr_free_request.exit41
  br label %for.body

gr_free_request.exit41.for.cond7.preheader_crit_edge: ; preds = %gr_free_request.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %gr_ep_remove.exit.for.cond7.preheader_crit_edge, %gr_free_request.exit41.for.cond7.preheader_crit_edge
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nepi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp857.not = icmp eq i32 %26, 0
  br i1 %cmp857.not, label %for.cond7.preheader.cleanup_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %gr_ep_remove.exit.for.body_crit_edge, %gr_free_request.exit41.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %gr_ep_remove.exit.for.body_crit_edge ], [ 0, %gr_free_request.exit41.for.body_crit_edge ]
  %tailbuf.i = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 2, i32 %i.055, i32 8
  %27 = ptrtoint ptr %tailbuf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tailbuf.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %for.body.gr_ep_remove.exit_crit_edge, label %if.then3.i

for.body.gr_ep_remove.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_remove.exit

if.then3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i, align 8
  %maxpacket_limit.i = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 2, i32 %i.055, i32 0, i32 7
  %31 = ptrtoint ptr %maxpacket_limit.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 7)
  %bf.load.i = load i56, ptr %maxpacket_limit.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 24
  %32 = trunc i56 %bf.lshr.i to i32
  %bf.cast.i = and i32 %32, 65535
  %tailbuf_paddr.i = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 2, i32 %i.055, i32 9
  %33 = ptrtoint ptr %tailbuf_paddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tailbuf_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %bf.cast.i, ptr noundef nonnull %28, i32 noundef %34, i32 noundef 0) #9
  br label %gr_ep_remove.exit

gr_ep_remove.exit:                                ; preds = %if.then3.i, %for.body.gr_ep_remove.exit_crit_edge
  %inc = add nuw i32 %i.055, 1
  %35 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nepo, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %gr_ep_remove.exit.for.body_crit_edge, label %gr_ep_remove.exit.for.cond7.preheader_crit_edge

gr_ep_remove.exit.for.cond7.preheader_crit_edge:  ; preds = %gr_ep_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader

gr_ep_remove.exit.for.body_crit_edge:             ; preds = %gr_ep_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body9:                                        ; preds = %gr_ep_remove.exit53.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.158 = phi i32 [ %inc11, %gr_ep_remove.exit53.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %tailbuf.i44 = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 1, i32 %i.158, i32 8
  %37 = ptrtoint ptr %tailbuf.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tailbuf.i44, align 4
  %tobool2.not.i45 = icmp eq ptr %38, null
  br i1 %tobool2.not.i45, label %for.body9.gr_ep_remove.exit53_crit_edge, label %if.then3.i52

for.body9.gr_ep_remove.exit53_crit_edge:          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_remove.exit53

if.then3.i52:                                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i, align 8
  %maxpacket_limit.i47 = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 1, i32 %i.158, i32 0, i32 7
  %41 = ptrtoint ptr %maxpacket_limit.i47 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load.i48 = load i56, ptr %maxpacket_limit.i47, align 2
  %bf.lshr.i49 = lshr i56 %bf.load.i48, 24
  %42 = trunc i56 %bf.lshr.i49 to i32
  %bf.cast.i50 = and i32 %42, 65535
  %tailbuf_paddr.i51 = getelementptr %struct.gr_udc, ptr %1, i32 0, i32 1, i32 %i.158, i32 9
  %43 = ptrtoint ptr %tailbuf_paddr.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tailbuf_paddr.i51, align 4
  tail call void @dma_free_attrs(ptr noundef %40, i32 noundef %bf.cast.i50, ptr noundef nonnull %38, i32 noundef %44, i32 noundef 0) #9
  br label %gr_ep_remove.exit53

gr_ep_remove.exit53:                              ; preds = %if.then3.i52, %for.body9.gr_ep_remove.exit53_crit_edge
  %inc11 = add nuw i32 %i.158, 1
  %45 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nepi, align 8
  %cmp8 = icmp ult i32 %inc11, %46
  br i1 %cmp8, label %gr_ep_remove.exit53.for.body9_crit_edge, label %gr_ep_remove.exit53.cleanup_crit_edge

gr_ep_remove.exit53.cleanup_crit_edge:            ; preds = %gr_ep_remove.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

gr_ep_remove.exit53.for.body9_crit_edge:          ; preds = %gr_ep_remove.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

cleanup:                                          ; preds = %gr_ep_remove.exit53.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end.cleanup_crit_edge ], [ 0, %for.cond7.preheader.cleanup_crit_edge ], [ 0, %gr_ep_remove.exit53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_udc_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %bufsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufsize) #9
  %4 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bufsize, align 4, !annotation !417
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %control1.i = getelementptr inbounds %struct.gr_regs, ptr %6, i32 0, i32 2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control1.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %and.i = and i32 %7, -256
  %or3.i = or i32 %and.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %control5.i = getelementptr inbounds %struct.gr_regs, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control5.i, i32 %or3.i) #9, !srcloc !420
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ep_list, ptr %prev.i, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %speed, align 8
  %epi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %epi, ptr %ep0, align 4
  %ep_list4 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %ep_list4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ep_list4, ptr %ep_list4, align 4
  %prev.i78 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep_list4, ptr %prev.i78, align 4
  %ep0state.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ep0state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %entry.gr_set_ep0state.exit_crit_edge, label %do.body.i

entry.gr_set_ep0state.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_udc_init, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %19, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.50) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i, %entry.gr_set_ep0state.exit_crit_edge
  %20 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ep0state.i, align 4
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nepo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp80.not = icmp eq i32 %22, 0
  br i1 %cmp80.not, label %gr_set_ep0state.exit.for.cond9.preheader_crit_edge, label %gr_set_ep0state.exit.for.body_crit_edge

gr_set_ep0state.exit.for.body_crit_edge:          ; preds = %gr_set_ep0state.exit
  br label %for.body

gr_set_ep0state.exit.for.cond9.preheader_crit_edge: ; preds = %gr_set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond9.preheader

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.081, 1
  %23 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nepo, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond9.preheader_crit_edge

for.cond.for.cond9.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond9.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond9.preheader:                              ; preds = %for.cond.for.cond9.preheader_crit_edge, %gr_set_ep0state.exit.for.cond9.preheader_crit_edge
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nepi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1082.not = icmp eq i32 %26, 0
  br i1 %cmp1082.not, label %for.cond9.preheader.for.end22_crit_edge, label %for.cond9.preheader.for.body11_crit_edge

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond9.preheader.for.end22_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %gr_set_ep0state.exit.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %gr_set_ep0state.exit.for.body_crit_edge ]
  %call = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.92, i32 noundef %i.081, ptr noundef nonnull %bufsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1024, ptr %bufsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %28 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufsize, align 4
  %call5 = call fastcc i32 @gr_ep_init(ptr noundef %dev, i32 noundef %i.081, i32 noundef 0, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond9:                                        ; preds = %if.end15
  %inc21 = add nuw i32 %i.183, 1
  %30 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nepi, align 8
  %cmp10 = icmp ult i32 %inc21, %31
  br i1 %cmp10, label %for.cond9.for.body11_crit_edge, label %for.cond9.for.end22_crit_edge

for.cond9.for.end22_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.cond9.for.body11_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.body11:                                       ; preds = %for.cond9.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %i.183 = phi i32 [ %inc21, %for.cond9.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %call12 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.93, i32 noundef %i.183, ptr noundef nonnull %bufsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body11.if.end15_crit_edge, label %if.then14

for.body11.if.end15_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1024, ptr %bufsize, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.body11.if.end15_crit_edge
  %33 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bufsize, align 4
  %call16 = call fastcc i32 @gr_ep_init(ptr noundef %dev, i32 noundef %i.183, i32 noundef 1, i32 noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond9, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end22:                                        ; preds = %for.cond9.for.end22_crit_edge, %for.cond9.preheader.for.end22_crit_edge
  %remote_wakeup = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %35 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %remote_wakeup, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 8193) #9, !srcloc !420
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  call void @arm_heavy_mb() #9
  %regs29 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs29, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1056769) #9, !srcloc !420
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %42 = getelementptr inbounds %struct.gr_epregs, ptr %41, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 6) #9, !srcloc !420
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs29, align 8
  %45 = getelementptr inbounds %struct.gr_epregs, ptr %44, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 6) #9, !srcloc !420
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end22 ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_disable_interrupts_and_pullup(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %control = getelementptr inbounds %struct.gr_regs, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 0) #9, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  tail call void @arm_heavy_mb() #9
  %irq_enabled = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %irq_enabled, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %irq_enabled, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_dfs_create(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %6 = load ptr, ptr @usb_debug_root, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %6) #9
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.156, i16 noundef zeroext 292, ptr noundef %call2, ptr noundef %dev, ptr noundef nonnull @gr_dfs_fops) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_get_frame(ptr noundef readonly %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %status = getelementptr inbounds %struct.gr_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %and = and i32 %2, 2047
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_wakeup(ptr noundef %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote_wakeup = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 13
  %0 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %remote_wakeup, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %control = getelementptr inbounds %struct.gr_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  %or = or i32 %4, 4096
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %control6 = getelementptr inbounds %struct.gr_regs, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control6, i32 %or) #9, !srcloc !420
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_pullup(ptr noundef %_gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %_gadget, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %control1 = getelementptr inbounds %struct.gr_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control1) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool3.not = icmp eq i32 %is_on, 0
  %and = and i32 %2, -16385
  %masksel = select i1 %tobool3.not, i32 0, i32 16384
  %control.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %control7 = getelementptr inbounds %struct.gr_regs, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control7, i32 %control.0) #9, !srcloc !420
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_udc_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gr_udc, ptr %gadget, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr inbounds %struct.gr_udc, ptr %gadget, i32 0, i32 3
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 8
  tail call fastcc void @gr_enable_vbus_detect(ptr noundef %gadget)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_udc_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gr_udc, ptr %gadget, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver = getelementptr inbounds %struct.gr_udc, ptr %gadget, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 8
  tail call fastcc void @gr_stop_activity(ptr noundef %gadget)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_enable_vbus_detect(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_enabled, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %irq_enabled, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %control = getelementptr inbounds %struct.gr_regs, ptr %2, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 536870912) #9, !srcloc !420
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %status5 = getelementptr inbounds %struct.gr_regs, ptr %4, i32 0, i32 3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status5) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %speed.i, align 8
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef 2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %control2.i = getelementptr inbounds %struct.gr_regs, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control2.i, i32 -268419072) #9, !srcloc !420
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_stop_activity(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %ep_list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %ep_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %gr_ep_nuke.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %gr_ep_nuke.exit.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn17, i32 -72
  %stopped.i = getelementptr i8, ptr %.pn17, i32 -12
  %1 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.set.i = or i16 %bf.load.i, 64
  store i16 %bf.set.i, ptr %stopped.i, align 4
  %dma_start.i = getelementptr i8, ptr %.pn17, i32 -20
  %2 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_start.i, align 4
  %regs.i.i = getelementptr i8, ptr %.pn17, i32 -16
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %5 = getelementptr inbounds %struct.gr_epregs, ptr %4, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %or.i.i = or i32 %6, 8
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %9 = getelementptr inbounds %struct.gr_epregs, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or.i.i) #9, !srcloc !420
  %queue.i = getelementptr i8, ptr %.pn17, i32 -8
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not7.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not7.i, label %for.body.gr_ep_nuke.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.gr_ep_nuke.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %12 = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %11, %for.body.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %12, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %ep.0, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.gr_ep_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.gr_ep_nuke.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

gr_ep_nuke.exit:                                  ; preds = %while.body.i.gr_ep_nuke.exit_crit_edge, %for.body.gr_ep_nuke.exit_crit_edge
  %15 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %gr_ep_nuke.exit.for.end_crit_edge, label %gr_ep_nuke.exit.for.body_crit_edge

gr_ep_nuke.exit.for.body_crit_edge:               ; preds = %gr_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

gr_ep_nuke.exit.for.end_crit_edge:                ; preds = %gr_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %gr_ep_nuke.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %control.i = getelementptr inbounds %struct.gr_regs, ptr %17, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 0) #9, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  tail call void @arm_heavy_mb() #9
  %irq_enabled.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %18 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i14 = load i8, ptr %irq_enabled.i, align 8
  %bf.clear.i = and i8 %bf.load.i14, -65
  store i8 %bf.clear.i, ptr %irq_enabled.i, align 8
  %ep0state.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ep0state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %for.end.gr_set_ep0state.exit_crit_edge, label %do.body.i

for.end.gr_set_ep0state.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit

do.body.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_stop_activity, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %21 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %22, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.50) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i, %for.end.gr_set_ep0state.exit_crit_edge
  %23 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ep0state.i, align 4
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_abort_dma(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = getelementptr inbounds %struct.gr_epregs, ptr %1, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %or = or i32 %3, 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = getelementptr inbounds %struct.gr_epregs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %or) #9, !srcloc !420
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_finish_request(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %9)
  %cmp = icmp eq i32 %9, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge, !prof !416

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %status, ptr %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %9, %list_del_init.exit.if.end_crit_edge ]
  %dev8 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 1
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %is_in = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 5
  %13 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %is_in, align 4
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %12, ptr noundef %req, i32 noundef %bf.cast) #9
  %first_desc.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %first_desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %first_desc.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.gr_free_dma_desc_chain.exit_crit_edge, label %do.body.preheader.i

if.end.gr_free_dma_desc_chain.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_free_dma_desc_chain.exit

do.body.preheader.i:                              ; preds = %if.end
  %desc_pool.i.i = getelementptr inbounds %struct.gr_udc, ptr %12, i32 0, i32 4
  %last_desc.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %next.0.i = phi ptr [ %17, %do.body.i.do.body.i_crit_edge ], [ %15, %do.body.preheader.i ]
  %next_desc.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next_desc.i, align 4
  %18 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_pool.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %next.0.i, i32 noundef %21) #9
  %22 = ptrtoint ptr %last_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_desc.i, align 4
  %cmp.not.i = icmp eq ptr %next.0.i, %23
  br i1 %cmp.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %first_desc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %first_desc.i, align 4
  %curr_desc.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %curr_desc.i, align 4
  %26 = ptrtoint ptr %last_desc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %last_desc.i, align 4
  br label %gr_free_dma_desc_chain.exit

gr_free_dma_desc_chain.exit:                      ; preds = %do.end.i, %if.end.gr_free_dma_desc_chain.exit_crit_edge
  %27 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load11 = load i16, ptr %is_in, align 4
  %28 = and i16 %bf.load11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool15.not = icmp eq i16 %28, 0
  br i1 %tobool15.not, label %if.else19, label %if.then16

if.then16:                                        ; preds = %gr_free_dma_desc_chain.exit
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %actual, align 4
  br label %if.end57

if.else19:                                        ; preds = %gr_free_dma_desc_chain.exit
  %oddlen = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 6
  %32 = ptrtoint ptr %oddlen to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %oddlen, align 2
  %conv = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool20.not = icmp eq i16 %33, 0
  br i1 %tobool20.not, label %if.else19.if.end57_crit_edge, label %land.lhs.true

if.else19.if.end57_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true:                                    ; preds = %if.else19
  %actual22 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %34 = ptrtoint ptr %actual22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual22, align 4
  %evenlen = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 5
  %36 = ptrtoint ptr %evenlen to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %evenlen, align 4
  %conv23 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv23)
  %cmp24 = icmp ugt i32 %35, %conv23
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then26:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %conv23
  %tailbuf = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 8
  %40 = ptrtoint ptr %tailbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tailbuf, align 4
  %42 = call ptr @memcpy(ptr %add.ptr, ptr %41, i32 %conv)
  %43 = ptrtoint ptr %actual22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %actual22, align 4
  %length35 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %length35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp36 = icmp ugt i32 %44, %46
  br i1 %cmp36, label %do.body, label %if.then26.if.end57_crit_edge

if.then26.if.end57_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.body:                                          ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_finish_request.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %do.end)) #9
          to label %if.then48 [label %do.end], !srcloc !421

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev8, align 4
  %dev50 = getelementptr inbounds %struct.gr_udc, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev50, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_finish_request.__UNIQUE_ID_ddebug244, ptr noundef %50, ptr noundef nonnull @.str.31, ptr noundef %52) #9
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  %53 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %is_in, align 4
  %54 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i142 = icmp eq i16 %54, 0
  %cond.in.i = select i1 %tobool.not.i142, ptr %actual22, ptr %length35
  %55 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %56 = tail call i32 @llvm.smin.i32(i32 %cond.i, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %do.body15.i)) #9
          to label %if.then.i [label %do.body15.i], !srcloc !421

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i)
  %cmp.i = icmp sgt i32 %cond.i, 32
  %57 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev8, align 4
  %dev12.i = getelementptr inbounds %struct.gr_udc, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev12.i, align 8
  %cond14.i = select i1 %cmp.i, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %60, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, ptr noundef %req, i32 noundef %cond.i, ptr noundef nonnull %cond14.i) #9
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then.i, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %gr_dbgprint_request.exit)) #9
          to label %if.then29.i [label %gr_dbgprint_request.exit], !srcloc !421

if.then29.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %req, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %62, i32 noundef %56, i1 noundef zeroext false) #9
  br label %gr_dbgprint_request.exit

gr_dbgprint_request.exit:                         ; preds = %if.then29.i, %do.body15.i
  %63 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -75, ptr %status2, align 4
  br label %if.end57

if.end57:                                         ; preds = %gr_dbgprint_request.exit, %if.then26.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.else19.if.end57_crit_edge, %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.addr.0)
  %tobool58.not = icmp eq i32 %status.addr.0, 0
  br i1 %tobool58.not, label %if.then59, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then59:                                        ; preds = %if.end57
  %64 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load61 = load i16, ptr %is_in, align 4
  %65 = and i16 %bf.load61, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool65.not = icmp eq i16 %65, 0
  br i1 %tobool65.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %if.then59
  %length.i146 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %66 = ptrtoint ptr %length.i146 to i32
  call void @__asan_load4_noabort(i32 %66)
  %cond.i149 = load i32, ptr %length.i146, align 4
  %67 = tail call i32 @llvm.smin.i32(i32 %cond.i149, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %do.body15.i155)) #9
          to label %if.then.i154 [label %do.body15.i155], !srcloc !421

if.then.i154:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i149)
  %cmp.i150 = icmp sgt i32 %cond.i149, 32
  %68 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev8, align 4
  %dev12.i152 = getelementptr inbounds %struct.gr_udc, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %dev12.i152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev12.i152, align 8
  %cond14.i153 = select i1 %cmp.i150, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %71, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, ptr noundef %req, i32 noundef %cond.i149, ptr noundef nonnull %cond14.i153) #9
  br label %do.body15.i155

do.body15.i155:                                   ; preds = %if.then.i154, %if.then66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %if.end69)) #9
          to label %if.end69.sink.split [label %if.end69], !srcloc !421

if.else67:                                        ; preds = %if.then59
  %actual.i162 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %72 = ptrtoint ptr %actual.i162 to i32
  call void @__asan_load4_noabort(i32 %72)
  %cond.i164 = load i32, ptr %actual.i162, align 4
  %73 = tail call i32 @llvm.smin.i32(i32 %cond.i164, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %do.body15.i170)) #9
          to label %if.then.i169 [label %do.body15.i170], !srcloc !421

if.then.i169:                                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i164)
  %cmp.i165 = icmp sgt i32 %cond.i164, 32
  %74 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev8, align 4
  %dev12.i167 = getelementptr inbounds %struct.gr_udc, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %dev12.i167 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev12.i167, align 8
  %cond14.i168 = select i1 %cmp.i165, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %77, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, ptr noundef %req, i32 noundef %cond.i164, ptr noundef nonnull %cond14.i168) #9
  br label %do.body15.i170

do.body15.i170:                                   ; preds = %if.then.i169, %if.else67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_finish_request, %if.end69)) #9
          to label %if.end69.sink.split [label %if.end69], !srcloc !421

if.end69.sink.split:                              ; preds = %do.body15.i170, %do.body15.i155
  %.sink174 = phi i32 [ %67, %do.body15.i155 ], [ %73, %do.body15.i170 ]
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %req, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %79, i32 noundef %.sink174, i1 noundef zeroext false) #9
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %do.body15.i170, %do.body15.i155, %if.end57.if.end69_crit_edge
  %80 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load70 = load i16, ptr %is_in, align 4
  %bf.set = or i16 %bf.load70, 16
  store i16 %bf.set, ptr %is_in, align 4
  %ep0reqo = getelementptr inbounds %struct.gr_udc, ptr %12, i32 0, i32 7
  %81 = ptrtoint ptr %ep0reqo to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ep0reqo, align 8
  %cmp72 = icmp ne ptr %82, %req
  %tobool58.not.not = xor i1 %tobool58.not, true
  %brmerge = select i1 %cmp72, i1 true, i1 %tobool58.not.not
  br i1 %brmerge, label %if.else85, label %if.then76

if.then76:                                        ; preds = %if.end69
  %setup = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 7
  %83 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool77.not = icmp eq i8 %84, 0
  br i1 %tobool77.not, label %do.end82, label %if.then78

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gr_ep0_setup(ptr noundef %12, ptr noundef %req)
  br label %if.end93

do.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.gr_udc, ptr %12, i32 0, i32 5
  %85 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.35) #12
  br label %if.end93

if.else85:                                        ; preds = %if.end69
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %87 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %complete, align 4
  %tobool87.not = icmp eq ptr %88, null
  br i1 %tobool87.not, label %if.else85.if.end93_crit_edge, label %if.then88

if.else85.if.end93_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.gr_udc, ptr %12, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.else85.if.end93_crit_edge, %do.end82, %if.then78
  %89 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load95 = load i16, ptr %is_in, align 4
  %bf.clear96 = and i16 %bf.load95, -17
  store i16 %bf.clear96, ptr %is_in, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_ep0_setup(ptr noundef %dev, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  %le_response.i.i = alloca i16, align 2
  %u = alloca %union.anon.75, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u) #9
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !417
  %1 = getelementptr inbounds [2 x i32], ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !417
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep0state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end26 [
    i32 6, label %do.body.i
    i32 4, label %do.body.i290
    i32 1, label %entry.if.else30_crit_edge
  ]

entry.if.else30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else30

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %7, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i
  %8 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ep0state, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %gr_set_ep0state.exit.out_crit_edge, label %gr_set_ep0state.exit.if.else30_crit_edge

gr_set_ep0state.exit.if.else30_crit_edge:         ; preds = %gr_set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else30

gr_set_ep0state.exit.out_crit_edge:               ; preds = %gr_set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.i290:                                     ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit293)) #9
          to label %if.then4.i292 [label %gr_set_ep0state.exit293], !srcloc !421

if.then4.i292:                                    ; preds = %do.body.i290
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i291 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev5.i291 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5.i291, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %12, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit293

gr_set_ep0state.exit293:                          ; preds = %if.then4.i292, %do.body.i290
  %13 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep0state, align 4
  %actual8 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %actual8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not = icmp eq i32 %15, 0
  br i1 %cmp9.not, label %gr_set_ep0state.exit293.out_crit_edge, label %do.body

gr_set_ep0state.exit293.out_crit_edge:            ; preds = %gr_set_ep0state.exit293
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %gr_set_ep0state.exit293
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %if.end58)) #9
          to label %if.then15 [label %if.end58], !srcloc !421

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug253, ptr noundef %17, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.54) #9
  br label %if.end58

do.end26:                                         ; preds = %entry
  %dev27 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp1.i = icmp ugt i32 %4, 7
  br i1 %cmp1.i, label %do.end26.do.body.i299_crit_edge, label %if.end.i

do.end26.do.body.i299_crit_edge:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i299

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [8 x ptr], ptr @gr_ep0state_string.names, i32 0, i32 %4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br label %do.body.i299

do.body.i299:                                     ; preds = %if.end.i, %do.end26.do.body.i299_crit_edge
  %retval.0.i295 = phi ptr [ %21, %if.end.i ], [ @.str.58, %do.end26.do.body.i299_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i295) #12
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %or.i = or i32 %24, 262144
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %or.i) #9, !srcloc !420
  %regs8.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs8.i, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %or15.i = or i32 %29, 262144
  %30 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs8.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %or15.i) #9, !srcloc !420
  %32 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %ep0state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit302)) #9
          to label %if.then4.i301 [label %gr_set_ep0state.exit302], !srcloc !421

if.then4.i301:                                    ; preds = %do.body.i299
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %34, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit302

gr_set_ep0state.exit302:                          ; preds = %if.then4.i301, %do.body.i299
  %35 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %ep0state, align 4
  br label %out

if.else30:                                        ; preds = %gr_set_ep0state.exit.if.else30_crit_edge, %entry.if.else30_crit_edge
  %actual32 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %36 = ptrtoint ptr %actual32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool33.not = icmp eq i32 %37, 0
  br i1 %tobool33.not, label %do.body35, label %if.else30.if.end58_crit_edge

if.else30.if.end58_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.body35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %out)) #9
          to label %if.then49 [label %out], !srcloc !421

if.then49:                                        ; preds = %do.body35
  %dev50 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %38 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev50, align 8
  %40 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp1.i303 = icmp ugt i32 %41, 7
  br i1 %cmp1.i303, label %if.then49.gr_ep0state_string.exit307_crit_edge, label %if.end.i305

if.then49.gr_ep0state_string.exit307_crit_edge:   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep0state_string.exit307

if.end.i305:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i304 = getelementptr [8 x ptr], ptr @gr_ep0state_string.names, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i304, align 4
  br label %gr_ep0state_string.exit307

gr_ep0state_string.exit307:                       ; preds = %if.end.i305, %if.then49.gr_ep0state_string.exit307_crit_edge
  %retval.0.i306 = phi ptr [ %43, %if.end.i305 ], [ @.str.58, %if.then49.gr_ep0state_string.exit307_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug254, ptr noundef %39, ptr noundef nonnull @.str.45, ptr noundef %retval.0.i306) #9
  br label %out

if.end58:                                         ; preds = %if.else30.if.end58_crit_edge, %if.then15, %do.body
  %actual60 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %44 = ptrtoint ptr %actual60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp61356.not = icmp eq i32 %45, 0
  br i1 %cmp61356.not, label %if.end58.for.end_crit_edge, label %for.body.lr.ph

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end58
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0357 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %47, i32 %i.0357
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %arrayidx63 = getelementptr [8 x i8], ptr %u, i32 0, i32 %i.0357
  %50 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx63, align 1
  %inc = add nuw i32 %i.0357, 1
  %exitcond.not = icmp eq i32 %inc, %45
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end58.for.end_crit_edge
  %51 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %u, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 1
  %53 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %55 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %wValue, align 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %1, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %61 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %wLength, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_devreq.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_dbgprint_devreq.exit)) #9
          to label %if.then.i [label %gr_dbgprint_devreq.exit], !srcloc !421

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %dev4.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %64 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev4.i, align 8
  %conv.i = zext i8 %52 to i32
  %conv5.i = zext i8 %54 to i32
  %conv6.i = zext i16 %57 to i32
  %conv7.i = zext i16 %60 to i32
  %conv8.i = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_devreq.__UNIQUE_ID_ddebug243, ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i) #9
  br label %gr_dbgprint_devreq.exit

gr_dbgprint_devreq.exit:                          ; preds = %if.then.i, %for.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool64.not = icmp eq i16 %62, 0
  br i1 %tobool64.not, label %gr_dbgprint_devreq.exit.if.end70_crit_edge, label %if.then65

gr_dbgprint_devreq.exit.if.end70_crit_edge:       ; preds = %gr_dbgprint_devreq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then65:                                        ; preds = %gr_dbgprint_devreq.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %tobool66.not = icmp sgt i8 %52, -1
  %66 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ep0state, align 4
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.not.i309 = icmp eq i32 %67, 2
  br i1 %cmp.not.i309, label %if.then67.if.end70.sink.split_crit_edge, label %do.body.i310

if.then67.if.end70.sink.split_crit_edge:          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.sink.split

do.body.i310:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %if.end70.sink.split)) #9
          to label %if.end70.sink.split.sink.split [label %if.end70.sink.split], !srcloc !421

if.else68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.not.i315 = icmp eq i32 %67, 3
  br i1 %cmp.not.i315, label %if.else68.if.end70.sink.split_crit_edge, label %do.body.i316

if.else68.if.end70.sink.split_crit_edge:          ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.sink.split

do.body.i316:                                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %if.end70.sink.split)) #9
          to label %if.end70.sink.split.sink.split [label %if.end70.sink.split], !srcloc !421

if.end70.sink.split.sink.split:                   ; preds = %do.body.i316, %do.body.i310
  %.str.53.sink = phi ptr [ @.str.52, %do.body.i310 ], [ @.str.53, %do.body.i316 ]
  %.sink.ph = phi i32 [ 2, %do.body.i310 ], [ 3, %do.body.i316 ]
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i317 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %68 = ptrtoint ptr %dev5.i317 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev5.i317, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %69, ptr noundef nonnull @.str.91, ptr noundef nonnull %.str.53.sink) #9
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.end70.sink.split.sink.split, %do.body.i316, %if.else68.if.end70.sink.split_crit_edge, %do.body.i310, %if.then67.if.end70.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then67.if.end70.sink.split_crit_edge ], [ 2, %do.body.i310 ], [ 3, %if.else68.if.end70.sink.split_crit_edge ], [ 3, %do.body.i316 ], [ %.sink.ph, %if.end70.sink.split.sink.split ]
  %70 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink, ptr %ep0state, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %gr_dbgprint_devreq.exit.if.end70_crit_edge
  %conv71 = zext i8 %52 to i32
  %and72 = and i32 %conv71, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %if.then75, label %if.end70.if.then86_crit_edge

if.end70.if.then86_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then75:                                        ; preds = %if.end70
  %and77 = and i32 %conv71, 31
  %71 = zext i32 %and77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %and77, label %if.then75.if.then86_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb79
    i32 1, label %sw.bb81
  ]

if.then75.if.then86_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

sw.bb:                                            ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = tail call fastcc i32 @gr_device_request(ptr noundef %dev, i8 noundef zeroext %54, i16 noundef zeroext %57, i16 noundef zeroext %60)
  br label %if.end83

sw.bb79:                                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = tail call fastcc i32 @gr_endpoint_request(ptr noundef %dev, i8 noundef zeroext %54, i16 noundef zeroext %57, i16 noundef zeroext %60)
  br label %if.end83

sw.bb81:                                          ; preds = %if.then75
  %state.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 9
  %72 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %73)
  %cmp.not.i320 = icmp eq i32 %73, 7
  br i1 %cmp.not.i320, label %if.end.i321, label %sw.bb81.do.body118_crit_edge

sw.bb81.do.body118_crit_edge:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body118

if.end.i321:                                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cond.i = icmp eq i8 %54, 0
  br i1 %cond.i, label %sw.bb.i, label %if.end.i321.if.then86_crit_edge

if.end.i321.if.then86_crit_edge:                  ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

sw.bb.i:                                          ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_response.i.i) #9
  %74 = ptrtoint ptr %le_response.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %le_response.i.i, align 2
  %call.i.i = call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef nonnull %le_response.i.i, i32 noundef 2, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_response.i.i) #9
  br label %if.end83

if.end83:                                         ; preds = %sw.bb.i, %sw.bb79, %sw.bb
  %status.0 = phi i32 [ %call80, %sw.bb79 ], [ %call78, %sw.bb ], [ %call.i.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp84 = icmp sgt i32 %status.0, 0
  br i1 %cmp84, label %if.end83.if.then86_crit_edge, label %if.end83.if.end108_crit_edge

if.end83.if.end108_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.end83.if.then86_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then86:                                        ; preds = %if.end83.if.then86_crit_edge, %if.end.i321.if.then86_crit_edge, %if.then75.if.then86_crit_edge, %if.end70.if.then86_crit_edge
  %lock = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %do.end105)) #9
          to label %if.then101 [label %do.end105], !srcloc !421

if.then101:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %75 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev102, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug255, ptr noundef %76, ptr noundef nonnull @.str.46) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %if.then86
  %driver = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 3
  %77 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %setup, align 4
  %call106 = call i32 %80(ptr noundef %dev, ptr noundef nonnull %u) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %if.end83.if.end108_crit_edge
  %status.1 = phi i32 [ %call106, %do.end105 ], [ %status.0, %if.end83.if.end108_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp109 = icmp slt i32 %status.1, 0
  br i1 %cmp109, label %if.end108.do.body118_crit_edge, label %if.end108.if.end137_crit_edge, !prof !443

if.end108.if.end137_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.end108.do.body118_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body118

do.body118:                                       ; preds = %if.end108.do.body118_crit_edge, %sw.bb81.do.body118_crit_edge
  %status.1352 = phi i32 [ %status.1, %if.end108.do.body118_crit_edge ], [ -1, %sw.bb81.do.body118_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %do.end136)) #9
          to label %if.then132 [label %do.end136], !srcloc !421

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %dev133 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %81 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev133, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug256, ptr noundef %82, ptr noundef nonnull @.str.47) #9
  br label %do.end136

do.end136:                                        ; preds = %if.then132, %do.body118
  call fastcc void @gr_control_stall(ptr noundef %dev)
  br label %if.end137

if.end137:                                        ; preds = %do.end136, %if.end108.if.end137_crit_edge
  %status.1351 = phi i32 [ %status.1352, %do.end136 ], [ %status.1, %if.end108.if.end137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %54)
  %cmp143 = icmp eq i8 %54, 9
  %or.cond = and i1 %cmp143, %cmp73
  br i1 %or.cond, label %if.then145, label %if.end137.if.end195_crit_edge

if.end137.if.end195_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

if.then145:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool146.not = icmp eq i16 %56, 0
  br i1 %tobool146.not, label %do.body148, label %if.else168

do.body148:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %if.end195.sink.split)) #9
          to label %if.then162 [label %if.end195.sink.split], !srcloc !421

if.then162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %dev163 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %83 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev163, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug257, ptr noundef %84, ptr noundef nonnull @.str.48) #9
  br label %if.end195.sink.split

if.else168:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.1351)
  %cmp169 = icmp sgt i32 %status.1351, -1
  br i1 %cmp169, label %do.body172, label %if.else168.if.end195_crit_edge

if.else168.if.end195_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

do.body172:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep0_setup.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %if.end195.sink.split)) #9
          to label %if.then186 [label %if.end195.sink.split], !srcloc !421

if.then186:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #11
  %dev187 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %85 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev187, align 8
  %conv188 = zext i16 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep0_setup.__UNIQUE_ID_ddebug258, ptr noundef %86, ptr noundef nonnull @.str.49, i32 noundef %conv188) #9
  br label %if.end195.sink.split

if.end195.sink.split:                             ; preds = %if.then186, %do.body172, %if.then162, %do.body148
  %.sink358 = phi i32 [ 6, %do.body148 ], [ 6, %if.then162 ], [ 7, %do.body172 ], [ 7, %if.then186 ]
  call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef %.sink358) #9
  br label %if.end195

if.end195:                                        ; preds = %if.end195.sink.split, %if.else168.if.end195_crit_edge, %if.end137.if.end195_crit_edge
  %87 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ep0state, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %88, label %do.body.i337 [
    i32 3, label %do.body.i325
    i32 2, label %do.body.i331
    i32 1, label %if.end195.gr_set_ep0state.exit340_crit_edge
  ]

if.end195.gr_set_ep0state.exit340_crit_edge:      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit340

do.body.i325:                                     ; preds = %if.end195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit328)) #9
          to label %if.then4.i327 [label %gr_set_ep0state.exit328], !srcloc !421

if.then4.i327:                                    ; preds = %do.body.i325
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i326 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %90 = ptrtoint ptr %dev5.i326 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev5.i326, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %91, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.55) #9
  br label %gr_set_ep0state.exit328

gr_set_ep0state.exit328:                          ; preds = %if.then4.i327, %do.body.i325
  %92 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 5, ptr %ep0state, align 4
  br label %out

do.body.i331:                                     ; preds = %if.end195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit334)) #9
          to label %if.then4.i333 [label %gr_set_ep0state.exit334], !srcloc !421

if.then4.i333:                                    ; preds = %do.body.i331
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i332 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %93 = ptrtoint ptr %dev5.i332 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev5.i332, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %94, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.54) #9
  br label %gr_set_ep0state.exit334

gr_set_ep0state.exit334:                          ; preds = %if.then4.i333, %do.body.i331
  %95 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %ep0state, align 4
  br label %out

do.body.i337:                                     ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_setup, %gr_set_ep0state.exit340)) #9
          to label %if.then4.i339 [label %gr_set_ep0state.exit340], !srcloc !421

if.then4.i339:                                    ; preds = %do.body.i337
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i338 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %96 = ptrtoint ptr %dev5.i338 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev5.i338, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %97, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit340

gr_set_ep0state.exit340:                          ; preds = %if.then4.i339, %do.body.i337, %if.end195.gr_set_ep0state.exit340_crit_edge
  %98 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %ep0state, align 4
  br label %out

out:                                              ; preds = %gr_set_ep0state.exit340, %gr_set_ep0state.exit334, %gr_set_ep0state.exit328, %gr_ep0state_string.exit307, %do.body35, %gr_set_ep0state.exit302, %gr_set_ep0state.exit293.out_crit_edge, %gr_set_ep0state.exit.out_crit_edge
  call fastcc void @gr_ep0out_requeue(ptr noundef %dev)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_control_stall(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %or = or i32 %2, 262144
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %or) #9, !srcloc !420
  %regs8 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs8, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %or15 = or i32 %7, 262144
  %8 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or15) #9, !srcloc !420
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %ep0state, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_device_request(ptr noundef %dev, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  %le_response.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %request, label %entry.cleanup_crit_edge [
    i8 5, label %do.body
    i8 0, label %sw.bb14
    i8 3, label %sw.bb18
    i8 1, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_device_request.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_device_request, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !421

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 8
  %3 = and i16 %value, 255
  %and = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_device_request.__UNIQUE_ID_ddebug252, ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %control1.i = getelementptr inbounds %struct.gr_regs, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control1.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %and.i = and i32 %6, -256
  %7 = shl i16 %value, 1
  %8 = and i16 %7, 254
  %9 = or i16 %8, 1
  %or.i = zext i16 %9 to i32
  %or3.i = or i32 %and.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %control5.i = getelementptr inbounds %struct.gr_regs, ptr %11, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control5.i, i32 %or3.i) #9, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %value)
  %tobool9.not = icmp eq i16 %value, 0
  %. = select i1 %tobool9.not, i32 5, i32 6
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef %.) #9
  %call.i = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %remote_wakeup, align 8
  %13 = lshr i8 %bf.load, 4
  %14 = and i8 %13, 2
  %15 = or i8 %14, 1
  %conv16 = zext i8 %15 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_response.i) #9
  %16 = shl nuw nsw i16 %conv16, 8
  %17 = ptrtoint ptr %le_response.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %le_response.i, align 2
  %call.i1 = call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef nonnull %le_response.i, i32 noundef 2, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_response.i) #9
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %18 = zext i16 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %value, label %sw.bb18.cleanup_crit_edge [
    i16 1, label %sw.bb20
    i16 2, label %sw.bb25
  ]

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup21 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %19 = ptrtoint ptr %remote_wakeup21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %remote_wakeup21, align 8
  %bf.set = or i8 %bf.load22, 32
  store i8 %bf.set, ptr %remote_wakeup21, align 8
  %call.i2 = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb18
  %20 = add i16 %index, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %20)
  %21 = icmp ult i16 %20, 1024
  br i1 %21, label %if.then33, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = lshr i16 %index, 8
  %conv27 = trunc i16 %22 to i8
  %test_mode = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %test_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv27, ptr %test_mode, align 1
  %call34 = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_testmode_complete)
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %value)
  %cond47 = icmp eq i16 %value, 1
  br i1 %cond47, label %sw.bb38, label %sw.bb36.cleanup_crit_edge

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup39 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 13
  %24 = ptrtoint ptr %remote_wakeup39 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load40 = load i8, ptr %remote_wakeup39, align 8
  %bf.clear41 = and i8 %bf.load40, -33
  store i8 %bf.clear41, ptr %remote_wakeup39, align 8
  %call.i3 = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.bb36.cleanup_crit_edge, %if.then33, %sw.bb25.cleanup_crit_edge, %sw.bb20, %sw.bb18.cleanup_crit_edge, %sw.bb14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i3, %sw.bb38 ], [ %call34, %if.then33 ], [ %call.i2, %sw.bb20 ], [ %call.i1, %sw.bb14 ], [ %call.i, %do.end ], [ 1, %sw.bb36.cleanup_crit_edge ], [ 1, %sw.bb18.cleanup_crit_edge ], [ 1, %sw.bb25.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_endpoint_request(ptr noundef %dev, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  %le_response.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i16 %index to i8
  %conv1 = and i8 %0, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %0)
  %tobool.not = icmp sgt i8 %0, -1
  %conv10 = zext i8 %conv1 to i32
  br i1 %tobool.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nepi, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv10)
  %cmp.not = icmp ugt i32 %2, %conv10
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9:                                   ; preds = %entry
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nepo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv10)
  %cmp11.not = icmp ugt i32 %4, %conv10
  br i1 %cmp11.not, label %land.lhs.true9.if.end_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %state = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp13.not = icmp eq i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %cmp17.not = icmp eq i8 %conv1, 0
  %or.cond = or i1 %cmp17.not, %cmp13.not
  br i1 %or.cond, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %idxprom = zext i8 %conv1 to i32
  %arrayidx = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 %idxprom
  %arrayidx24 = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 %idxprom
  %cond = select i1 %tobool.not, ptr %arrayidx24, ptr %arrayidx
  %7 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %request, label %if.end20.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 3, label %sw.bb31
    i8 1, label %sw.bb40
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.gr_ep, ptr %cond, i32 0, i32 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  %11 = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_response.i) #9
  %12 = shl i16 %11, 6
  %13 = and i16 %12, 256
  %14 = ptrtoint ptr %le_response.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %le_response.i, align 2
  %call.i = call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef nonnull %le_response.i, i32 noundef 2, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_response.i) #9
  br label %cleanup

sw.bb31:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %value)
  %cond59 = icmp eq i16 %value, 0
  br i1 %cond59, label %sw.bb33, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb33:                                          ; preds = %sw.bb31
  %num.i = getelementptr inbounds %struct.gr_ep, ptr %cond, i32 0, i32 5
  %15 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 256
  br i1 %tobool.not.i, label %sw.bb33.cleanup_crit_edge, label %land.lhs.true.i

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb33
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %cond, i32 0, i32 9
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i = icmp eq i8 %19, 1
  br i1 %cmp.i, label %land.lhs.true9.i.cleanup_crit_edge, label %do.body35.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body35.i:                                      ; preds = %land.lhs.true9.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep_halt_wedge.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_endpoint_request, %if.then37)) #9
          to label %if.then49.i [label %if.then37], !srcloc !421

if.then49.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev50.i = getelementptr inbounds %struct.gr_ep, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev50.i, align 4
  %dev51.i = getelementptr inbounds %struct.gr_udc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev51.i, align 8
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %cond, i32 0, i32 1
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep_halt_wedge.__UNIQUE_ID_ddebug250, ptr noundef %23, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, ptr noundef %25) #9
  br label %if.then37

if.then37:                                        ; preds = %if.then49.i, %do.body35.i
  %regs.i = getelementptr inbounds %struct.gr_ep, ptr %cond, i32 0, i32 4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %or.i = or i32 %28, 4
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %or.i) #9, !srcloc !420
  %31 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load69.i = load i16, ptr %num.i, align 4
  %bf.set.i = or i16 %bf.load69.i, 64
  store i16 %bf.set.i, ptr %num.i, align 4
  %call.i1 = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  br label %cleanup

sw.bb40:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %value)
  %cond58 = icmp eq i16 %value, 0
  br i1 %cond58, label %sw.bb42, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb42:                                          ; preds = %sw.bb40
  %wedged = getelementptr inbounds %struct.gr_ep, ptr %cond, i32 0, i32 5
  %32 = ptrtoint ptr %wedged to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %wedged, align 4
  %33 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool43.not = icmp eq i16 %33, 0
  br i1 %tobool43.not, label %if.end45, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %sw.bb42
  %call46 = tail call fastcc i32 @gr_ep_halt_wedge(ptr noundef %cond, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp47 = icmp sgt i32 %call46, -1
  br i1 %cmp47, label %if.then49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i2 = tail call fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end45.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.then37, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %sw.bb, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb ], [ -1, %land.lhs.true9.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call.i1, %if.then37 ], [ -1, %sw.bb42.cleanup_crit_edge ], [ %call.i2, %if.then49 ], [ %call46, %if.end45.cleanup_crit_edge ], [ 1, %sw.bb40.cleanup_crit_edge ], [ 1, %sw.bb31.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -95, %land.lhs.true9.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_ep0out_requeue(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2
  %ep0reqo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %ep0reqo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0reqo, align 8
  %is_in.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 5
  %2 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_in.i, align 4
  %3 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.gr_queue_int.exit_crit_edge, label %if.then.i

entry.gr_queue_int.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_queue_int.exit

if.then.i:                                        ; preds = %entry
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.i.i = load i32, ptr %length.i.i, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0out_requeue, %do.body15.i.i)) #9
          to label %if.then.i.i [label %do.body15.i.i], !srcloc !421

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i.i)
  %cmp.i.i = icmp sgt i32 %cond.i.i, 32
  %dev.i.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.gr_udc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev12.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12.i.i, align 8
  %cond14.i.i = select i1 %cmp.i.i, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.65, ptr noundef %1, i32 noundef %cond.i.i, ptr noundef nonnull %cond14.i.i) #9
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %if.then.i.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0out_requeue, %gr_queue_int.exit)) #9
          to label %if.then29.i.i [label %gr_queue_int.exit], !srcloc !421

if.then29.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %11, i32 noundef %5, i1 noundef zeroext false) #9
  br label %gr_queue_int.exit

gr_queue_int.exit:                                ; preds = %if.then29.i.i, %do.body15.i.i, %entry.gr_queue_int.exit_crit_edge
  %call.i = tail call fastcc i32 @gr_queue(ptr noundef %epo, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %gr_queue_int.exit.if.end_crit_edge, label %do.end

gr_queue_int.exit.if.end_crit_edge:               ; preds = %gr_queue_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %gr_queue_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.88, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %gr_queue_int.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_ep0_respond(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %length, ptr noundef %complete) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0reqi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %ep0reqi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0reqi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp24 = icmp sgt i32 %length, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %3, i32 %i.025
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2, align 1
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %ep0reqi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep0reqi, align 4
  %length5 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %length, ptr %length5, align 4
  %10 = load ptr, ptr %ep0reqi, align 4
  %complete8 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %complete8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %complete, ptr %complete8, align 4
  %epi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1
  %12 = load ptr, ptr %ep0reqi, align 4
  %is_in.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %is_in.i, align 4
  %14 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %for.end.gr_queue_int.exit_crit_edge, label %if.then.i

for.end.gr_queue_int.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_queue_int.exit

if.then.i:                                        ; preds = %for.end
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.i.i = load i32, ptr %length.i.i, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %cond.i.i, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_respond, %do.body15.i.i)) #9
          to label %if.then.i.i [label %do.body15.i.i], !srcloc !421

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i.i)
  %cmp.i.i = icmp sgt i32 %cond.i.i, 32
  %dev.i.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.gr_udc, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12.i.i, align 8
  %cond14.i.i = select i1 %cmp.i.i, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %20, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.65, ptr noundef %12, i32 noundef %cond.i.i, ptr noundef nonnull %cond14.i.i) #9
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %if.then.i.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep0_respond, %gr_queue_int.exit)) #9
          to label %if.then29.i.i [label %gr_queue_int.exit], !srcloc !421

if.then29.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %22, i32 noundef %16, i1 noundef zeroext false) #9
  br label %gr_queue_int.exit

gr_queue_int.exit:                                ; preds = %if.then29.i.i, %do.body15.i.i, %for.end.gr_queue_int.exit_crit_edge
  %call.i = tail call fastcc i32 @gr_queue(ptr noundef %epi, ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %do.end, label %gr_queue_int.exit.if.end_crit_edge

gr_queue_int.exit.if.end_crit_edge:               ; preds = %gr_queue_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %gr_queue_int.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %23 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.63, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %gr_queue_int.exit.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gr_ep0_testmode_complete(ptr nocapture noundef readonly %_ep, ptr nocapture noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %control2 = getelementptr inbounds %struct.gr_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control2) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  %test_mode = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %test_mode, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 9
  %or = or i32 %shl, %4
  %or4 = or i32 %or, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %control6 = getelementptr inbounds %struct.gr_regs, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control6, i32 %or4) #9, !srcloc !420
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gr_ep0_dummy_complete(ptr nocapture noundef %_ep, ptr nocapture noundef %_req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_queue(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %paddr.i.i.i4 = alloca i32, align 4
  %paddr.i.i1.i = alloca i32, align 4
  %paddr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %num = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %bf.load)
  %cmp = icmp ugt i16 %bf.load, 255
  br i1 %cmp, label %do.end, label %land.rhs.if.end_crit_edge, !prof !443

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.66, ptr noundef %8) #12
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end.do.end21_crit_edge, label %lor.rhs, !prof !443

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

lor.rhs:                                          ; preds = %if.end
  %queue = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %12, %queue
  br i1 %cmp.i.not, label %if.end29, label %lor.rhs.do.end21_crit_edge, !prof !416

lor.rhs.do.end21_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end21:                                         ; preds = %lor.rhs.do.end21_crit_edge, %if.end.do.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev22, align 8
  %name24 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name24, align 4
  %queue27 = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %queue27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue27, align 4
  %cmp.i1 = icmp eq ptr %18, %queue27
  %conv.i2 = zext i1 %cmp.i1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.69, ptr noundef %16, ptr noundef %10, i32 noundef %conv.i2) #12
  br label %cleanup

if.end29:                                         ; preds = %lor.rhs
  %driver = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 8
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %if.end29.do.end43_crit_edge, label %lor.rhs31, !prof !443

if.end29.do.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

lor.rhs31:                                        ; preds = %if.end29
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp32 = icmp eq i32 %22, 0
  br i1 %cmp32, label %lor.rhs31.do.end43_crit_edge, label %if.end45, !prof !443

lor.rhs31.do.end43_crit_edge:                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end43:                                         ; preds = %lor.rhs31.do.end43_crit_edge, %if.end29.do.end43_crit_edge
  %dev44 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end45:                                         ; preds = %lor.rhs31
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp46 = icmp eq i32 %26, 7
  br i1 %cmp46, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %is_in = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 5
  %29 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load55 = load i16, ptr %is_in, align 4
  %bf.lshr56 = lshr i16 %bf.load55, 7
  %bf.clear = and i16 %bf.lshr56, 1
  %bf.cast57 = zext i16 %bf.clear to i32
  %call58 = tail call i32 @usb_gadget_map_request(ptr noundef %1, ptr noundef %req, i32 noundef %bf.cast57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dev64 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end65:                                         ; preds = %if.end52
  %32 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load67 = load i16, ptr %is_in, align 4
  %33 = and i16 %bf.load67, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool71.not = icmp eq i16 %33, 0
  %first_desc.i5 = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 2
  %34 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %first_desc.i5, align 4
  %length.i6 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %length.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i6, align 4
  %conv.i7 = trunc i32 %36 to i16
  br i1 %tobool71.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end65
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %bytes_per_buffer.i = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 2
  %last_desc.i.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 4
  %curr_desc.i.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then72
  %bytes_left.0.i = phi i16 [ %conv.i7, %if.then72 ], [ %sub36.i, %do.cond.i.do.body.i_crit_edge ]
  %bytes_used.0.i = phi i16 [ 0, %if.then72 ], [ %add1637.i, %do.cond.i.do.body.i_crit_edge ]
  %37 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma.i, align 4
  %39 = ptrtoint ptr %bytes_per_buffer.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bytes_per_buffer.i, align 4
  %41 = call i16 @llvm.umin.i16(i16 %bytes_left.0.i, i16 %40) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i.i.i) #9
  %42 = ptrtoint ptr %paddr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %paddr.i.i.i, align 4, !annotation !417
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %desc_pool.i.i.i = getelementptr inbounds %struct.gr_udc, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %desc_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_pool.i.i.i, align 4
  %call.i.i.i.i = call ptr @dma_pool_alloc(ptr noundef %46, i32 noundef 2848, ptr noundef nonnull %paddr.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %gr_add_dma_desc.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i
  %conv3.i = zext i16 %bytes_used.0.i to i32
  %add.i = add i32 %38, %conv3.i
  %47 = ptrtoint ptr %paddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %paddr.i.i.i, align 4
  %paddr3.i.i.i = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %paddr3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %paddr3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i.i) #9
  %data1.i.i = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %data1.i.i, align 4
  %51 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i = load i16, ptr %is_in, align 4
  %52 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool2.not.i.i = icmp eq i16 %52, 0
  %53 = and i16 %41, 8191
  %54 = or i16 %53, 8192
  %narrow.i = select i1 %tobool2.not.i.i, i16 -32768, i16 %54
  %storemerge.i.i = zext i16 %narrow.i to i32
  %55 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge.i.i, ptr %call.i.i.i.i, align 4
  %56 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %first_desc.i5, align 4
  %tobool6.not.i.i = icmp eq ptr %57, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.else9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i.i, ptr %first_desc.i5, align 4
  %59 = ptrtoint ptr %curr_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i.i.i, ptr %curr_desc.i.i, align 4
  br label %do.cond.i

if.else9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %last_desc.i.i, align 4
  %next_desc.i.i = getelementptr inbounds %struct.gr_dma_desc, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %next_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i.i.i, ptr %next_desc.i.i, align 4
  %63 = ptrtoint ptr %paddr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %paddr3.i.i.i, align 4
  %65 = load ptr, ptr %last_desc.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.gr_dma_desc, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %next.i.i, align 4
  %67 = load ptr, ptr %last_desc.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %or13.i.i = or i32 %69, 16384
  store i32 %or13.i.i, ptr %67, align 4
  br label %do.cond.i

gr_add_dma_desc.exit.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.gr_udc, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev2.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.80) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i.i) #9
  br label %alloc_err.i

do.cond.i:                                        ; preds = %if.else9.i.i, %if.then7.i.i
  %74 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i.i.i, ptr %last_desc.i.i, align 4
  %sub36.i = sub i16 %bytes_left.0.i, %41
  %add1637.i = add i16 %41, %bytes_used.0.i
  %cmp20.not.i = icmp eq i16 %sub36.i, 0
  br i1 %cmp20.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %75 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %76 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool23.not.i = icmp eq i32 %76, 0
  br i1 %tobool23.not.i, label %do.end.i.if.end78_crit_edge, label %land.lhs.true.i

do.end.i.if.end78_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

land.lhs.true.i:                                  ; preds = %do.end.i
  %77 = ptrtoint ptr %length.i6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i6, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %79 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 7)
  %bf.load27.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr28.i = lshr i56 %bf.load27.i, 40
  %bf.cast.i = trunc i56 %bf.lshr28.i to i32
  %rem.i = urem i32 %78, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp29.i = icmp eq i32 %rem.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true.i.if.end78_crit_edge

land.lhs.true.i.if.end78_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i.i1.i) #9
  %80 = ptrtoint ptr %paddr.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %paddr.i.i1.i, align 4, !annotation !417
  %81 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1, align 4
  %desc_pool.i.i3.i = getelementptr inbounds %struct.gr_udc, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %desc_pool.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc_pool.i.i3.i, align 4
  %call.i.i.i4.i = call ptr @dma_pool_alloc(ptr noundef %84, i32 noundef 2848, ptr noundef nonnull %paddr.i.i1.i) #9
  %tobool.not.i.i5.i = icmp eq ptr %call.i.i.i4.i, null
  br i1 %tobool.not.i.i5.i, label %gr_add_dma_desc.exit27.i, label %if.end.i16.i

if.end.i16.i:                                     ; preds = %if.then31.i
  %85 = ptrtoint ptr %paddr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %paddr.i.i1.i, align 4
  %paddr3.i.i8.i = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i4.i, i32 0, i32 3
  %87 = ptrtoint ptr %paddr3.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %paddr3.i.i8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i1.i) #9
  %data1.i9.i = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i4.i, i32 0, i32 1
  %88 = ptrtoint ptr %data1.i9.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %data1.i9.i, align 4
  %89 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i11.i = load i16, ptr %is_in, align 4
  %90 = and i16 %bf.load.i11.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool2.not.i12.i = icmp eq i16 %90, 0
  %storemerge.i13.i = select i1 %tobool2.not.i12.i, i32 32768, i32 8192
  %91 = ptrtoint ptr %call.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %storemerge.i13.i, ptr %call.i.i.i4.i, align 4
  %92 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %first_desc.i5, align 4
  %tobool6.not.i15.i = icmp eq ptr %93, null
  br i1 %tobool6.not.i15.i, label %if.then7.i18.i, label %if.else9.i23.i

if.then7.i18.i:                                   ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i.i4.i, ptr %first_desc.i5, align 4
  %95 = ptrtoint ptr %curr_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i.i.i4.i, ptr %curr_desc.i.i, align 4
  br label %gr_add_dma_desc.exit27.thread.i

if.else9.i23.i:                                   ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %last_desc.i.i, align 4
  %next_desc.i20.i = getelementptr inbounds %struct.gr_dma_desc, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %next_desc.i20.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i.i.i4.i, ptr %next_desc.i20.i, align 4
  %99 = ptrtoint ptr %paddr3.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %paddr3.i.i8.i, align 4
  %101 = load ptr, ptr %last_desc.i.i, align 4
  %next.i21.i = getelementptr inbounds %struct.gr_dma_desc, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %next.i21.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %100, ptr %next.i21.i, align 4
  %103 = load ptr, ptr %last_desc.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %or13.i22.i = or i32 %105, 16384
  store i32 %or13.i22.i, ptr %103, align 4
  br label %gr_add_dma_desc.exit27.thread.i

gr_add_dma_desc.exit27.thread.i:                  ; preds = %if.else9.i23.i, %if.then7.i18.i
  %106 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i.i.i4.i, ptr %last_desc.i.i, align 4
  br label %if.end78

gr_add_dma_desc.exit27.i:                         ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev1, align 4
  %dev2.i.i6.i = getelementptr inbounds %struct.gr_udc, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %dev2.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev2.i.i6.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.80) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i1.i) #9
  br label %alloc_err.i

alloc_err.i:                                      ; preds = %gr_add_dma_desc.exit27.i, %gr_add_dma_desc.exit.i
  %111 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %first_desc.i5, align 4
  %tobool.not.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i, label %alloc_err.i.cleanup_crit_edge, label %do.body.preheader.i.i

alloc_err.i.cleanup_crit_edge:                    ; preds = %alloc_err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader.i.i:                            ; preds = %alloc_err.i
  %113 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev1, align 4
  %desc_pool.i.i29.i = getelementptr inbounds %struct.gr_udc, ptr %114, i32 0, i32 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %next.0.i.i = phi ptr [ %116, %do.body.i.i.do.body.i.i_crit_edge ], [ %112, %do.body.preheader.i.i ]
  %next_desc.i31.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i.i, i32 0, i32 4
  %115 = ptrtoint ptr %next_desc.i31.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %next_desc.i31.i, align 4
  %117 = ptrtoint ptr %desc_pool.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %desc_pool.i.i29.i, align 4
  %paddr.i.i32.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i.i, i32 0, i32 3
  %119 = ptrtoint ptr %paddr.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %paddr.i.i32.i, align 4
  call void @dma_pool_free(ptr noundef %118, ptr noundef %next.0.i.i, i32 noundef %120) #9
  %121 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %last_desc.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %122
  br i1 %cmp.not.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %first_desc.i5, align 4
  %124 = ptrtoint ptr %curr_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %curr_desc.i.i, align 4
  %125 = ptrtoint ptr %last_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %last_desc.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i7)
  %cmp.not14.i = icmp eq i16 %conv.i7, 0
  br i1 %cmp.not14.i, label %if.else.if.end78_crit_edge, label %while.body.lr.ph.i

if.else.if.end78_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

while.body.lr.ph.i:                               ; preds = %if.else
  %dma.i8 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %bytes_per_buffer.i9 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 2
  %evenlen.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 5
  %oddlen.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 6
  %last_desc.i.i12 = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 4
  %curr_desc.i.i13 = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 3
  br label %while.body.i

select.unfold.i:                                  ; preds = %if.else9.i.i30, %if.then7.i.i26
  %126 = ptrtoint ptr %last_desc.i.i12 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i.i.i16, ptr %last_desc.i.i12, align 4
  %sub27.i = sub i16 %bytes_left.015.i, %131
  %add31.i = add i16 %131, %bytes_used.017.i
  %cmp.not.i = icmp eq i16 %sub27.i, 0
  br i1 %cmp.not.i, label %select.unfold.i.if.end78_crit_edge, label %select.unfold.i.while.body.i_crit_edge

select.unfold.i.while.body.i_crit_edge:           ; preds = %select.unfold.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

select.unfold.i.if.end78_crit_edge:               ; preds = %select.unfold.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

while.body.i:                                     ; preds = %select.unfold.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %bytes_used.017.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %add31.i, %select.unfold.i.while.body.i_crit_edge ]
  %bytes_left.015.i = phi i16 [ %conv.i7, %while.body.lr.ph.i ], [ %sub27.i, %select.unfold.i.while.body.i_crit_edge ]
  %127 = ptrtoint ptr %dma.i8 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma.i8, align 4
  %conv5.i = zext i16 %bytes_used.017.i to i32
  %add.i14 = add i32 %128, %conv5.i
  %129 = ptrtoint ptr %bytes_per_buffer.i9 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bytes_per_buffer.i9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %bytes_left.015.i, i16 %130)
  %cmp8.i = icmp ult i16 %bytes_left.015.i, %130
  %131 = call i16 @llvm.umin.i16(i16 %bytes_left.015.i, i16 %130) #9
  br i1 %cmp8.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %length.i6 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length.i6, align 4
  %134 = trunc i32 %133 to i16
  %conv21.i = sub i16 %134, %bytes_left.015.i
  %135 = ptrtoint ptr %evenlen.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv21.i, ptr %evenlen.i, align 4
  %136 = ptrtoint ptr %oddlen.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %131, ptr %oddlen.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i.i.i4) #9
  %137 = ptrtoint ptr %paddr.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %paddr.i.i.i4, align 4, !annotation !417
  %138 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev1, align 4
  %desc_pool.i.i.i15 = getelementptr inbounds %struct.gr_udc, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %desc_pool.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %desc_pool.i.i.i15, align 4
  %call.i.i.i.i16 = call ptr @dma_pool_alloc(ptr noundef %141, i32 noundef 2848, ptr noundef nonnull %paddr.i.i.i4) #9
  %tobool.not.i.i.i17 = icmp eq ptr %call.i.i.i.i16, null
  br i1 %tobool.not.i.i.i17, label %alloc_err.i34, label %if.end.i.i25

if.end.i.i25:                                     ; preds = %if.end.i
  %142 = ptrtoint ptr %paddr.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %paddr.i.i.i4, align 4
  %paddr3.i.i.i18 = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i.i16, i32 0, i32 3
  %144 = ptrtoint ptr %paddr3.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %paddr3.i.i.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i.i4) #9
  %data1.i.i19 = getelementptr inbounds %struct.gr_dma_desc, ptr %call.i.i.i.i16, i32 0, i32 1
  %145 = ptrtoint ptr %data1.i.i19 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add.i14, ptr %data1.i.i19, align 4
  %146 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %146)
  %bf.load.i.i20 = load i16, ptr %is_in, align 4
  %147 = and i16 %bf.load.i.i20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool2.not.i.i21 = icmp eq i16 %147, 0
  %148 = and i16 %131, 8191
  %149 = or i16 %148, 8192
  %narrow.i22 = select i1 %tobool2.not.i.i21, i16 -32768, i16 %149
  %storemerge.i.i23 = zext i16 %narrow.i22 to i32
  %150 = ptrtoint ptr %call.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %storemerge.i.i23, ptr %call.i.i.i.i16, align 4
  %151 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %first_desc.i5, align 4
  %tobool6.not.i.i24 = icmp eq ptr %152, null
  br i1 %tobool6.not.i.i24, label %if.then7.i.i26, label %if.else9.i.i30

if.then7.i.i26:                                   ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i.i.i.i16, ptr %first_desc.i5, align 4
  %154 = ptrtoint ptr %curr_desc.i.i13 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i.i.i.i16, ptr %curr_desc.i.i13, align 4
  br label %select.unfold.i

if.else9.i.i30:                                   ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %last_desc.i.i12 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %last_desc.i.i12, align 4
  %next_desc.i.i27 = getelementptr inbounds %struct.gr_dma_desc, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %next_desc.i.i27 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i.i.i.i16, ptr %next_desc.i.i27, align 4
  %158 = ptrtoint ptr %paddr3.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %paddr3.i.i.i18, align 4
  %160 = load ptr, ptr %last_desc.i.i12, align 4
  %next.i.i28 = getelementptr inbounds %struct.gr_dma_desc, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %next.i.i28 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %next.i.i28, align 4
  %162 = load ptr, ptr %last_desc.i.i12, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %or13.i.i29 = or i32 %164, 16384
  store i32 %or13.i.i29, ptr %162, align 4
  br label %select.unfold.i

alloc_err.i34:                                    ; preds = %if.end.i
  %165 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev1, align 4
  %dev2.i.i.i32 = getelementptr inbounds %struct.gr_udc, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %dev2.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev2.i.i.i32, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.80) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i.i4) #9
  %169 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %first_desc.i5, align 4
  %tobool.not.i.i33 = icmp eq ptr %170, null
  br i1 %tobool.not.i.i33, label %alloc_err.i34.cleanup_crit_edge, label %do.body.preheader.i.i35

alloc_err.i34.cleanup_crit_edge:                  ; preds = %alloc_err.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader.i.i35:                          ; preds = %alloc_err.i34
  %171 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev1, align 4
  %desc_pool.i.i2.i = getelementptr inbounds %struct.gr_udc, ptr %172, i32 0, i32 4
  br label %do.body.i.i38

do.body.i.i38:                                    ; preds = %do.body.i.i38.do.body.i.i38_crit_edge, %do.body.preheader.i.i35
  %next.0.i.i36 = phi ptr [ %174, %do.body.i.i38.do.body.i.i38_crit_edge ], [ %170, %do.body.preheader.i.i35 ]
  %next_desc.i4.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i.i36, i32 0, i32 4
  %173 = ptrtoint ptr %next_desc.i4.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %next_desc.i4.i, align 4
  %175 = ptrtoint ptr %desc_pool.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %desc_pool.i.i2.i, align 4
  %paddr.i.i5.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next.0.i.i36, i32 0, i32 3
  %177 = ptrtoint ptr %paddr.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %paddr.i.i5.i, align 4
  call void @dma_pool_free(ptr noundef %176, ptr noundef %next.0.i.i36, i32 noundef %178) #9
  %179 = ptrtoint ptr %last_desc.i.i12 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %last_desc.i.i12, align 4
  %cmp.not.i.i37 = icmp eq ptr %next.0.i.i36, %180
  br i1 %cmp.not.i.i37, label %do.end.i.i39, label %do.body.i.i38.do.body.i.i38_crit_edge

do.body.i.i38.do.body.i.i38_crit_edge:            ; preds = %do.body.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i38

do.end.i.i39:                                     ; preds = %do.body.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %first_desc.i5 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %first_desc.i5, align 4
  %182 = ptrtoint ptr %curr_desc.i.i13 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %curr_desc.i.i13, align 4
  %183 = ptrtoint ptr %last_desc.i.i12 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %last_desc.i.i12, align 4
  br label %cleanup

if.end78:                                         ; preds = %select.unfold.i.if.end78_crit_edge, %if.else.if.end78_crit_edge, %gr_add_dma_desc.exit27.thread.i, %land.lhs.true.i.if.end78_crit_edge, %do.end.i.if.end78_crit_edge
  %last_desc.i.i.sink = phi ptr [ %last_desc.i.i, %gr_add_dma_desc.exit27.thread.i ], [ %last_desc.i.i, %land.lhs.true.i.if.end78_crit_edge ], [ %last_desc.i.i, %do.end.i.if.end78_crit_edge ], [ %first_desc.i5, %if.else.if.end78_crit_edge ], [ %first_desc.i5, %select.unfold.i.if.end78_crit_edge ]
  %.sink45 = phi i32 [ 131072, %gr_add_dma_desc.exit27.thread.i ], [ 131072, %land.lhs.true.i.if.end78_crit_edge ], [ 131072, %do.end.i.if.end78_crit_edge ], [ 8192, %if.else.if.end78_crit_edge ], [ 8192, %select.unfold.i.if.end78_crit_edge ]
  %184 = ptrtoint ptr %last_desc.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %last_desc.i.i.sink, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %or.i = or i32 %187, %.sink45
  store i32 %or.i, ptr %185, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %188 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %189 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %actual, align 4
  %queue82 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 6, i32 1
  %190 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %191, ptr noundef %queue82) #9
  br i1 %call.i.i, label %if.end.i.i41, label %if.end78.list_add_tail.exit_crit_edge

if.end78.list_add_tail.exit_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i41:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %queue, ptr %prev.i, align 4
  %193 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %queue82, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.gr_request, ptr %req, i32 0, i32 1, i32 1
  %194 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %191, ptr %prev3.i.i, align 4
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %queue, ptr %191, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i41, %if.end78.list_add_tail.exit_crit_edge
  %dma_start = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 3
  %196 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dma_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool83.not = icmp eq i32 %197, 0
  br i1 %tobool83.not, label %land.lhs.true, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %198 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %198)
  %bf.load84 = load i16, ptr %is_in, align 4
  %199 = and i16 %bf.load84, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool88.not = icmp eq i16 %199, 0
  br i1 %tobool88.not, label %if.then97, label %land.lhs.true.cleanup_crit_edge, !prof !416

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @gr_start_dma(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %land.lhs.true.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %do.end.i.i39, %alloc_err.i34.cleanup_crit_edge, %do.end.i.i, %alloc_err.i.cleanup_crit_edge, %do.end63, %do.end50, %do.end43, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ -108, %do.end43 ], [ -16, %do.end50 ], [ %call58, %do.end63 ], [ 0, %if.then97 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ -12, %alloc_err.i.cleanup_crit_edge ], [ -12, %do.end.i.i ], [ -12, %alloc_err.i34.cleanup_crit_edge ], [ -12, %do.end.i.i39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_start_dma(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_desc = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_desc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !443

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/gr_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !448
  unreachable

do.end13:                                         ; preds = %if.end
  %is_in = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_in, align 4
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool14.not = icmp eq i16 %5, 0
  br i1 %tobool14.not, label %land.lhs.true, label %do.end13.do.body18_crit_edge

do.end13.do.body18_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

land.lhs.true:                                    ; preds = %do.end13
  %oddlen = getelementptr i8, ptr %1, i32 22
  %6 = ptrtoint ptr %oddlen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oddlen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool15.not = icmp eq i16 %7, 0
  br i1 %tobool15.not, label %land.lhs.true.do.body18_crit_edge, label %if.then16

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %tailbuf_paddr = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 9
  %8 = ptrtoint ptr %tailbuf_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tailbuf_paddr, align 4
  %last_desc = getelementptr i8, ptr %1, i32 16
  %10 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last_desc, align 4
  %data = getelementptr inbounds %struct.gr_dma_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %data, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then16, %land.lhs.true.do.body18_crit_edge, %do.end13.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %curr_desc, align 4
  %paddr = getelementptr inbounds %struct.gr_dma_desc, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr, align 4
  %regs = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %dmaaddr = getelementptr inbounds %struct.gr_epregs, ptr %18, i32 0, i32 1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaaddr, i32 %16) #9, !srcloc !420
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = getelementptr inbounds %struct.gr_epregs, ptr %20, i32 0, i32 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  tail call void @arm_heavy_mb() #9
  %or = or i32 %22, 1
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = getelementptr inbounds %struct.gr_epregs, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %or) #9, !srcloc !420
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 1, %do.body18 ], [ 0, %entry.cleanup_crit_edge ]
  %dma_start34 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 3
  %26 = ptrtoint ptr %dma_start34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %dma_start34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_ep_halt_wedge(ptr noundef %ep, i32 noundef %halt, i32 noundef %wedge, i32 noundef %fromhost) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 256
  br i1 %tobool.not, label %if.then20, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %land.lhs.true9.cleanup_crit_edge, label %do.body35

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool21.not = icmp ne i32 %halt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fromhost)
  %tobool23.not = icmp eq i32 %fromhost, 0
  %or.cond = and i1 %tobool21.not, %tobool23.not
  br i1 %or.cond, label %if.then24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %8, i32 0, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %or.i = or i32 %11, 262144
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %or.i) #9, !srcloc !420
  %regs8.i = getelementptr inbounds %struct.gr_udc, ptr %8, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs8.i, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %or15.i = or i32 %16, 262144
  %17 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs8.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %or15.i) #9, !srcloc !420
  %ep0state.i = getelementptr inbounds %struct.gr_udc, ptr %8, i32 0, i32 6
  %19 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep_halt_wedge.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep_halt_wedge, %cleanup)) #9
          to label %if.then29 [label %cleanup], !srcloc !421

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev31 = getelementptr inbounds %struct.gr_udc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep_halt_wedge.__UNIQUE_ID_ddebug249, ptr noundef %23, ptr noundef nonnull @.str.83) #9
  br label %cleanup

do.body35:                                        ; preds = %land.lhs.true9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep_halt_wedge.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep_halt_wedge, %do.end58)) #9
          to label %if.then49 [label %do.end58], !srcloc !421

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 1
  %24 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev50, align 4
  %dev51 = getelementptr inbounds %struct.gr_udc, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool52.not = icmp eq i32 %halt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool53.not = icmp eq i32 %wedge, 0
  %cond = select i1 %tobool53.not, ptr @.str.86, ptr @.str.85
  %cond54 = select i1 %tobool52.not, ptr @.str.87, ptr %cond
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep_halt_wedge.__UNIQUE_ID_ddebug250, ptr noundef %27, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond54, ptr noundef %29) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then49, %do.body35
  %regs = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool62.not = icmp eq i32 %halt, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool62.not, label %do.body76, label %do.body64

do.body64:                                        ; preds = %do.end58
  %or = or i32 %32, 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %or) #9, !srcloc !420
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load69 = load i16, ptr %num, align 4
  %bf.set = or i16 %bf.load69, 64
  store i16 %bf.set, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool70.not = icmp eq i32 %wedge, 0
  br i1 %tobool70.not, label %do.body64.cleanup_crit_edge, label %if.then71

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set74 = or i16 %bf.load69, 96
  %36 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.set74, ptr %num, align 4
  br label %cleanup

do.body76:                                        ; preds = %do.end58
  %and = and i32 %32, -5
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %and) #9, !srcloc !420
  %39 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load82 = load i16, ptr %num, align 4
  %bf.clear87 = and i16 %bf.load82, -97
  store i16 %bf.clear87, ptr %num, align 4
  %dma_start = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 3
  %40 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool89.not = icmp eq i32 %41, 0
  br i1 %tobool89.not, label %if.then90, label %do.body76.cleanup_crit_edge

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gr_start_dma(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body76.cleanup_crit_edge, %if.then71, %do.body64.cleanup_crit_edge, %if.then29, %if.then24, %if.then20.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -95, %land.lhs.true9.cleanup_crit_edge ], [ 0, %if.then29 ], [ -22, %if.then20.cleanup_crit_edge ], [ 0, %do.body76.cleanup_crit_edge ], [ 0, %if.then90 ], [ 0, %do.body64.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_ep_init(ptr noundef %dev, i32 noundef %num, i32 noundef %is_in, i32 noundef %maxplimit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool.not = icmp eq i32 %is_in, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 %num
  %arrayidx1 = getelementptr [16 x ptr], ptr @inames, i32 0, i32 %num
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %arrayidx4 = getelementptr %struct.gr_regs, ptr %4, i32 0, i32 1, i32 %num
  %regs5 = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 %num, i32 4
  %5 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx4, ptr %regs5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6 = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 %num
  %arrayidx7 = getelementptr [16 x ptr], ptr @onames, i32 0, i32 %num
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %name9 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx6, i32 0, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name9, align 4
  %regs10 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %9 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs10, align 8
  %arrayidx12 = getelementptr [16 x %struct.gr_epregs], ptr %10, i32 0, i32 %num
  %regs13 = getelementptr %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 %num, i32 4
  %11 = ptrtoint ptr %regs13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx12, ptr %regs13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ep.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx6, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = getelementptr inbounds %struct.gr_epregs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !420
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 7
  %17 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.clear.i = and i56 %bf.load.i, 1099511627775
  %bf.set.i = or i56 %bf.clear.i, 70368744177664
  store i56 %bf.set.i, ptr %maxpacket.i, align 2
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 9
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %desc.i, align 4
  %stopped.i = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 5
  %19 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load6.i = load i16, ptr %stopped.i, align 4
  %dma_start.i = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 3
  %20 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dma_start.i, align 4
  %21 = trunc i32 %num to i16
  %bf.shl = shl i16 %21, 8
  %bf.set8.i = and i16 %bf.load6.i, 63
  %bf.clear = or i16 %bf.set8.i, %bf.shl
  %22 = trunc i32 %is_in to i16
  %bf.value17 = shl i16 %22, 7
  %bf.shl18 = and i16 %bf.value17, 128
  %bf.set = or i16 %bf.clear, %bf.shl18
  %bf.set20 = or i16 %bf.set, 64
  store i16 %bf.set20, ptr %stopped.i, align 4
  %dev22 = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 1
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev22, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gr_ep_ops, ptr %ops, align 4
  %queue = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 6
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %queue, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %if.then24, label %if.else47

if.then24:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2848, i32 noundef 84) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %queue.i = getelementptr inbounds %struct.gr_request, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gr_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %dev29 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %30 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev29, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 4096, i32 noundef 2849) #9
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %tobool.not.i148 = icmp eq ptr %ep.0, null
  br i1 %tobool.not.i148, label %if.then32.cleanup_crit_edge, label %if.end.i150

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i150:                                      ; preds = %if.then32
  %32 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %queue.i, align 8
  %cmp.i.not.i = icmp eq ptr %33, %queue.i
  br i1 %cmp.i.not.i, label %if.end.i150.if.end18.i_crit_edge, label %do.end.i, !prof !416

if.end.i150.if.end18.i_crit_edge:                 ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end.i:                                         ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.155) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.end.i150.if.end18.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %call7.i.i.i, align 8
  %length = getelementptr inbounds %struct.usb_request, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %length, align 4
  br i1 %tobool.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %ep0reqi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 8
  %36 = ptrtoint ptr %ep0reqi to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i, ptr %ep0reqi, align 4
  br label %if.end41

if.else40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %ep0reqo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 7
  %37 = ptrtoint ptr %ep0reqo to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %ep0reqo, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep.0, i32 noundef 64) #9
  %bytes_per_buffer = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 2
  %38 = ptrtoint ptr %bytes_per_buffer to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 64, ptr %bytes_per_buffer, align 4
  br label %if.end67

if.else47:                                        ; preds = %if.end
  %conv49 = and i32 %maxplimit, 65535
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep.0, i32 noundef %conv49) #9
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 3
  %ep_list51 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %prev.i151 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i151, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %40, ptr noundef %ep_list51) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else47.if.end67_crit_edge

if.else47.if.end67_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end.i.i:                                       ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ep_list, ptr %prev.i151, align 4
  %42 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ep_list51, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %ep_list, ptr %40, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end.i.i, %if.else47.if.end67_crit_edge, %if.end41
  %.sink = phi i8 [ -128, %if.end41 ], [ 112, %if.else47.if.end67_crit_edge ], [ 112, %if.end.i.i ]
  %caps53 = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 4
  %45 = ptrtoint ptr %caps53 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load54 = load i8, ptr %caps53, align 4
  %bf.set66 = or i8 %bf.load54, %.sink
  store i8 %bf.set66, ptr %caps53, align 4
  %ep_list68 = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 7
  %ep_list69 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 18
  %prev.i152 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i152, align 4
  %call.i.i153 = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list68, ptr noundef %47, ptr noundef %ep_list69) #9
  br i1 %call.i.i153, label %if.end.i.i155, label %if.end67.list_add_tail.exit156_crit_edge

if.end67.list_add_tail.exit156_crit_edge:         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit156

if.end.i.i155:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ep_list68, ptr %prev.i152, align 4
  %49 = ptrtoint ptr %ep_list68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ep_list69, ptr %ep_list68, align 4
  %prev3.i.i154 = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %prev3.i.i154 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i154, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %ep_list68, ptr %47, align 4
  br label %list_add_tail.exit156

list_add_tail.exit156:                            ; preds = %if.end.i.i155, %if.end67.list_add_tail.exit156_crit_edge
  %caps79 = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 4
  %52 = ptrtoint ptr %caps79 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load80 = load i8, ptr %caps79, align 4
  %.160 = select i1 %tobool.not, i8 4, i8 8
  %bf.set82 = or i8 %bf.load80, %.160
  store i8 %bf.set82, ptr %caps79, align 4
  %dev84 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %53 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev84, align 8
  %55 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 7)
  %bf.load86 = load i56, ptr %maxpacket.i, align 2
  %bf.lshr = lshr i56 %bf.load86, 24
  %56 = trunc i56 %bf.lshr to i32
  %bf.cast = and i32 %56, 65535
  %tailbuf_paddr = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 9
  %call.i157 = tail call ptr @dma_alloc_attrs(ptr noundef %54, i32 noundef %bf.cast, ptr noundef %tailbuf_paddr, i32 noundef 2592, i32 noundef 0) #9
  %tailbuf = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 8
  %57 = ptrtoint ptr %tailbuf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i157, ptr %tailbuf, align 4
  %tobool90.not = icmp eq ptr %call.i157, null
  %. = select i1 %tobool90.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit156, %if.end18.i, %if.then32.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %list_add_tail.exit156 ], [ -12, %if.then32.cleanup_crit_edge ], [ -12, %if.end18.i ], [ -12, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gr_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !416

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
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 84) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.gr_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.gr_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gr_free_request(ptr noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
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
  %queue = getelementptr inbounds %struct.gr_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !416

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.155) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %_req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
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
  %dev4 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  %epo = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 2
  %cmp5 = icmp eq ptr %epo, %_ep
  %epi = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 1
  %cmp9 = icmp eq ptr %epi, %_ep
  %or.cond344 = select i1 %cmp5, i1 true, i1 %cmp9
  br i1 %or.cond344, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %driver = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %lor.lhs.false14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end12
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp eq i32 %7, 0
  br i1 %cmp15, label %lor.lhs.false14.cleanup_crit_edge, label %if.end18

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false14
  %regs = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %is_in = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
  %11 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %is_in, align 4
  %12 = lshr i16 %bf.load, 7
  %.lobit = and i16 %12, 1
  %13 = xor i16 %.lobit, 1
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i, align 1
  %16 = xor i8 %15, -1
  %17 = lshr i8 %16, 7
  %.not = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %.not)
  %cmp29.not = icmp eq i16 %13, %.not
  br i1 %cmp29.not, label %if.end32, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %18 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool38.not = icmp eq i16 %18, 0
  %bf.lshr40 = lshr i16 %bf.load, 8
  %bf.cast41 = zext i16 %bf.lshr40 to i32
  br i1 %tobool38.not, label %land.lhs.true, label %land.lhs.true51

land.lhs.true:                                    ; preds = %if.end32
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nepo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %bf.cast41)
  %cmp42.not = icmp ugt i32 %20, %bf.cast41
  br i1 %cmp42.not, label %land.lhs.true.if.end59_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true51:                                  ; preds = %if.end32
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nepi, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %bf.cast41)
  %cmp56.not = icmp ugt i32 %22, %bf.cast41
  br i1 %cmp56.not, label %land.lhs.true51.if.end59_crit_edge, label %land.lhs.true51.cleanup_crit_edge

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true51.if.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true51.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.not = icmp eq i8 %25, 0
  br i1 %cmp.i.not, label %if.end59.if.end80_crit_edge, label %if.else

if.end59.if.end80_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else:                                          ; preds = %if.end59
  %trunc = trunc i8 %24 to i2
  %26 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.202)
  switch i2 %trunc, label %do.end [
    i2 1, label %if.else.if.end80_crit_edge
    i2 -2, label %if.end80.fold.split
    i2 -1, label %if.end80.fold.split358
  ]

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev75 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev75, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.126, ptr noundef %30) #12
  br label %cleanup

if.end80.fold.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end80.fold.split358:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end80:                                         ; preds = %if.end80.fold.split358, %if.end80.fold.split, %if.else.if.end80_crit_edge, %if.end59.if.end80_crit_edge
  %cmp95 = phi i1 [ false, %if.end59.if.end80_crit_edge ], [ false, %if.else.if.end80_crit_edge ], [ true, %if.end80.fold.split ], [ false, %if.end80.fold.split358 ]
  %mode.0 = phi i32 [ 0, %if.end59.if.end80_crit_edge ], [ 1, %if.else.if.end80_crit_edge ], [ 2, %if.end80.fold.split ], [ 3, %if.end80.fold.split358 ]
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %31 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wMaxPacketSize.i, align 1
  %33 = and i16 %32, -249
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %and.i = zext i16 %34 to i32
  %35 = trunc i16 %32 to i8
  %36 = lshr i8 %35, 3
  %37 = and i8 %36, 3
  %38 = lshr i32 %10, 18
  %conv86 = and i32 %38, 16376
  %conv87 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cond345 = icmp eq i8 %37, 0
  br i1 %cond345, label %if.end80.if.else114_crit_edge, label %land.lhs.true89

if.end80.if.else114_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else114

land.lhs.true89:                                  ; preds = %if.end80
  %brmerge = or i1 %cmp.i.not, %cmp95
  br i1 %brmerge, label %do.end100, label %if.else105

do.end100:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  %dev101 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev101, align 8
  %cond = select i1 %cmp95, ptr @.str.131, ptr @.str.132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.129, ptr noundef nonnull %cond) #12
  br label %cleanup

if.else105:                                       ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp107 = icmp eq i8 %37, 3
  br i1 %cmp107, label %do.end112, label %if.else105.if.else114_crit_edge

if.else105.if.else114_crit_edge:                  ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else114

do.end112:                                        ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  %dev113 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev113, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.134) #12
  br label %cleanup

if.else114:                                       ; preds = %if.else105.if.else114_crit_edge, %if.end80.if.else114_crit_edge
  %add = add nuw nsw i32 %conv87, 1
  %mul117 = mul nuw nsw i32 %add, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul117, i32 %conv86)
  %cmp119 = icmp ugt i32 %mul117, %conv86
  br i1 %cmp119, label %do.end124, label %if.else130

do.end124:                                        ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  %dev125 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev125, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.137, i32 noundef %conv86, i32 noundef %add, i32 noundef %and.i) #12
  br label %cleanup

if.else130:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp132 = icmp eq i16 %33, 0
  br i1 %cmp132, label %do.end137, label %if.else139

do.end137:                                        ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  %dev138 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev138, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.140) #12
  br label %cleanup

if.else139:                                       ; preds = %if.else130
  %maxpacket_limit = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %47 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_loadN_noabort(i32 %47, i32 7)
  %bf.load142 = load i56, ptr %maxpacket_limit, align 2
  %bf.lshr143 = lshr i56 %bf.load142, 24
  %48 = trunc i56 %bf.lshr143 to i32
  %bf.cast145 = and i32 %48, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast145, i32 %and.i)
  %cmp146 = icmp ult i32 %bf.cast145, %and.i
  br i1 %cmp146, label %do.end151, label %if.end164

do.end151:                                        ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  %dev152 = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 5
  %49 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev152, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.143, i32 noundef %and.i, i32 noundef %bf.cast145) #12
  br label %cleanup

if.end164:                                        ; preds = %if.else139
  %51 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev4, align 4
  %lock = getelementptr inbounds %struct.gr_udc, ptr %52, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %53 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load166 = load i16, ptr %is_in, align 4
  %54 = and i16 %bf.load166, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool170.not = icmp eq i16 %54, 0
  br i1 %tobool170.not, label %if.then171, label %if.end174

if.then171:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev4, align 4
  %lock173 = getelementptr inbounds %struct.gr_udc, ptr %56, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock173) #9
  br label %cleanup

if.end174:                                        ; preds = %if.end164
  %bf.clear179 = and i16 %bf.load166, -97
  %57 = ptrtoint ptr %is_in to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %bf.clear179, ptr %is_in, align 4
  %desc182 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %58 = ptrtoint ptr %desc182 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %desc, ptr %desc182, align 4
  %59 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_loadN_noabort(i32 %59, i32 7)
  %bf.load185 = load i56, ptr %maxpacket_limit, align 2
  %bf.value = zext i16 %34 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear186 = and i56 %bf.load185, 1099511627775
  %bf.set187 = or i56 %bf.clear186, %bf.shl
  store i56 %bf.set187, ptr %maxpacket_limit, align 2
  %dma_start = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 3
  %60 = ptrtoint ptr %dma_start to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %dma_start, align 4
  br i1 %cond345, label %if.else195, label %if.then189

if.then189:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  %conv194 = trunc i32 %mul117 to i16
  %bytes_per_buffer = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 2
  %61 = ptrtoint ptr %bytes_per_buffer to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv194, ptr %bytes_per_buffer, align 4
  %.pre = and i16 %bf.load166, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %phi.cmp = icmp eq i16 %.pre, 0
  %phi.sel = select i1 %phi.cmp, i32 1, i32 1048577
  br label %if.end212

if.else195:                                       ; preds = %if.end174
  %62 = and i16 %bf.load166, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool201.not = icmp eq i16 %62, 0
  br i1 %tobool201.not, label %if.else209, label %if.then202

if.then202:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  %.lhs.trunc = trunc i32 %conv86 to i16
  %63 = urem i16 %.lhs.trunc, %34
  %conv207 = sub nsw i16 %.lhs.trunc, %63
  %bytes_per_buffer208 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 2
  %64 = ptrtoint ptr %bytes_per_buffer208 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv207, ptr %bytes_per_buffer208, align 4
  br label %if.end212

if.else209:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  %bytes_per_buffer210 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 2
  %65 = ptrtoint ptr %bytes_per_buffer210 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %34, ptr %bytes_per_buffer210, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.else209, %if.then202, %if.then189
  %.pre-phi = phi i32 [ 1048577, %if.then202 ], [ 1, %if.else209 ], [ %phi.sel, %if.then189 ]
  %shl = shl nuw nsw i32 %and.i, 7
  %shl215 = shl nuw nsw i32 %conv87, 5
  %or = or i32 %shl215, %shl
  %shl217 = shl nuw nsw i32 %mode.0, 3
  %or218 = or i32 %or, %shl217
  %spec.select = or i32 %.pre-phi, %or218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %spec.select) #9, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %70 = getelementptr inbounds %struct.gr_epregs, ptr %69, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 6) #9, !srcloc !420
  %71 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev4, align 4
  %lock239 = getelementptr inbounds %struct.gr_udc, ptr %72, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock239) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep_enable.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep_enable, %cleanup)) #9
          to label %if.then251 [label %cleanup], !srcloc !421

if.then251:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev4, align 4
  %dev253 = getelementptr inbounds %struct.gr_udc, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %dev253 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev253, align 8
  %name255 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %77 = ptrtoint ptr %name255 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name255, align 4
  %arrayidx256 = getelementptr [4 x ptr], ptr @gr_modestring, i32 0, i32 %mode.0
  %79 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx256, align 4
  %bytes_per_buffer257 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 2
  %81 = ptrtoint ptr %bytes_per_buffer257 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %bytes_per_buffer257, align 4
  %conv258 = zext i16 %82 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep_enable.__UNIQUE_ID_ddebug267, ptr noundef %76, ptr noundef nonnull @.str.145, ptr noundef %78, ptr noundef %80, i32 noundef %conv258) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then251, %if.end212, %if.then171, %do.end151, %do.end137, %do.end124, %do.end112, %do.end100, %do.end, %land.lhs.true51.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end100 ], [ -22, %do.end112 ], [ -22, %do.end124 ], [ -22, %do.end137 ], [ -22, %do.end151 ], [ -16, %if.then171 ], [ -22, %do.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -108, %lor.lhs.false14.cleanup_crit_edge ], [ -108, %if.end12.cleanup_crit_edge ], [ -16, %if.end18.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %land.lhs.true51.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then251 ], [ 0, %if.end212 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_ep_disable(ptr noundef %_ep) #2 align 64 {
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
  %dev3 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %epo = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 2
  %cmp = icmp eq ptr %epo, %_ep
  %epi = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 1
  %cmp6 = icmp eq ptr %epi, %_ep
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp9 = icmp eq i32 %5, 7
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_ep_disable.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_ep_disable, %do.body23)) #9
          to label %if.then17 [label %do.body23], !srcloc !421

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %dev19 = getelementptr inbounds %struct.gr_udc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev19, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_ep_disable.__UNIQUE_ID_ddebug268, ptr noundef %9, ptr noundef nonnull @.str.151, ptr noundef %11) #9
  br label %do.body23

do.body23:                                        ; preds = %if.then17, %do.body
  %lock = getelementptr inbounds %struct.gr_udc, ptr %3, i32 0, i32 19
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stopped.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
  %12 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.set.i = or i16 %bf.load.i, 64
  store i16 %bf.set.i, ptr %stopped.i, align 4
  %dma_start.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 3
  %13 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dma_start.i, align 4
  %regs.i.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 4
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %16 = getelementptr inbounds %struct.gr_epregs, ptr %15, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %or.i.i = or i32 %17, 8
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %20 = getelementptr inbounds %struct.gr_epregs, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %or.i.i) #9, !srcloc !420
  %queue.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 6
  %21 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not7.i = icmp eq ptr %22, %queue.i
  br i1 %cmp.i.not7.i, label %do.body23.gr_ep_nuke.exit_crit_edge, label %do.body23.while.body.i_crit_edge

do.body23.while.body.i_crit_edge:                 ; preds = %do.body23
  br label %while.body.i

do.body23.gr_ep_nuke.exit_crit_edge:              ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body23.while.body.i_crit_edge
  %23 = phi ptr [ %25, %while.body.i.while.body.i_crit_edge ], [ %22, %do.body23.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %23, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.gr_ep_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.gr_ep_nuke.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

gr_ep_nuke.exit:                                  ; preds = %while.body.i.gr_ep_nuke.exit_crit_edge, %do.body23.gr_ep_nuke.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %30 = getelementptr inbounds %struct.gr_epregs, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #9, !srcloc !420
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %31 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 7)
  %bf.load.i50 = load i56, ptr %maxpacket.i, align 2
  %bf.clear.i = and i56 %bf.load.i50, 1099511627775
  %bf.set.i51 = or i56 %bf.clear.i, 70368744177664
  store i56 %bf.set.i51, ptr %maxpacket.i, align 2
  %32 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load6.i = load i16, ptr %stopped.i, align 4
  %bf.set8.i = or i16 %bf.load6.i, 64
  store i16 %bf.set8.i, ptr %stopped.i, align 4
  %33 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dma_start.i, align 4
  %34 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %desc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %gr_ep_nuke.exit, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gr_ep_nuke.exit ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_queue_ext(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !443

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev8 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev8, align 4
  %lock = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %epi = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %epi, %_ep
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp10 = icmp eq i32 %3, 3
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %epo = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_ep, align 8
  %6 = ptrtoint ptr %epo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %epo, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ep.0 = phi ptr [ %epo, %if.then11 ], [ %_ep, %land.lhs.true.if.end18_crit_edge ], [ %_ep, %if.end.if.end18_crit_edge ]
  %is_in = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 5
  %7 = ptrtoint ptr %is_in to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %is_in, align 4
  %8 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool19.not = icmp eq i16 %8, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  %length.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load i32, ptr %length.i, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %cond.i, i32 32) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_queue_ext, %do.body15.i)) #9
          to label %if.then.i [label %do.body15.i], !srcloc !421

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i)
  %cmp.i = icmp sgt i32 %cond.i, 32
  %dev.i = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %dev12.i = getelementptr inbounds %struct.gr_udc, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev12.i, align 8
  %cond14.i = select i1 %cmp.i, ptr @.str.38, ptr @.str.39
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_dbgprint_request.__UNIQUE_ID_ddebug241, ptr noundef %14, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.152, ptr noundef nonnull %_req, i32 noundef %cond.i, ptr noundef nonnull %cond14.i) #9
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then.i, %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_queue_ext, %if.end21)) #9
          to label %if.then29.i [label %if.end21], !srcloc !421

if.then29.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_req, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %16, i32 noundef %10, i1 noundef zeroext false) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then29.i, %do.body15.i, %if.end18.if.end21_crit_edge
  %call = tail call fastcc i32 @gr_queue(ptr noundef %ep.0, ptr noundef nonnull %_req)
  %dev22 = getelementptr inbounds %struct.gr_ep, ptr %ep.0, i32 0, i32 1
  %17 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev22, align 4
  %lock23 = getelementptr inbounds %struct.gr_udc, ptr %18, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end21 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
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
  %num = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
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
  %dev5 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %driver = getelementptr inbounds %struct.gr_udc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp9 = icmp eq i32 %8, 7
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %do.body12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body12:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.gr_udc, ptr %4, i32 0, i32 19
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.body12
  %.pn.in = phi ptr [ %queue, %do.body12 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp23.not = icmp eq ptr %.pn, %queue
  %cmp26 = icmp eq ptr %req.0, %_req
  %or.cond90 = or i1 %cmp23.not, %cmp26
  br i1 %or.cond90, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp26, label %if.end39, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %for.end
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp45 = icmp eq ptr %11, %.pn
  br i1 %cmp45, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.end39
  tail call fastcc void @gr_abort_dma(ptr noundef nonnull %_ep)
  %stopped = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
  %12 = ptrtoint ptr %stopped to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load48 = load i16, ptr %stopped, align 4
  %13 = and i16 %bf.load48, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool51.not = icmp eq i16 %13, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gr_finish_request(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %out

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gr_dma_advance(ptr noundef nonnull %_ep, i32 noundef -104)
  br label %out

if.else54:                                        ; preds = %if.end39
  %14 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %.pn, align 4
  %cmp.i.not = icmp eq ptr %15, %.pn
  br i1 %cmp.i.not, label %if.else54.out_crit_edge, label %if.then58

if.else54.out_crit_edge:                          ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gr_finish_request(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %out

out:                                              ; preds = %if.then58, %if.else54.out_crit_edge, %if.else, %if.then52, %for.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then52 ], [ 0, %if.else ], [ 0, %if.then58 ], [ -22, %for.end.out_crit_edge ], [ -95, %if.else54.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_set_halt(ptr noundef %_ep, i32 noundef %halt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %_ep, null
  br i1 %tobool.not.i, label %entry.gr_set_halt_wedge.exit_crit_edge, label %if.end.i

entry.gr_set_halt_wedge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_halt_wedge.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool1.not.i = icmp eq i32 %halt, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %is_in.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_in.i, align 4
  %3 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not.i = icmp eq i16 %3, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %queue.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 6
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %queue.i
  br i1 %cmp.i.not.i, label %land.lhs.true3.i.if.end6.i_crit_edge, label %land.lhs.true3.i.out.i_crit_edge

land.lhs.true3.i.out.i_crit_edge:                 ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true3.i.if.end6.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true3.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @gr_ep_halt_wedge(ptr noundef nonnull %_ep, i32 noundef %halt, i32 noundef 0, i32 noundef 0) #9
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %land.lhs.true3.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.end6.i ], [ -11, %land.lhs.true3.i.out.i_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %lock9.i = getelementptr inbounds %struct.gr_udc, ptr %7, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock9.i) #9
  br label %gr_set_halt_wedge.exit

gr_set_halt_wedge.exit:                           ; preds = %out.i, %entry.gr_set_halt_wedge.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -19, %entry.gr_set_halt_wedge.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %_ep, null
  br i1 %tobool.not.i, label %entry.gr_set_halt_wedge.exit_crit_edge, label %if.end.i

entry.gr_set_halt_wedge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_halt_wedge.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %is_in.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_in.i, align 4
  %3 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not.i = icmp eq i16 %3, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 6
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %queue.i
  br i1 %cmp.i.not.i, label %land.lhs.true3.i.if.end6.i_crit_edge, label %land.lhs.true3.i.out.i_crit_edge

land.lhs.true3.i.out.i_crit_edge:                 ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true3.i.if.end6.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true3.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @gr_ep_halt_wedge(ptr noundef nonnull %_ep, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %land.lhs.true3.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.end6.i ], [ -11, %land.lhs.true3.i.out.i_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %lock9.i = getelementptr inbounds %struct.gr_udc, ptr %7, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock9.i) #9
  br label %gr_set_halt_wedge.exit

gr_set_halt_wedge.exit:                           ; preds = %out.i, %entry.gr_set_halt_wedge.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -19, %entry.gr_set_halt_wedge.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_fifo_status(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %epstat1 = getelementptr inbounds %struct.gr_epregs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstat1) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !458
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %and5 = lshr i32 %2, 3
  %shr = and i32 %and5, 8191
  %bytes.0 = select i1 %tobool3.not, i32 0, i32 %shr
  %and7 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = lshr i32 %2, 16
  %shr11 = and i32 %and10, 8191
  %add12 = select i1 %tobool8.not, i32 0, i32 %shr11
  %bytes.1 = add nuw nsw i32 %bytes.0, %add12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %bytes.1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gr_fifo_flush(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_fifo_flush.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_fifo_flush, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !421

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_fifo_flush.__UNIQUE_ID_ddebug269, ptr noundef %3, ptr noundef nonnull @.str.154, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %dev10 = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 1
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %lock = getelementptr inbounds %struct.gr_udc, ptr %7, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.gr_ep, ptr %_ep, i32 0, i32 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !459
  %or = or i32 %10, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %or) #9, !srcloc !420
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %lock20 = getelementptr inbounds %struct.gr_udc, ptr %14, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_dma_advance(ptr noundef %ep, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %status)
  tail call fastcc void @gr_start_dma(ptr noundef %ep)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_dfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @gr_dfs_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_dfs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %regs = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %control1 = getelementptr inbounds %struct.gr_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control1) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %status4 = getelementptr inbounds %struct.gr_regs, ptr %6, i32 0, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status4) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  %state = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %call7 = tail call ptr @usb_state_string(i32 noundef %9) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.157, ptr noundef %call7) #9
  %and = lshr i32 %4, 1
  %shr = and i32 %and, 127
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.158, i32 noundef %shr) #9
  %and8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool.not, i32 3, i32 2
  %call9 = tail call ptr @usb_speed_string(i32 noundef %cond) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.159, ptr noundef %call9) #9
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp1.i = icmp ugt i32 %11, 7
  br i1 %cmp1.i, label %entry.gr_ep0state_string.exit_crit_edge, label %if.end.i

entry.gr_ep0state_string.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep0state_string.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [8 x ptr], ptr @gr_ep0state_string.names, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  br label %gr_ep0state_string.exit

gr_ep0state_string.exit:                          ; preds = %if.end.i, %entry.gr_ep0state_string.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ @.str.58, %entry.gr_ep0state_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.160, ptr noundef %retval.0.i) #9
  %irq_enabled = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %irq_enabled, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.161, i32 noundef %bf.cast) #9
  %15 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load11 = load i8, ptr %irq_enabled, align 8
  %bf.lshr12 = lshr i8 %bf.load11, 5
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.162, i32 noundef %bf.cast14) #9
  %test_mode = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %test_mode, align 1
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.163, i32 noundef %conv) #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.164) #9
  %ep_list = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn45 = load ptr, ptr %ep_list, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %ep_list
  br i1 %cmp.not46, label %gr_ep0state_string.exit.for.end_crit_edge, label %gr_ep0state_string.exit.for.body_crit_edge

gr_ep0state_string.exit.for.body_crit_edge:       ; preds = %gr_ep0state_string.exit
  br label %for.body

gr_ep0state_string.exit.for.end_crit_edge:        ; preds = %gr_ep0state_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %gr_seq_ep_show.exit.for.body_crit_edge, %gr_ep0state_string.exit.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %gr_seq_ep_show.exit.for.body_crit_edge ], [ %.pn45, %gr_ep0state_string.exit.for.body_crit_edge ]
  %regs.i = getelementptr i8, ptr %.pn47, i32 -16
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %epstat4.i = getelementptr inbounds %struct.gr_epregs, ptr %23, i32 0, i32 2
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstat4.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  %and.i = lshr i32 %21, 3
  %shr.i = and i32 %and.i, 3
  %name.i = getelementptr i8, ptr %.pn47, i32 -68
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.165, ptr noundef %26) #9
  %arrayidx.i43 = getelementptr [4 x ptr], ptr @gr_modestring, i32 0, i32 %shr.i
  %27 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.166, ptr noundef %28) #9
  %and8.i = lshr i32 %21, 2
  %and8.lobit.i = and i32 %and8.i, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.167, i32 noundef %and8.lobit.i) #9
  %and10.i = lshr i32 %21, 1
  %and10.lobit.i = and i32 %and10.i, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.168, i32 noundef %and10.lobit.i) #9
  %and16.i = and i32 %21, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.169, i32 noundef %and16.i) #9
  %dma_start.i = getelementptr i8, ptr %.pn47, i32 -20
  %29 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_start.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.170, i32 noundef %30) #9
  %stopped.i = getelementptr i8, ptr %.pn47, i32 -12
  %31 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 6
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.171, i32 noundef %bf.cast.i) #9
  %32 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load22.i = load i16, ptr %stopped.i, align 4
  %bf.lshr23.i = lshr i16 %bf.load22.i, 5
  %bf.clear24.i = and i16 %bf.lshr23.i, 1
  %bf.cast25.i = zext i16 %bf.clear24.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.172, i32 noundef %bf.cast25.i) #9
  %33 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load26.i = load i16, ptr %stopped.i, align 4
  %bf.lshr27.i = lshr i16 %bf.load26.i, 4
  %bf.clear28.i = and i16 %bf.lshr27.i, 1
  %bf.cast29.i = zext i16 %bf.clear28.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.173, i32 noundef %bf.cast29.i) #9
  %maxpacket.i = getelementptr i8, ptr %.pn47, i32 -46
  %34 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 7)
  %bf.load31.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr32.i = lshr i56 %bf.load31.i, 40
  %bf.cast33.i = trunc i56 %bf.lshr32.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.174, i32 noundef %bf.cast33.i) #9
  %35 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load35.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr36.i = lshr i56 %bf.load35.i, 24
  %36 = trunc i56 %bf.lshr36.i to i32
  %bf.cast38.i = and i32 %36, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.175, i32 noundef %bf.cast38.i) #9
  %bytes_per_buffer.i = getelementptr i8, ptr %.pn47, i32 -24
  %37 = ptrtoint ptr %bytes_per_buffer.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bytes_per_buffer.i, align 4
  %conv.i = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.176, i32 noundef %conv.i) #9
  %39 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %shr.i, label %for.body.if.end.i44_crit_edge [
    i32 1, label %for.body.if.then.i_crit_edge
    i32 3, label %for.body.if.then.i_crit_edge48
  ]

for.body.if.then.i_crit_edge48:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.body.if.end.i44_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i44

if.then.i:                                        ; preds = %for.body.if.then.i_crit_edge, %for.body.if.then.i_crit_edge48
  %and42.i = lshr i32 %21, 5
  %shr43.i = and i32 %and42.i, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.177, i32 noundef %shr43.i) #9
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i, %for.body.if.end.i44_crit_edge
  %and44.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %cond.i = select i1 %tobool45.not.i, ptr @.str.180, ptr @.str.179
  %and46.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %cond48.i = select i1 %tobool47.not.i, ptr @.str.182, ptr @.str.181
  %and49.i = lshr i32 %24, 3
  %shr50.i = and i32 %and49.i, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.178, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond48.i, i32 noundef %shr50.i) #9
  %and51.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %cond53.i = select i1 %tobool52.not.i, ptr @.str.180, ptr @.str.179
  %cond56.i = select i1 %tobool47.not.i, ptr @.str.181, ptr @.str.182
  %and57.i = lshr i32 %24, 16
  %shr58.i = and i32 %and57.i, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.183, ptr noundef nonnull %cond53.i, ptr noundef nonnull %cond56.i, i32 noundef %shr58.i) #9
  %queue.i = getelementptr i8, ptr %.pn47, i32 -8
  %40 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %queue.i
  br i1 %cmp.i.not.i, label %if.end.i44.gr_seq_ep_show.exit_crit_edge, label %if.end62.i

if.end.i44.gr_seq_ep_show.exit_crit_edge:         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_seq_ep_show.exit

if.end62.i:                                       ; preds = %if.end.i44
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.185) #9
  %42 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn144.i = load ptr, ptr %queue.i, align 4
  %cmp67.not145.i = icmp eq ptr %.pn144.i, %queue.i
  br i1 %cmp67.not145.i, label %if.end62.i.gr_seq_ep_show.exit_crit_edge, label %if.end62.i.for.body.i_crit_edge

if.end62.i.for.body.i_crit_edge:                  ; preds = %if.end62.i
  br label %for.body.i

if.end62.i.gr_seq_ep_show.exit_crit_edge:         ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_seq_ep_show.exit

for.cond.loopexit.i:                              ; preds = %do.body.i
  %43 = ptrtoint ptr %.pn146.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn146.i, align 4
  %cmp67.not.i = icmp eq ptr %.pn.i, %queue.i
  br i1 %cmp67.not.i, label %for.cond.loopexit.i.gr_seq_ep_show.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.loopexit.i.gr_seq_ep_show.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_seq_ep_show.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end62.i.for.body.i_crit_edge
  %.pn146.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn144.i, %if.end62.i.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn146.i, i32 -56
  %actual.i = getelementptr i8, ptr %.pn146.i, i32 -4
  %44 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual.i, align 4
  %length.i = getelementptr i8, ptr %.pn146.i, i32 -52
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.186, ptr noundef %req.0.i, ptr noundef %req.0.i, i32 noundef %45, i32 noundef %47) #9
  %first_desc.i = getelementptr i8, ptr %.pn146.i, i32 8
  %48 = ptrtoint ptr %first_desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %first_desc.i, align 4
  %curr_desc.i = getelementptr i8, ptr %.pn146.i, i32 12
  %last_desc.i = getelementptr i8, ptr %.pn146.i, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.i
  %next71.0.i = phi ptr [ %49, %for.body.i ], [ %51, %do.body.i.do.body.i_crit_edge ]
  %next_desc.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next71.0.i, i32 0, i32 4
  %50 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next_desc.i, align 4
  %52 = ptrtoint ptr %curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %curr_desc.i, align 4
  %cmp75.i = icmp eq ptr %next71.0.i, %53
  %cond77.i = select i1 %cmp75.i, i32 99, i32 32
  %paddr.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next71.0.i, i32 0, i32 3
  %54 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %paddr.i, align 4
  %56 = ptrtoint ptr %next71.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %next71.0.i, align 4
  %data.i = getelementptr inbounds %struct.gr_dma_desc, ptr %next71.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.187, i32 noundef %cond77.i, ptr noundef %next71.0.i, i32 noundef %55, i32 noundef %57, i32 noundef %59) #9
  %60 = ptrtoint ptr %last_desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %last_desc.i, align 4
  %cmp78.not.i = icmp eq ptr %next71.0.i, %61
  br i1 %cmp78.not.i, label %for.cond.loopexit.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

gr_seq_ep_show.exit:                              ; preds = %for.cond.loopexit.i.gr_seq_ep_show.exit_crit_edge, %if.end62.i.gr_seq_ep_show.exit_crit_edge, %if.end.i44.gr_seq_ep_show.exit_crit_edge
  %.str.164.sink.i = phi ptr [ @.str.184, %if.end.i44.gr_seq_ep_show.exit_crit_edge ], [ @.str.164, %if.end62.i.gr_seq_ep_show.exit_crit_edge ], [ @.str.164, %for.cond.loopexit.i.gr_seq_ep_show.exit_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.164.sink.i) #9
  %62 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %gr_seq_ep_show.exit.for.end_crit_edge, label %gr_seq_ep_show.exit.for.body_crit_edge

gr_seq_ep_show.exit.for.body_crit_edge:           ; preds = %gr_seq_ep_show.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

gr_seq_ep_show.exit.for.end_crit_edge:            ; preds = %gr_seq_ep_show.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %gr_seq_ep_show.exit.for.end_crit_edge, %gr_ep0state_string.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gr_irq(i32 noundef %irq, ptr nocapture noundef readonly %_dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 13
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_enabled, align 8
  %1 = lshr i8 %bf.load, 5
  %2 = and i8 %1, 2
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr_irq_handler(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %irq_enabled = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 13
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_enabled, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  %nepi = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 16
  %2 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nepi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5132.not = icmp eq i32 %3, 0
  br i1 %cmp5132.not, label %for.cond.preheader.for.cond25.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.inc.for.cond25.preheader_crit_edge, %for.cond.preheader.for.cond25.preheader_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond25.preheader_crit_edge ], [ %handled.1, %for.inc.for.cond25.preheader_crit_edge ]
  %nepo = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 17
  %4 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nepo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26138.not = icmp eq i32 %5, 0
  br i1 %cmp26138.not, label %for.cond25.preheader.for.end57_crit_edge, label %for.cond25.preheader.for.body28_crit_edge

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

for.cond25.preheader.for.end57_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %handled.0137 = phi i32 [ %handled.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0133 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 1, i32 %i.0133
  %stopped = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 1, i32 %i.0133, i32 5
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load7 = load i16, ptr %stopped, align 4
  %7 = and i16 %bf.load7, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %land.lhs.true17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %queue = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 1, i32 %i.0133, i32 6
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %land.lhs.true17.for.inc_crit_edge, label %if.then20

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true17
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %last_desc.i = getelementptr i8, ptr %12, i32 16
  %13 = ptrtoint ptr %last_desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last_desc.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then20._crit_edge, label %do.end.i

if.then20._crit_edge:                             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %22

do.end.i:                                         ; preds = %if.then20
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %do.end.i._crit_edge

do.end.i._crit_edge:                              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %22

if.end5.i:                                        ; preds = %do.end.i
  %regs.i = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 1, i32 %i.0133, i32 4
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %epstat.i = getelementptr inbounds %struct.gr_epregs, ptr %18, i32 0, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstat.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  %and7.i = and i32 %19, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %gr_handle_in_ep.exit, label %if.end5.i._crit_edge

if.end5.i._crit_edge:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %22

gr_handle_in_ep.exit:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %arrayidx, ptr noundef %add.ptr.i.i, i32 noundef 0) #9
  tail call fastcc void @gr_start_dma(ptr noundef %arrayidx) #9
  br label %23

22:                                               ; preds = %if.end5.i._crit_edge, %do.end.i._crit_edge, %if.then20._crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0137)
  %tobool23130 = icmp ne i32 %handled.0137, 0
  br label %23

23:                                               ; preds = %22, %gr_handle_in_ep.exit
  %24 = phi i1 [ %tobool23130, %22 ], [ true, %gr_handle_in_ep.exit ]
  %lor.ext = zext i1 %24 to i32
  br label %for.inc

for.inc:                                          ; preds = %23, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ %handled.0137, %for.body.for.inc_crit_edge ], [ %handled.0137, %land.lhs.true17.for.inc_crit_edge ], [ %lor.ext, %23 ]
  %inc = add nuw i32 %i.0133, 1
  %25 = ptrtoint ptr %nepi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nepi, align 8
  %cmp5 = icmp ult i32 %inc, %26
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.cond25.preheader_crit_edge

for.inc.for.cond25.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond25.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body28:                                       ; preds = %for.inc55.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %handled.2141 = phi i32 [ %handled.3, %for.inc55.for.body28_crit_edge ], [ %handled.0.lcssa, %for.cond25.preheader.for.body28_crit_edge ]
  %i.1139 = phi i32 [ %inc56, %for.inc55.for.body28_crit_edge ], [ 0, %for.cond25.preheader.for.body28_crit_edge ]
  %arrayidx29 = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 2, i32 %i.1139
  %stopped30 = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 2, i32 %i.1139, i32 5
  %27 = ptrtoint ptr %stopped30 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load31 = load i16, ptr %stopped30, align 4
  %28 = and i16 %bf.load31, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %land.lhs.true43, label %for.body28.for.inc55_crit_edge

for.body28.for.inc55_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc55

land.lhs.true43:                                  ; preds = %for.body28
  %queue44 = getelementptr %struct.gr_udc, ptr %_dev, i32 0, i32 2, i32 %i.1139, i32 6
  %30 = ptrtoint ptr %queue44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %queue44, align 4
  %cmp.i126.not = icmp eq ptr %31, %queue44
  br i1 %cmp.i126.not, label %land.lhs.true43.for.inc55_crit_edge, label %if.then47

land.lhs.true43.for.inc55_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc55

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call fastcc i32 @gr_handle_out_ep(ptr noundef %arrayidx29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp ne i32 %call48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2141)
  %tobool51 = icmp ne i32 %handled.2141, 0
  %spec.select124 = select i1 %tobool49.not, i1 true, i1 %tobool51
  %lor.ext53 = zext i1 %spec.select124 to i32
  br label %for.inc55

for.inc55:                                        ; preds = %if.then47, %land.lhs.true43.for.inc55_crit_edge, %for.body28.for.inc55_crit_edge
  %handled.3 = phi i32 [ %handled.2141, %for.body28.for.inc55_crit_edge ], [ %handled.2141, %land.lhs.true43.for.inc55_crit_edge ], [ %lor.ext53, %if.then47 ]
  %inc56 = add nuw i32 %i.1139, 1
  %32 = ptrtoint ptr %nepo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nepo, align 4
  %cmp26 = icmp ult i32 %inc56, %33
  br i1 %cmp26, label %for.inc55.for.body28_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57

for.inc55.for.body28_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %for.cond25.preheader.for.end57_crit_edge
  %handled.2.lcssa = phi i32 [ %handled.0.lcssa, %for.cond25.preheader.for.end57_crit_edge ], [ %handled.3, %for.inc55.for.end57_crit_edge ]
  %call58 = tail call fastcc i32 @gr_handle_state_changes(ptr noundef %_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp ne i32 %call58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2.lcssa)
  %tobool61 = icmp ne i32 %handled.2.lcssa, 0
  %spec.select125 = select i1 %tobool59.not, i1 true, i1 %tobool61
  br i1 %spec.select125, label %for.end57.out_crit_edge, label %if.then65

for.end57.out_crit_edge:                          ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then65:                                        ; preds = %for.end57
  %ep_list = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 18
  %34 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn143 = load ptr, ptr %ep_list, align 4
  %cmp70.not144 = icmp eq ptr %.pn143, %ep_list
  br i1 %cmp70.not144, label %if.then65.out_crit_edge, label %for.body72.lr.ph

if.then65.out_crit_edge:                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body72.lr.ph:                                 ; preds = %if.then65
  %dev80 = getelementptr inbounds %struct.gr_udc, ptr %_dev, i32 0, i32 5
  br label %for.body72

for.body72:                                       ; preds = %for.inc83.for.body72_crit_edge, %for.body72.lr.ph
  %.pn146 = phi ptr [ %.pn143, %for.body72.lr.ph ], [ %.pn, %for.inc83.for.body72_crit_edge ]
  %handled.4145 = phi i32 [ 0, %for.body72.lr.ph ], [ %handled.5, %for.inc83.for.body72_crit_edge ]
  %regs = getelementptr i8, ptr %.pn146, i32 -16
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %37 = getelementptr inbounds %struct.gr_epregs, ptr %36, i32 0, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %and = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %for.body72.for.inc83_crit_edge, label %do.end79

for.body72.for.inc83_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

do.end79:                                         ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev80, align 8
  %name = getelementptr i8, ptr %.pn146, i32 -68
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.188, ptr noundef %42) #12
  br label %for.inc83

for.inc83:                                        ; preds = %do.end79, %for.body72.for.inc83_crit_edge
  %handled.5 = phi i32 [ 1, %do.end79 ], [ %handled.4145, %for.body72.for.inc83_crit_edge ]
  %43 = ptrtoint ptr %.pn146 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn146, align 4
  %cmp70.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp70.not, label %for.inc83.out_crit_edge, label %for.inc83.for.body72_crit_edge

for.inc83.for.body72_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

for.inc83.out_crit_edge:                          ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc83.out_crit_edge, %if.then65.out_crit_edge, %for.end57.out_crit_edge, %entry.out_crit_edge
  %handled.6 = phi i32 [ 1, %for.end57.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %if.then65.out_crit_edge ], [ %handled.5, %for.inc83.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.6)
  %tobool92.not = icmp ne i32 %handled.6, 0
  %cond = zext i1 %tobool92.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_handle_out_ep(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %queue = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 6
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %curr_desc = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %conv = and i32 %7, 8191
  %actual = getelementptr i8, ptr %3, i32 -4
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %add = add i32 %9, %conv
  store i32 %add, ptr %actual, align 4
  %and11 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end7.if.end14_crit_edge, label %if.then13

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %setup = getelementptr i8, ptr %3, i32 24
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %setup, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7.if.end14_crit_edge
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %11 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bf.cast)
  %cmp = icmp ult i32 %conv, %bf.cast
  br i1 %cmp, label %if.end14.if.then23_crit_edge, label %lor.lhs.false

if.end14.if.then23_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end14
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %length = getelementptr i8, ptr %3, i32 -52
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp21.not = icmp ult i32 %13, %15
  br i1 %cmp21.not, label %if.else, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.end14.if.then23_crit_edge
  %epo = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 2
  %cmp24 = icmp eq ptr %epo, %ep
  br i1 %cmp24, label %land.lhs.true, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then23
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp26 = icmp eq i32 %17, 5
  br i1 %cmp26, label %if.then28, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  %call.i = tail call fastcc i32 @gr_ep0_respond(ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @gr_ep0_dummy_complete) #9
  %18 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 1
  br i1 %cmp.not.i, label %if.then28.gr_set_ep0state.exit_crit_edge, label %do.body.i

if.then28.gr_set_ep0state.exit_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit

do.body.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_out_ep, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.gr_udc, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %21, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i, %if.then28.gr_set_ep0state.exit_crit_edge
  %22 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %ep0state, align 4
  br label %if.end29

if.end29:                                         ; preds = %gr_set_ep0state.exit, %land.lhs.true.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %ep, ptr noundef %add.ptr.i, i32 noundef 0) #9
  tail call fastcc void @gr_start_dma(ptr noundef %ep) #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %next_desc = getelementptr inbounds %struct.gr_dma_desc, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_desc, align 4
  %27 = ptrtoint ptr %curr_desc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %curr_desc, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %26, align 4
  %or = or i32 %29, 8192
  store i32 %or, ptr %26, align 4
  %regs = getelementptr inbounds %struct.gr_ep, ptr %ep, i32 0, i32 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %32 = getelementptr inbounds %struct.gr_epregs, ptr %31, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  tail call void @arm_heavy_mb() #9
  %or39 = or i32 %33, 1
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %36 = getelementptr inbounds %struct.gr_epregs, ptr %35, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %or39) #9, !srcloc !420
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end29, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr_handle_state_changes(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %status1 = getelementptr inbounds %struct.gr_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !469
  %state = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %5, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.if.end18_crit_edge, label %do.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.end)) #9
          to label %if.then16 [label %do.end], !srcloc !421

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug261, ptr noundef %7, ptr noundef nonnull @.str.191) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %and.i = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %speed.i, align 8
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef 2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %control2.i = getelementptr inbounds %struct.gr_regs, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control2.i, i32 -268419072) #9, !srcloc !420
  br label %if.end18

if.end18:                                         ; preds = %do.end, %entry.if.end18_crit_edge
  %handled.0 = phi i32 [ 0, %entry.if.end18_crit_edge ], [ 1, %do.end ]
  %or.cond254 = select i1 %5, i1 %tobool5.not, i1 false
  br i1 %or.cond254, label %do.body24, label %if.end18.if.end43_crit_edge

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body24:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.end42)) #9
          to label %if.then38 [label %do.end42], !srcloc !421

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug262, ptr noundef %12, ptr noundef nonnull @.str.192) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body24
  tail call fastcc void @gr_stop_activity(ptr noundef %dev) #9
  %driver.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 8
  %tobool.not.i270 = icmp eq ptr %14, null
  br i1 %tobool.not.i270, label %do.end42.gr_vbus_disconnected.exit_crit_edge, label %land.lhs.true.i

do.end42.gr_vbus_disconnected.exit_crit_edge:     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_vbus_disconnected.exit

land.lhs.true.i:                                  ; preds = %do.end42
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disconnect.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.gr_vbus_disconnected.exit_crit_edge, label %if.then.i

land.lhs.true.i.gr_vbus_disconnected.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_vbus_disconnected.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %17 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver.i, align 8
  %disconnect4.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %disconnect4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disconnect4.i, align 4
  tail call void %20(ptr noundef %dev) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %gr_vbus_disconnected.exit

gr_vbus_disconnected.exit:                        ; preds = %if.then.i, %land.lhs.true.i.gr_vbus_disconnected.exit_crit_edge, %do.end42.gr_vbus_disconnected.exit_crit_edge
  tail call fastcc void @gr_enable_vbus_detect(ptr noundef %dev) #9
  br label %if.end43

if.end43:                                         ; preds = %gr_vbus_disconnected.exit, %if.end18.if.end43_crit_edge
  %handled.1 = phi i32 [ 1, %gr_vbus_disconnected.exit ], [ %handled.0, %if.end18.if.end43_crit_edge ]
  %and44 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end74_crit_edge, label %do.body47

if.end43.if.end74_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.body47:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.body69)) #9
          to label %if.then61 [label %do.body69], !srcloc !421

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %21 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev62, align 8
  %and63 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond = select i1 %tobool64.not, i32 3, i32 2
  %call65 = tail call ptr @usb_speed_string(i32 noundef %cond) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug263, ptr noundef %22, ptr noundef nonnull @.str.193, ptr noundef %call65) #9
  br label %do.body69

do.body69:                                        ; preds = %if.then61, %do.body47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %status73 = getelementptr inbounds %struct.gr_regs, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status73, i32 65536) #9, !srcloc !420
  tail call fastcc void @gr_udc_usbreset(ptr noundef %dev, i32 noundef %2)
  br label %if.end74

if.end74:                                         ; preds = %do.body69, %if.end43.if.end74_crit_edge
  %handled.2 = phi i32 [ 1, %do.body69 ], [ %handled.1, %if.end43.if.end74_crit_edge ]
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed, align 8
  %and76 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %cond78 = select i1 %tobool77.not, i32 3, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %cond78)
  %cmp79.not = icmp eq i32 %26, %cond78
  br i1 %cmp79.not, label %if.end74.if.end109_crit_edge, label %do.body81

if.end74.if.end109_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.body81:                                        ; preds = %if.end74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.end103)) #9
          to label %if.then95 [label %do.end103], !srcloc !421

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %dev96 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %27 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev96, align 8
  %call100 = tail call ptr @usb_speed_string(i32 noundef %cond78) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug264, ptr noundef %28, ptr noundef nonnull @.str.194, ptr noundef %call100) #9
  br label %do.end103

do.end103:                                        ; preds = %if.then95, %do.body81
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond78, ptr %speed, align 8
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end74.if.end109_crit_edge
  %handled.3 = phi i32 [ 1, %do.end103 ], [ %handled.2, %if.end74.if.end109_crit_edge ]
  %ep0state = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %30 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp110.not = icmp ne i32 %31, 7
  %and112 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %or.cond252 = select i1 %cmp110.not, i1 %tobool113.not, i1 false
  br i1 %or.cond252, label %do.body115, label %if.end109.if.end151_crit_edge

if.end109.if.end151_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

do.body115:                                       ; preds = %if.end109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.end133)) #9
          to label %if.then129 [label %do.end133], !srcloc !421

if.then129:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #11
  %dev130 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %32 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev130, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug265, ptr noundef %33, ptr noundef nonnull @.str.195) #9
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %do.body115
  %34 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 7
  br i1 %cmp.not.i, label %do.end133.gr_set_ep0state.exit_crit_edge, label %do.body.i

do.end133.gr_set_ep0state.exit_crit_edge:         ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit

do.body.i:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %36 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %37, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.57) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i, %do.end133.gr_set_ep0state.exit_crit_edge
  %38 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %ep0state, align 4
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 8
  %suspended_from = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 15
  %41 = ptrtoint ptr %suspended_from to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %suspended_from, align 4
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef 8) #9
  %42 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp139.not = icmp eq i32 %43, 0
  br i1 %cmp139.not, label %gr_set_ep0state.exit.if.end151_crit_edge, label %land.lhs.true140

gr_set_ep0state.exit.if.end151_crit_edge:         ; preds = %gr_set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.lhs.true140:                                 ; preds = %gr_set_ep0state.exit
  %driver = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 3
  %44 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver, align 8
  %tobool141.not = icmp eq ptr %45, null
  br i1 %tobool141.not, label %land.lhs.true140.if.end151_crit_edge, label %land.lhs.true142

land.lhs.true140.if.end151_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.lhs.true142:                                 ; preds = %land.lhs.true140
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %suspend, align 4
  %tobool144.not = icmp eq ptr %47, null
  br i1 %tobool144.not, label %land.lhs.true142.if.end151_crit_edge, label %if.then145

land.lhs.true142.if.end151_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then145:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %48 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver, align 8
  %suspend147 = getelementptr inbounds %struct.usb_gadget_driver, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %suspend147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %suspend147, align 4
  tail call void %51(ptr noundef %dev) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %land.lhs.true142.if.end151_crit_edge, %land.lhs.true140.if.end151_crit_edge, %gr_set_ep0state.exit.if.end151_crit_edge, %if.end109.if.end151_crit_edge
  %handled.4 = phi i32 [ %handled.3, %if.end109.if.end151_crit_edge ], [ 1, %if.then145 ], [ 1, %land.lhs.true142.if.end151_crit_edge ], [ 1, %land.lhs.true140.if.end151_crit_edge ], [ 1, %gr_set_ep0state.exit.if.end151_crit_edge ]
  %52 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %53)
  %cmp153 = icmp ne i32 %53, 7
  %or.cond253 = select i1 %cmp153, i1 true, i1 %tobool113.not
  br i1 %or.cond253, label %if.end151.if.end199_crit_edge, label %do.body158

if.end151.if.end199_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

do.body158:                                       ; preds = %if.end151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %do.end176)) #9
          to label %if.then172 [label %do.end176], !srcloc !421

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #11
  %dev173 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %54 = ptrtoint ptr %dev173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev173, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_handle_state_changes.__UNIQUE_ID_ddebug266, ptr noundef %55, ptr noundef nonnull @.str.196) #9
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body158
  %suspended_from177 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 15
  %56 = ptrtoint ptr %suspended_from177 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %suspended_from177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp178 = icmp eq i32 %57, 2
  %58 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ep0state, align 4
  br i1 %cmp178, label %if.then179, label %if.else

if.then179:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i272 = icmp eq i32 %59, 0
  br i1 %cmp.not.i272, label %if.then179.if.end180_crit_edge, label %do.body.i273

if.then179.if.end180_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

do.body.i273:                                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %if.end180)) #9
          to label %if.end180.sink.split [label %if.end180], !srcloc !421

if.else:                                          ; preds = %do.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.not.i278 = icmp eq i32 %59, 1
  br i1 %cmp.not.i278, label %if.else.if.end180_crit_edge, label %do.body.i279

if.else.if.end180_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

do.body.i279:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_handle_state_changes, %if.end180)) #9
          to label %if.end180.sink.split [label %if.end180], !srcloc !421

if.end180.sink.split:                             ; preds = %do.body.i279, %do.body.i273
  %.str.51.sink = phi ptr [ @.str.50, %do.body.i273 ], [ @.str.51, %do.body.i279 ]
  %storemerge.ph = phi i32 [ 0, %do.body.i273 ], [ 1, %do.body.i279 ]
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i280 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %60 = ptrtoint ptr %dev5.i280 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev5.i280, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %61, ptr noundef nonnull @.str.91, ptr noundef nonnull %.str.51.sink) #9
  br label %if.end180

if.end180:                                        ; preds = %if.end180.sink.split, %do.body.i279, %if.else.if.end180_crit_edge, %do.body.i273, %if.then179.if.end180_crit_edge
  %storemerge = phi i32 [ 0, %if.then179.if.end180_crit_edge ], [ 0, %do.body.i273 ], [ 1, %if.else.if.end180_crit_edge ], [ 1, %do.body.i279 ], [ %storemerge.ph, %if.end180.sink.split ]
  %62 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge, ptr %ep0state, align 4
  %63 = ptrtoint ptr %suspended_from177 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %suspended_from177, align 4
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef %64) #9
  %65 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp185.not = icmp eq i32 %66, 0
  br i1 %cmp185.not, label %if.end180.if.end199_crit_edge, label %land.lhs.true186

if.end180.if.end199_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

land.lhs.true186:                                 ; preds = %if.end180
  %driver187 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 3
  %67 = ptrtoint ptr %driver187 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver187, align 8
  %tobool188.not = icmp eq ptr %68, null
  br i1 %tobool188.not, label %land.lhs.true186.if.end199_crit_edge, label %land.lhs.true189

land.lhs.true186.if.end199_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

land.lhs.true189:                                 ; preds = %land.lhs.true186
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %resume, align 4
  %tobool191.not = icmp eq ptr %70, null
  br i1 %tobool191.not, label %land.lhs.true189.if.end199_crit_edge, label %if.then192

land.lhs.true189.if.end199_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then192:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #11
  %lock193 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 19
  tail call void @_raw_spin_unlock(ptr noundef %lock193) #9
  %71 = ptrtoint ptr %driver187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver187, align 8
  %resume195 = getelementptr inbounds %struct.usb_gadget_driver, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %resume195 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resume195, align 4
  tail call void %74(ptr noundef %dev) #9
  tail call void @_raw_spin_lock(ptr noundef %lock193) #9
  br label %if.end199

if.end199:                                        ; preds = %if.then192, %land.lhs.true189.if.end199_crit_edge, %land.lhs.true186.if.end199_crit_edge, %if.end180.if.end199_crit_edge, %if.end151.if.end199_crit_edge
  %handled.5 = phi i32 [ %handled.4, %if.end151.if.end199_crit_edge ], [ 1, %if.then192 ], [ 1, %land.lhs.true189.if.end199_crit_edge ], [ 1, %land.lhs.true186.if.end199_crit_edge ], [ 1, %if.end180.if.end199_crit_edge ]
  ret i32 %handled.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gr_udc_usbreset(ptr noundef %dev, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %control1.i = getelementptr inbounds %struct.gr_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control1.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %and.i = and i32 %2, -256
  %or3.i = or i32 %and.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %control5.i = getelementptr inbounds %struct.gr_regs, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control5.i, i32 %or3.i) #9, !srcloc !420
  %ep0state.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ep0state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %entry.gr_set_ep0state.exit_crit_edge, label %do.body.i

entry.gr_set_ep0state.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_set_ep0state.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gr_udc_usbreset, %gr_set_ep0state.exit)) #9
          to label %if.then4.i [label %gr_set_ep0state.exit], !srcloc !421

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gr_set_ep0state.__UNIQUE_ID_ddebug251, ptr noundef %8, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.51) #9
  br label %gr_set_ep0state.exit

gr_set_ep0state.exit:                             ; preds = %if.then4.i, %do.body.i, %entry.gr_set_ep0state.exit_crit_edge
  %9 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @usb_gadget_set_state(ptr noundef %dev, i32 noundef 5) #9
  %and = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 3, i32 2
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %speed, align 8
  %epo = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2
  %stopped.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 5
  %11 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %stopped.i, align 4
  %bf.set.i = or i16 %bf.load.i, 64
  store i16 %bf.set.i, ptr %stopped.i, align 4
  %dma_start.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_start.i, align 4
  %regs.i.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 4
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %15 = getelementptr inbounds %struct.gr_epregs, ptr %14, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %or.i.i = or i32 %16, 8
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %19 = getelementptr inbounds %struct.gr_epregs, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %or.i.i) #9, !srcloc !420
  %queue.i = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 2, i32 0, i32 6
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not7.i = icmp eq ptr %21, %queue.i
  br i1 %cmp.i.not7.i, label %gr_set_ep0state.exit.gr_ep_nuke.exit_crit_edge, label %gr_set_ep0state.exit.while.body.i_crit_edge

gr_set_ep0state.exit.while.body.i_crit_edge:      ; preds = %gr_set_ep0state.exit
  br label %while.body.i

gr_set_ep0state.exit.gr_ep_nuke.exit_crit_edge:   ; preds = %gr_set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %gr_set_ep0state.exit.while.body.i_crit_edge
  %22 = phi ptr [ %24, %while.body.i.while.body.i_crit_edge ], [ %21, %gr_set_ep0state.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %22, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %epo, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %23 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.gr_ep_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.gr_ep_nuke.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit

gr_ep_nuke.exit:                                  ; preds = %while.body.i.gr_ep_nuke.exit_crit_edge, %gr_set_ep0state.exit.gr_ep_nuke.exit_crit_edge
  %epi = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1
  %stopped.i19 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %stopped.i19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i20 = load i16, ptr %stopped.i19, align 4
  %bf.set.i21 = or i16 %bf.load.i20, 64
  store i16 %bf.set.i21, ptr %stopped.i19, align 4
  %dma_start.i22 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %dma_start.i22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dma_start.i22, align 4
  %regs.i.i23 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %regs.i.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i23, align 4
  %29 = getelementptr inbounds %struct.gr_epregs, ptr %28, i32 0, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %or.i.i24 = or i32 %30, 8
  %31 = ptrtoint ptr %regs.i.i23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i23, align 4
  %33 = getelementptr inbounds %struct.gr_epregs, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %or.i.i24) #9, !srcloc !420
  %queue.i25 = getelementptr inbounds %struct.gr_udc, ptr %dev, i32 0, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %queue.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %queue.i25, align 4
  %cmp.i.not7.i26 = icmp eq ptr %35, %queue.i25
  br i1 %cmp.i.not7.i26, label %gr_ep_nuke.exit.gr_ep_nuke.exit30_crit_edge, label %gr_ep_nuke.exit.while.body.i29_crit_edge

gr_ep_nuke.exit.while.body.i29_crit_edge:         ; preds = %gr_ep_nuke.exit
  br label %while.body.i29

gr_ep_nuke.exit.gr_ep_nuke.exit30_crit_edge:      ; preds = %gr_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit30

while.body.i29:                                   ; preds = %while.body.i29.while.body.i29_crit_edge, %gr_ep_nuke.exit.while.body.i29_crit_edge
  %36 = phi ptr [ %38, %while.body.i29.while.body.i29_crit_edge ], [ %35, %gr_ep_nuke.exit.while.body.i29_crit_edge ]
  %add.ptr.i27 = getelementptr i8, ptr %36, i32 -56
  tail call fastcc void @gr_finish_request(ptr noundef %epi, ptr noundef %add.ptr.i27, i32 noundef -108) #9
  %37 = ptrtoint ptr %queue.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue.i25, align 4
  %cmp.i.not.i28 = icmp eq ptr %38, %queue.i25
  br i1 %cmp.i.not.i28, label %while.body.i29.gr_ep_nuke.exit30_crit_edge, label %while.body.i29.while.body.i29_crit_edge

while.body.i29.while.body.i29_crit_edge:          ; preds = %while.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i29

while.body.i29.gr_ep_nuke.exit30_crit_edge:       ; preds = %while.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %gr_ep_nuke.exit30

gr_ep_nuke.exit30:                                ; preds = %while.body.i29.gr_ep_nuke.exit30_crit_edge, %gr_ep_nuke.exit.gr_ep_nuke.exit30_crit_edge
  %39 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load = load i16, ptr %stopped.i, align 4
  %bf.clear = and i16 %bf.load, -65
  store i16 %bf.clear, ptr %stopped.i, align 4
  %40 = ptrtoint ptr %stopped.i19 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load8 = load i16, ptr %stopped.i19, align 4
  %bf.clear9 = and i16 %bf.load8, -65
  store i16 %bf.clear9, ptr %stopped.i19, align 4
  tail call fastcc void @gr_ep0out_requeue(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !293, !295, !297, !299, !301, !303, !304, !305, !307, !309, !310, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = !{ptr @__initcall__kmod_gr_udc__270_2253_gr_driver_init6, !1, !"__initcall__kmod_gr_udc__270_2253_gr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2253, i32 1}
!2 = !{ptr @__exitcall_gr_driver_exit, !1, !"__exitcall_gr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author271, !4, !"__UNIQUE_ID_author271", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2255, i32 1}
!5 = !{ptr @__UNIQUE_ID_description272, !6, !"__UNIQUE_ID_description272", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2256, i32 1}
!7 = !{ptr @__UNIQUE_ID_file273, !8, !"__UNIQUE_ID_file273", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2257, i32 1}
!9 = !{ptr @__UNIQUE_ID_license274, !8, !"__UNIQUE_ID_license274", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2247, i32 11}
!12 = !{ptr @gr_driver, !13, !"gr_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2245, i32 31}
!14 = !{ptr @gr_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2156, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2167, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gr_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gr_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2174, i32 35}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2177, i32 3}
!29 = !{ptr @gr_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gr_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2184, i32 3}
!33 = !{ptr @gr_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gr_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2206, i32 3}
!37 = !{ptr @gr_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gr_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2213, i32 4}
!41 = !{ptr @gr_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gr_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2219, i32 4}
!45 = !{ptr @gr_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gr_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2226, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gr_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @gr_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2229, i32 3}
!54 = !{ptr @gr_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gr_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @driver_name, !57, !"driver_name", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 50, i32 19}
!58 = !{ptr @gr_ops, !59, !"gr_ops", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1933, i32 36}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 315, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gr_finish_request.__UNIQUE_ID_ddebug244, !61, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 317, i32 24}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 324, i32 24}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 326, i32 24}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 335, i32 4}
!72 = !{ptr @gr_finish_request._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gr_finish_request._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 98, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug241, !75, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!78 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 100, i32 2}
!82 = !{ptr @gr_dbgprint_request.__UNIQUE_ID_ddebug242, !81, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!83 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1069, i32 4}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug253, !85, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1075, i32 3}
!90 = !{ptr @gr_ep0_setup._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @gr_ep0_setup._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1082, i32 3}
!94 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug254, !93, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1128, i32 3}
!97 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug255, !96, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1136, i32 3}
!100 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug256, !99, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1143, i32 4}
!103 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug257, !102, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1147, i32 4}
!106 = !{ptr @gr_ep0_setup.__UNIQUE_ID_ddebug258, !105, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 73, i32 25}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 74, i32 20}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 75, i32 20}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 76, i32 20}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 77, i32 22}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 78, i32 22}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 79, i32 20}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 80, i32 22}
!123 = !{ptr @gr_ep0state_string.names, !124, !"names", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 72, i32 27}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 84, i32 10}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 107, i32 2}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @gr_dbgprint_devreq.__UNIQUE_ID_ddebug243, !128, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 895, i32 3}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @gr_device_request.__UNIQUE_ID_ddebug252, !132, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 835, i32 3}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @gr_ep0_respond._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @gr_ep0_respond._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 639, i32 23}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 583, i32 3}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @gr_queue._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @gr_queue._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 588, i32 3}
!149 = !{ptr @gr_queue._entry.68, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @gr_queue._entry_ptr.70, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 595, i32 3}
!153 = !{ptr @gr_queue._entry.71, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @gr_queue._entry_ptr.73, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 601, i32 3}
!157 = !{ptr @gr_queue._entry.74, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @gr_queue._entry_ptr.76, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 608, i32 3}
!161 = !{ptr @gr_queue._entry.77, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @gr_queue._entry_ptr.79, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 239, i32 3}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @gr_alloc_dma_desc._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @gr_alloc_dma_desc._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 720, i32 4}
!170 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @gr_ep_halt_wedge.__UNIQUE_ID_ddebug249, !169, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 726, i32 2}
!174 = !{ptr @gr_ep_halt_wedge.__UNIQUE_ID_ddebug250, !173, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!175 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1033, i32 3}
!180 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @gr_ep0out_requeue._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @gr_ep0out_requeue._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 753, i32 3}
!185 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @gr_set_ep0state.__UNIQUE_ID_ddebug251, !184, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2049, i32 38}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2057, i32 38}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 2}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 11}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 20}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 29}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 38}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1952, i32 47}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 2}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 11}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 20}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 29}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 38}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1953, i32 48}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1954, i32 2}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1954, i32 12}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1954, i32 22}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1954, i32 32}
!223 = !{ptr @inames, !224, !"inames", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1951, i32 27}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 2}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 12}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 22}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 32}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 42}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1946, i32 52}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 2}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 12}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 22}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 32}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 42}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1947, i32 53}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1948, i32 2}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1948, i32 13}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1948, i32 24}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1948, i32 35}
!257 = !{ptr @onames, !258, !"onames", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1945, i32 27}
!259 = !{ptr @gr_ep_ops, !260, !"gr_ep_ops", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1825, i32 32}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1513, i32 3}
!263 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @gr_ep_enable._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @gr_ep_enable._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.129, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1526, i32 3}
!268 = !{ptr @gr_ep_enable._entry.128, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @gr_ep_enable._entry_ptr.130, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.134, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1531, i32 3}
!274 = !{ptr @gr_ep_enable._entry.133, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @gr_ep_enable._entry_ptr.135, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1535, i32 3}
!278 = !{ptr @gr_ep_enable._entry.136, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @gr_ep_enable._entry_ptr.138, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1539, i32 3}
!282 = !{ptr @gr_ep_enable._entry.139, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @gr_ep_enable._entry_ptr.141, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1542, i32 3}
!286 = !{ptr @gr_ep_enable._entry.142, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @gr_ep_enable._entry_ptr.144, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.145, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1594, i32 2}
!290 = !{ptr @gr_ep_enable.__UNIQUE_ID_ddebug267, !289, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 68, i32 46}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 68, i32 57}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 68, i32 64}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 68, i32 72}
!299 = !{ptr @gr_modestring, !300, !"gr_modestring", i1 false, i1 false}
!300 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 68, i32 27}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1619, i32 2}
!303 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @gr_ep_disable.__UNIQUE_ID_ddebug268, !302, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!305 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1681, i32 23}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1814, i32 2}
!309 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @gr_fifo_flush.__UNIQUE_ID_ddebug269, !308, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1645, i32 2}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 209, i32 21}
!315 = !{ptr @gr_dfs_fops, !316, !"gr_dfs_fops", i1 false, i1 false}
!316 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 205, i32 1}
!317 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 189, i32 18}
!319 = !{ptr @.str.158, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 191, i32 18}
!321 = !{ptr @.str.159, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 193, i32 18}
!323 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 194, i32 18}
!325 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 195, i32 18}
!327 = !{ptr @.str.162, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 196, i32 18}
!329 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 197, i32 18}
!331 = !{ptr @.str.164, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 198, i32 16}
!333 = !{ptr @.str.165, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 132, i32 18}
!335 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 133, i32 18}
!337 = !{ptr @.str.167, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 134, i32 18}
!339 = !{ptr @.str.168, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 135, i32 18}
!341 = !{ptr @.str.169, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 136, i32 18}
!343 = !{ptr @.str.170, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 137, i32 18}
!345 = !{ptr @.str.171, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 138, i32 18}
!347 = !{ptr @.str.172, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 139, i32 18}
!349 = !{ptr @.str.173, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 140, i32 18}
!351 = !{ptr @.str.174, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 141, i32 18}
!353 = !{ptr @.str.175, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 142, i32 18}
!355 = !{ptr @.str.176, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 143, i32 18}
!357 = !{ptr @.str.177, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 145, i32 19}
!359 = !{ptr @.str.178, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 148, i32 18}
!361 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 149, i32 30}
!363 = !{ptr @.str.180, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 149, i32 40}
!365 = !{ptr @.str.181, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 150, i32 30}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 150, i32 36}
!369 = !{ptr @.str.183, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 152, i32 18}
!371 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 158, i32 17}
!373 = !{ptr @.str.185, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 162, i32 16}
!375 = !{ptr @.str.186, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 167, i32 19}
!377 = !{ptr @.str.187, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 174, i32 20}
!379 = !{ptr @.str.188, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1437, i32 5}
!381 = !{ptr @.str.189, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @gr_irq_handler._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @gr_irq_handler._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.190, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1325, i32 3}
!386 = !{ptr @.str.191, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug261, !385, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!388 = !{ptr @.str.192, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1332, i32 3}
!390 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug262, !389, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!391 = !{ptr @.str.193, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1339, i32 3}
!393 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug263, !392, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!394 = !{ptr @.str.194, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1348, i32 3}
!396 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug264, !395, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!397 = !{ptr @.str.195, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1356, i32 3}
!399 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug265, !398, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!400 = !{ptr @.str.196, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 1374, i32 3}
!402 = !{ptr @gr_handle_state_changes.__UNIQUE_ID_ddebug266, !401, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!403 = !{ptr @gr_match, !404, !"gr_match", i1 false, i1 false}
!404 = !{!"../drivers/usb/gadget/udc/gr_udc.c", i32 2238, i32 34}
!405 = !{i32 1, !"wchar_size", i32 2}
!406 = !{i32 1, !"min_enum_size", i32 4}
!407 = !{i32 8, !"branch-target-enforcement", i32 0}
!408 = !{i32 8, !"sign-return-address", i32 0}
!409 = !{i32 8, !"sign-return-address-all", i32 0}
!410 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!411 = !{i32 7, !"uwtable", i32 1}
!412 = !{i32 7, !"frame-pointer", i32 2}
!413 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!414 = !{i64 5075877}
!415 = !{i64 2154772347}
!416 = !{!"branch_weights", i32 2000, i32 1}
!417 = !{!"auto-init"}
!418 = !{i64 2154661403}
!419 = !{i64 2154661816}
!420 = !{i64 5075459}
!421 = !{i64 2148746142, i64 2148746147, i64 2148746160, i64 2148746204, i64 2148746238, i64 2148746259}
!422 = !{i64 2154770146}
!423 = !{i64 2154770688}
!424 = !{i64 2154771119}
!425 = !{i64 2154771520}
!426 = !{i64 2154653282}
!427 = !{i64 2154653492}
!428 = !{i64 2154760166}
!429 = !{i64 2154762544}
!430 = !{i64 2154762792}
!431 = !{i64 2154764360}
!432 = !{i64 2154764835}
!433 = !{i64 2154683914}
!434 = !{i64 2154684347}
!435 = !{i64 2154684783}
!436 = !{i64 2154683698}
!437 = !{i64 2154623684}
!438 = !{i64 2154624131}
!439 = !{i64 2154642897}
!440 = !{i64 2154643360}
!441 = !{i64 2154643826}
!442 = !{i64 2154644289}
!443 = !{!"branch_weights", i32 1, i32 2000}
!444 = !{i64 2154664582}
!445 = !{i64 2154649381}
!446 = !{i64 2154658202}
!447 = !{i64 2154658593}
!448 = !{i64 2154619139, i64 2154619635, i64 2154619176, i64 2154619232, i64 2154619266, i64 2154619290, i64 2154619331, i64 2154619352, i64 2154619380, i64 2154619414}
!449 = !{i64 2154620543}
!450 = !{i64 2154620876}
!451 = !{i64 2154621305}
!452 = !{i64 2154621752}
!453 = !{i64 2154642097}
!454 = !{i64 2154642452}
!455 = !{i64 2154718909}
!456 = !{i64 2154730238}
!457 = !{i64 2154730874}
!458 = !{i64 2154754280}
!459 = !{i64 2154758194}
!460 = !{i64 2154758579}
!461 = !{i64 2154606983}
!462 = !{i64 2154607330}
!463 = !{i64 2154602468}
!464 = !{i64 2154602812}
!465 = !{i64 2154689971}
!466 = !{i64 2154715725}
!467 = !{i64 2154695270}
!468 = !{i64 2154695723}
!469 = !{i64 2154696171}
!470 = !{i64 2154704113}
