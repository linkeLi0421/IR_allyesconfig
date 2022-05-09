; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/pxa27x_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/pxa27x_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.udc_stats = type { i32, i32, i32, i32 }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.stats = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa2xx_udc_mach_info = type { ptr, ptr, i8, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pxa_udc = type { ptr, i32, ptr, %struct.usb_gadget, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x %struct.udc_usb_ep], [15 x %struct.pxa_ep], i16, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.udc_usb_ep = type { %struct.usb_ep, %struct.usb_endpoint_descriptor, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.pxa_ep = type { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i16, i32, i32, i32, i32, %struct.stats }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.pxa27x_request = type { %struct.usb_request, ptr, i8, %struct.list_head }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%union.anon.85 = type { [2 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_alias325 = internal constant [37 x i8] c"pxa27x_udc.alias=platform:pxa27x-udc\00", section ".modinfo", align 1
@__initcall__kmod_pxa27x_udc__326_2557_udc_driver_init6 = internal global ptr @udc_driver_init, section ".initcall6.init", align 4
@udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa_udc_probe, ptr @pxa_udc_remove, ptr @pxa_udc_shutdown, ptr @pxa_udc_suspend, ptr @pxa_udc_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @udc_pxa_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udc_driver_exit = internal global ptr @udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description327 = internal constant [60 x i8] c"pxa27x_udc.description=PXA 27x USB Device Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [33 x i8] c"pxa27x_udc.author=Robert Jarzmik\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [50 x i8] c"pxa27x_udc.file=drivers/usb/gadget/udc/pxa27x_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [23 x i8] c"pxa27x_udc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa27x-udc\00", [21 x i8] zeroinitializer }, align 32
@udc_pxa_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa270-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB D+ pullup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@pxa_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2395, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't find or request D+ gpio : %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_udc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/udc/pxa27x_udc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_udc_probe._entry_ptr = internal global ptr @pxa_udc_probe._entry, section ".printk_index", align 4
@driver_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa27x_udc\00", [21 x i8] zeroinitializer }, align 32
@pxa_udc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2420, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: can't get irq %i, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pxa_udc_probe._entry_ptr.10 = internal global ptr @pxa_udc_probe._entry.8, section ".printk_index", align 4
@pxa27x_udc_phy = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @pxa_udc_phy_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pxa_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @pxa_udc_get_frame, ptr @pxa_udc_wakeup, ptr null, ptr @pxa_udc_vbus_session, ptr @pxa_udc_vbus_draw, ptr @pxa_udc_pullup, ptr null, ptr null, ptr @pxa27x_udc_start, ptr @pxa27x_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@pxa_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @pxa_ep_enable, ptr @pxa_ep_disable, ptr null, ptr @pxa_ep_alloc_request, ptr @pxa_ep_free_request, ptr @pxa_ep_queue, ptr @pxa_ep_dequeue, ptr @pxa_ep_set_halt, ptr null, ptr @pxa_ep_fifo_status, ptr @pxa_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep1out-bulk\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep2in-bulk\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep3in-iso\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep4out-iso\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep5in-int\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep3\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep5\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep6\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep7\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep8\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep9\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep10\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep11\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep12\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep13\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep14\00", [27 x i8] zeroinitializer }, align 32
@memory = internal global { { ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, [752 x i8] } { { ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 } { ptr null, i32 0, ptr null, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 } { %struct.work_struct zeroinitializer, ptr null, ptr @pxa_udc_ops, ptr getelementptr (i8, ptr @memory, i64 1104), %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @driver_name, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, i32 0 }, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, %struct.udc_stats zeroinitializer, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }] [{ { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.12, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 -116, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 0, i8 0, i16 16, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.13, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 36, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 1, i8 2, i16 64, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.14, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 40, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 -126, i8 2, i16 64, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.15, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 72, [3 x i8] undef }, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 -125, i8 1, i16 256, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.16, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 68, [3 x i8] undef }, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 4, i8 1, i16 256, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.17, ptr @pxa_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 24, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 -123, i8 3, i16 16, i8 0, i8 0, i8 0 }>, ptr @memory, ptr null }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }] [{ ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 0, ptr @.str.12, i8 0, i8 0, i32 16, i32 0, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 2, ptr @.str.18, i8 14, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 4, ptr @.str.19, i8 -106, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 6, ptr @.str.20, i8 10, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 8, ptr @.str.21, i8 -110, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 10, ptr @.str.22, i8 -102, i8 0, i32 256, i32 1, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 12, ptr @.str.23, i8 34, i8 0, i32 256, i32 1, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 14, ptr @.str.24, i8 -86, i8 0, i32 16, i32 3, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 16, ptr @.str.25, i8 12, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 18, ptr @.str.26, i8 -108, i8 0, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 20, ptr @.str.27, i8 -84, i8 0, i32 16, i32 3, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 22, ptr @.str.28, i8 12, i8 64, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 24, ptr @.str.29, i8 -108, i8 64, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 26, ptr @.str.30, i8 10, i8 72, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }, { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats } { ptr @memory, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i8 28, ptr @.str.31, i8 -110, i8 72, i32 64, i32 2, i32 0, i32 0, %struct.stats zeroinitializer }], i8 0, i8 0, i32 0 }, [752 x i8] zeroinitializer }, align 32
@ep0_state_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@set_ep0state.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa27x_udc\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_ep0state\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%s: state=%s->%s, udccsr0=0x%03x, udcbcr=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WAIT_FOR_SETUP\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SETUP_STAGE\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN_DATA_STAGE\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OUT_DATA_STAGE\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN_STATUS_STAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OUT_STATUS_STAGE\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STALL\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WAIT_ACK_SET_CONF_INTERF\00", [39 x i8] zeroinitializer }, align 32
@pxa27x_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1758, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't bind to transceiver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxa27x_udc_start\00", [47 x i8] zeroinitializer }, align 32
@pxa27x_udc_start._entry_ptr = internal global ptr @pxa27x_udc_start._entry, section ".printk_index", align 4
@pxa_ep_disable.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 1, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa_ep_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:%s: disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@req_done.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.48, ptr @.str.5, ptr @.str.49, i8 0, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"req_done\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%s: complete req %p stat %d len %u/%u\0A\00", [54 x i8] zeroinitializer }, align 32
@ep_del_request.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 -96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep_del_request\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%s: req:%p, lg=%d, udccsr=0x%03x\0A\00", [59 x i8] zeroinitializer }, align 32
@pxa_ep_fifo_flush.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 1, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_ep_fifo_flush\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%s: called while queue list not empty\0A\00", [54 x i8] zeroinitializer }, align 32
@pxa_ep_fifo_flush.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.52, ptr @.str.5, ptr @.str.54, i8 1, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:%s: called\0A\00", [17 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 1328, ptr @.str.57, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%s:usb_ep %s already enabled, doing nothing\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_ep_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry_ptr = internal global ptr @pxa_ep_enable._entry, section ".printk_index", align 4
@pxa_ep_enable._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.5, i32 1336, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to match pxa_ep for ep %s\0A\00", [62 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry_ptr.60 = internal global ptr @pxa_ep_enable._entry.58, section ".printk_index", align 4
@pxa_ep_enable._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.5, i32 1342, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:%s: type mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry_ptr.63 = internal global ptr @pxa_ep_enable._entry.61, section ".printk_index", align 4
@pxa_ep_enable._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.56, ptr @.str.5, i32 1347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:%s: bad maxpacket\0A\00", [42 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry_ptr.66 = internal global ptr @pxa_ep_enable._entry.64, section ".printk_index", align 4
@pxa_ep_enable._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.56, ptr @.str.5, i32 1355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%s: bogus device state\0A\00", [37 x i8] zeroinitializer }, align 32
@pxa_ep_enable._entry_ptr.69 = internal global ptr @pxa_ep_enable._entry.67, section ".printk_index", align 4
@pxa_ep_enable.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.56, ptr @.str.5, ptr @.str.70, i8 1, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%s: enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pxa_ep_queue.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.71, ptr @.str.5, ptr @.str.68, i8 1, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa_ep_queue\00", [19 x i8] zeroinitializer }, align 32
@pxa_ep_queue.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 1, i8 16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%s: queue req %p(first=%s), len %d buf %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@pxa_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.5, i32 1097, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%s: refusing to queue req %p (already queued)\0A\00", [46 x i8] zeroinitializer }, align 32
@pxa_ep_queue._entry_ptr = internal global ptr @pxa_ep_queue._entry, section ".printk_index", align 4
@pxa_ep_queue._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.5, i32 1116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%s: got a request of %d bytes whilein state WAIT_ACK_SET_CONF_INTERF\0A\00", [55 x i8] zeroinitializer }, align 32
@pxa_ep_queue._entry_ptr.78 = internal global ptr @pxa_ep_queue._entry.76, section ".printk_index", align 4
@pxa_ep_queue._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.71, ptr @.str.5, i32 1134, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%s: odd state %s to send me a request\0A\00", [54 x i8] zeroinitializer }, align 32
@pxa_ep_queue._entry_ptr.81 = internal global ptr @pxa_ep_queue._entry.79, section ".printk_index", align 4
@ep_add_request.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.82, ptr @.str.5, ptr @.str.51, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep_add_request\00", [17 x i8] zeroinitializer }, align 32
@write_ep0_fifo.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.83, ptr @.str.5, ptr @.str.84, i8 1, i8 0, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_ep0_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%s: in %d bytes%s%s, %d left, req=%p, udccsr0=0x%03x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/S\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/L\00", [29 x i8] zeroinitializer }, align 32
@write_packet.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 0, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_packet\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%s: length=%d+%d, udccsr=0x%03x\0A\00", [60 x i8] zeroinitializer }, align 32
@read_ep0_fifo.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.90, ptr @.str.5, ptr @.str.91, i8 0, i8 -11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_ep0_fifo\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%s: read udccsr:%03x, count:%d bytes%s req %p %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@handle_ep.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.92, ptr @.str.5, ptr @.str.93, i8 1, i8 -2, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"handle_ep\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%s: req:%p, udccsr 0x%03x loop=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@write_fifo.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 0, i8 -28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_fifo\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%s: Clearing Transmit Complete, udccsr=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@write_fifo.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.94, ptr @.str.5, ptr @.str.96, i8 0, i8 -26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%s: Clearing Underrun on, udccsr=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@write_fifo.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.94, ptr @.str.5, ptr @.str.97, i8 0, i8 -18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%s: wrote count:%d bytes%s%s, left:%d req=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@read_fifo.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.98, ptr @.str.5, ptr @.str.91, i8 0, i8 -36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_fifo\00", [22 x i8] zeroinitializer }, align 32
@pxa_ep_set_halt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 1, i8 48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxa_ep_set_halt\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%s: only host can clear halt\0A\00", [63 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@udc_init_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@pxa_udc_irq.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 2, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa_udc_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Interrupt, UDCISR0:0x%08x, UDCISR1:0x%08x, UDCCR:0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa27x_change_configuration.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.104, ptr @.str.5, ptr @.str.105, i8 2, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pxa27x_change_configuration\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@pxa27x_change_interface.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.106, ptr @.str.5, ptr @.str.107, i8 2, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa27x_change_interface\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"interface=%d, alternate setting=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@irq_udc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 2241, ptr @.str.110, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"USB reset\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq_udc_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@irq_udc_reset._entry_ptr = internal global ptr @irq_udc_reset._entry, section ".printk_index", align 4
@irq_udc_reset.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.109, ptr @.str.5, ptr @.str.111, i8 2, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB reset start\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_ep0.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.112, ptr @.str.5, ptr @.str.113, i8 1, i8 -27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_ep0\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%s: state=%s, req=%p, udccsr0=0x%03x, udcbcr=%d, irq_msk=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@handle_ep0.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.112, ptr @.str.5, ptr @.str.114, i8 1, i8 -26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%s: clearing stall status\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_ep0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.112, ptr @.str.5, i32 2000, ptr @.str.57, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%s:should never get in %s state here!!!\0A\00", [52 x i8] zeroinitializer }, align 32
@handle_ep0._entry_ptr = internal global ptr @handle_ep0._entry, section ".printk_index", align 4
@handle_ep0_ctrl_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 1848, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%s: wrong to have extra bytes for setup : 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_ep0_ctrl_req\00", [44 x i8] zeroinitializer }, align 32
@handle_ep0_ctrl_req._entry_ptr = internal global ptr @handle_ep0_ctrl_req._entry, section ".printk_index", align 4
@handle_ep0_ctrl_req.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.117, ptr @.str.5, ptr @.str.118, i8 1, i8 -49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%s: SETUP %02x.%02x v%04x i%04x l%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@handle_ep0_ctrl_req.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.117, ptr @.str.5, ptr @.str.119, i8 1, i8 -43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%s: protocol STALL, udccsr0=%03x err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udcstate\00", [23 x i8] zeroinitializer }, align 32
@state_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @state_dbg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@queues_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @queues_dbg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epstate\00", [24 x i8] zeroinitializer }, align 32
@eps_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @eps_dbg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"PXA 27x USB Device Controller driver\0A%s version: %s\0AGadget driver: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2008-04-18\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"udccr=0x%0x(%s%s%s%s%s%s%s%s%s%s), con=%d,inter=%d,altinter=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" oen\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" aalthnp\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" rem\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" rstir\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" dwre\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" smac\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" emce\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" udr\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" uda\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ude\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"udcicr0=0x%08x udcicr1=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"udcisr0=0x%08x udcisr1=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udcfnr=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"irqs: reset=%lu, suspend=%lu, resume=%lu, reconfig=%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%-12s max_pkt=%d %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09(nothing queued)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09req %p len %d/%d buf %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"udccsr0=0x%03x(%s%s%s%s%s%s%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" sa\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" rne\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" fst\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" sst\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" dme\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ipr\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" opc\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%-12s: IN %lu(%lu reqs), OUT %lu(%lu reqs), irqs=%lu, udccr=0x%08x, udccsr=0x%03x, udcbcr=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@udc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.5, i32 1712, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Configuration errors, udc disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udc_enable\00", [21 x i8] zeroinitializer }, align 32
@udc_enable._entry_ptr = internal global ptr @udc_enable._entry, section ".printk_index", align 4
@pxa_eps_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.156, ptr @.str.5, ptr @.str.157, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_eps_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: dev=%p\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.159 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"udc_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2543, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2545, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"udc_pxa_dt_ids\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2339, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2366, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2386, i32 42 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2394, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 76, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2419, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"pxa27x_udc_phy\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1606, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant [12 x i8] c"pxa_udc_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1614, i32 36 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2297, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2302, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"pxa_ep_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1399, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2303, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2304, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2305, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2306, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2307, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2313, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2314, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2316, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2317, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2318, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2319, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2320, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2322, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2323, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2324, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2330, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2331, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2333, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2334, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2291, i32 23 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"ep0_state_name\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 399, i32 14 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 482, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 400, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 400, i32 20 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 400, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 400, i32 52 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 401, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 401, i32 21 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 401, i32 41 }
@___asan_gen_.312 = private unnamed_addr constant [39 x i8] c"../drivers/usb/gadget/udc/pxa27x_udc.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 402, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1758, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1395, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 672, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 640, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1287, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1288, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1327, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1334, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1342, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1347, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1355, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1364, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1071, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1086, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1097, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1114, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1133, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 617, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1023, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 849, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 980, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2039, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 914, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 919, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 952, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 878, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1218, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1674, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2272, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2081, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2111, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2241, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 2246, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1941, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1946, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1999, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1848, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1851, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1875, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 211, i32 22 }
@___asan_gen_.548 = private unnamed_addr constant [15 x i8] c"state_dbg_fops\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 134, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 212, i32 22 }
@___asan_gen_.554 = private unnamed_addr constant [16 x i8] c"queues_dbg_fops\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 167, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 213, i32 22 }
@___asan_gen_.560 = private unnamed_addr constant [13 x i8] c"eps_dbg_fops\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 204, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 99, i32 16 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 102, i32 19 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 107, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 109, i32 26 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 110, i32 30 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 111, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 112, i32 27 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 113, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 114, i32 27 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 115, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 116, i32 26 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 117, i32 26 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 118, i32 26 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 123, i32 16 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 125, i32 16 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 127, i32 16 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 128, i32 16 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 150, i32 18 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 151, i32 27 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 154, i32 16 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 159, i32 19 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 181, i32 16 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 183, i32 27 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 184, i32 28 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 185, i32 28 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 186, i32 28 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 187, i32 28 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 188, i32 28 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 189, i32 28 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 193, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1712, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.666 = private constant [39 x i8] c"../drivers/usb/gadget/udc/pxa27x_udc.c\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 556, i32 2 }
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_udc_driver_exit, ptr @__initcall__kmod_pxa27x_udc__326_2557_udc_driver_init6, ptr @handle_ep0._entry, ptr @handle_ep0._entry_ptr, ptr @handle_ep0_ctrl_req._entry, ptr @handle_ep0_ctrl_req._entry_ptr, ptr @irq_udc_reset._entry, ptr @irq_udc_reset._entry_ptr, ptr @pxa27x_udc_start._entry, ptr @pxa27x_udc_start._entry_ptr, ptr @pxa_ep_enable._entry, ptr @pxa_ep_enable._entry.58, ptr @pxa_ep_enable._entry.61, ptr @pxa_ep_enable._entry.64, ptr @pxa_ep_enable._entry.67, ptr @pxa_ep_enable._entry_ptr, ptr @pxa_ep_enable._entry_ptr.60, ptr @pxa_ep_enable._entry_ptr.63, ptr @pxa_ep_enable._entry_ptr.66, ptr @pxa_ep_enable._entry_ptr.69, ptr @pxa_ep_queue._entry, ptr @pxa_ep_queue._entry.76, ptr @pxa_ep_queue._entry.79, ptr @pxa_ep_queue._entry_ptr, ptr @pxa_ep_queue._entry_ptr.78, ptr @pxa_ep_queue._entry_ptr.81, ptr @pxa_udc_probe._entry, ptr @pxa_udc_probe._entry.8, ptr @pxa_udc_probe._entry_ptr, ptr @pxa_udc_probe._entry_ptr.10, ptr @udc_driver_exit, ptr @udc_enable._entry, ptr @udc_enable._entry_ptr, ptr @udc_driver, ptr @.str, ptr @udc_pxa_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @driver_name, ptr @.str.9, ptr @pxa27x_udc_phy, ptr @pxa_udc_ops, ptr @.str.11, ptr @.str.12, ptr @pxa_ep_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @memory, ptr @ep0_state_name, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @udc_init_data.__key, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @state_dbg_fops, ptr @.str.121, ptr @queues_dbg_fops, ptr @.str.122, ptr @eps_dbg_fops, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_pxa_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_udc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_udc_phy to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memory to i32), i32 3056, i32 3808, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_state_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_enable._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_enable._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_enable._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_enable._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_queue._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ep_queue._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_init_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_udc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ep0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ep0_ctrl_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queues_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eps_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @udc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @udc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %gpio_pullup = getelementptr inbounds %struct.pxa2xx_udc_mach_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_pullup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then4, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.then
  %gpio_pullup_inverted = getelementptr inbounds %struct.pxa2xx_udc_mach_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_pullup_inverted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpio_pullup_inverted, align 4, !range !357
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool2.not, i32 0, i32 4
  %call6 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %3, i32 noundef %cond, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %gpio_pullup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_pullup, align 4
  %call10 = tail call ptr @gpio_to_desc(i32 noundef %8) #9
  store ptr %call10, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 7), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then.if.end11_crit_edge
  %udc_command = getelementptr inbounds %struct.pxa2xx_udc_mach_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %udc_command to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udc_command, align 4
  store ptr %10, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 6), align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef null, i32 noundef 0) #9
  store ptr %call14, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 7), align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end11
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  store ptr %call17, ptr @memory, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  store i32 %call24, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  store ptr %dev, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %12 = load ptr, ptr @of_root, align 4
  %cmp.i171.not = icmp eq ptr %12, null
  br i1 %cmp.i171.not, label %if.else41, label %if.then32

if.then32:                                        ; preds = %if.end28
  %call34 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.2, i8 noundef zeroext 0) #9
  store ptr %call34, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 8), align 8
  %cmp.i172 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then37, label %if.then32.if.end44_crit_edge

if.then32.if.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.else41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call ptr @usb_get_phy(i32 noundef 1) #9
  store ptr %call42, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 8), align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then32.if.end44_crit_edge
  %14 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 7), align 4
  %cmp.i173 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end, label %if.end53

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %15) #12
  %16 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 7), align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  %tobool55.not = icmp eq ptr %14, null
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %14, i32 noundef 0) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  store ptr %call61, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 2), align 8
  %cmp.i174 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  %call69 = tail call i32 @clk_prepare(ptr noundef %call61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %bf.load = load i16, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 13), align 8
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 13), align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @memory, ptr %driver_data.i.i, align 4
  tail call fastcc void @udc_init_data()
  %20 = load i32, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 1), align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @pxa_udc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull @memory) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp76.not = icmp eq i32 %call.i, 0
  br i1 %cmp76.not, label %if.end83, label %do.end80

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %21 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 5), align 4
  %22 = load i32, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @driver_name, i32 noundef %22, i32 noundef %call.i) #12
  br label %err

if.end83:                                         ; preds = %if.end72
  %23 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 8), align 8
  %tobool.not.i = icmp eq ptr %23, null
  %cmp.i175 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i175
  br i1 %spec.select.i, label %if.end83.if.end89_crit_edge, label %if.then86

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %23, i32 0, i32 18
  %call.i176 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef nonnull @pxa27x_udc_phy) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83.if.end89_crit_edge
  %call91 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 0, i32 0, i32 0)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %err_add_gadget

if.end94:                                         ; preds = %if.end89
  tail call fastcc void @pxa_init_debugfs()
  %call95 = tail call fastcc i32 @should_enable_udc(ptr noundef nonnull @memory)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end94.cleanup_crit_edge, label %if.then97

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_enable(ptr noundef nonnull @memory)
  br label %cleanup

err_add_gadget:                                   ; preds = %if.end89
  %24 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 8), align 8
  %tobool.not.i177 = icmp eq ptr %24, null
  %cmp.i178 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i179 = or i1 %tobool.not.i177, %cmp.i178
  br i1 %spec.select.i179, label %err_add_gadget.err_crit_edge, label %if.then101

err_add_gadget.err_crit_edge:                     ; preds = %err_add_gadget
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then101:                                       ; preds = %err_add_gadget
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i180 = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 18
  %call.i181 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i180, ptr noundef nonnull @pxa27x_udc_phy) #9
  br label %err

err:                                              ; preds = %if.then101, %err_add_gadget.err_crit_edge, %do.end80
  %retval1.0 = phi i32 [ %call.i, %do.end80 ], [ %call91, %err_add_gadget.err_crit_edge ], [ %call91, %if.then101 ]
  %25 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 2), align 8
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then97, %if.end94.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then64, %do.end, %if.then37, %if.end23.cleanup_crit_edge, %if.then20, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then20 ], [ %13, %if.then37 ], [ %17, %do.end ], [ %18, %if.then64 ], [ %retval1.0, %err ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_remove(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 3
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #9
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %4 = load ptr, ptr @usb_debug_root, align 4
  %call.i = tail call ptr @debugfs_lookup(ptr noundef %3, ptr noundef %4) #9
  tail call void @debugfs_remove(ptr noundef %call.i) #9
  %transceiver = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transceiver, align 8
  %tobool.not.i = icmp eq ptr %6, null
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 18
  %call.i11 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef nonnull @pxa27x_udc_phy) #9
  %7 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transceiver, align 8
  tail call void @usb_put_phy(ptr noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %transceiver, align 8
  %clk = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_udc_shutdown(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !358
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_suspend(ptr nocapture noundef readonly %_dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxa_ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %idx = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %idx, align 4
  %7 = shl i8 %bf.load, 1
  %8 = and i8 %7, 124
  %shl = zext i8 %8 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %udccsr0 = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %udccsr0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %udccsr0, align 4
  tail call fastcc void @udc_disable(ptr noundef %1)
  %pullup_on = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %pullup_on to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load2 = load i16, ptr %pullup_on, align 8
  %12 = lshr i16 %bf.load2, 1
  %bf.shl = and i16 %12, 8192
  %bf.clear7 = and i16 %bf.load2, -8193
  %bf.set = or i16 %bf.shl, %bf.clear7
  store i16 %bf.set, ptr %pullup_on, align 8
  %gpiod.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 0) #9
  br label %dplus_pullup.exit

if.else.i:                                        ; preds = %entry
  %udc_command.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %udc_command.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udc_command.i, align 8
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.else.i.dplus_pullup.exit_crit_edge, label %if.then3.i

if.else.i.dplus_pullup.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dplus_pullup.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(i32 noundef 1) #9
  br label %dplus_pullup.exit

dplus_pullup.exit:                                ; preds = %if.then3.i, %if.else.i.dplus_pullup.exit_crit_edge, %if.then.i
  %17 = ptrtoint ptr %pullup_on to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %pullup_on, align 8
  %bf.clear.i = and i16 %bf.load.i, -16385
  store i16 %bf.clear.i, ptr %pullup_on, align 8
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %dplus_pullup.exit.if.end_crit_edge, label %if.then

dplus_pullup.exit.if.end_crit_edge:               ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disconnect, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 3
  tail call void %21(ptr noundef %gadget) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %dplus_pullup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_resume(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12
  %udccsr0 = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %udccsr0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %udccsr0, align 4
  %and = and i32 %3, 40
  %4 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxa_ep, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %idx = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 3
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %idx, align 4
  %9 = shl i8 %bf.load, 1
  %10 = and i8 %9, 124
  %shl = zext i8 %10 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #9, !srcloc !359
  %pullup_resume = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %pullup_resume to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load1 = load i16, ptr %pullup_resume, align 8
  %bf.lshr2 = lshr i16 %bf.load1, 13
  %bf.clear3 = and i16 %bf.lshr2, 1
  %gpiod.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.cast4 = zext i16 %bf.clear3 to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef %bf.cast4) #9
  br label %dplus_pullup.exit

if.else.i:                                        ; preds = %entry
  %udc_command.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %udc_command.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udc_command.i, align 8
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.else.i.dplus_pullup.exit_crit_edge, label %if.then3.i

if.else.i.dplus_pullup.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dplus_pullup.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear3)
  %tobool4.not.i = icmp eq i16 %bf.clear3, 0
  br i1 %tobool4.not.i, label %dplus_pullup.exit.thread, label %dplus_pullup.exit.thread21

dplus_pullup.exit.thread21:                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %15(i32 noundef 0) #9
  %16 = ptrtoint ptr %pullup_resume to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i22 = load i16, ptr %pullup_resume, align 8
  %bf.value.i23 = shl nuw nsw i16 %bf.clear3, 14
  %bf.clear.i24 = and i16 %bf.load.i22, -16385
  %bf.set.i25 = or i16 %bf.clear.i24, %bf.value.i23
  store i16 %bf.set.i25, ptr %pullup_resume, align 8
  br label %land.rhs.i

dplus_pullup.exit.thread:                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %15(i32 noundef 1) #9
  %17 = ptrtoint ptr %pullup_resume to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i15 = load i16, ptr %pullup_resume, align 8
  %bf.value.i16 = shl nuw nsw i16 %bf.clear3, 14
  %bf.clear.i17 = and i16 %bf.load.i15, -16385
  %bf.set.i18 = or i16 %bf.clear.i17, %bf.value.i16
  store i16 %bf.set.i18, ptr %pullup_resume, align 8
  br label %land.end.i

dplus_pullup.exit:                                ; preds = %if.else.i.dplus_pullup.exit_crit_edge, %if.then.i
  %18 = ptrtoint ptr %pullup_resume to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %pullup_resume, align 8
  %bf.value.i = shl nuw nsw i16 %bf.clear3, 14
  %bf.clear.i = and i16 %bf.load.i, -16385
  %bf.set.i = or i16 %bf.clear.i, %bf.value.i
  store i16 %bf.set.i, ptr %pullup_resume, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear3)
  %tobool.not.i14 = icmp eq i16 %bf.clear3, 0
  br i1 %tobool.not.i14, label %dplus_pullup.exit.land.end.i_crit_edge, label %dplus_pullup.exit.land.rhs.i_crit_edge

dplus_pullup.exit.land.rhs.i_crit_edge:           ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

dplus_pullup.exit.land.end.i_crit_edge:           ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %dplus_pullup.exit.land.rhs.i_crit_edge, %dplus_pullup.exit.thread21
  %bf.load.i27 = phi i16 [ %bf.load.i22, %dplus_pullup.exit.thread21 ], [ %bf.load.i, %dplus_pullup.exit.land.rhs.i_crit_edge ]
  %driver.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i, align 8
  %tobool1.i = icmp ne ptr %20, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %dplus_pullup.exit.land.end.i_crit_edge, %dplus_pullup.exit.thread
  %bf.load.i20 = phi i16 [ %bf.load.i, %dplus_pullup.exit.land.end.i_crit_edge ], [ %bf.load.i27, %land.rhs.i ], [ %bf.load.i15, %dplus_pullup.exit.thread ]
  %21 = phi i32 [ 0, %dplus_pullup.exit.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ], [ 0, %dplus_pullup.exit.thread ]
  %22 = and i16 %bf.load.i20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool6.not.i = icmp eq i16 %22, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %land.end.i.should_enable_udc.exit_crit_edge

land.end.i.should_enable_udc.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_enable_udc.exit

lor.rhs.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %transceiver.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transceiver.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  %cmp.i.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %phi.cast11.i = zext i1 %spec.select.i.i to i32
  br label %should_enable_udc.exit

should_enable_udc.exit:                           ; preds = %lor.rhs.i, %land.end.i.should_enable_udc.exit_crit_edge
  %25 = phi i32 [ 1, %land.end.i.should_enable_udc.exit_crit_edge ], [ %phi.cast11.i, %lor.rhs.i ]
  %and.i = and i32 %25, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %should_enable_udc.exit.do.end_crit_edge, label %if.then

should_enable_udc.exit.do.end_crit_edge:          ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_enable(ptr noundef %1)
  br label %do.end

do.end:                                           ; preds = %if.then, %should_enable_udc.exit.do.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_init_data() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), align 8
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %0 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 3), align 4
  %ep_list2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %ep_list2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ep_list2, ptr %ep_list2, align 4
  %prev.i = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep_list2, ptr %prev.i, align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 0, i32 3), align 4
  %bf.load = load i32, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 17), align 4
  %bf.set = or i32 %bf.load, 4194304
  store i32 %bf.set, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 17), align 4
  %3 = load i32, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 9), align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 9), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_init_data, %for.body)) #9
          to label %if.then.i.i [label %for.body], !srcloc !360

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), align 8
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6.i.i, align 4
  %9 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 4), align 4
  %10 = load i32, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 9), align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8.i.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 8
  %bf.load.i.i = load i8, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 3), align 8
  %15 = shl i8 %bf.load.i.i, 1
  %16 = and i8 %15, 124
  %shl.i.i = zext i8 %16 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %18 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %bf.load14.i.i = load i8, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 3), align 8
  %21 = shl i8 %bf.load14.i.i, 1
  %22 = and i8 %21, 124
  %shl18.i.i = zext i8 %22 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %20, i32 %add19.i.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %8, ptr noundef nonnull @.str.35, ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef %5, ptr noundef %12, i32 noundef %17, i32 noundef %23) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.i.i, %entry
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then.i.i ]
  %idx = getelementptr [15 x %struct.pxa_ep], ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), i32 0, i32 %i.02, i32 3
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load8 = load i8, ptr %idx, align 8
  %25 = and i8 %bf.load8, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %bf.shl = select i1 %tobool.not, i8 -128, i8 0
  %bf.clear11 = and i8 %bf.load8, 127
  %bf.set12 = or i8 %bf.shl, %bf.clear11
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set12, ptr %idx, align 8
  %queue = getelementptr [15 x %struct.pxa_ep], ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), i32 0, i32 %i.02, i32 1
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i1 = getelementptr [15 x %struct.pxa_ep], ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), i32 0, i32 %i.02, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue, ptr %prev.i1, align 8
  %lock = getelementptr [15 x %struct.pxa_ep], ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 12, i32 0, i32 0), i32 0, i32 %i.02, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.101, ptr noundef nonnull @udc_init_data.__key, i16 noundef signext 3) #9
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.body15.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body15.preheader:                             ; preds = %for.body
  %29 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 3), ptr noundef %29, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4)) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body15.preheader.list_add_tail.exit_crit_edge

for.body15.preheader.list_add_tail.exit_crit_edge: ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 3), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 3), align 4
  store ptr %29, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 3, i32 1), align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 3), ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body15.preheader.list_add_tail.exit_crit_edge
  %bf.load27 = load i56, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 7), align 2
  %bf.lshr28 = lshr i56 %bf.load27, 40
  %bf.cast29 = trunc i56 %bf.lshr28 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 1, i32 0, i32 0), i32 noundef %bf.cast29) #9
  %31 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 3), ptr noundef %31, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4)) #9
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail.exit.list_add_tail.exit.1_crit_edge

list_add_tail.exit.list_add_tail.exit.1_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 3), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 3), align 4
  store ptr %31, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 3, i32 1), align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 3), ptr %31, align 4
  br label %list_add_tail.exit.1

list_add_tail.exit.1:                             ; preds = %if.end.i.i.1, %list_add_tail.exit.list_add_tail.exit.1_crit_edge
  %bf.load27.1 = load i56, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 7), align 2
  %bf.lshr28.1 = lshr i56 %bf.load27.1, 40
  %bf.cast29.1 = trunc i56 %bf.lshr28.1 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 2, i32 0, i32 0), i32 noundef %bf.cast29.1) #9
  %33 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 3), ptr noundef %33, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4)) #9
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge

list_add_tail.exit.1.list_add_tail.exit.2_crit_edge: ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 3), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 3), align 4
  store ptr %33, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 3, i32 1), align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 3), ptr %33, align 4
  br label %list_add_tail.exit.2

list_add_tail.exit.2:                             ; preds = %if.end.i.i.2, %list_add_tail.exit.1.list_add_tail.exit.2_crit_edge
  %bf.load27.2 = load i56, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 7), align 2
  %bf.lshr28.2 = lshr i56 %bf.load27.2, 40
  %bf.cast29.2 = trunc i56 %bf.lshr28.2 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 3, i32 0, i32 0), i32 noundef %bf.cast29.2) #9
  %35 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 3), ptr noundef %35, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4)) #9
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge

list_add_tail.exit.2.list_add_tail.exit.3_crit_edge: ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 3), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 3), align 4
  store ptr %35, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 3, i32 1), align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 3), ptr %35, align 4
  br label %list_add_tail.exit.3

list_add_tail.exit.3:                             ; preds = %if.end.i.i.3, %list_add_tail.exit.2.list_add_tail.exit.3_crit_edge
  %bf.load27.3 = load i56, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 7), align 2
  %bf.lshr28.3 = lshr i56 %bf.load27.3, 40
  %bf.cast29.3 = trunc i56 %bf.lshr28.3 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 4, i32 0, i32 0), i32 noundef %bf.cast29.3) #9
  %37 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 3), ptr noundef %37, ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4)) #9
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge

list_add_tail.exit.3.list_add_tail.exit.4_crit_edge: ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 3), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4, i32 1), align 4
  store ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 4), ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 3), align 4
  store ptr %37, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 3, i32 1), align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 3), ptr %37, align 4
  br label %list_add_tail.exit.4

list_add_tail.exit.4:                             ; preds = %if.end.i.i.4, %list_add_tail.exit.3.list_add_tail.exit.4_crit_edge
  %bf.load27.4 = load i56, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 7), align 2
  %bf.lshr28.4 = lshr i56 %bf.load27.4, 40
  %bf.cast29.4 = trunc i56 %bf.lshr28.4 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 11, i32 5, i32 0, i32 0), i32 noundef %bf.cast29.4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_irq(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_dev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %3 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_dev, align 8
  %add.ptr2 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !358
  %6 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_dev, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !358
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_udc_irq.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_udc_irq, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pxa_udc, ptr %_dev, i32 0, i32 5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_udc_irq.__UNIQUE_ID_ddebug324, ptr noundef %10, ptr noundef nonnull @.str.103, i32 noundef %2, i32 noundef %5, i32 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and11 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end.if.end20_crit_edge, label %if.then19, !prof !361

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irq_udc_suspend(ptr noundef %_dev)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end.if.end20_crit_edge
  %and21 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end30_crit_edge, label %if.then29, !prof !361

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irq_udc_resume(ptr noundef %_dev)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end20.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool32.not = icmp sgt i32 %5, -1
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then39, !prof !361

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irq_udc_reconfig(ptr noundef %_dev)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end30.if.end40_crit_edge
  %and41 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end50_crit_edge, label %if.then49, !prof !361

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irq_udc_reset(ptr noundef %_dev)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end40.if.end50_crit_edge
  %and52 = and i32 %5, 65535
  %or = or i32 %and52, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool53.not = icmp eq i32 %or, 0
  br i1 %tobool53.not, label %if.end50.if.end55_crit_edge, label %if.then54

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  %11 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %14 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_dev, align 8
  %add.ptr2.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !358
  %and4.i = and i32 %16, 65535
  %and5.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.then54.if.end.i_crit_edge, label %if.then.i

if.then54.if.end.i_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %irqs.i = getelementptr inbounds %struct.pxa_udc, ptr %_dev, i32 0, i32 12, i32 0, i32 10, i32 4
  %17 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqs.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %irqs.i, align 4
  %19 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_dev, align 8
  %add.ptr7.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 3) #9, !srcloc !359
  %and8.i = lshr i32 %13, 1
  %and8.lobit.i = and i32 %and8.i, 1
  %and11.i = and i32 %13, 1
  tail call fastcc void @handle_ep0(ptr noundef %_dev, i32 noundef %and8.lobit.i, i32 noundef %and11.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then54.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.not5.i = icmp ugt i32 %13, 3
  br i1 %cmp.not5.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond60.preheader.i_crit_edge

if.end.i.for.cond60.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond60.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.cond60.preheader.i:                           ; preds = %for.inc.i.for.cond60.preheader.i_crit_edge, %for.inc.thread.i, %if.end.i.for.cond60.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp61.not10.not.i = icmp eq i32 %and4.i, 0
  br i1 %cmp61.not10.not.i, label %for.cond60.preheader.i.if.end55_crit_edge, label %for.cond60.preheader.i.for.body65.i_crit_edge

for.cond60.preheader.i.for.body65.i_crit_edge:    ; preds = %for.cond60.preheader.i
  br label %for.body65.i

for.cond60.preheader.i.if.end55_crit_edge:        ; preds = %for.cond60.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc59.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %udcisr0.0.in6.i = phi i32 [ %udcisr0.09.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %udcisr0.09.i = lshr i32 %udcisr0.0.in6.i, 2
  %21 = and i32 %udcisr0.0.in6.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not.i = icmp eq i32 %21, 0
  br i1 %tobool19.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end21.i:                                       ; preds = %for.body.i
  %and22.i = shl nuw nsw i32 %i.07.i, 1
  %shl.i = shl nuw i32 3, %and22.i
  %22 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_dev, align 8
  %add.ptr24.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %shl.i) #9, !srcloc !359
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.07.i)
  %cmp25.i = icmp ugt i32 %i.07.i, 14
  br i1 %cmp25.i, label %for.inc.thread.i, label %if.then51.i, !prof !362

for.inc.thread.i:                                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2155, i32 noundef 9, ptr noundef null) #9
  br label %for.cond60.preheader.i

if.then51.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53.i = getelementptr %struct.pxa_udc, ptr %_dev, i32 0, i32 12, i32 %i.07.i
  %irqs55.i = getelementptr %struct.pxa_udc, ptr %_dev, i32 0, i32 12, i32 %i.07.i, i32 10, i32 4
  %24 = ptrtoint ptr %irqs55.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqs55.i, align 4
  %inc56.i = add i32 %25, 1
  store i32 %inc56.i, ptr %irqs55.i, align 4
  tail call fastcc void @handle_ep(ptr noundef %arrayidx53.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then51.i, %for.body.i.for.inc.i_crit_edge
  %inc59.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %udcisr0.0.in6.i)
  %cmp.not.i = icmp ugt i32 %udcisr0.0.in6.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.07.i)
  %cmp17.i = icmp ult i32 %i.07.i, 15
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond60.preheader.i_crit_edge

for.inc.i.for.cond60.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond60.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body65.i:                                     ; preds = %for.inc114.i.for.body65.i_crit_edge, %for.cond60.preheader.i.for.body65.i_crit_edge
  %i.112.i = phi i32 [ %inc116.i, %for.inc114.i.for.body65.i_crit_edge ], [ 16, %for.cond60.preheader.i.for.body65.i_crit_edge ]
  %udcisr1.011.i = phi i32 [ %shr115.i, %for.inc114.i.for.body65.i_crit_edge ], [ %and4.i, %for.cond60.preheader.i.for.body65.i_crit_edge ]
  %and66.i = shl nuw nsw i32 %i.112.i, 1
  %mul67.i = and i32 %and66.i, 30
  %shl68.i = shl nuw i32 3, %mul67.i
  %26 = ptrtoint ptr %_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_dev, align 8
  %add.ptr70.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %shl68.i) #9, !srcloc !359
  %and71.i = and i32 %udcisr1.011.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %for.body65.i.for.inc114.i_crit_edge, label %if.end98.i

for.body65.i.for.inc114.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc114.i

if.end98.i:                                       ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2168, i32 noundef 9, ptr noundef null) #9
  br label %for.inc114.i

for.inc114.i:                                     ; preds = %if.end98.i, %for.body65.i.for.inc114.i_crit_edge
  %shr115.i = lshr i32 %udcisr1.011.i, 2
  %inc116.i = add nuw nsw i32 %i.112.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %udcisr1.011.i)
  %cmp61.not.i = icmp ugt i32 %udcisr1.011.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.112.i)
  %cmp63.i = icmp ult i32 %i.112.i, 23
  %or.cond1.i = select i1 %cmp61.not.i, i1 %cmp63.i, i1 false
  br i1 %or.cond1.i, label %for.inc114.i.for.body65.i_crit_edge, label %for.inc114.i.if.end55_crit_edge

for.inc114.i.if.end55_crit_edge:                  ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.inc114.i.for.body65.i_crit_edge:              ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65.i

if.end55:                                         ; preds = %for.inc114.i.if.end55_crit_edge, %for.cond60.preheader.i.if.end55_crit_edge, %if.end50.if.end55_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_init_debugfs() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ({ ptr, i32, ptr, { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, ptr, ptr, i32, %struct.udc_stats, [6 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.usb_endpoint_descriptor, ptr, ptr }], [15 x { ptr, %struct.list_head, %struct.spinlock, i8, ptr, i8, i8, i32, i32, i32, i32, %struct.stats }], i8, i8, i32 }, ptr @memory, i32 0, i32 3, i32 10), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %1 = load ptr, ptr @usb_debug_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %0, ptr noundef %1) #9
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.120, i16 noundef zeroext 256, ptr noundef %call, ptr noundef nonnull @memory, ptr noundef nonnull @state_dbg_fops) #9
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.121, i16 noundef zeroext 256, ptr noundef %call, ptr noundef nonnull @memory, ptr noundef nonnull @queues_dbg_fops) #9
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.122, i16 noundef zeroext 256, ptr noundef %call, ptr noundef nonnull @memory, ptr noundef nonnull @eps_dbg_fops) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @should_enable_udc(ptr nocapture noundef readonly %udc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pullup_on = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %0 = ptrtoint ptr %pullup_on to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pullup_on, align 8
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool1 = icmp ne ptr %3, null
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %5 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %lor.rhs, label %land.end.lor.end_crit_edge

land.end.lor.end_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 8
  %6 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transceiver, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %phi.cast11 = zext i1 %spec.select.i to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end.lor.end_crit_edge
  %8 = phi i32 [ 1, %land.end.lor.end_crit_edge ], [ %phi.cast11, %lor.rhs ]
  %and = and i32 %8, %4
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_enable(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_enable(ptr noundef %2) #9
  %3 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udc, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !359
  %5 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #9, !srcloc !359
  %7 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udc, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !358
  %and2.i = and i32 %9, -2147483628
  %10 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udc, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %and2.i) #9, !srcloc !359
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %12 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_enable, %ep0_idle.exit)) #9
          to label %if.then.i.i [label %ep0_idle.exit], !srcloc !360

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %16 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pxa_ep.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %20 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i.i, align 4
  %22 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8.i.i, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 8
  %idx.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %28 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %idx.i.i, align 4
  %29 = shl i8 %bf.load.i.i, 1
  %30 = and i8 %29, 124
  %shl.i.i = zext i8 %30 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %add.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %32 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pxa_ep.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load14.i.i = load i8, ptr %idx.i.i, align 4
  %37 = shl i8 %bf.load14.i.i, 1
  %38 = and i8 %37, 124
  %shl18.i.i = zext i8 %38 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %35, i32 %add19.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %19, ptr noundef nonnull @.str.35, ptr noundef %21, ptr noundef nonnull @.str.34, ptr noundef %15, ptr noundef %25, i32 noundef %31, i32 noundef %39) #9
  br label %ep0_idle.exit

ep0_idle.exit:                                    ; preds = %if.then.i.i, %if.end
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %speed, align 8
  %stats = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 10
  %41 = call ptr @memset(ptr %stats, i32 0, i32 16)
  tail call fastcc void @pxa_eps_setup(ptr noundef %udc)
  %42 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udc, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !358
  %and5.i = and i32 %44, -2147483628
  %or.i = or i32 %and5.i, 1
  %45 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udc, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %or.i) #9, !srcloc !359
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %47 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %48 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pxa_ep, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %52 = shl i8 %bf.load.i, 1
  %53 = and i8 %52, 124
  %shl.i = zext i8 %53 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %51, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #9, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 429496) #9
  %55 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udc, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !358
  %and = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %ep0_idle.exit.if.end8_crit_edge, label %do.end

ep0_idle.exit.if.end8_crit_edge:                  ; preds = %ep0_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %ep0_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 5
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.154) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %ep0_idle.exit.if.end8_crit_edge
  tail call void @msleep(i32 noundef 100) #9
  %60 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udc, align 8
  %add.ptr10 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1207959552) #9, !srcloc !359
  %62 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pxa_ep, align 4
  %64 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i31 = load i8, ptr %idx.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i31, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %63, align 8
  %add.ptr.i32 = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #9, !srcloc !358
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 8
  %add.ptr2.i = getelementptr i8, ptr %69, i32 8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.clear.i)
  %cmp.i = icmp ult i8 %bf.clear.i, 16
  %71 = shl nuw nsw i8 %bf.clear.i, 1
  %mul.i = zext i8 %71 to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i33 = shl i32 3, %mul.i
  %or.i34 = or i32 %shl.i33, %67
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %63, align 8
  %add.ptr5.i = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %or.i34) #9, !srcloc !359
  br label %pio_irq_enable.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %mul6.i = add nsw i32 %mul.i, -32
  %shl7.i = shl nuw i32 3, %mul6.i
  %or8.i = or i32 %shl7.i, %70
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %63, align 8
  %add.ptr10.i = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or8.i) #9, !srcloc !359
  br label %pio_irq_enable.exit

pio_irq_enable.exit:                              ; preds = %if.else.i, %if.then.i
  %76 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load14 = load i16, ptr %enabled, align 8
  %bf.set = or i16 %bf.load14, -32768
  store i16 %bf.set, ptr %enabled, align 8
  br label %return

return:                                           ; preds = %pio_irq_enable.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_get_frame(ptr nocapture noundef readonly %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_gadget, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %and = and i32 %2, 2047
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_wakeup(ptr nocapture noundef readonly %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_gadget, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !358
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !358
  %and5.i = and i32 %5, -2147483631
  %or.i = or i32 %and5.i, 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %or.i) #9, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -113, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_vbus_session(ptr noundef %_gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_gadget, i32 -16
  %vbus_sensed = getelementptr i8, ptr %_gadget, i32 3032
  %0 = trunc i32 %is_active to i16
  %1 = ptrtoint ptr %vbus_sensed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %vbus_sensed, align 8
  %bf.value = shl i16 %0, 12
  %bf.shl = and i16 %bf.value, 4096
  %bf.clear = and i16 %bf.load, -4097
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %vbus_sensed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %entry.land.end.i_crit_edge, label %land.rhs.i

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr i8, ptr %_gadget, i32 1048
  %3 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i, align 8
  %tobool1.i = icmp ne ptr %4, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %entry.land.end.i_crit_edge
  %5 = phi i32 [ 0, %entry.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl)
  %tobool6.not.i = icmp eq i16 %bf.shl, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %land.end.i.should_enable_udc.exit_crit_edge

land.end.i.should_enable_udc.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_enable_udc.exit

lor.rhs.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver.i = getelementptr i8, ptr %_gadget, i32 1064
  %6 = ptrtoint ptr %transceiver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transceiver.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %phi.cast11.i = zext i1 %spec.select.i.i to i32
  br label %should_enable_udc.exit

should_enable_udc.exit:                           ; preds = %lor.rhs.i, %land.end.i.should_enable_udc.exit_crit_edge
  %8 = phi i32 [ 1, %land.end.i.should_enable_udc.exit_crit_edge ], [ %phi.cast11.i, %lor.rhs.i ]
  %and.i = and i32 %8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %should_enable_udc.exit.if.end_crit_edge, label %if.then

should_enable_udc.exit.if.end_crit_edge:          ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_enable(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %should_enable_udc.exit.if.end_crit_edge
  %9 = ptrtoint ptr %vbus_sensed to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i11 = load i16, ptr %vbus_sensed, align 8
  %10 = and i16 %bf.load.i11, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i12 = icmp eq i16 %10, 0
  br i1 %tobool.not.i12, label %if.end.lor.end.i_crit_edge, label %lor.rhs.i15

if.end.lor.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i13 = getelementptr i8, ptr %_gadget, i32 1048
  %11 = ptrtoint ptr %driver.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver.i13, align 8
  %tobool1.not.i = icmp eq ptr %12, null
  %phi.cast.i14 = zext i1 %tobool1.not.i to i32
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i15, %if.end.lor.end.i_crit_edge
  %13 = phi i32 [ 1, %if.end.lor.end.i_crit_edge ], [ %phi.cast.i14, %lor.rhs.i15 ]
  %14 = and i16 %bf.load.i11, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.not.i16 = icmp eq i16 %14, 0
  br i1 %tobool6.not.i16, label %land.rhs.i20, label %lor.end.i.should_disable_udc.exit_crit_edge

lor.end.i.should_disable_udc.exit_crit_edge:      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_disable_udc.exit

land.rhs.i20:                                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver.i17 = getelementptr i8, ptr %_gadget, i32 1064
  %15 = ptrtoint ptr %transceiver.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transceiver.i17, align 8
  %tobool.not.i.i18 = icmp ne ptr %16, null
  %cmp.i.i19 = icmp ule ptr %16, inttoptr (i32 -4096 to ptr)
  %lnot7.i = and i1 %tobool.not.i.i18, %cmp.i.i19
  %phi.cast12.i = zext i1 %lnot7.i to i32
  br label %should_disable_udc.exit

should_disable_udc.exit:                          ; preds = %land.rhs.i20, %lor.end.i.should_disable_udc.exit_crit_edge
  %17 = phi i32 [ 0, %lor.end.i.should_disable_udc.exit_crit_edge ], [ %phi.cast12.i, %land.rhs.i20 ]
  %or.i = or i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool3.not = icmp eq i32 %or.i, 0
  br i1 %tobool3.not, label %should_disable_udc.exit.if.end5_crit_edge, label %if.then4

should_disable_udc.exit.if.end5_crit_edge:        ; preds = %should_disable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %should_disable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_disable(ptr noundef %add.ptr.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %should_disable_udc.exit.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_vbus_draw(ptr nocapture noundef readonly %_gadget, i32 noundef %mA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transceiver = getelementptr i8, ptr %_gadget, i32 1064
  %0 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transceiver, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %1, i32 noundef %mA) #9
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %mA) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_pullup(ptr noundef %_gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_gadget, i32 -16
  %gpiod = getelementptr i8, ptr %_gadget, i32 1060
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then.i

land.lhs.true:                                    ; preds = %entry
  %udc_command = getelementptr i8, ptr %_gadget, i32 1056
  %2 = ptrtoint ptr %udc_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_command, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.else.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %is_active) #9
  br label %dplus_pullup.exit

if.else.i:                                        ; preds = %land.lhs.true
  %4 = ptrtoint ptr %udc_command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udc_command, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.else.i.dplus_pullup.exit_crit_edge, label %if.then3.i

if.else.i.dplus_pullup.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dplus_pullup.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool4.not.i = icmp eq i32 %is_active, 0
  br i1 %tobool4.not.i, label %dplus_pullup.exit.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(i32 noundef 0) #9
  br label %dplus_pullup.exit

dplus_pullup.exit.thread:                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(i32 noundef 1) #9
  %pullup_on.i31 = getelementptr i8, ptr %_gadget, i32 3032
  %6 = trunc i32 %is_active to i16
  %7 = ptrtoint ptr %pullup_on.i31 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i32 = load i16, ptr %pullup_on.i31, align 8
  %bf.value.i33 = shl nuw nsw i16 %6, 14
  %bf.shl.i34 = and i16 %bf.value.i33, 16384
  %bf.clear.i35 = and i16 %bf.load.i32, -16385
  %bf.set.i36 = or i16 %bf.clear.i35, %bf.shl.i34
  store i16 %bf.set.i36, ptr %pullup_on.i31, align 8
  br label %land.end.i

dplus_pullup.exit:                                ; preds = %if.then5.i, %if.else.i.dplus_pullup.exit_crit_edge, %if.then.i
  %pullup_on.i = getelementptr i8, ptr %_gadget, i32 3032
  %8 = trunc i32 %is_active to i16
  %9 = ptrtoint ptr %pullup_on.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %pullup_on.i, align 8
  %bf.value.i = shl i16 %8, 14
  %bf.shl.i = and i16 %bf.value.i, 16384
  %bf.clear.i = and i16 %bf.load.i, -16385
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %pullup_on.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl.i)
  %tobool.not.i18 = icmp eq i16 %bf.shl.i, 0
  br i1 %tobool.not.i18, label %dplus_pullup.exit.land.end.i_crit_edge, label %land.rhs.i

dplus_pullup.exit.land.end.i_crit_edge:           ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %dplus_pullup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr i8, ptr %_gadget, i32 1048
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 8
  %tobool1.i = icmp ne ptr %11, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %dplus_pullup.exit.land.end.i_crit_edge, %dplus_pullup.exit.thread
  %bf.load.i39 = phi i16 [ %bf.load.i, %dplus_pullup.exit.land.end.i_crit_edge ], [ %bf.load.i, %land.rhs.i ], [ %bf.load.i32, %dplus_pullup.exit.thread ]
  %pullup_on.i38 = phi ptr [ %pullup_on.i, %dplus_pullup.exit.land.end.i_crit_edge ], [ %pullup_on.i, %land.rhs.i ], [ %pullup_on.i31, %dplus_pullup.exit.thread ]
  %12 = phi i32 [ 0, %dplus_pullup.exit.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ], [ 0, %dplus_pullup.exit.thread ]
  %13 = and i16 %bf.load.i39, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.not.i = icmp eq i16 %13, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %land.end.i.should_enable_udc.exit_crit_edge

land.end.i.should_enable_udc.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_enable_udc.exit

lor.rhs.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver.i = getelementptr i8, ptr %_gadget, i32 1064
  %14 = ptrtoint ptr %transceiver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transceiver.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  %cmp.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %phi.cast11.i = zext i1 %spec.select.i.i to i32
  br label %should_enable_udc.exit

should_enable_udc.exit:                           ; preds = %lor.rhs.i, %land.end.i.should_enable_udc.exit_crit_edge
  %16 = phi i32 [ 1, %land.end.i.should_enable_udc.exit_crit_edge ], [ %phi.cast11.i, %lor.rhs.i ]
  %and.i = and i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %should_enable_udc.exit.if.end5_crit_edge, label %if.then4

should_enable_udc.exit.if.end5_crit_edge:         ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_enable(ptr noundef %add.ptr.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %should_enable_udc.exit.if.end5_crit_edge
  %17 = ptrtoint ptr %pullup_on.i38 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i20 = load i16, ptr %pullup_on.i38, align 8
  %18 = and i16 %bf.load.i20, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i21 = icmp eq i16 %18, 0
  br i1 %tobool.not.i21, label %if.end5.lor.end.i_crit_edge, label %lor.rhs.i24

if.end5.lor.end.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i24:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i22 = getelementptr i8, ptr %_gadget, i32 1048
  %19 = ptrtoint ptr %driver.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i22, align 8
  %tobool1.not.i = icmp eq ptr %20, null
  %phi.cast.i23 = zext i1 %tobool1.not.i to i32
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i24, %if.end5.lor.end.i_crit_edge
  %21 = phi i32 [ 1, %if.end5.lor.end.i_crit_edge ], [ %phi.cast.i23, %lor.rhs.i24 ]
  %22 = and i16 %bf.load.i20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool6.not.i25 = icmp eq i16 %22, 0
  br i1 %tobool6.not.i25, label %land.rhs.i29, label %lor.end.i.should_disable_udc.exit_crit_edge

lor.end.i.should_disable_udc.exit_crit_edge:      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_disable_udc.exit

land.rhs.i29:                                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transceiver.i26 = getelementptr i8, ptr %_gadget, i32 1064
  %23 = ptrtoint ptr %transceiver.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transceiver.i26, align 8
  %tobool.not.i.i27 = icmp ne ptr %24, null
  %cmp.i.i28 = icmp ule ptr %24, inttoptr (i32 -4096 to ptr)
  %lnot7.i = and i1 %tobool.not.i.i27, %cmp.i.i28
  %phi.cast12.i = zext i1 %lnot7.i to i32
  br label %should_disable_udc.exit

should_disable_udc.exit:                          ; preds = %land.rhs.i29, %lor.end.i.should_disable_udc.exit_crit_edge
  %25 = phi i32 [ 0, %lor.end.i.should_disable_udc.exit_crit_edge ], [ %phi.cast12.i, %land.rhs.i29 ]
  %or.i = or i32 %25, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool7.not = icmp eq i32 %or.i, 0
  br i1 %tobool7.not, label %should_disable_udc.exit.cleanup_crit_edge, label %if.then8

should_disable_udc.exit.cleanup_crit_edge:        ; preds = %should_disable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %should_disable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_disable(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %should_disable_udc.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %should_disable_udc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_udc_start(ptr noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %g, i32 -16
  %driver2 = getelementptr i8, ptr %g, i32 1048
  %0 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %driver, ptr %driver2, align 8
  %transceiver = getelementptr i8, ptr %g, i32 1064
  %1 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %transceiver, align 8
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %otg = getelementptr inbounds %struct.usb_phy, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg, align 4
  %tobool.not.i21 = icmp eq ptr %4, null
  br i1 %tobool.not.i21, label %if.then.do.end_crit_edge, label %land.lhs.true.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.then
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end_crit_edge, label %otg_set_peripheral.exit

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

otg_set_peripheral.exit:                          ; preds = %land.lhs.true.i
  %call.i = tail call i32 %6(ptr noundef nonnull %4, ptr noundef %g) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %otg_set_peripheral.exit.if.end6_crit_edge, label %otg_set_peripheral.exit.do.end_crit_edge

otg_set_peripheral.exit.do.end_crit_edge:         ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

otg_set_peripheral.exit.if.end6_crit_edge:        ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %otg_set_peripheral.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i25 = phi i32 [ %call.i, %otg_set_peripheral.exit.do.end_crit_edge ], [ -524, %land.lhs.true.i.do.end_crit_edge ], [ -524, %if.then.do.end_crit_edge ]
  %dev = getelementptr i8, ptr %g, i32 1052
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44) #12
  %9 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver2, align 8
  br label %cleanup

if.end6:                                          ; preds = %otg_set_peripheral.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pullup_on.i = getelementptr i8, ptr %g, i32 3032
  %10 = ptrtoint ptr %pullup_on.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %pullup_on.i, align 8
  %11 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i22 = icmp eq i16 %11, 0
  br i1 %tobool.not.i22, label %if.end6.land.end.i_crit_edge, label %land.rhs.i

if.end6.land.end.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver2, align 8
  %tobool1.i = icmp ne ptr %13, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end6.land.end.i_crit_edge
  %14 = phi i32 [ 0, %if.end6.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %15 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %land.end.i.should_enable_udc.exit_crit_edge

land.end.i.should_enable_udc.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %should_enable_udc.exit

lor.rhs.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transceiver, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  %cmp.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %phi.cast11.i = zext i1 %spec.select.i.i to i32
  br label %should_enable_udc.exit

should_enable_udc.exit:                           ; preds = %lor.rhs.i, %land.end.i.should_enable_udc.exit_crit_edge
  %18 = phi i32 [ 1, %land.end.i.should_enable_udc.exit_crit_edge ], [ %phi.cast11.i, %lor.rhs.i ]
  %and.i = and i32 %18, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not = icmp eq i32 %and.i, 0
  br i1 %tobool8.not, label %should_enable_udc.exit.cleanup_crit_edge, label %if.then9

should_enable_udc.exit.cleanup_crit_edge:         ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %should_enable_udc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_enable(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %should_enable_udc.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i25, %do.end ], [ 0, %if.then9 ], [ 0, %should_enable_udc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_udc_stop(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %g, i32 -16
  %speed.i = getelementptr i8, ptr %g, i32 64
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed.i, align 8
  %arrayidx.i = getelementptr i8, ptr %g, i32 1088
  %call.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.i) #9
  %arrayidx.1.i = getelementptr i8, ptr %g, i32 1152
  %call.1.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.1.i) #9
  %arrayidx.2.i = getelementptr i8, ptr %g, i32 1216
  %call.2.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.2.i) #9
  %arrayidx.3.i = getelementptr i8, ptr %g, i32 1280
  %call.3.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.3.i) #9
  %arrayidx.4.i = getelementptr i8, ptr %g, i32 1344
  %call.4.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.4.i) #9
  %arrayidx.5.i = getelementptr i8, ptr %g, i32 1408
  %call.5.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.5.i) #9
  tail call fastcc void @udc_disable(ptr noundef %add.ptr)
  %driver = getelementptr i8, ptr %g, i32 1048
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %driver, align 8
  %transceiver = getelementptr i8, ptr %g, i32 1064
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %otg = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %tobool.not.i7 = icmp eq ptr %5, null
  br i1 %tobool.not.i7, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8 = tail call i32 %7(ptr noundef nonnull %5, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i8, %if.then.i ], [ -524, %land.lhs.true.i.cleanup_crit_edge ], [ -524, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_disable(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udc, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !359
  %3 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udc, align 8
  %add.ptr2 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #9, !srcloc !359
  %5 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !358
  %and2.i = and i32 %7, -2147483628
  %8 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udc, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and2.i) #9, !srcloc !359
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %10 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_disable, %ep0_idle.exit)) #9
          to label %if.then.i.i [label %ep0_idle.exit], !srcloc !360

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %14 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pxa_ep.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i.i, align 4
  %20 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.i.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 8
  %idx.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %26 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %idx.i.i, align 4
  %27 = shl i8 %bf.load.i.i, 1
  %28 = and i8 %27, 124
  %shl.i.i = zext i8 %28 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %30 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pxa_ep.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load14.i.i = load i8, ptr %idx.i.i, align 4
  %35 = shl i8 %bf.load14.i.i, 1
  %36 = and i8 %35, 124
  %shl18.i.i = zext i8 %36 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %33, i32 %add19.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef %13, ptr noundef %23, i32 noundef %29, i32 noundef %37) #9
  br label %ep0_idle.exit

ep0_idle.exit:                                    ; preds = %if.then.i.i, %if.end
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %speed, align 8
  %clk = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 2
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %40) #9
  %41 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load4 = load i16, ptr %enabled, align 8
  %bf.clear = and i16 %bf.load4, 32767
  store i16 %bf.clear, ptr %enabled, align 8
  br label %return

return:                                           ; preds = %ep0_idle.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %idx, align 4
  %3 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %if.end6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false3
  %bf.clear8 = and i8 %bf.load, 127
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.clear8, ptr %idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %lock.i = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %flags.i, align 4
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not13.i = icmp eq ptr %9, %queue
  br i1 %cmp.i.not13.i, label %if.end6.nuke.exit_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.nuke.exit_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %10 = phi ptr [ %12, %while.body.i.while.body.i_crit_edge ], [ %9, %if.end6.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -64
  call fastcc void @req_done(ptr noundef nonnull %1, ptr noundef %add.ptr.i, i32 noundef -108, ptr noundef nonnull %flags.i) #9
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %12, %queue
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end6.nuke.exit_crit_edge
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  call void @pxa_ep_fifo_flush(ptr noundef nonnull %_ep)
  %15 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pxa_ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_disable.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_disable, %cleanup)) #9
          to label %if.then16 [label %cleanup], !srcloc !360

if.then16:                                        ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev17 = getelementptr inbounds %struct.pxa_udc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_disable.__UNIQUE_ID_ddebug315, ptr noundef %19, ptr noundef nonnull @.str.47, ptr noundef %21, ptr noundef nonnull @.str.46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %nuke.exit, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %nuke.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ep_fifo_flush(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %idx, align 4
  %3 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %do.body5.do.body34_crit_edge, label %do.body16, !prof !361

do.body5.do.body34_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

do.body16:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_fifo_flush, %do.body34)) #9
          to label %if.then28 [label %do.body34], !srcloc !360

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev29 = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev29, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug312, ptr noundef %9, ptr noundef nonnull @.str.53, ptr noundef %11, ptr noundef nonnull @.str.52) #9
  br label %do.body34

do.body34:                                        ; preds = %if.then28, %do.body16, %do.body5.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_fifo_flush, %do.end54)) #9
          to label %if.then48 [label %do.end54], !srcloc !360

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev50 = getelementptr inbounds %struct.pxa_udc, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev50, align 4
  %name51 = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug313, ptr noundef %15, ptr noundef nonnull @.str.54, ptr noundef %17, ptr noundef nonnull @.str.52) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body34
  %dir_in = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load55 = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load55)
  %tobool58.not = icmp sgt i16 %bf.load55, -1
  br i1 %tobool58.not, label %do.end54.while.cond_crit_edge, label %if.else

do.end54.while.cond_crit_edge:                    ; preds = %do.end54
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end54.while.cond_crit_edge
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %idx, align 4
  %20 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %while.cond.if.end.i_crit_edge, label %land.lhs.true.i

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.cond
  %21 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load1.i = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end74_crit_edge

land.lhs.true.i.if.end74_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.cond.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %25, i32 256
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  br label %ep_is_empty.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %27 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %25, i32 %add26.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  br label %ep_is_empty.exit

ep_is_empty.exit:                                 ; preds = %if.else.i, %if.then11.i
  %ret.0.in.in.in.i = phi i32 [ %28, %if.else.i ], [ %26, %if.then11.i ]
  %29 = and i32 %ret.0.in.in.in.i, 64
  %tobool61.not.not = icmp eq i32 %29, 0
  br i1 %tobool61.not.not, label %ep_is_empty.exit.if.end74_crit_edge, label %while.body

ep_is_empty.exit.if.end74_crit_edge:              ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

while.body:                                       ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load66 = load i8, ptr %idx, align 4
  %35 = shl i8 %bf.load66, 1
  %36 = and i8 %35, 124
  %shl = zext i8 %36 to i32
  %add = or i32 %shl, 768
  %add.ptr70 = getelementptr i8, ptr %33, i32 %add
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #9, !srcloc !358
  br label %while.cond

if.else:                                          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp72 = icmp eq i32 %39, 1
  %or = select i1 %cmp72, i32 262, i32 278
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i98 = load i8, ptr %idx, align 4
  %41 = and i8 %bf.load.i98, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i99 = icmp eq i8 %41, 0
  %or.i = or i32 %or, 512
  %spec.select.i = select i1 %tobool.not.i99, i32 %or.i, i32 %or
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = shl i8 %bf.load.i98, 1
  %47 = and i8 %46, 124
  %shl.i = zext i8 %47 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i100 = getelementptr i8, ptr %45, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %spec.select.i) #9, !srcloc !359
  br label %if.end74

if.end74:                                         ; preds = %if.else, %ep_is_empty.exit.if.end74_crit_edge, %land.lhs.true.i.if.end74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @req_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status, ptr noundef %pflags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ep_del_request(ptr noundef %ep, ptr noundef %req)
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %0 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %1)
  %cmp = icmp eq i32 %1, -115
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !361

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %3 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.addr.0, label %do.body [
    i32 0, label %if.end.if.end26_crit_edge
    i32 -108, label %if.end.if.end26_crit_edge126
  ]

if.end.if.end26_crit_edge126:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @req_done.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@req_done, %if.end26)) #9
          to label %if.then20 [label %if.end26], !srcloc !360

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %dev21 = getelementptr inbounds %struct.pxa_udc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev21, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @req_done.__UNIQUE_ID_ddebug297, ptr noundef %7, ptr noundef nonnull @.str.49, ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef %req, i32 noundef %status.addr.0, i32 noundef %11, i32 noundef %13) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body, %if.end.if.end26_crit_edge, %if.end.if.end26_crit_edge126
  %tobool27.not = icmp eq ptr %pflags, null
  br i1 %tobool27.not, label %if.end26.do.body31_crit_edge, label %if.then28

if.end26.do.body31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pflags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %15) #9
  br label %do.body31

do.body31:                                        ; preds = %if.then28, %if.end26.do.body31_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !363
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool44.not = icmp eq i32 %and.i, 0
  br i1 %tobool44.not, label %if.then59, label %do.end48

do.end48:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %udc_usb_ep = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %udc_usb_ep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udc_usb_ep, align 4
  tail call void @usb_gadget_giveback_request(ptr noundef %18, ptr noundef %req) #9
  br label %do.body61

if.then59:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %udc_usb_ep125 = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %udc_usb_ep125 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udc_usb_ep125, align 4
  tail call void @usb_gadget_giveback_request(ptr noundef %20, ptr noundef %req) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body61

do.body61:                                        ; preds = %if.then59, %do.end48
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !364
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool69.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool69.not, label %if.then78, label %do.body61.do.end81_crit_edge, !prof !362

do.body61.do.end81_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.then78:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body61.do.end81_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #9, !srcloc !365
  br i1 %tobool27.not, label %do.end81.if.end102_crit_edge, label %do.body89

do.end81.if.end102_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.body89:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  %lock95 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 2
  %call97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock95) #9
  %22 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call97, ptr %pflags, align 4
  br label %if.end102

if.end102:                                        ; preds = %do.body89, %do.end81.if.end102_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_del_request(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %do.body, !prof !362

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_del_request.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_del_request, %do.end)) #9
          to label %if.then13 [label %do.end], !srcloc !360

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dev14 = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %idx, align 4
  %11 = shl i8 %bf.load, 1
  %12 = and i8 %11, 124
  %shl = zext i8 %12 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_del_request.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %req, i32 noundef %7, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %queue = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue, ptr %prev.i3.i, align 4
  %in_use = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load19 = load i8, ptr %in_use, align 4
  %bf.clear20 = and i8 %bf.load19, 127
  store i8 %bf.clear20, ptr %in_use, align 4
  %idx21 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %23 = ptrtoint ptr %idx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load22 = load i8, ptr %idx21, align 4
  %24 = and i8 %bf.load22, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %list_del_init.exit.if.end31_crit_edge, label %land.lhs.true

list_del_init.exit.if.end31_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %list_del_init.exit
  %queue27 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 1
  %25 = ptrtoint ptr %queue27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue27, align 4
  %cmp.i.not = icmp eq ptr %26, %queue27
  br i1 %cmp.i.not, label %if.then30, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  %bf.lshr.i = lshr i8 %bf.load22, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %28, align 8
  %add.ptr2.i = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.clear.i)
  %cmp.i42 = icmp ult i8 %bf.clear.i, 16
  %35 = shl nuw nsw i8 %bf.clear.i, 1
  %mul.i = zext i8 %35 to i32
  br i1 %cmp.i42, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %31, %neg.i
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %28, align 8
  %add.ptr5.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %and.i) #9, !srcloc !359
  br label %if.end31

if.else.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %mul6.i = add nsw i32 %mul.i, -32
  %shl7.i = shl nuw i32 3, %mul6.i
  %neg8.i = xor i32 %shl7.i, -1
  %and9.i = and i32 %34, %neg8.i
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 8
  %add.ptr11.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %and9.i) #9, !srcloc !359
  br label %if.end31

if.end31:                                         ; preds = %if.else.i, %if.then.i, %land.lhs.true.if.end31_crit_edge, %list_del_init.exit.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_enable(ptr noundef %_ep, ptr noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.end8.thread110

if.end8.thread110:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pxa_udc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %name6 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %8 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef %7, ptr noundef nonnull @.str.56, ptr noundef %9) #12
  br label %lor.lhs.false10

if.else:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %config.i = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %config.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 10
  %bf.lshr2.i = lshr i16 %bf.load.i, 7
  %bf.lshr6.i = lshr i16 %bf.load.i, 4
  %udc_usb_ep9.i = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 11
  %cmp.i = icmp eq ptr %udc_usb_ep9.i, %_ep
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  %15 = and i8 %14, 15
  %16 = zext i8 %15 to i16
  %.lobit.i.i.i = lshr i8 %14, 7
  %17 = zext i8 %.lobit.i.i.i to i16
  %bmAttributes.i.i.i = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 1, i32 3
  br label %for.body.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 12
  br label %if.end8

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.033.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.i.i = getelementptr %struct.pxa_udc, ptr %11, i32 0, i32 12, i32 %i.033.i, i32 5
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %addr.i.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 11
  %bf.clear.i.i = and i16 %bf.lshr.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear.i.i, i16 %16)
  %cmp.not.i.i = icmp eq i16 %bf.clear.i.i, %16
  %bf.lshr4.i.i = lshr i16 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr4.i.i, i16 %17)
  %cmp6.not.i.i = icmp eq i16 %bf.lshr4.i.i, %17
  %or.cond.i = select i1 %cmp.not.i.i, i1 %cmp6.not.i.i, i1 false
  br i1 %or.cond.i, label %if.end8.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end8.i.i:                                      ; preds = %for.body.i
  %19 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i.i.i, align 1
  %21 = and i8 %20, 3
  %and.i42.i.i = zext i8 %21 to i32
  %type.i.i = getelementptr %struct.pxa_udc, ptr %11, i32 0, i32 12, i32 %i.033.i, i32 7
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i42.i.i)
  %cmp11.not.i.i = icmp eq i32 %23, %and.i42.i.i
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %if.end8.i.i.for.inc.i_crit_edge

if.end8.i.i.for.inc.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %bf.lshr16.i.i = lshr i16 %bf.load.i.i, 9
  %24 = xor i16 %bf.lshr16.i.i, %bf.lshr.i
  %25 = and i16 %24, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp19.not.i.i = icmp eq i16 %25, 0
  br i1 %cmp19.not.i.i, label %lor.lhs.false.i.i, label %if.end13.i.i.for.inc.i_crit_edge

if.end13.i.i.for.inc.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i.i
  %bf.lshr22.i.i = lshr i16 %bf.load.i.i, 6
  %26 = xor i16 %bf.lshr22.i.i, %bf.lshr2.i
  %27 = and i16 %26, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp25.not.i.i = icmp eq i16 %27, 0
  br i1 %cmp25.not.i.i, label %is_match_usb_pxa.exit.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

is_match_usb_pxa.exit.i:                          ; preds = %lor.lhs.false.i.i
  %bf.lshr28.i.i = lshr i16 %bf.load.i.i, 3
  %28 = xor i16 %bf.lshr28.i.i, %bf.lshr6.i
  %29 = and i16 %28, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp31.not.i.not.i = icmp eq i16 %29, 0
  br i1 %cmp31.not.i.not.i, label %cleanup.loopexit.split.loop.exit.i, label %is_match_usb_pxa.exit.i.for.inc.i_crit_edge

is_match_usb_pxa.exit.i.for.inc.i_crit_edge:      ; preds = %is_match_usb_pxa.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %is_match_usb_pxa.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %if.end13.i.i.for.inc.i_crit_edge, %if.end8.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.inc.i.do.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

cleanup.loopexit.split.loop.exit.i:               ; preds = %is_match_usb_pxa.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.le.i = getelementptr %struct.pxa_udc, ptr %11, i32 0, i32 12, i32 %i.033.i
  br label %if.end8

if.end8:                                          ; preds = %cleanup.loopexit.split.loop.exit.i, %if.then.i
  %ep.0 = phi ptr [ %pxa_ep.i, %if.then.i ], [ %arrayidx13.le.i, %cleanup.loopexit.split.loop.exit.i ]
  %tobool9.not = icmp eq ptr %ep.0, null
  br i1 %tobool9.not, label %if.end8.do.end15_crit_edge, label %if.end8.lor.lhs.false10_crit_edge

if.end8.lor.lhs.false10_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false10

if.end8.do.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

lor.lhs.false10:                                  ; preds = %if.end8.lor.lhs.false10_crit_edge, %if.end8.thread110
  %ep.0113 = phi ptr [ %1, %if.end8.thread110 ], [ %ep.0, %if.end8.lor.lhs.false10_crit_edge ]
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 3
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %idx, align 4
  %31 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool11.not = icmp eq i8 %31, 0
  br i1 %tobool11.not, label %lor.lhs.false10.do.end15_crit_edge, label %if.end19

lor.lhs.false10.do.end15_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false10.do.end15_crit_edge, %if.end8.do.end15_crit_edge, %for.inc.i.do.end15_crit_edge
  %dev16 = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 2
  %32 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev16, align 4
  %dev17 = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev17, align 4
  %name18 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %36 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.59, ptr noundef %37) #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false10
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %38 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp.not = icmp eq i8 %39, 5
  br i1 %cmp.not, label %lor.lhs.false21, label %if.end19.do.end28_crit_edge

if.end19.do.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

lor.lhs.false21:                                  ; preds = %if.end19
  %type = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 7
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %42 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bmAttributes.i, align 1
  %44 = and i8 %43, 3
  %and.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and.i)
  %cmp23.not = icmp eq i32 %41, %and.i
  br i1 %cmp23.not, label %if.end32, label %lor.lhs.false21.do.end28_crit_edge

lor.lhs.false21.do.end28_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false21.do.end28_crit_edge, %if.end19.do.end28_crit_edge
  %45 = ptrtoint ptr %ep.0113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep.0113, align 4
  %dev30 = getelementptr inbounds %struct.pxa_udc, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 4
  %49 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.62, ptr noundef %50, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false21
  %fifo_size = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 6
  %51 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fifo_size, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %53 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %wMaxPacketSize.i, align 1
  %55 = and i16 %54, -249
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #9
  %and.i106 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %and.i106)
  %cmp34 = icmp ult i32 %52, %and.i106
  br i1 %cmp34, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %ep.0113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ep.0113, align 4
  %dev41 = getelementptr inbounds %struct.pxa_udc, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev41, align 4
  %name42 = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 4
  %61 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.65, ptr noundef %62, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %63 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ep.0113, ptr %pxa_ep, align 4
  %64 = ptrtoint ptr %ep.0113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ep.0113, align 4
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver, align 8
  %tobool46.not = icmp eq ptr %67, null
  br i1 %tobool46.not, label %if.end43.do.end53_crit_edge, label %lor.lhs.false47

if.end43.do.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

lor.lhs.false47:                                  ; preds = %if.end43
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %65, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp48 = icmp eq i32 %69, 0
  br i1 %cmp48, label %lor.lhs.false47.do.end53_crit_edge, label %if.end57

lor.lhs.false47.do.end53_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

do.end53:                                         ; preds = %lor.lhs.false47.do.end53_crit_edge, %if.end43.do.end53_crit_edge
  %dev55 = getelementptr inbounds %struct.pxa_udc, ptr %65, i32 0, i32 5
  %70 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev55, align 4
  %name56 = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 4
  %72 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.68, ptr noundef %73, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load58 = load i8, ptr %idx, align 4
  %bf.set = or i8 %bf.load58, -128
  store i8 %bf.set, ptr %idx, align 4
  tail call void @pxa_ep_fifo_flush(ptr noundef nonnull %_ep)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_enable.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_enable, %cleanup)) #9
          to label %if.then67 [label %cleanup], !srcloc !360

if.then67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %ep.0113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ep.0113, align 4
  %dev69 = getelementptr inbounds %struct.pxa_udc, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev69, align 4
  %name70 = getelementptr inbounds %struct.pxa_ep, ptr %ep.0113, i32 0, i32 4
  %79 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_enable.__UNIQUE_ID_ddebug314, ptr noundef %78, ptr noundef nonnull @.str.70, ptr noundef %80, ptr noundef nonnull @.str.56) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end57, %do.end53, %do.end39, %do.end28, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ -34, %do.end39 ], [ -108, %do.end53 ], [ -22, %do.end15 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxa_ep_alloc_request(ptr noundef %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !361

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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.pxa27x_request, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.pxa27x_request, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  %in_use = getelementptr inbounds %struct.pxa27x_request, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %in_use, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %in_use, align 4
  %udc_usb_ep = getelementptr inbounds %struct.pxa27x_request, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %udc_usb_ep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %_ep, ptr %udc_usb_ep, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.pxa27x_request, ptr %_req, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !361

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 599, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_queue(ptr noundef readonly %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !362

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !362

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool5.not = icmp eq ptr %3, null
  %tobool9.not = icmp eq ptr %_ep, null
  %or.cond = or i1 %tobool9.not, %tobool5.not
  br i1 %or.cond, label %lor.rhs.cleanup_crit_edge, label %if.end19, !prof !366

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %lor.rhs
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxa_ep, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end30, !prof !362

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %if.end30.do.body_crit_edge, label %lor.rhs33, !prof !362

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.rhs33:                                        ; preds = %if.end30
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %lor.rhs33.do.body_crit_edge, label %if.end56, !prof !362

lor.rhs33.do.body_crit_edge:                      ; preds = %lor.rhs33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.rhs33.do.body_crit_edge, %if.end30.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_queue.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_queue, %cleanup)) #9
          to label %if.then52 [label %cleanup], !srcloc !360

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %dev54 = getelementptr inbounds %struct.pxa_udc, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev54, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_queue.__UNIQUE_ID_ddebug309, ptr noundef %15, ptr noundef nonnull @.str.68, ptr noundef %17, ptr noundef nonnull @.str.71) #9
  br label %cleanup

if.end56:                                         ; preds = %lor.rhs33
  %type = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp57 = icmp eq i32 %19, 1
  br i1 %cmp57, label %land.rhs, label %if.end56.do.body70_crit_edge

if.end56.do.body70_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

land.rhs:                                         ; preds = %if.end56
  %length59 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %20 = ptrtoint ptr %length59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length59, align 4
  %fifo_size = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp60 = icmp ugt i32 %21, %23
  br i1 %cmp60, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body70_crit_edge, !prof !362

land.rhs.do.body70_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body70:                                        ; preds = %land.rhs.do.body70_crit_edge, %if.end56.do.body70_crit_edge
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 2
  %call74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %in_handle_ep = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %in_handle_ep, align 4
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_queue.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_queue, %do.end103)) #9
          to label %if.then94 [label %do.end103], !srcloc !360

if.then94:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %cmp.i.not = icmp eq ptr %26, %queue
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %dev96 = getelementptr inbounds %struct.pxa_udc, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev96, align 4
  %name97 = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %name97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name97, align 4
  %cond = select i1 %cmp.i.not, ptr @.str.73, ptr @.str.74
  %length99 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %33 = ptrtoint ptr %length99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length99, align 4
  %35 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_req, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_queue.__UNIQUE_ID_ddebug310, ptr noundef %30, ptr noundef nonnull @.str.72, ptr noundef %32, ptr noundef nonnull @.str.71, ptr noundef nonnull %_req, ptr noundef nonnull %cond, i32 noundef %34, ptr noundef %36) #9
  br label %do.end103

do.end103:                                        ; preds = %if.then94, %do.body70
  %37 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load104 = load i8, ptr %in_handle_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load104)
  %tobool107.not = icmp sgt i8 %bf.load104, -1
  br i1 %tobool107.not, label %if.then108, label %if.end109

if.then108:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -108, ptr %status, align 4
  br label %out_locked

if.end109:                                        ; preds = %do.end103
  %in_use = getelementptr inbounds %struct.pxa27x_request, ptr %_req, i32 0, i32 2
  %39 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load110 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool113.not = icmp sgt i8 %bf.load110, -1
  br i1 %tobool113.not, label %if.end121, label %do.end117

do.end117:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %dev119 = getelementptr inbounds %struct.pxa_udc, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev119, align 4
  %name120 = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %name120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.75, ptr noundef %45, ptr noundef nonnull @.str.71, ptr noundef nonnull %_req) #12
  br label %out_locked

if.end121:                                        ; preds = %if.end109
  %length122 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %46 = ptrtoint ptr %length122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length122, align 4
  %status123 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %48 = ptrtoint ptr %status123 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -115, ptr %status123, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %49 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %actual, align 4
  tail call fastcc void @ep_add_request(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call74) #9
  %50 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load125 = load i8, ptr %in_handle_ep, align 4
  %51 = and i8 %bf.load125, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool129.not = icmp eq i8 %51, 0
  br i1 %tobool129.not, label %if.then130, label %if.else171

if.then130:                                       ; preds = %if.end121
  %ep0state = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 9
  %52 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ep0state, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %53, label %do.end165 [
    i32 7, label %sw.bb
    i32 2, label %sw.bb142
    i32 3, label %sw.bb151
  ]

sw.bb:                                            ; preds = %if.then130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp131 = icmp eq i32 %47, 0
  br i1 %cmp131, label %if.then133, label %do.end136

if.then133:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stats.i.i = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 10
  %55 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats.i.i, align 4
  %inc2.i.i = add i32 %56, 1
  store i32 %inc2.i.i, ptr %stats.i.i, align 4
  tail call fastcc void @req_done(ptr noundef nonnull %5, ptr noundef nonnull %_req, i32 noundef 0, ptr noundef null) #9
  br label %if.end140

do.end136:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 4
  %dev138 = getelementptr inbounds %struct.pxa_udc, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev138, align 4
  %name139 = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 4
  %61 = ptrtoint ptr %name139 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name139, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.77, ptr noundef %62, ptr noundef nonnull @.str.71, i32 noundef %47) #12
  tail call fastcc void @ep_del_request(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  br label %if.end140

if.end140:                                        ; preds = %do.end136, %if.then133
  %rc.0 = phi i32 [ 0, %if.then133 ], [ -51, %do.end136 ]
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_queue, %cleanup)) #9
          to label %if.then.i.i [label %cleanup], !srcloc !360

if.then.i.i:                                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i.i = getelementptr inbounds %struct.pxa_udc, ptr %64, i32 0, i32 12
  %69 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pxa_ep.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %64, i32 0, i32 12, i32 0, i32 4
  %73 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name.i.i, align 4
  %75 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx8.i.i, align 4
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %70, align 8
  %idx.i.i = getelementptr inbounds %struct.pxa_udc, ptr %64, i32 0, i32 12, i32 0, i32 3
  %81 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i.i = load i8, ptr %idx.i.i, align 4
  %82 = shl i8 %bf.load.i.i, 1
  %83 = and i8 %82, 124
  %shl.i.i = zext i8 %83 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 %add.i.i
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %85 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pxa_ep.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %89 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load14.i.i = load i8, ptr %idx.i.i, align 4
  %90 = shl i8 %bf.load14.i.i, 1
  %91 = and i8 %90, 124
  %shl18.i.i = zext i8 %91 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %88, i32 %add19.i.i
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %72, ptr noundef nonnull @.str.35, ptr noundef %74, ptr noundef nonnull @.str.34, ptr noundef %68, ptr noundef %78, i32 noundef %84, i32 noundef %92) #9
  br label %cleanup

sw.bb142:                                         ; preds = %if.then130
  %bf.lshr.i = lshr i8 %bf.load125, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %5, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %add.ptr.i = getelementptr i8, ptr %96, i32 256
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %97, 2
  br label %ep_is_full.exit

if.end.i:                                         ; preds = %sw.bb142
  %dir_in.i = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 5
  %98 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load6.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load6.i)
  %tobool9.not.i = icmp sgt i16 %bf.load6.i, -1
  br i1 %tobool9.not.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %5, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %103 = shl nuw nsw i8 %bf.clear.i, 2
  %shl19.i = zext i8 %103 to i32
  %add20.i = or i32 %shl19.i, 256
  %add.ptr21.i = getelementptr i8, ptr %102, i32 %add20.i
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !358
  %and23.i = lshr i32 %104, 6
  %and23.lobit.i = and i32 %and23.i, 1
  %105 = xor i32 %and23.lobit.i, 1
  br label %ep_is_full.exit

ep_is_full.exit:                                  ; preds = %if.end11.i, %if.then.i
  %retval.0.i248 = phi i32 [ %105, %if.end11.i ], [ %and.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i248)
  %tobool144.not = icmp eq i32 %retval.0.i248, 0
  br i1 %tobool144.not, label %if.then145, label %ep_is_full.exit.cleanup_crit_edge

ep_is_full.exit.cleanup_crit_edge:                ; preds = %ep_is_full.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then145:                                       ; preds = %ep_is_full.exit
  %call146 = tail call fastcc i32 @write_ep0_fifo(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then145.cleanup_crit_edge, label %if.then148

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then148:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep0_end_in_req(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  br label %cleanup

sw.bb151:                                         ; preds = %if.then130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp152 = icmp eq i32 %47, 0
  br i1 %cmp152, label %sw.bb151.if.then157_crit_edge, label %if.end.i253

sw.bb151.if.then157_crit_edge:                    ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157

if.end.i253:                                      ; preds = %sw.bb151
  %bf.lshr7.i = lshr i8 %bf.load125, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %5, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i254 = getelementptr i8, ptr %109, i32 256
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254) #9, !srcloc !358
  %and.i255 = and i32 %110, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #11
  %111 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %111 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %109, i32 %add26.i
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %112, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i256 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i255, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i256)
  %tobool156.not = icmp eq i32 %retval.0.i256, 0
  br i1 %tobool156.not, label %epout_has_pkt.exit.if.then157_crit_edge, label %epout_has_pkt.exit.cleanup_crit_edge

epout_has_pkt.exit.cleanup_crit_edge:             ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

epout_has_pkt.exit.if.then157_crit_edge:          ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157

if.then157:                                       ; preds = %epout_has_pkt.exit.if.then157_crit_edge, %sw.bb151.if.then157_crit_edge
  %call158 = tail call fastcc i32 @read_ep0_fifo(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then157.cleanup_crit_edge, label %if.then160

if.then157.cleanup_crit_edge:                     ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then160:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep0_end_out_req(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  br label %cleanup

do.end165:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %5, align 4
  %dev167 = getelementptr inbounds %struct.pxa_udc, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev167, align 4
  %name168 = getelementptr inbounds %struct.pxa_ep, ptr %5, i32 0, i32 4
  %117 = ptrtoint ptr %name168 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name168, align 4
  %ep0state170 = getelementptr inbounds %struct.pxa_udc, ptr %114, i32 0, i32 9
  %119 = ptrtoint ptr %ep0state170 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ep0state170, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.80, ptr noundef %118, ptr noundef nonnull @.str.71, ptr noundef %122) #12
  tail call fastcc void @ep_del_request(ptr noundef nonnull %5, ptr noundef nonnull %_req)
  br label %cleanup

if.else171:                                       ; preds = %if.end121
  %123 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool172.not = icmp eq i8 %123, 0
  br i1 %tobool172.not, label %if.then173, label %if.else171.cleanup_crit_edge

if.else171.cleanup_crit_edge:                     ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then173:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @handle_ep(ptr noundef nonnull %5)
  br label %cleanup

out_locked:                                       ; preds = %do.end117, %if.then108
  %rc.2 = phi i32 [ 0, %do.end117 ], [ -108, %if.then108 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call74) #9
  br label %cleanup

cleanup:                                          ; preds = %out_locked, %if.then173, %if.else171.cleanup_crit_edge, %do.end165, %if.then160, %if.then157.cleanup_crit_edge, %epout_has_pkt.exit.cleanup_crit_edge, %if.then148, %if.then145.cleanup_crit_edge, %ep_is_full.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.i, %if.end140, %land.rhs.cleanup_crit_edge, %if.then52, %do.body, %if.end19.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -108, %if.then52 ], [ -90, %land.rhs.cleanup_crit_edge ], [ %rc.2, %out_locked ], [ 0, %if.else171.cleanup_crit_edge ], [ 0, %if.then173 ], [ -51, %do.end165 ], [ 0, %if.then160 ], [ 0, %if.then157.cleanup_crit_edge ], [ 0, %epout_has_pkt.exit.cleanup_crit_edge ], [ 0, %ep_is_full.exit.cleanup_crit_edge ], [ 0, %if.then148 ], [ 0, %if.then145.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.0, %if.end140 ], [ %rc.0, %if.then.i.i ], [ -108, %do.body ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_dequeue(ptr noundef readonly %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %idx, align 4
  %3 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body5
  %.pn.in = phi ptr [ %queue, %do.body5 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %queue
  br i1 %cmp15.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %req.0 = getelementptr i8, ptr %.pn, i32 -64
  %cmp18 = icmp eq ptr %req.0, %_req
  br i1 %cmp18, label %if.then29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  tail call fastcc void @req_done(ptr noundef nonnull %1, ptr noundef %_req, i32 noundef -104, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %for.end.thread, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then29 ], [ -22, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_set_halt(ptr noundef readonly %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %idx, align 4
  %3 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %do.body, label %do.body16

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ep_set_halt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_set_halt, %cleanup)) #9
          to label %if.then11 [label %cleanup], !srcloc !360

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev12 = getelementptr inbounds %struct.pxa_udc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ep_set_halt.__UNIQUE_ID_ddebug311, ptr noundef %7, ptr noundef nonnull @.str.100, ptr noundef %9, ptr noundef nonnull @.str.99) #9
  br label %cleanup

do.body16:                                        ; preds = %if.end4
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 2
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %dir_in = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load25 = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load25)
  %tobool28.not = icmp sgt i16 %bf.load25, -1
  br i1 %tobool28.not, label %do.body16.if.end35_crit_edge, label %land.lhs.true

do.body16.if.end35_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %do.body16
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %idx, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  br i1 %tobool.not.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %15, i32 256
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %16, 2
  br label %ep_is_full.exit

if.end11.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %17 = shl nuw nsw i8 %bf.clear.i, 2
  %shl19.i = zext i8 %17 to i32
  %add20.i = or i32 %shl19.i, 256
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %add20.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !358
  %and23.i = lshr i32 %18, 6
  %and23.lobit.i = and i32 %and23.i, 1
  %19 = xor i32 %and23.lobit.i, 1
  br label %ep_is_full.exit

ep_is_full.exit:                                  ; preds = %if.end11.i, %if.then.i
  %retval.0.i61 = phi i32 [ %19, %if.end11.i ], [ %and.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i61)
  %tobool30.not = icmp eq i32 %retval.0.i61, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %ep_is_full.exit.out_crit_edge

ep_is_full.exit.out_crit_edge:                    ; preds = %ep_is_full.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false31:                                  ; preds = %ep_is_full.exit
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %21, %queue
  br i1 %cmp.i.not, label %lor.lhs.false31.if.end35_crit_edge, label %lor.lhs.false31.out_crit_edge

lor.lhs.false31.out_crit_edge:                    ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false31.if.end35_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false31.if.end35_crit_edge, %do.body16.if.end35_crit_edge
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i63 = load i8, ptr %idx, align 4
  %23 = and i8 %bf.load.i63, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i64 = icmp eq i8 %23, 0
  %spec.select.i = select i1 %tobool.not.i64, i32 800, i32 288
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = shl i8 %bf.load.i63, 1
  %29 = and i8 %28, 124
  %shl.i = zext i8 %29 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i65 = getelementptr i8, ptr %27, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %spec.select.i) #9, !srcloc !359
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load37 = load i8, ptr %idx, align 4
  %31 = and i8 %bf.load37, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool41.not = icmp eq i8 %31, 0
  br i1 %tobool41.not, label %if.then42, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.i, align 4
  store i32 6, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_ep_set_halt, %out)) #9
          to label %if.then.i71 [label %out], !srcloc !360

if.then.i71:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12
  %38 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pxa_ep.i, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12, i32 0, i32 4
  %42 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i, align 4
  %44 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx8.i, align 4
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %39, align 8
  %idx.i66 = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12, i32 0, i32 3
  %50 = ptrtoint ptr %idx.i66 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i67 = load i8, ptr %idx.i66, align 4
  %51 = shl i8 %bf.load.i67, 1
  %52 = and i8 %51, 124
  %shl.i68 = zext i8 %52 to i32
  %add.i69 = or i32 %shl.i68, 256
  %add.ptr.i70 = getelementptr i8, ptr %49, i32 %add.i69
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #9, !srcloc !358
  %54 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pxa_ep.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %idx.i66 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load14.i = load i8, ptr %idx.i66, align 4
  %59 = shl i8 %bf.load14.i, 1
  %60 = and i8 %59, 124
  %shl18.i = zext i8 %60 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %57, i32 %add19.i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %43, ptr noundef nonnull @.str.34, ptr noundef %37, ptr noundef %47, i32 noundef %53, i32 noundef %61) #9
  br label %out

out:                                              ; preds = %if.then.i71, %if.then42, %if.end35.out_crit_edge, %lor.lhs.false31.out_crit_edge, %ep_is_full.exit.out_crit_edge
  %rc.0 = phi i32 [ -11, %ep_is_full.exit.out_crit_edge ], [ 0, %if.end35.out_crit_edge ], [ -11, %lor.lhs.false31.out_crit_edge ], [ 0, %if.then42 ], [ 0, %if.then.i71 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11, %do.body, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -30, %if.then11 ], [ -30, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ep_fifo_status(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pxa_ep = getelementptr inbounds %struct.udc_usb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxa_ep, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %idx, align 4
  %3 = and i8 %bf.load, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %dir_in = getelementptr inbounds %struct.pxa_ep, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load5 = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load5)
  %tobool8.not = icmp sgt i16 %bf.load5, -1
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %6, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %bf.lshr7.i = lshr i8 %bf.load, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %10, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  br label %ep_is_empty.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %12 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %10, i32 %add26.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  br label %ep_is_empty.exit

ep_is_empty.exit:                                 ; preds = %if.else.i, %if.then11.i
  %ret.0.in.in.in.i = phi i32 [ %13, %if.else.i ], [ %11, %if.then11.i ]
  %14 = and i32 %ret.0.in.in.in.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not.not = icmp eq i32 %14, 0
  br i1 %tobool12.not.not, label %ep_is_empty.exit.cleanup_crit_edge, label %if.else

ep_is_empty.exit.cleanup_crit_edge:               ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %ep_is_empty.exit
  %15 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i23 = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i23)
  %tobool.not.i24 = icmp sgt i16 %bf.load.i23, -1
  br i1 %tobool.not.i24, label %if.end.i28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i28:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load1.i26 = load i8, ptr %idx, align 4
  %21 = shl i8 %bf.load1.i26, 1
  %22 = and i8 %21, 124
  %shl.i = zext i8 %22 to i32
  %add.i = or i32 %shl.i, 512
  %add.ptr.i27 = getelementptr i8, ptr %19, i32 %add.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #9, !srcloc !358
  %and.i = and i32 %23, 1023
  %phi.bo = add nuw nsw i32 %and.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i28, %if.else.cleanup_crit_edge, %ep_is_empty.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ 0, %ep_is_empty.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %phi.bo, %if.end.i28 ], [ -94, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_add_request(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body, !prof !362

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_add_request.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_add_request, %do.end)) #9
          to label %if.then13 [label %do.end], !srcloc !360

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dev14 = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %idx, align 4
  %11 = shl i8 %bf.load, 1
  %12 = and i8 %11, 124
  %shl = zext i8 %12 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_add_request.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef %5, ptr noundef nonnull @.str.82, ptr noundef nonnull %req, i32 noundef %7, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %in_use = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load19 = load i8, ptr %in_use, align 4
  %bf.set = or i8 %bf.load19, -128
  store i8 %bf.set, ptr %in_use, align 4
  %queue = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 3
  %queue21 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %16, ptr noundef %queue21) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue, ptr %prev.i, align 4
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue21, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.pxa27x_request, ptr %req, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %queue, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep, align 4
  %idx.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %23 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 8
  %add.ptr2.i = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.clear.i)
  %cmp.i = icmp ult i8 %bf.clear.i, 16
  %30 = shl nuw nsw i8 %bf.clear.i, 1
  %mul.i = zext i8 %30 to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 3, %mul.i
  %or.i = or i32 %shl.i, %26
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 8
  %add.ptr5.i = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %or.i) #9, !srcloc !359
  br label %return

if.else.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul6.i = add nsw i32 %mul.i, -32
  %shl7.i = shl nuw i32 3, %mul6.i
  %or8.i = or i32 %shl7.i, %29
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %22, align 8
  %add.ptr10.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or8.i) #9, !srcloc !359
  br label %return

return:                                           ; preds = %if.else.i, %if.then.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_is_full(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %idx, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %and = and i32 %5, 2
  br label %return

if.end:                                           ; preds = %entry
  %dir_in = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load6 = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load6)
  %tobool9.not = icmp sgt i16 %bf.load6, -1
  br i1 %tobool9.not, label %if.end.return_crit_edge, label %if.end11

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = shl nuw nsw i8 %bf.clear, 2
  %shl19 = zext i8 %11 to i32
  %add20 = or i32 %shl19, 256
  %add.ptr21 = getelementptr i8, ptr %10, i32 %add20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !358
  %and23 = lshr i32 %12, 6
  %and23.lobit = and i32 %and23, 1
  %13 = xor i32 %and23.lobit, 1
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %13, %if.end11 ], [ %and, %if.then ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_ep0_fifo(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write_packet(ptr noundef %ep, ptr noundef %req, i32 noundef 16)
  %in_bytes.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %in_bytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_bytes.i, align 4
  %add2.i = add i32 %1, %call
  store i32 %add2.i, ptr %in_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp = icmp ult i32 %call, 16
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge, !prof !362

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idx.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %3 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i32 514, i32 2
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = shl i8 %bf.load.i, 1
  %9 = and i8 %8, 124
  %shl.i = zext i8 %9 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select.i) #9, !srcloc !359
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_ep0_fifo.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_ep0_fifo, %do.end)) #9
          to label %if.then17 [label %do.end], !srcloc !360

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %dev18 = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %cond = select i1 %cmp, ptr @.str.85, ptr @.str.86
  %cond21 = select i1 %cmp, ptr @.str.87, ptr @.str.86
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %sub = sub i32 %17, %19
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %idx, align 4
  %23 = shl i8 %bf.load, 1
  %24 = and i8 %23, 124
  %shl = zext i8 %24 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_ep0_fifo.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.84, ptr noundef %15, ptr noundef nonnull @.str.83, i32 noundef %call, ptr noundef nonnull %cond, ptr noundef nonnull %cond21, i32 noundef %sub, ptr noundef %req, i32 noundef %25) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %lor.ext = zext i1 %cmp to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_end_in_req(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1.i, align 4
  store i32 4, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_end_in_req, %set_ep0state.exit)) #9
          to label %if.then.i [label %set_ep0state.exit], !srcloc !360

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pxa_ep.i, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 4
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %12 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 3
  %18 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %19 = shl i8 %bf.load.i, 1
  %20 = and i8 %19, 124
  %shl.i = zext i8 %20 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %22 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pxa_ep.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load14.i = load i8, ptr %idx.i, align 4
  %27 = shl i8 %bf.load14.i, 1
  %28 = and i8 %27, 124
  %shl18.i = zext i8 %28 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %25, i32 %add19.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef %5, ptr noundef %15, i32 noundef %21, i32 noundef %29) #9
  br label %set_ep0state.exit

set_ep0state.exit:                                ; preds = %if.then.i, %entry
  %stats.i.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10
  %30 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats.i.i, align 4
  %inc2.i.i = add i32 %31, 1
  store i32 %inc2.i.i, ptr %stats.i.i, align 4
  tail call fastcc void @req_done(ptr noundef %ep, ptr noundef %req, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_ep0_fifo(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual16 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %idx.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %dir_in.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %out_bytes.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 3
  %fifo_size = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 6
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %1 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %while.cond.if.end.i_crit_edge, label %land.lhs.true.i

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.cond
  %2 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.while.body_crit_edge

land.lhs.true.i.while.body_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.cond.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %7, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %8 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %6, i32 %add26.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %9, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i39 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39)
  %tobool.not = icmp eq i32 %retval.0.i39, 0
  br i1 %tobool.not, label %epout_has_pkt.exit.while.end_crit_edge, label %epout_has_pkt.exit.while.body_crit_edge

epout_has_pkt.exit.while.body_crit_edge:          ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

epout_has_pkt.exit.while.end_crit_edge:           ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %epout_has_pkt.exit.while.body_crit_edge, %land.lhs.true.i.while.body_crit_edge
  %call1 = tail call fastcc i32 @read_packet(ptr noundef %ep, ptr noundef %req)
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i41 = load i8, ptr %idx.i, align 4
  %11 = and i8 %bf.load.i41, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i42 = icmp eq i8 %11, 0
  %spec.select.i = select i1 %tobool.not.i42, i32 513, i32 1
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = shl i8 %bf.load.i41, 1
  %17 = and i8 %16, 124
  %shl.i = zext i8 %17 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %spec.select.i) #9, !srcloc !359
  %18 = ptrtoint ptr %out_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_bytes.i, align 4
  %add2.i = add i32 %19, %call1
  store i32 %add2.i, ptr %out_bytes.i, align 4
  %20 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %21)
  %cmp = icmp ult i32 %call1, %21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_ep0_fifo.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_ep0_fifo, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep, align 4
  %dev7 = getelementptr inbounds %struct.pxa_udc, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7, align 4
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 8
  %30 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %idx.i, align 4
  %31 = shl i8 %bf.load, 1
  %32 = and i8 %31, 124
  %shl = zext i8 %32 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %29, i32 %add
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %cond = select i1 %cmp, ptr @.str.85, ptr @.str.86
  %34 = ptrtoint ptr %actual16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual16, align 4
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_ep0_fifo.__UNIQUE_ID_ddebug307, ptr noundef %25, ptr noundef nonnull @.str.91, ptr noundef %27, ptr noundef nonnull @.str.90, i32 noundef %33, i32 noundef %call1, ptr noundef nonnull %cond, ptr noundef %req, i32 noundef %35, i32 noundef %37) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  br i1 %cmp, label %do.end.while.end_crit_edge, label %lor.lhs.false

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false:                                    ; preds = %do.end
  %38 = ptrtoint ptr %actual16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual16, align 4
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length, align 4
  %cmp19.not = icmp ult i32 %39, %41
  br i1 %cmp19.not, label %lor.lhs.false.while.cond_crit_edge, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %do.end.while.end_crit_edge, %epout_has_pkt.exit.while.end_crit_edge
  %completed.0 = phi i32 [ 0, %epout_has_pkt.exit.while.end_crit_edge ], [ 1, %lor.lhs.false.while.end_crit_edge ], [ 1, %do.end.while.end_crit_edge ]
  ret i32 %completed.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_end_out_req(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1.i, align 4
  store i32 5, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_end_out_req, %set_ep0state.exit)) #9
          to label %if.then.i [label %set_ep0state.exit], !srcloc !360

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pxa_ep.i, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 4
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %12 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 3
  %18 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %19 = shl i8 %bf.load.i, 1
  %20 = and i8 %19, 124
  %shl.i = zext i8 %20 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %22 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pxa_ep.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load14.i = load i8, ptr %idx.i, align 4
  %27 = shl i8 %bf.load14.i, 1
  %28 = and i8 %27, 124
  %shl18.i = zext i8 %28 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %25, i32 %add19.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef %5, ptr noundef %15, i32 noundef %21, i32 noundef %29) #9
  br label %set_ep0state.exit

set_ep0state.exit:                                ; preds = %if.then.i, %entry
  %out_ops.i.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %out_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %out_ops.i.i, align 4
  %inc2.i.i = add i32 %31, 1
  store i32 %inc2.i.i, ptr %out_ops.i.i, align 4
  tail call fastcc void @req_done(ptr noundef %ep, ptr noundef %req, i32 noundef 0, ptr noundef null) #9
  %32 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep, align 4
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_end_out_req, %ep0_idle.exit)) #9
          to label %if.then.i.i [label %ep0_idle.exit], !srcloc !360

if.then.i.i:                                      ; preds = %set_ep0state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12
  %38 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pxa_ep.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12, i32 0, i32 4
  %42 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i.i, align 4
  %44 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx8.i.i, align 4
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %39, align 8
  %idx.i.i = getelementptr inbounds %struct.pxa_udc, ptr %33, i32 0, i32 12, i32 0, i32 3
  %50 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %idx.i.i, align 4
  %51 = shl i8 %bf.load.i.i, 1
  %52 = and i8 %51, 124
  %shl.i.i = zext i8 %52 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %add.i.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %54 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pxa_ep.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load14.i.i = load i8, ptr %idx.i.i, align 4
  %59 = shl i8 %bf.load14.i.i, 1
  %60 = and i8 %59, 124
  %shl18.i.i = zext i8 %60 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %57, i32 %add19.i.i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %43, ptr noundef nonnull @.str.34, ptr noundef %37, ptr noundef %47, i32 noundef %53, i32 noundef %61) #9
  br label %ep0_idle.exit

ep0_idle.exit:                                    ; preds = %if.then.i.i, %set_ep0state.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ep(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dir_in = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dir_in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %lock = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %flags, align 4
  %in_handle_ep = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load5 = load i8, ptr %in_handle_ep, align 4
  %3 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.recursion_detected_crit_edge

entry.recursion_detected_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %recursion_detected

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load5, 64
  %4 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %in_handle_ep, align 4
  %queue = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 1
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool68.not = icmp sgt i16 %bf.load, -1
  %stats.i.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10
  %out_ops.i.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 1
  br label %do.body11

do.body11:                                        ; preds = %do.body11.backedge, %if.end
  %loop.0 = phi i32 [ 0, %if.end ], [ %loop.1, %do.body11.backedge ]
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load12 = load i8, ptr %in_handle_ep, align 4
  %10 = shl i8 %bf.load12, 1
  %11 = and i8 %10, 124
  %shl = zext i8 %11 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %14, %queue
  %add.ptr25 = getelementptr i8, ptr %14, i32 -64
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr25, !prof !362
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep, %do.end44)) #9
          to label %if.then39 [label %do.end44], !srcloc !360

if.then39:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %dev41 = getelementptr inbounds %struct.pxa_udc, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev41, align 4
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %inc = add i32 %loop.0, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep.__UNIQUE_ID_ddebug320, ptr noundef %18, ptr noundef nonnull @.str.93, ptr noundef %20, ptr noundef nonnull @.str.92, ptr noundef %spec.select, i32 noundef %12, i32 noundef %loop.0) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body11
  %loop.1 = phi i32 [ %inc, %if.then39 ], [ %loop.0, %do.body11 ]
  %and = and i32 %12, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %do.end44.if.end64_crit_edge, label %if.then52, !prof !361

do.end44.if.end64_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then52:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load57 = load i8, ptr %in_handle_ep, align 4
  %26 = shl i8 %bf.load57, 1
  %27 = and i8 %26, 124
  %shl61 = zext i8 %27 to i32
  %add62 = or i32 %shl61, 256
  %add.ptr63 = getelementptr i8, ptr %24, i32 %add62
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %and) #9, !srcloc !359
  br label %if.end64

if.end64:                                         ; preds = %if.then52, %do.end44.if.end64_crit_edge
  %tobool65.not = icmp eq ptr %spec.select, null
  br i1 %tobool65.not, label %if.end64.do.end111_crit_edge, label %if.end67

if.end64.do.end111_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

if.end67:                                         ; preds = %if.end64
  br i1 %tobool68.not, label %if.else89, label %if.then75, !prof !361

if.then75:                                        ; preds = %if.end67
  %call76 = call fastcc i32 @ep_is_full(ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end101.thread153, label %if.then75.do.end111_crit_edge, !prof !361

if.then75.do.end111_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

if.else89:                                        ; preds = %if.end67
  %28 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %in_handle_ep, align 4
  %29 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.else89.if.end.i_crit_edge, label %land.lhs.true.i

if.else89.if.end.i_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else89
  %30 = ptrtoint ptr %dir_in to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load1.i = load i16, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end101_crit_edge

land.lhs.true.i.if.end101_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else89.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %31 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %34, i32 256
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %35, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %36 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %34, i32 %add26.i
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %37, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i146 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i146)
  %tobool91.not = icmp eq i32 %retval.0.i146, 0
  br i1 %tobool91.not, label %epout_has_pkt.exit.do.end111_crit_edge, label %epout_has_pkt.exit.if.end101_crit_edge, !prof !362

epout_has_pkt.exit.if.end101_crit_edge:           ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

epout_has_pkt.exit.do.end111_crit_edge:           ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

if.end101:                                        ; preds = %epout_has_pkt.exit.if.end101_crit_edge, %land.lhs.true.i.if.end101_crit_edge
  %call99 = call fastcc i32 @read_fifo(ptr noundef %ep, ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool102.not = icmp eq i32 %call99, 0
  br i1 %tobool102.not, label %if.end101.do.end111_crit_edge, label %if.end101.do.body11.backedge_crit_edge

if.end101.do.body11.backedge_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.backedge

if.end101.do.end111_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

if.end101.thread153:                              ; preds = %if.then75
  %call87 = call fastcc i32 @write_fifo(ptr noundef %ep, ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool102.not155 = icmp eq i32 %call87, 0
  br i1 %tobool102.not155, label %if.end101.thread153.do.end111_crit_edge, label %if.end101.thread153.do.body11.backedge_crit_edge

if.end101.thread153.do.body11.backedge_crit_edge: ; preds = %if.end101.thread153
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.backedge

if.end101.thread153.do.end111_crit_edge:          ; preds = %if.end101.thread153
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

do.body11.backedge:                               ; preds = %if.end101.thread153.do.body11.backedge_crit_edge, %if.end101.do.body11.backedge_crit_edge
  %out_ops.i.i.sink156 = phi ptr [ %stats.i.i, %if.end101.thread153.do.body11.backedge_crit_edge ], [ %out_ops.i.i, %if.end101.do.body11.backedge_crit_edge ]
  %38 = ptrtoint ptr %out_ops.i.i.sink156 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %out_ops.i.i.sink156, align 4
  %inc2.i.i147 = add i32 %39, 1
  store i32 %inc2.i.i147, ptr %out_ops.i.i.sink156, align 4
  call fastcc void @req_done(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef 0, ptr noundef nonnull %flags) #9
  br label %do.body11

do.end111:                                        ; preds = %if.end101.thread153.do.end111_crit_edge, %if.end101.do.end111_crit_edge, %epout_has_pkt.exit.do.end111_crit_edge, %if.then75.do.end111_crit_edge, %if.end64.do.end111_crit_edge
  %40 = ptrtoint ptr %in_handle_ep to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load113 = load i8, ptr %in_handle_ep, align 4
  %bf.clear114 = and i8 %bf.load113, -65
  store i8 %bf.clear114, ptr %in_handle_ep, align 4
  br label %recursion_detected

recursion_detected:                               ; preds = %do.end111, %entry.recursion_detected_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %42) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_packet(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, i32 noundef %max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #9, !srcloc !367
  %length5 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length5, align 4
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %sub = sub i32 %5, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %max)
  %add = add i32 %8, %7
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %actual, align 4
  %and = and i32 %8, 3
  %and10 = and i32 %8, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp1172 = icmp sgt i32 %and10, 0
  br i1 %cmp1172, label %for.body.lr.ph, label %entry.for.cond15.preheader_crit_edge

entry.for.cond15.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond15.preheader

for.body.lr.ph:                                   ; preds = %entry
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body.for.cond15.preheader_crit_edge, %entry.for.cond15.preheader_crit_edge
  %buf.0.lcssa = phi ptr [ %add.ptr, %entry.for.cond15.preheader_crit_edge ], [ %incdec.ptr, %for.body.for.cond15.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1675.not = icmp eq i32 %and, 0
  br i1 %cmp1675.not, label %for.cond15.preheader.do.body_crit_edge, label %for.body17.lr.ph

for.cond15.preheader.do.body_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %idx21 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %buf.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.0.lcssa, align 1
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %idx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load22 = load i8, ptr %idx21, align 4
  %17 = shl i8 %bf.load22, 1
  %18 = and i8 %17, 124
  %shl26 = zext i8 %18 to i32
  %add27 = or i32 %shl26, 768
  %add.ptr28 = getelementptr i8, ptr %15, i32 %add27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %11) #9, !srcloc !368
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp16 = icmp ugt i32 %and, 1
  br i1 %cmp16, label %for.body17.1, label %for.body17.lr.ph.do.body_crit_edge

for.body17.lr.ph.do.body_crit_edge:               ; preds = %for.body17.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.074 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.073 = phi i32 [ %and10, %for.body.lr.ph ], [ %sub14, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %buf.074, i32 1
  %19 = ptrtoint ptr %buf.074 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf.074, align 4
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %idx, align 4
  %26 = shl i8 %bf.load, 1
  %27 = and i8 %26, 124
  %shl = zext i8 %27 to i32
  %add12 = or i32 %shl, 768
  %add.ptr13 = getelementptr i8, ptr %24, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %20) #9, !srcloc !359
  %sub14 = add nsw i32 %i.073, -4
  %cmp11 = icmp ugt i32 %i.073, 4
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.cond15.preheader_crit_edge

for.body.for.cond15.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond15.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body17.1:                                     ; preds = %for.body17.lr.ph
  %incdec.ptr18 = getelementptr i8, ptr %buf.0.lcssa, i32 1
  %28 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr18, align 1
  %30 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %idx21 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load22.1 = load i8, ptr %idx21, align 4
  %35 = shl i8 %bf.load22.1, 1
  %36 = and i8 %35, 124
  %shl26.1 = zext i8 %36 to i32
  %add27.1 = or i32 %shl26.1, 768
  %add.ptr28.1 = getelementptr i8, ptr %33, i32 %add27.1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.1, i8 %29) #9, !srcloc !368
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp16.1 = icmp eq i32 %and, 3
  br i1 %cmp16.1, label %for.body17.2, label %for.body17.1.do.body_crit_edge

for.body17.1.do.body_crit_edge:                   ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body17.2:                                     ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr18.1 = getelementptr i8, ptr %buf.0.lcssa, i32 2
  %37 = ptrtoint ptr %incdec.ptr18.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr18.1, align 1
  %39 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = ptrtoint ptr %idx21 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load22.2 = load i8, ptr %idx21, align 4
  %44 = shl i8 %bf.load22.2, 1
  %45 = and i8 %44, 124
  %shl26.2 = zext i8 %45 to i32
  %add27.2 = or i32 %shl26.2, 768
  %add.ptr28.2 = getelementptr i8, ptr %42, i32 %add27.2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.2, i8 %38) #9, !srcloc !368
  br label %do.body

do.body:                                          ; preds = %for.body17.2, %for.body17.1.do.body_crit_edge, %for.body17.lr.ph.do.body_crit_edge, %for.cond15.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_packet.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_packet, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep, align 4
  %dev36 = getelementptr inbounds %struct.pxa_udc, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev36, align 4
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 4
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 8
  %idx39 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %54 = ptrtoint ptr %idx39 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load40 = load i8, ptr %idx39, align 4
  %55 = shl i8 %bf.load40, 1
  %56 = and i8 %55, 124
  %shl44 = zext i8 %56 to i32
  %add45 = or i32 %shl44, 256
  %add.ptr46 = getelementptr i8, ptr %53, i32 %add45
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_packet.__UNIQUE_ID_ddebug302, ptr noundef %49, ptr noundef nonnull @.str.89, ptr noundef %51, ptr noundef nonnull @.str.88, i32 noundef %and10, i32 noundef %and, i32 noundef %57) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_packet(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dir_in.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.ep_count_bytes_remain.exit_crit_edge

entry.ep_count_bytes_remain.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_count_bytes_remain.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %idx.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %5 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1.i = load i8, ptr %idx.i, align 4
  %6 = shl i8 %bf.load1.i, 1
  %7 = and i8 %6, 124
  %shl.i = zext i8 %7 to i32
  %add.i = or i32 %shl.i, 512
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %8, 1023
  br label %ep_count_bytes_remain.exit

ep_count_bytes_remain.exit:                       ; preds = %if.end.i, %entry.ep_count_bytes_remain.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.end.i ], [ -95, %entry.ep_count_bytes_remain.exit_crit_edge ]
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual, align 4
  %sub = sub i32 %10, %12
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %12
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  %idx.i32 = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %idx.i32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i33 = load i8, ptr %idx.i32, align 4
  %16 = and i8 %bf.load.i33, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i34 = icmp eq i8 %16, 0
  br i1 %tobool.not.i34, label %ep_count_bytes_remain.exit.if.end.i37_crit_edge, label %land.lhs.true.i

ep_count_bytes_remain.exit.if.end.i37_crit_edge:  ; preds = %ep_count_bytes_remain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i37

land.lhs.true.i:                                  ; preds = %ep_count_bytes_remain.exit
  %17 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load1.i36 = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i36)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i36, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i37_crit_edge, label %land.lhs.true.i.for.end_crit_edge

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.i.if.end.i37_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i37

if.end.i37:                                       ; preds = %land.lhs.true.i.if.end.i37_crit_edge, %ep_count_bytes_remain.exit.if.end.i37_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i33, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i38 = getelementptr i8, ptr %21, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #9, !srcloc !358
  br label %ep_is_empty.exit

if.else.i:                                        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %23 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %23 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %21, i32 %add26.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  br label %ep_is_empty.exit

ep_is_empty.exit:                                 ; preds = %if.else.i, %if.then11.i
  %ret.0.in.in.in.i = phi i32 [ %24, %if.else.i ], [ %22, %if.then11.i ]
  %25 = and i32 %ret.0.in.in.in.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.not = icmp eq i32 %25, 0
  %26 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %sub)
  br i1 %tobool.not.not, label %ep_is_empty.exit.for.end_crit_edge, label %ep_is_empty.exit.thread

ep_is_empty.exit.for.end_crit_edge:               ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ep_is_empty.exit.thread:                          ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1150 = icmp sgt i32 %26, 0
  br i1 %cmp1150, label %ep_is_empty.exit.thread.for.body_crit_edge, label %ep_is_empty.exit.thread.for.end_crit_edge

ep_is_empty.exit.thread.for.end_crit_edge:        ; preds = %ep_is_empty.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ep_is_empty.exit.thread.for.body_crit_edge:       ; preds = %ep_is_empty.exit.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ep_is_empty.exit.thread.for.body_crit_edge
  %buf.052 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %ep_is_empty.exit.thread.for.body_crit_edge ]
  %i.051 = phi i32 [ %sub14, %for.body.for.body_crit_edge ], [ %26, %ep_is_empty.exit.thread.for.body_crit_edge ]
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = ptrtoint ptr %idx.i32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %idx.i32, align 4
  %32 = shl i8 %bf.load, 1
  %33 = and i8 %32, 124
  %shl = zext i8 %33 to i32
  %add = or i32 %shl, 768
  %add.ptr12 = getelementptr i8, ptr %30, i32 %add
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !358
  %incdec.ptr = getelementptr i32, ptr %buf.052, i32 1
  %35 = ptrtoint ptr %buf.052 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buf.052, align 4
  %sub14 = add nsw i32 %i.051, -4
  %cmp11 = icmp ugt i32 %i.051, 4
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ep_is_empty.exit.thread.for.end_crit_edge, %ep_is_empty.exit.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge
  %36 = phi i32 [ %26, %ep_is_empty.exit.thread.for.end_crit_edge ], [ 0, %land.lhs.true.i.for.end_crit_edge ], [ 0, %ep_is_empty.exit.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual, align 4
  %add17 = add i32 %38, %36
  store i32 %add17, ptr %actual, align 4
  %39 = ptrtoint ptr %idx.i32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i41 = load i8, ptr %idx.i32, align 4
  %40 = and i8 %bf.load.i41, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i42 = icmp eq i8 %40, 0
  %spec.select.i = select i1 %tobool.not.i42, i32 514, i32 2
  %41 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = shl i8 %bf.load.i41, 1
  %46 = and i8 %45, 124
  %shl.i43 = zext i8 %46 to i32
  %add.i44 = or i32 %shl.i43, 256
  %add.ptr.i45 = getelementptr i8, ptr %44, i32 %add.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %spec.select.i) #9, !srcloc !359
  ret i32 %36
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_size = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_size, align 4
  %dir_in.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %idx = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %in_bytes.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 2
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %ep_is_full.exit.do.body_crit_edge, %entry
  %totcount.0 = phi i32 [ 0, %entry ], [ %add37, %ep_is_full.exit.do.body_crit_edge ]
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %idx, align 4
  %7 = shl i8 %bf.load, 1
  %8 = and i8 %7, 124
  %shl = zext i8 %8 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %do.body1

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body1:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_fifo.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_fifo, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !360

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %dev9 = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_fifo.__UNIQUE_ID_ddebug304, ptr noundef %13, ptr noundef nonnull @.str.95, ptr noundef %15, ptr noundef nonnull @.str.94, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body1
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %idx, align 4
  %17 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %spec.select.i = select i1 %tobool.not.i, i32 514, i32 2
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = shl i8 %bf.load.i, 1
  %23 = and i8 %22, 124
  %shl.i = zext i8 %23 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select.i) #9, !srcloc !359
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end35_crit_edge, label %do.body14

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_fifo.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_fifo, %do.end34)) #9
          to label %if.then28 [label %do.end34], !srcloc !360

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %dev30 = getelementptr inbounds %struct.pxa_udc, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev30, align 4
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_fifo.__UNIQUE_ID_ddebug305, ptr noundef %27, ptr noundef nonnull @.str.96, ptr noundef %29, ptr noundef nonnull @.str.94, i32 noundef %9) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body14
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i149 = load i8, ptr %idx, align 4
  %31 = and i8 %bf.load.i149, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i150 = icmp eq i8 %31, 0
  %spec.select.i151 = select i1 %tobool.not.i150, i32 516, i32 4
  %32 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = shl i8 %bf.load.i149, 1
  %37 = and i8 %36, 124
  %shl.i152 = zext i8 %37 to i32
  %add.i153 = or i32 %shl.i152, 256
  %add.ptr.i154 = getelementptr i8, ptr %35, i32 %add.i153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %spec.select.i151) #9, !srcloc !359
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end10.if.end35_crit_edge
  %call36 = tail call fastcc i32 @write_packet(ptr noundef %ep, ptr noundef %req, i32 noundef %1)
  %38 = ptrtoint ptr %in_bytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in_bytes.i, align 4
  %add2.i = add i32 %39, %call36
  store i32 %add2.i, ptr %in_bytes.i, align 4
  %add37 = add i32 %call36, %totcount.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %1)
  %cmp = icmp ult i32 %call36, %1
  br i1 %cmp, label %if.end35.if.then71_crit_edge, label %if.else, !prof !362

if.end35.if.then71_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.else:                                          ; preds = %if.end35
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length, align 4
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp47 = icmp ugt i32 %41, %43
  br i1 %cmp47, label %if.else.if.end69_crit_edge, label %lor.lhs.false, !prof !361

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load55 = load i32, ptr %zero, align 4
  %45 = lshr i32 %bf.load55, 13
  %.lobit = and i32 %45, 1
  %46 = xor i32 %.lobit, 1
  br label %if.end69

if.end69:                                         ; preds = %lor.lhs.false, %if.else.if.end69_crit_edge
  %is_last.0 = phi i32 [ 0, %if.else.if.end69_crit_edge ], [ %46, %lor.lhs.false ]
  %47 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %48)
  %cmp63.not = icmp ult i32 %1, %48
  br i1 %cmp63.not, label %if.end69.if.then71_crit_edge, label %if.end69.if.end72_crit_edge

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end69.if.then71_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.then71:                                        ; preds = %if.end69.if.then71_crit_edge, %if.end35.if.then71_crit_edge
  %is_last.1172 = phi i32 [ %is_last.0, %if.end69.if.then71_crit_edge ], [ 1, %if.end35.if.then71_crit_edge ]
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i156 = load i8, ptr %idx, align 4
  %50 = and i8 %bf.load.i156, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i157 = icmp eq i8 %50, 0
  %spec.select.i158 = select i1 %tobool.not.i157, i32 640, i32 128
  %51 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %55 = shl i8 %bf.load.i156, 1
  %56 = and i8 %55, 124
  %shl.i159 = zext i8 %56 to i32
  %add.i160 = or i32 %shl.i159, 256
  %add.ptr.i161 = getelementptr i8, ptr %54, i32 %add.i160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %spec.select.i158) #9, !srcloc !359
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %tobool70.not175 = phi ptr [ @.str.85, %if.then71 ], [ @.str.86, %if.end69.if.end72_crit_edge ]
  %is_last.1173 = phi i32 [ %is_last.1172, %if.then71 ], [ %is_last.0, %if.end69.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last.1173)
  %tobool73.not = icmp eq i32 %is_last.1173, 0
  br i1 %tobool73.not, label %do.cond76, label %if.end72.do.body82_crit_edge

if.end72.do.body82_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.cond76:                                        ; preds = %if.end72
  %57 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i163 = load i8, ptr %idx, align 4
  %bf.lshr.i = lshr i8 %bf.load.i163, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i164 = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i164, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.cond76
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ep, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %add.ptr.i165 = getelementptr i8, ptr %61, i32 256
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #9, !srcloc !358
  %and.i = and i32 %62, 2
  br label %ep_is_full.exit

if.end.i:                                         ; preds = %do.cond76
  %63 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load6.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load6.i)
  %tobool9.not.i = icmp sgt i16 %bf.load6.i, -1
  br i1 %tobool9.not.i, label %if.end.i.do.body82_crit_edge, label %if.end11.i

if.end.i.do.body82_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ep, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %68 = shl nuw nsw i8 %bf.clear.i, 2
  %shl19.i = zext i8 %68 to i32
  %add20.i = or i32 %shl19.i, 256
  %add.ptr21.i = getelementptr i8, ptr %67, i32 %add20.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !358
  %and23.i = lshr i32 %69, 6
  %and23.lobit.i = and i32 %and23.i, 1
  %70 = xor i32 %and23.lobit.i, 1
  br label %ep_is_full.exit

ep_is_full.exit:                                  ; preds = %if.end11.i, %if.then.i
  %retval.0.i166 = phi i32 [ %70, %if.end11.i ], [ %and.i, %if.then.i ]
  %tobool78.not = icmp eq i32 %retval.0.i166, 0
  br i1 %tobool78.not, label %ep_is_full.exit.do.body_crit_edge, label %ep_is_full.exit.do.body82_crit_edge

ep_is_full.exit.do.body82_crit_edge:              ; preds = %ep_is_full.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

ep_is_full.exit.do.body_crit_edge:                ; preds = %ep_is_full.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body82:                                        ; preds = %ep_is_full.exit.do.body82_crit_edge, %if.end.i.do.body82_crit_edge, %if.end72.do.body82_crit_edge
  %completed.0 = phi i32 [ 0, %ep_is_full.exit.do.body82_crit_edge ], [ 1, %if.end72.do.body82_crit_edge ], [ 0, %if.end.i.do.body82_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_fifo.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_fifo, %do.end110)) #9
          to label %if.then96 [label %do.end110], !srcloc !360

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ep, align 4
  %dev98 = getelementptr inbounds %struct.pxa_udc, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev98, align 4
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  %cond = select i1 %tobool73.not, ptr @.str.86, ptr @.str.87
  %77 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length, align 4
  %79 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %actual, align 4
  %sub = sub i32 %78, %80
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_fifo.__UNIQUE_ID_ddebug306, ptr noundef %74, ptr noundef nonnull @.str.97, ptr noundef %76, ptr noundef nonnull @.str.94, i32 noundef %add37, ptr noundef nonnull %cond, ptr noundef nonnull %tobool70.not175, i32 noundef %sub, ptr noundef %req) #9
  br label %do.end110

do.end110:                                        ; preds = %if.then96, %do.body82
  ret i32 %completed.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_fifo(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual16 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %idx.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 3
  %dir_in.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 5
  %out_bytes.i = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 10, i32 3
  %fifo_size = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 6
  %name = getelementptr inbounds %struct.pxa_ep, ptr %ep, i32 0, i32 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %1 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %while.cond.if.end.i_crit_edge, label %land.lhs.true.i

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.cond
  %2 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load1.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.while.body_crit_edge

land.lhs.true.i.while.body_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.cond.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %and.i = and i32 %7, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %8 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %6, i32 %add26.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %9, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i38 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38)
  %tobool.not = icmp eq i32 %retval.0.i38, 0
  br i1 %tobool.not, label %epout_has_pkt.exit.while.end_crit_edge, label %epout_has_pkt.exit.while.body_crit_edge

epout_has_pkt.exit.while.body_crit_edge:          ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

epout_has_pkt.exit.while.end_crit_edge:           ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %epout_has_pkt.exit.while.body_crit_edge, %land.lhs.true.i.while.body_crit_edge
  %call1 = tail call fastcc i32 @read_packet(ptr noundef %ep, ptr noundef %req)
  %10 = ptrtoint ptr %out_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_bytes.i, align 4
  %add2.i = add i32 %11, %call1
  store i32 %add2.i, ptr %out_bytes.i, align 4
  %12 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %13)
  %cmp = icmp ult i32 %call1, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_fifo.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_fifo, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep, align 4
  %dev7 = getelementptr inbounds %struct.pxa_udc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %idx.i, align 4
  %23 = shl i8 %bf.load, 1
  %24 = and i8 %23, 124
  %shl = zext i8 %24 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %cond = select i1 %cmp, ptr @.str.85, ptr @.str.86
  %26 = ptrtoint ptr %actual16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual16, align 4
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_fifo.__UNIQUE_ID_ddebug303, ptr noundef %17, ptr noundef nonnull @.str.91, ptr noundef %19, ptr noundef nonnull @.str.98, i32 noundef %25, i32 noundef %call1, ptr noundef nonnull %cond, ptr noundef %req, i32 noundef %27, i32 noundef %29) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  br i1 %cmp, label %do.end.while.end_crit_edge, label %lor.lhs.false

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false:                                    ; preds = %do.end
  %30 = ptrtoint ptr %actual16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual16, align 4
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  %cmp19 = icmp eq i32 %31, %33
  br i1 %cmp19, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %do.end.while.end_crit_edge, %epout_has_pkt.exit.while.end_crit_edge
  %completed.0 = phi i32 [ 0, %epout_has_pkt.exit.while.end_crit_edge ], [ 1, %lor.lhs.false.while.end_crit_edge ], [ 1, %do.end.while.end_crit_edge ]
  ret i32 %completed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_udc_suspend(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #9, !srcloc !359
  %irqs_suspend = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %irqs_suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqs_suspend, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %irqs_suspend, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %gadget) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %10 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@irq_udc_suspend, %ep0_idle.exit)) #9
          to label %if.then.i.i [label %ep0_idle.exit], !srcloc !360

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %14 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pxa_ep.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i.i, align 4
  %20 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.i.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 8
  %idx.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %26 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %idx.i.i, align 4
  %27 = shl i8 %bf.load.i.i, 1
  %28 = and i8 %27, 124
  %shl.i.i = zext i8 %28 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %30 = ptrtoint ptr %pxa_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pxa_ep.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load14.i.i = load i8, ptr %idx.i.i, align 4
  %35 = shl i8 %bf.load14.i.i, 1
  %36 = and i8 %35, 124
  %shl18.i.i = zext i8 %36 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %33, i32 %add19.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef %13, ptr noundef %23, i32 noundef %29, i32 noundef %37) #9
  br label %ep0_idle.exit

ep0_idle.exit:                                    ; preds = %if.then.i.i, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_udc_resume(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #9, !srcloc !359
  %irqs_resume = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %irqs_resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqs_resume, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %irqs_resume, align 8
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %gadget) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_udc_reconfig(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !358
  %3 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udc, align 8
  %add.ptr2 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -2147483648) #9, !srcloc !359
  %irqs_reconfig = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %irqs_reconfig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqs_reconfig, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %irqs_reconfig, align 4
  %and = lshr i32 %2, 11
  %shr = and i32 %and, 3
  %config3 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %7 = ptrtoint ptr %config3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %config3, align 8
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %bf.cast)
  %cmp.not = icmp eq i32 %shr, %bf.cast
  tail call fastcc void @pxa27x_change_configuration(ptr noundef %udc, i32 noundef %shr)
  %and4 = lshr i32 %2, 8
  %shr5 = and i32 %and4, 7
  %and6 = lshr i32 %2, 5
  %shr7 = and i32 %and6, 7
  tail call fastcc void @pxa27x_change_interface(ptr noundef %udc, i32 noundef %shr5, i32 noundef %shr7)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %pxa_ep.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 %i.09.i, i32 3
  %8 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pxa_ep.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %10 = ptrtoint ptr %config3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %config3, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 10
  %bf.lshr2.i.i = lshr i16 %bf.load.i.i, 7
  %bf.lshr6.i.i = lshr i16 %bf.load.i.i, 4
  %bEndpointAddress.i.i.i.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 %i.09.i, i32 1, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  %13 = and i8 %12, 15
  %14 = zext i8 %13 to i16
  %.lobit.i.i.i.i = lshr i8 %12, 7
  %15 = zext i8 %.lobit.i.i.i.i to i16
  %bmAttributes.i.i.i.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 %i.09.i, i32 1, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.033.i.i = phi i32 [ 1, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %addr.i.i.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 %i.033.i.i, i32 5
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i.i = load i16, ptr %addr.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i16 %bf.load.i.i.i, 11
  %bf.clear.i.i.i = and i16 %bf.lshr.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear.i.i.i, i16 %14)
  %cmp.not.i.i.i = icmp eq i16 %bf.clear.i.i.i, %14
  %bf.lshr4.i.i.i = lshr i16 %bf.load.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr4.i.i.i, i16 %15)
  %cmp6.not.i.i.i = icmp eq i16 %bf.lshr4.i.i.i, %15
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp6.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end8.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end8.i.i.i:                                    ; preds = %for.body.i.i
  %17 = ptrtoint ptr %bmAttributes.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i.i.i.i, align 1
  %19 = and i8 %18, 3
  %and.i42.i.i.i = zext i8 %19 to i32
  %type.i.i.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 %i.033.i.i, i32 7
  %20 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and.i42.i.i.i)
  %cmp11.not.i.i.i = icmp eq i32 %21, %and.i42.i.i.i
  br i1 %cmp11.not.i.i.i, label %if.end13.i.i.i, label %if.end8.i.i.i.for.inc.i.i_crit_edge

if.end8.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end13.i.i.i:                                   ; preds = %if.end8.i.i.i
  %bf.lshr16.i.i.i = lshr i16 %bf.load.i.i.i, 9
  %22 = xor i16 %bf.lshr16.i.i.i, %bf.lshr.i.i
  %23 = and i16 %22, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp19.not.i.i.i = icmp eq i16 %23, 0
  br i1 %cmp19.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end13.i.i.i.for.inc.i.i_crit_edge

if.end13.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end13.i.i.i
  %bf.lshr22.i.i.i = lshr i16 %bf.load.i.i.i, 6
  %24 = xor i16 %bf.lshr22.i.i.i, %bf.lshr2.i.i
  %25 = and i16 %24, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp25.not.i.i.i = icmp eq i16 %25, 0
  br i1 %cmp25.not.i.i.i, label %is_match_usb_pxa.exit.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

is_match_usb_pxa.exit.i.i:                        ; preds = %lor.lhs.false.i.i.i
  %bf.lshr28.i.i.i = lshr i16 %bf.load.i.i.i, 3
  %26 = xor i16 %bf.lshr28.i.i.i, %bf.lshr6.i.i
  %27 = and i16 %26, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp31.not.i.not.i.i = icmp eq i16 %27, 0
  br i1 %cmp31.not.i.not.i.i, label %cleanup.loopexit.split.loop.exit.i.i, label %is_match_usb_pxa.exit.i.i.for.inc.i.i_crit_edge

is_match_usb_pxa.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %is_match_usb_pxa.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %is_match_usb_pxa.exit.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge, %if.end13.i.i.i.for.inc.i.i_crit_edge, %if.end8.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.find_pxa_ep.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.find_pxa_ep.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_pxa_ep.exit.i

cleanup.loopexit.split.loop.exit.i.i:             ; preds = %is_match_usb_pxa.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.le.i.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 %i.033.i.i
  br label %find_pxa_ep.exit.i

find_pxa_ep.exit.i:                               ; preds = %cleanup.loopexit.split.loop.exit.i.i, %for.inc.i.i.find_pxa_ep.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx13.le.i.i, %cleanup.loopexit.split.loop.exit.i.i ], [ null, %for.inc.i.i.find_pxa_ep.exit.i_crit_edge ]
  %28 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i, ptr %pxa_ep.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %find_pxa_ep.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udc, align 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !358
  %and5.i = and i32 %31, -2147483643
  %or.i = or i32 %and5.i, 16
  %32 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udc, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %or.i) #9, !srcloc !359
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_udc_reset(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !358
  %dev = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.108) #12
  %5 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 134217728) #9, !srcloc !359
  %stats = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 10
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %stats, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body3, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_udc_reset.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@irq_udc_reset, %do.end11)) #9
          to label %if.then8 [label %do.end11], !srcloc !360

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq_udc_reset.__UNIQUE_ID_ddebug323, ptr noundef %10, ptr noundef nonnull @.str.111) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %speed.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %speed.i, align 8
  %arrayidx.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 0
  %call.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.i) #9
  %arrayidx.1.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 1
  %call.1.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.1.i) #9
  %arrayidx.2.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 2
  %call.2.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.2.i) #9
  %arrayidx.3.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 3
  %call.3.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.3.i) #9
  %arrayidx.4.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 4
  %call.4.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.4.i) #9
  %arrayidx.5.i = getelementptr %struct.pxa_udc, ptr %udc, i32 0, i32 11, i32 5
  %call.5.i = tail call i32 @pxa_ep_disable(ptr noundef %arrayidx.5.i) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %entry.if.end12_crit_edge
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %speed = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %speed, align 8
  %13 = call ptr @memset(ptr %stats, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %lock.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %flags.i, align 4
  %queue.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 1
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not13.i = icmp eq ptr %16, %queue.i
  br i1 %cmp.i.not13.i, label %if.end12.nuke.exit_crit_edge, label %if.end12.while.body.i_crit_edge

if.end12.while.body.i_crit_edge:                  ; preds = %if.end12
  br label %while.body.i

if.end12.nuke.exit_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end12.while.body.i_crit_edge
  %17 = phi ptr [ %19, %while.body.i.while.body.i_crit_edge ], [ %16, %if.end12.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %17, i32 -64
  call fastcc void @req_done(ptr noundef %pxa_ep, ptr noundef %add.ptr.i, i32 noundef -71, ptr noundef nonnull %flags.i) #9
  %18 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end12.nuke.exit_crit_edge
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %23 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %spec.select.i = select i1 %tobool.not.i, i32 517, i32 5
  %24 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pxa_ep, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = shl i8 %bf.load.i, 1
  %29 = and i8 %28, 124
  %shl.i = zext i8 %29 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i24 = getelementptr i8, ptr %27, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %spec.select.i) #9, !srcloc !359
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %30 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@irq_udc_reset, %ep0_idle.exit)) #9
          to label %if.then.i.i [label %ep0_idle.exit], !srcloc !360

if.then.i.i:                                      ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pxa_ep, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %38 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i.i, align 4
  %40 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx8.i.i, align 4
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 8
  %46 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i = load i8, ptr %idx.i, align 4
  %47 = shl i8 %bf.load.i.i, 1
  %48 = and i8 %47, 124
  %shl.i.i = zext i8 %48 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %add.i.i
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %50 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pxa_ep, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load14.i.i = load i8, ptr %idx.i, align 4
  %55 = shl i8 %bf.load14.i.i, 1
  %56 = and i8 %55, 124
  %shl18.i.i = zext i8 %56 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %53, i32 %add19.i.i
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.35, ptr noundef %39, ptr noundef nonnull @.str.34, ptr noundef %33, ptr noundef %43, i32 noundef %49, i32 noundef %57) #9
  br label %ep0_idle.exit

ep0_idle.exit:                                    ; preds = %if.then.i.i, %nuke.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa27x_change_configuration(ptr noundef %udc, i32 noundef %config) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.usb_ctrlrequest, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa27x_change_configuration.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa27x_change_configuration, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa27x_change_configuration.__UNIQUE_ID_ddebug321, ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %config) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %config4 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %6 = trunc i32 %config to i16
  %7 = ptrtoint ptr %config4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %config4, align 8
  %bf.value = shl i16 %6, 10
  %bf.shl = and i16 %bf.value, 3072
  %bf.clear = and i16 %bf.load, -4081
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %config4, align 8
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %req, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %6, ptr %1, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %3, align 1
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %13 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.i, align 4
  store i32 7, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa27x_change_configuration, %set_ep0state.exit)) #9
          to label %if.then.i [label %set_ep0state.exit], !srcloc !360

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %17 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pxa_ep.i, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %23 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8.i, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 8
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %29 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %30 = shl i8 %bf.load.i, 1
  %31 = and i8 %30, 124
  %shl.i = zext i8 %31 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %28, i32 %add.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %33 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pxa_ep.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load14.i = load i8, ptr %idx.i, align 4
  %38 = shl i8 %bf.load14.i, 1
  %39 = and i8 %38, 124
  %shl18.i = zext i8 %39 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %36, i32 %add19.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %20, ptr noundef nonnull @.str.35, ptr noundef %22, ptr noundef nonnull @.str.34, ptr noundef %16, ptr noundef %26, i32 noundef %32, i32 noundef %40) #9
  br label %set_ep0state.exit

set_ep0state.exit:                                ; preds = %if.then.i, %do.end
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %41 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %setup, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3
  %call11 = call i32 %44(ptr noundef %gadget, ptr noundef nonnull %req) #9
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %idx.i21 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %45 = ptrtoint ptr %idx.i21 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i22 = load i8, ptr %idx.i21, align 4
  %46 = and i8 %bf.load.i22, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  %spec.select.i = select i1 %tobool.not.i, i32 768, i32 256
  %47 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pxa_ep, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = shl i8 %bf.load.i22, 1
  %52 = and i8 %51, 124
  %shl.i23 = zext i8 %52 to i32
  %add.i24 = or i32 %shl.i23, 256
  %add.ptr.i25 = getelementptr i8, ptr %50, i32 %add.i24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %spec.select.i) #9, !srcloc !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa27x_change_interface(ptr noundef %udc, i32 noundef %iface, i32 noundef %alt) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.usb_ctrlrequest, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa27x_change_interface.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa27x_change_interface, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa27x_change_interface.__UNIQUE_ID_ddebug322, ptr noundef %5, ptr noundef nonnull @.str.107, i32 noundef %iface, i32 noundef %alt) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_interface = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 13
  %6 = trunc i32 %iface to i16
  %7 = ptrtoint ptr %last_interface to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %last_interface, align 8
  %bf.value = shl i16 %6, 7
  %bf.shl = and i16 %bf.value, 896
  %bf.clear = and i16 %bf.load, -1009
  %8 = trunc i32 %alt to i16
  %bf.value5 = shl i16 %8, 4
  %bf.shl6 = and i16 %bf.value5, 112
  %bf.set = or i16 %bf.shl6, %bf.shl
  %bf.set8 = or i16 %bf.set, %bf.clear
  store i16 %bf.set8, ptr %last_interface, align 8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %req, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 11, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %8, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %6, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %3, align 1
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %14 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.i, align 4
  store i32 7, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa27x_change_interface, %set_ep0state.exit)) #9
          to label %if.then.i [label %set_ep0state.exit], !srcloc !360

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %pxa_ep.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %18 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pxa_ep.i, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %24 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.i, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 8
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %30 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %31 = shl i8 %bf.load.i, 1
  %32 = and i8 %31, 124
  %shl.i = zext i8 %32 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !358
  %34 = ptrtoint ptr %pxa_ep.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pxa_ep.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load14.i = load i8, ptr %idx.i, align 4
  %39 = shl i8 %bf.load14.i, 1
  %40 = and i8 %39, 124
  %shl18.i = zext i8 %40 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %37, i32 %add19.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %21, ptr noundef nonnull @.str.35, ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef %17, ptr noundef %27, i32 noundef %33, i32 noundef %41) #9
  br label %set_ep0state.exit

set_ep0state.exit:                                ; preds = %if.then.i, %do.end
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %42 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %setup, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3
  %call11 = call i32 %45(ptr noundef %gadget, ptr noundef nonnull %req) #9
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %idx.i22 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %46 = ptrtoint ptr %idx.i22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i23 = load i8, ptr %idx.i22, align 4
  %47 = and i8 %bf.load.i23, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  %spec.select.i = select i1 %tobool.not.i, i32 768, i32 256
  %48 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pxa_ep, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %52 = shl i8 %bf.load.i23, 1
  %53 = and i8 %52, 124
  %shl.i24 = zext i8 %53 to i32
  %add.i25 = or i32 %shl.i24, 256
  %add.ptr.i26 = getelementptr i8, ptr %51, i32 %add.i25
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %spec.select.i) #9, !srcloc !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ep0(ptr noundef %udc, i32 noundef %fifo_irq, i32 noundef %opc_irq) unnamed_addr #2 align 64 {
entry:
  %flags.i156 = alloca i32, align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  %queue = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %2 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxa_ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %idx = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %idx, align 4
  %7 = shl i8 %bf.load, 1
  %8 = and i8 %7, 124
  %shl = zext i8 %8 to i32
  %add = or i32 %shl, 256
  %add.ptr2 = getelementptr i8, ptr %5, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !358
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep0.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %do.end)) #9
          to label %if.then10 [label %do.end], !srcloc !360

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pxa_ep, align 4
  %dev12 = getelementptr inbounds %struct.pxa_udc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %ep0state = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %16 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ep0state, align 4
  %arrayidx13 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load17 = load i8, ptr %idx, align 4
  %23 = shl i8 %bf.load17, 1
  %24 = and i8 %23, 124
  %shl21 = zext i8 %24 to i32
  %add22 = or i32 %shl21, 512
  %add.ptr23 = getelementptr i8, ptr %21, i32 %add22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !358
  %shl25 = shl i32 %fifo_irq, 1
  %or = or i32 %shl25, %opc_irq
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep0.__UNIQUE_ID_ddebug318, ptr noundef %13, ptr noundef nonnull @.str.113, ptr noundef %15, ptr noundef nonnull @.str.112, ptr noundef %19, ptr noundef %spec.select, i32 noundef %9, i32 noundef %25, i32 noundef %or) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.end.if.end50_crit_edge, label %do.body29

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body29:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep0.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %do.end49)) #9
          to label %if.then43 [label %do.end49], !srcloc !360

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pxa_ep, align 4
  %dev45 = getelementptr inbounds %struct.pxa_udc, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev45, align 4
  %name46 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %30 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep0.__UNIQUE_ID_ddebug319, ptr noundef %29, ptr noundef nonnull @.str.114, ptr noundef %31, ptr noundef nonnull @.str.112) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %lock.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call2.i, ptr %flags.i, align 4
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not13.i = icmp eq ptr %34, %queue
  br i1 %cmp.i.not13.i, label %do.end49.nuke.exit_crit_edge, label %do.end49.while.body.i_crit_edge

do.end49.while.body.i_crit_edge:                  ; preds = %do.end49
  br label %while.body.i

do.end49.nuke.exit_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end49.while.body.i_crit_edge
  %35 = phi ptr [ %37, %while.body.i.while.body.i_crit_edge ], [ %34, %do.end49.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %35, i32 -64
  call fastcc void @req_done(ptr noundef %pxa_ep, ptr noundef %add.ptr.i, i32 noundef -32, ptr noundef nonnull %flags.i) #9
  %36 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %37, %queue
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %do.end49.nuke.exit_crit_edge
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %idx, align 4
  %41 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %spec.select.i = select i1 %tobool.not.i, i32 528, i32 16
  %42 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pxa_ep, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = shl i8 %bf.load.i, 1
  %47 = and i8 %46, 124
  %shl.i = zext i8 %47 to i32
  %add.i = or i32 %shl.i, 256
  %add.ptr.i155 = getelementptr i8, ptr %45, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %spec.select.i) #9, !srcloc !359
  %ep0state.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %48 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx1.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx1.i.i, align 4
  store i32 0, ptr %ep0state.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %if.end50)) #9
          to label %if.then.i.i [label %if.end50], !srcloc !360

if.then.i.i:                                      ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pxa_ep, align 4
  %dev6.i.i = getelementptr inbounds %struct.pxa_udc, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %56 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.i.i, align 4
  %58 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ep0state.i.i, align 4
  %arrayidx8.i.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx8.i.i, align 4
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 8
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i.i = load i8, ptr %idx, align 4
  %65 = shl i8 %bf.load.i.i, 1
  %66 = and i8 %65, 124
  %shl.i.i = zext i8 %66 to i32
  %add.i.i = or i32 %shl.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %add.i.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !358
  %68 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pxa_ep, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load14.i.i = load i8, ptr %idx, align 4
  %73 = shl i8 %bf.load14.i.i, 1
  %74 = and i8 %73, 124
  %shl18.i.i = zext i8 %74 to i32
  %add19.i.i = or i32 %shl18.i.i, 512
  %add.ptr20.i.i = getelementptr i8, ptr %71, i32 %add19.i.i
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef %57, ptr noundef nonnull @.str.34, ptr noundef %51, ptr noundef %61, i32 noundef %67, i32 noundef %75) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then.i.i, %nuke.exit, %do.end.if.end50_crit_edge
  %and51 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i156) #9
  %lock.i157 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 2
  %call2.i158 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i157) #9
  %76 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call2.i158, ptr %flags.i156, align 4
  %77 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not13.i160 = icmp eq ptr %78, %queue
  br i1 %cmp.i.not13.i160, label %if.then53.nuke.exit164_crit_edge, label %if.then53.while.body.i163_crit_edge

if.then53.while.body.i163_crit_edge:              ; preds = %if.then53
  br label %while.body.i163

if.then53.nuke.exit164_crit_edge:                 ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit164

while.body.i163:                                  ; preds = %while.body.i163.while.body.i163_crit_edge, %if.then53.while.body.i163_crit_edge
  %79 = phi ptr [ %81, %while.body.i163.while.body.i163_crit_edge ], [ %78, %if.then53.while.body.i163_crit_edge ]
  %add.ptr.i161 = getelementptr i8, ptr %79, i32 -64
  call fastcc void @req_done(ptr noundef %pxa_ep, ptr noundef %add.ptr.i161, i32 noundef 0, ptr noundef nonnull %flags.i156) #9
  %80 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i162 = icmp eq ptr %81, %queue
  br i1 %cmp.i.not.i162, label %while.body.i163.nuke.exit164_crit_edge, label %while.body.i163.while.body.i163_crit_edge

while.body.i163.while.body.i163_crit_edge:        ; preds = %while.body.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i163

while.body.i163.nuke.exit164_crit_edge:           ; preds = %while.body.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit164

nuke.exit164:                                     ; preds = %while.body.i163.nuke.exit164_crit_edge, %if.then53.nuke.exit164_crit_edge
  %82 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i156, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i157, i32 noundef %83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i156) #9
  %ep0state.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %84 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ep0state.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx1.i, align 4
  store i32 1, ptr %ep0state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %if.end54)) #9
          to label %if.then.i [label %if.end54], !srcloc !360

if.then.i:                                        ; preds = %nuke.exit164
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pxa_ep, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev6.i, align 4
  %name.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %92 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name.i, align 4
  %94 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ep0state.i, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx8.i, align 4
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %89, align 8
  %100 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i166 = load i8, ptr %idx, align 4
  %101 = shl i8 %bf.load.i166, 1
  %102 = and i8 %101, 124
  %shl.i167 = zext i8 %102 to i32
  %add.i168 = or i32 %shl.i167, 256
  %add.ptr.i169 = getelementptr i8, ptr %99, i32 %add.i168
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #9, !srcloc !358
  %104 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pxa_ep, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %108 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load14.i = load i8, ptr %idx, align 4
  %109 = shl i8 %bf.load14.i, 1
  %110 = and i8 %109, 124
  %shl18.i = zext i8 %110 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %107, i32 %add19.i
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %91, ptr noundef nonnull @.str.35, ptr noundef %93, ptr noundef nonnull @.str.34, ptr noundef %87, ptr noundef %97, i32 noundef %103, i32 noundef %111) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then.i, %nuke.exit164, %if.end50.if.end54_crit_edge
  %ep0state55 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %112 = ptrtoint ptr %ep0state55 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ep0state55, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %113, label %if.end54.sw.epilog_crit_edge [
    i32 7, label %if.end54.do.end98_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb65
    i32 3, label %sw.bb79
    i32 6, label %sw.bb90
    i32 4, label %sw.bb91
    i32 5, label %if.end54.do.end98_crit_edge259
  ]

if.end54.do.end98_crit_edge259:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

if.end54.do.end98_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end54
  %and56 = and i32 %9, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %and56)
  %cmp = icmp eq i32 %and56, 193
  br i1 %cmp, label %if.then63, label %sw.bb.sw.epilog_crit_edge, !prof !361

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then63:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @handle_ep0_ctrl_req(ptr noundef %udc)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end54
  %115 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.i171 = load i8, ptr %idx, align 4
  %116 = and i8 %bf.load.i171, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i172 = icmp eq i8 %116, 0
  br i1 %tobool.not.i172, label %sw.bb65.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb65.if.end.i_crit_edge:                       ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb65
  %dir_in.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %117 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load1.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.then68_crit_edge

land.lhs.true.i.if.then68_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb65.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i171, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %118 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pxa_ep, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i173 = getelementptr i8, ptr %121, i32 256
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #9, !srcloc !358
  %and.i = and i32 %122, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %123 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %121, i32 %add26.i
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %124, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i174 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i174)
  %tobool67.not = icmp eq i32 %retval.0.i174, 0
  br i1 %tobool67.not, label %epout_has_pkt.exit.if.end69_crit_edge, label %epout_has_pkt.exit.if.then68_crit_edge

epout_has_pkt.exit.if.then68_crit_edge:           ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

epout_has_pkt.exit.if.end69_crit_edge:            ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then68:                                        ; preds = %epout_has_pkt.exit.if.then68_crit_edge, %land.lhs.true.i.if.then68_crit_edge
  %125 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i176 = load i8, ptr %idx, align 4
  %126 = and i8 %bf.load.i176, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i177 = icmp eq i8 %126, 0
  %spec.select.i178 = select i1 %tobool.not.i177, i32 513, i32 1
  %127 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pxa_ep, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %131 = shl i8 %bf.load.i176, 1
  %132 = and i8 %131, 124
  %shl.i179 = zext i8 %132 to i32
  %add.i180 = or i32 %shl.i179, 256
  %add.ptr.i181 = getelementptr i8, ptr %130, i32 %add.i180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %spec.select.i178) #9, !srcloc !359
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %epout_has_pkt.exit.if.end69_crit_edge
  %tobool70.not = icmp eq ptr %spec.select, null
  br i1 %tobool70.not, label %if.end69.sw.epilog_crit_edge, label %land.lhs.true

if.end69.sw.epilog_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end69
  %133 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load.i183 = load i8, ptr %idx, align 4
  %bf.lshr.i = lshr i8 %bf.load.i183, 1
  %bf.clear.i = and i8 %bf.lshr.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i184 = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i184, label %if.then.i187, label %if.end.i189

if.then.i187:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pxa_ep, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %add.ptr.i185 = getelementptr i8, ptr %137, i32 256
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #9, !srcloc !358
  %and.i186 = and i32 %138, 2
  br label %ep_is_full.exit

if.end.i189:                                      ; preds = %land.lhs.true
  %dir_in.i188 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %139 = ptrtoint ptr %dir_in.i188 to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load6.i = load i16, ptr %dir_in.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load6.i)
  %tobool9.not.i = icmp sgt i16 %bf.load6.i, -1
  br i1 %tobool9.not.i, label %if.end.i189.sw.epilog_crit_edge, label %if.end11.i

if.end.i189.sw.epilog_crit_edge:                  ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pxa_ep, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %144 = shl nuw nsw i8 %bf.clear.i, 2
  %shl19.i = zext i8 %144 to i32
  %add20.i = or i32 %shl19.i, 256
  %add.ptr21.i = getelementptr i8, ptr %143, i32 %add20.i
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !358
  %and23.i = lshr i32 %145, 6
  %and23.lobit.i = and i32 %and23.i, 1
  %146 = xor i32 %and23.lobit.i, 1
  br label %ep_is_full.exit

ep_is_full.exit:                                  ; preds = %if.end11.i, %if.then.i187
  %retval.0.i190 = phi i32 [ %146, %if.end11.i ], [ %and.i186, %if.then.i187 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i190)
  %tobool72.not = icmp eq i32 %retval.0.i190, 0
  br i1 %tobool72.not, label %if.then73, label %ep_is_full.exit.sw.epilog_crit_edge

ep_is_full.exit.sw.epilog_crit_edge:              ; preds = %ep_is_full.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then73:                                        ; preds = %ep_is_full.exit
  %call74 = call fastcc i32 @write_ep0_fifo(ptr noundef %pxa_ep, ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %phi.cmp149 = icmp eq i32 %call74, 0
  br i1 %phi.cmp149, label %if.then73.sw.epilog_crit_edge, label %if.then77

if.then73.sw.epilog_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ep0_end_in_req(ptr noundef %pxa_ep, ptr noundef nonnull %spec.select)
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end54
  %147 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load.i192 = load i8, ptr %idx, align 4
  %148 = and i8 %bf.load.i192, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i193 = icmp eq i8 %148, 0
  br i1 %tobool.not.i193, label %sw.bb79.if.end.i201_crit_edge, label %land.lhs.true.i197

sw.bb79.if.end.i201_crit_edge:                    ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i201

land.lhs.true.i197:                               ; preds = %sw.bb79
  %dir_in.i194 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %149 = ptrtoint ptr %dir_in.i194 to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load1.i195 = load i16, ptr %dir_in.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i195)
  %tobool4.not.i196 = icmp sgt i16 %bf.load1.i195, -1
  br i1 %tobool4.not.i196, label %land.lhs.true.i197.if.end.i201_crit_edge, label %land.lhs.true.i197.epout_has_pkt.exit211_crit_edge

land.lhs.true.i197.epout_has_pkt.exit211_crit_edge: ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %epout_has_pkt.exit211

land.lhs.true.i197.if.end.i201_crit_edge:         ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i201

if.end.i201:                                      ; preds = %land.lhs.true.i197.if.end.i201_crit_edge, %sw.bb79.if.end.i201_crit_edge
  %bf.lshr7.i198 = lshr i8 %bf.load.i192, 1
  %bf.clear8.i199 = and i8 %bf.lshr7.i198, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i199)
  %tobool10.not.i200 = icmp eq i8 %bf.clear8.i199, 0
  %150 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pxa_ep, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 8
  br i1 %tobool10.not.i200, label %if.then11.i204, label %if.end17.i209

if.then11.i204:                                   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i202 = getelementptr i8, ptr %153, i32 256
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #9, !srcloc !358
  %and.i203 = and i32 %154, 1
  br label %epout_has_pkt.exit211

if.end17.i209:                                    ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #11
  %155 = shl nuw nsw i8 %bf.clear8.i199, 2
  %shl25.i205 = zext i8 %155 to i32
  %add26.i206 = or i32 %shl25.i205, 256
  %add.ptr27.i207 = getelementptr i8, ptr %153, i32 %add26.i206
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i207) #9, !srcloc !358
  %and29.i208 = and i32 %156, 2
  br label %epout_has_pkt.exit211

epout_has_pkt.exit211:                            ; preds = %if.end17.i209, %if.then11.i204, %land.lhs.true.i197.epout_has_pkt.exit211_crit_edge
  %retval.0.i210 = phi i32 [ %and29.i208, %if.end17.i209 ], [ %and.i203, %if.then11.i204 ], [ -95, %land.lhs.true.i197.epout_has_pkt.exit211_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i210)
  %tobool81.not = icmp eq i32 %retval.0.i210, 0
  %tobool83.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool81.not, i1 true, i1 %tobool83.not
  br i1 %or.cond, label %epout_has_pkt.exit211.sw.epilog_crit_edge, label %if.then84

epout_has_pkt.exit211.sw.epilog_crit_edge:        ; preds = %epout_has_pkt.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then84:                                        ; preds = %epout_has_pkt.exit211
  %call85 = call fastcc i32 @read_ep0_fifo(ptr noundef %pxa_ep, ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %phi.cmp = icmp eq i32 %call85, 0
  br i1 %phi.cmp, label %if.then84.sw.epilog_crit_edge, label %if.then88

if.then84.sw.epilog_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ep0_end_out_req(ptr noundef %pxa_ep, ptr noundef nonnull %spec.select)
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load.i213 = load i8, ptr %idx, align 4
  %158 = and i8 %bf.load.i213, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i214 = icmp eq i8 %158, 0
  %spec.select.i215 = select i1 %tobool.not.i214, i32 544, i32 32
  %159 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pxa_ep, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 8
  %163 = shl i8 %bf.load.i213, 1
  %164 = and i8 %163, 124
  %shl.i216 = zext i8 %164 to i32
  %add.i217 = or i32 %shl.i216, 256
  %add.ptr.i218 = getelementptr i8, ptr %162, i32 %add.i217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %spec.select.i215) #9, !srcloc !359
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opc_irq)
  %tobool92.not = icmp eq i32 %opc_irq, 0
  br i1 %tobool92.not, label %sw.bb91.sw.epilog_crit_edge, label %if.then93

sw.bb91.sw.epilog_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then93:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %ep0state55 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %ep0state55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %sw.epilog)) #9
          to label %if.then.i.i234 [label %sw.epilog], !srcloc !360

if.then.i.i234:                                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pxa_ep, align 4
  %dev6.i.i222 = getelementptr inbounds %struct.pxa_udc, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %dev6.i.i222 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev6.i.i222, align 4
  %name.i.i223 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %170 = ptrtoint ptr %name.i.i223 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name.i.i223, align 4
  %172 = ptrtoint ptr %ep0state55 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ep0state55, align 4
  %arrayidx8.i.i224 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %173
  %174 = ptrtoint ptr %arrayidx8.i.i224 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx8.i.i224, align 4
  %176 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %167, align 8
  %178 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load.i.i226 = load i8, ptr %idx, align 4
  %179 = shl i8 %bf.load.i.i226, 1
  %180 = and i8 %179, 124
  %shl.i.i227 = zext i8 %180 to i32
  %add.i.i228 = or i32 %shl.i.i227, 256
  %add.ptr.i.i229 = getelementptr i8, ptr %177, i32 %add.i.i228
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i229) #9, !srcloc !358
  %182 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pxa_ep, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 8
  %186 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load14.i.i230 = load i8, ptr %idx, align 4
  %187 = shl i8 %bf.load14.i.i230, 1
  %188 = and i8 %187, 124
  %shl18.i.i231 = zext i8 %188 to i32
  %add19.i.i232 = or i32 %shl18.i.i231, 512
  %add.ptr20.i.i233 = getelementptr i8, ptr %185, i32 %add19.i.i232
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i233) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %169, ptr noundef nonnull @.str.35, ptr noundef %171, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40, ptr noundef %175, i32 noundef %181, i32 noundef %189) #9
  br label %sw.epilog

do.end98:                                         ; preds = %if.end54.do.end98_crit_edge, %if.end54.do.end98_crit_edge259
  %190 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pxa_ep, align 4
  %dev100 = getelementptr inbounds %struct.pxa_udc, ptr %191, i32 0, i32 5
  %192 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev100, align 4
  %name101 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %194 = ptrtoint ptr %name101 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %name101, align 4
  %ep0state103 = getelementptr inbounds %struct.pxa_udc, ptr %191, i32 0, i32 9
  %196 = ptrtoint ptr %ep0state103 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ep0state103, align 4
  %arrayidx104 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx104, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.115, ptr noundef %195, ptr noundef nonnull @.str.112, ptr noundef %199) #12
  %200 = ptrtoint ptr %ep0state55 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ep0state55, align 4
  %arrayidx1.i.i237 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %201
  %202 = ptrtoint ptr %arrayidx1.i.i237 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx1.i.i237, align 4
  store i32 0, ptr %ep0state55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %sw.epilog)) #9
          to label %if.then.i.i251 [label %sw.epilog], !srcloc !360

if.then.i.i251:                                   ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pxa_ep, align 4
  %dev6.i.i239 = getelementptr inbounds %struct.pxa_udc, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %dev6.i.i239 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev6.i.i239, align 4
  %208 = ptrtoint ptr %name101 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name101, align 4
  %210 = ptrtoint ptr %ep0state55 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ep0state55, align 4
  %arrayidx8.i.i241 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %211
  %212 = ptrtoint ptr %arrayidx8.i.i241 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx8.i.i241, align 4
  %214 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %205, align 8
  %216 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %216)
  %bf.load.i.i243 = load i8, ptr %idx, align 4
  %217 = shl i8 %bf.load.i.i243, 1
  %218 = and i8 %217, 124
  %shl.i.i244 = zext i8 %218 to i32
  %add.i.i245 = or i32 %shl.i.i244, 256
  %add.ptr.i.i246 = getelementptr i8, ptr %215, i32 %add.i.i245
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i246) #9, !srcloc !358
  %220 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pxa_ep, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 8
  %224 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %224)
  %bf.load14.i.i247 = load i8, ptr %idx, align 4
  %225 = shl i8 %bf.load14.i.i247, 1
  %226 = and i8 %225, 124
  %shl18.i.i248 = zext i8 %226 to i32
  %add19.i.i249 = or i32 %shl18.i.i248, 512
  %add.ptr20.i.i250 = getelementptr i8, ptr %223, i32 %add19.i.i249
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i250) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %207, ptr noundef nonnull @.str.35, ptr noundef %209, ptr noundef nonnull @.str.34, ptr noundef %203, ptr noundef %213, i32 noundef %219, i32 noundef %227) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i.i251, %do.end98, %if.then.i.i234, %if.then93, %sw.bb91.sw.epilog_crit_edge, %sw.bb90, %if.then88, %if.then84.sw.epilog_crit_edge, %epout_has_pkt.exit211.sw.epilog_crit_edge, %if.then77, %if.then73.sw.epilog_crit_edge, %ep_is_full.exit.sw.epilog_crit_edge, %if.end.i189.sw.epilog_crit_edge, %if.end69.sw.epilog_crit_edge, %if.then63, %sw.bb.sw.epilog_crit_edge, %if.end54.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ep0_ctrl_req(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %u = alloca %union.anon.85, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pxa_ep = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u) #9
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !369
  %1 = getelementptr inbounds [2 x i32], ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %lock.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %flags.i, align 4
  %queue.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 1
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not13.i = icmp eq ptr %5, %queue.i
  br i1 %cmp.i.not13.i, label %entry.nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nuke.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %6 = phi ptr [ %8, %while.body.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -64
  call fastcc void @req_done(ptr noundef %pxa_ep, ptr noundef %add.ptr.i, i32 noundef -71, ptr noundef nonnull %flags.i) #9
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %entry.nuke.exit_crit_edge
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %idx.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 3
  %11 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %idx.i, align 4
  %12 = and i8 %bf.load.i, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %nuke.exit.if.end.i_crit_edge, label %land.lhs.true.i

nuke.exit.if.end.i_crit_edge:                     ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %nuke.exit
  %dir_in.i = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %13 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load1.i = load i16, ptr %dir_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i)
  %tobool4.not.i = icmp sgt i16 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %nuke.exit.if.end.i_crit_edge
  %bf.lshr7.i = lshr i8 %bf.load.i, 1
  %bf.clear8.i = and i8 %bf.lshr7.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool10.not.i = icmp eq i8 %bf.clear8.i, 0
  %14 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pxa_ep, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i4 = getelementptr i8, ptr %17, i32 256
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #9, !srcloc !358
  %and.i = and i32 %18, 1
  br label %epout_has_pkt.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = shl nuw nsw i8 %bf.clear8.i, 2
  %shl25.i = zext i8 %19 to i32
  %add26.i = or i32 %shl25.i, 256
  %add.ptr27.i = getelementptr i8, ptr %17, i32 %add26.i
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !358
  %and29.i = and i32 %20, 2
  br label %epout_has_pkt.exit

epout_has_pkt.exit:                               ; preds = %if.end17.i, %if.then11.i
  %retval.0.i5 = phi i32 [ %and29.i, %if.end17.i ], [ %and.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i5)
  %tobool.not = icmp eq i32 %retval.0.i5, 0
  br i1 %tobool.not, label %epout_has_pkt.exit.if.end_crit_edge, label %epout_has_pkt.exit.land.lhs.true_crit_edge

epout_has_pkt.exit.land.lhs.true_crit_edge:       ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

epout_has_pkt.exit.if.end_crit_edge:              ; preds = %epout_has_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %epout_has_pkt.exit.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge
  %dir_in.i6 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %21 = ptrtoint ptr %dir_in.i6 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i7 = load i16, ptr %dir_in.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i7)
  %tobool.not.i8 = icmp sgt i16 %bf.load.i7, -1
  br i1 %tobool.not.i8, label %ep_count_bytes_remain.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ep_count_bytes_remain.exit:                       ; preds = %land.lhs.true
  %22 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pxa_ep, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load1.i10 = load i8, ptr %idx.i, align 4
  %27 = shl i8 %bf.load1.i10, 1
  %28 = and i8 %27, 124
  %shl.i = zext i8 %28 to i32
  %add.i = or i32 %shl.i, 512
  %add.ptr.i11 = getelementptr i8, ptr %25, i32 %add.i
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !358
  %and.i12 = and i32 %29, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %cmp7 = icmp eq i32 %and.i12, 0
  br i1 %cmp7, label %if.then, label %ep_count_bytes_remain.exit.if.end_crit_edge

ep_count_bytes_remain.exit.if.end_crit_edge:      ; preds = %ep_count_bytes_remain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ep_count_bytes_remain.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i16 = load i8, ptr %idx.i, align 4
  %31 = and i8 %bf.load.i16, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i17 = icmp eq i8 %31, 0
  %spec.select.i = select i1 %tobool.not.i17, i32 513, i32 1
  %32 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pxa_ep, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = shl i8 %bf.load.i16, 1
  %37 = and i8 %36, 124
  %shl.i18 = zext i8 %37 to i32
  %add.i19 = or i32 %shl.i18, 256
  %add.ptr.i20 = getelementptr i8, ptr %35, i32 %add.i19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %spec.select.i) #9, !srcloc !359
  br label %if.end

if.end:                                           ; preds = %if.then, %ep_count_bytes_remain.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %epout_has_pkt.exit.if.end_crit_edge
  %dir_in.i24 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 5
  %38 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i22 = load i8, ptr %idx.i, align 4
  %39 = and i8 %bf.load.i22, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i23 = icmp eq i8 %39, 0
  br i1 %tobool.not.i23, label %if.end.if.end.i31_crit_edge, label %land.lhs.true.i27

if.end.if.end.i31_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31

land.lhs.true.i27:                                ; preds = %if.end
  %40 = ptrtoint ptr %dir_in.i24 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load1.i25 = load i16, ptr %dir_in.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i25)
  %tobool4.not.i26 = icmp sgt i16 %bf.load1.i25, -1
  br i1 %tobool4.not.i26, label %land.lhs.true.i27.if.end.i31_crit_edge, label %land.lhs.true.i27.do.body102_crit_edge

land.lhs.true.i27.do.body102_crit_edge:           ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

land.lhs.true.i27.if.end.i31_crit_edge:           ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31

if.end.i31:                                       ; preds = %land.lhs.true.i27.if.end.i31_crit_edge, %if.end.if.end.i31_crit_edge
  %bf.lshr7.i28 = lshr i8 %bf.load.i22, 1
  %bf.clear8.i29 = and i8 %bf.lshr7.i28, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i29)
  %tobool10.not.i30 = icmp eq i8 %bf.clear8.i29, 0
  %41 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pxa_ep, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  br i1 %tobool10.not.i30, label %if.then11.i33, label %if.else.i

if.then11.i33:                                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i32 = getelementptr i8, ptr %44, i32 256
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #9, !srcloc !358
  br label %ep_is_empty.exit

if.else.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  %46 = shl nuw nsw i8 %bf.clear8.i29, 2
  %shl25.i34 = zext i8 %46 to i32
  %add26.i35 = or i32 %shl25.i34, 256
  %add.ptr27.i36 = getelementptr i8, ptr %44, i32 %add26.i35
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i36) #9, !srcloc !358
  br label %ep_is_empty.exit

ep_is_empty.exit:                                 ; preds = %if.else.i, %if.then11.i33
  %ret.0.in.in.in.i = phi i32 [ %47, %if.else.i ], [ %45, %if.then11.i33 ]
  %48 = and i32 %ret.0.in.in.in.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool12.not.not = icmp eq i32 %48, 0
  br i1 %tobool12.not.not, label %ep_is_empty.exit.do.body102_crit_edge, label %if.end16, !prof !362

ep_is_empty.exit.do.body102_crit_edge:            ; preds = %ep_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end16:                                         ; preds = %ep_is_empty.exit
  %49 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pxa_ep, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %idx.i, align 4
  %54 = shl i8 %bf.load, 1
  %55 = and i8 %54, 124
  %shl = zext i8 %55 to i32
  %add = or i32 %shl, 768
  %add.ptr = getelementptr i8, ptr %52, i32 %add
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %57 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %u, align 4
  %58 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i22.1 = load i8, ptr %idx.i, align 4
  %59 = and i8 %bf.load.i22.1, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i23.1 = icmp eq i8 %59, 0
  br i1 %tobool.not.i23.1, label %if.end16.if.end.i31.1_crit_edge, label %land.lhs.true.i27.1

if.end16.if.end.i31.1_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31.1

land.lhs.true.i27.1:                              ; preds = %if.end16
  %60 = ptrtoint ptr %dir_in.i24 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load1.i25.1 = load i16, ptr %dir_in.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i25.1)
  %tobool4.not.i26.1 = icmp sgt i16 %bf.load1.i25.1, -1
  br i1 %tobool4.not.i26.1, label %land.lhs.true.i27.1.if.end.i31.1_crit_edge, label %land.lhs.true.i27.1.do.body102_crit_edge

land.lhs.true.i27.1.do.body102_crit_edge:         ; preds = %land.lhs.true.i27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

land.lhs.true.i27.1.if.end.i31.1_crit_edge:       ; preds = %land.lhs.true.i27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31.1

if.end.i31.1:                                     ; preds = %land.lhs.true.i27.1.if.end.i31.1_crit_edge, %if.end16.if.end.i31.1_crit_edge
  %bf.lshr7.i28.1 = lshr i8 %bf.load.i22.1, 1
  %bf.clear8.i29.1 = and i8 %bf.lshr7.i28.1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i29.1)
  %tobool10.not.i30.1 = icmp eq i8 %bf.clear8.i29.1, 0
  %61 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pxa_ep, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  br i1 %tobool10.not.i30.1, label %if.then11.i33.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.end.i31.1
  call void @__sanitizer_cov_trace_pc() #11
  %65 = shl nuw nsw i8 %bf.clear8.i29.1, 2
  %shl25.i34.1 = zext i8 %65 to i32
  %add26.i35.1 = or i32 %shl25.i34.1, 256
  %add.ptr27.i36.1 = getelementptr i8, ptr %64, i32 %add26.i35.1
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i36.1) #9, !srcloc !358
  br label %ep_is_empty.exit.1

if.then11.i33.1:                                  ; preds = %if.end.i31.1
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i32.1 = getelementptr i8, ptr %64, i32 256
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.1) #9, !srcloc !358
  br label %ep_is_empty.exit.1

ep_is_empty.exit.1:                               ; preds = %if.then11.i33.1, %if.else.i.1
  %ret.0.in.in.in.i.1 = phi i32 [ %66, %if.else.i.1 ], [ %67, %if.then11.i33.1 ]
  %68 = and i32 %ret.0.in.in.in.i.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool12.not.not.1 = icmp eq i32 %68, 0
  br i1 %tobool12.not.not.1, label %ep_is_empty.exit.1.do.body102_crit_edge, label %if.end16.1, !prof !362

ep_is_empty.exit.1.do.body102_crit_edge:          ; preds = %ep_is_empty.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end16.1:                                       ; preds = %ep_is_empty.exit.1
  %69 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pxa_ep, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %73 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.1 = load i8, ptr %idx.i, align 4
  %74 = shl i8 %bf.load.1, 1
  %75 = and i8 %74, 124
  %shl.1 = zext i8 %75 to i32
  %add.1 = or i32 %shl.1, 768
  %add.ptr.1 = getelementptr i8, ptr %72, i32 %add.1
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #9, !srcloc !358
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %1, align 4
  %78 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i39 = load i8, ptr %idx.i, align 4
  %79 = and i8 %bf.load.i39, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i40 = icmp eq i8 %79, 0
  br i1 %tobool.not.i40, label %if.end16.1.if.end.i48_crit_edge, label %land.lhs.true.i44

if.end16.1.if.end.i48_crit_edge:                  ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i48

land.lhs.true.i44:                                ; preds = %if.end16.1
  %80 = ptrtoint ptr %dir_in.i24 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load1.i42 = load i16, ptr %dir_in.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i42)
  %tobool4.not.i43 = icmp sgt i16 %bf.load1.i42, -1
  br i1 %tobool4.not.i43, label %land.lhs.true.i44.if.end.i48_crit_edge, label %land.lhs.true.i44.ep_is_empty.exit61_crit_edge

land.lhs.true.i44.ep_is_empty.exit61_crit_edge:   ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_is_empty.exit61

land.lhs.true.i44.if.end.i48_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i48

if.end.i48:                                       ; preds = %land.lhs.true.i44.if.end.i48_crit_edge, %if.end16.1.if.end.i48_crit_edge
  %bf.lshr7.i45 = lshr i8 %bf.load.i39, 1
  %bf.clear8.i46 = and i8 %bf.lshr7.i45, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i46)
  %tobool10.not.i47 = icmp eq i8 %bf.clear8.i46, 0
  %81 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pxa_ep, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  br i1 %tobool10.not.i47, label %if.then11.i50, label %if.else.i54

if.then11.i50:                                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i49 = getelementptr i8, ptr %84, i32 256
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #9, !srcloc !358
  br label %if.end33.i59

if.else.i54:                                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  %86 = shl nuw nsw i8 %bf.clear8.i46, 2
  %shl25.i51 = zext i8 %86 to i32
  %add26.i52 = or i32 %shl25.i51, 256
  %add.ptr27.i53 = getelementptr i8, ptr %84, i32 %add26.i52
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i53) #9, !srcloc !358
  br label %if.end33.i59

if.end33.i59:                                     ; preds = %if.else.i54, %if.then11.i50
  %ret.0.in.in.in.i55 = phi i32 [ %87, %if.else.i54 ], [ %85, %if.then11.i50 ]
  %88 = and i32 %ret.0.in.in.in.i55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %phi.cmp = icmp ne i32 %88, 0
  br label %ep_is_empty.exit61

ep_is_empty.exit61:                               ; preds = %if.end33.i59, %land.lhs.true.i44.ep_is_empty.exit61_crit_edge
  %retval.0.i60 = phi i1 [ %phi.cmp, %if.end33.i59 ], [ false, %land.lhs.true.i44.ep_is_empty.exit61_crit_edge ]
  %name = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %ep_is_empty.exit61
  %i.1 = phi i32 [ 2, %ep_is_empty.exit61 ], [ %107, %while.body ]
  %89 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i63 = load i8, ptr %idx.i, align 4
  %90 = and i8 %bf.load.i63, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i64 = icmp eq i8 %90, 0
  br i1 %tobool.not.i64, label %while.cond.if.end.i72_crit_edge, label %land.lhs.true.i68

while.cond.if.end.i72_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i72

land.lhs.true.i68:                                ; preds = %while.cond
  %91 = ptrtoint ptr %dir_in.i24 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load1.i66 = load i16, ptr %dir_in.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load1.i66)
  %tobool4.not.i67 = icmp sgt i16 %bf.load1.i66, -1
  br i1 %tobool4.not.i67, label %land.lhs.true.i68.if.end.i72_crit_edge, label %land.lhs.true.i68.do.body43_crit_edge

land.lhs.true.i68.do.body43_crit_edge:            ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

land.lhs.true.i68.if.end.i72_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i72

if.end.i72:                                       ; preds = %land.lhs.true.i68.if.end.i72_crit_edge, %while.cond.if.end.i72_crit_edge
  %bf.lshr7.i69 = lshr i8 %bf.load.i63, 1
  %bf.clear8.i70 = and i8 %bf.lshr7.i69, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i70)
  %tobool10.not.i71 = icmp eq i8 %bf.clear8.i70, 0
  %92 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pxa_ep, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  br i1 %tobool10.not.i71, label %if.then11.i74, label %if.else.i78

if.then11.i74:                                    ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i73 = getelementptr i8, ptr %95, i32 256
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #9, !srcloc !358
  br label %ep_is_empty.exit85

if.else.i78:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %97 = shl nuw nsw i8 %bf.clear8.i70, 2
  %shl25.i75 = zext i8 %97 to i32
  %add26.i76 = or i32 %shl25.i75, 256
  %add.ptr27.i77 = getelementptr i8, ptr %95, i32 %add26.i76
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i77) #9, !srcloc !358
  br label %ep_is_empty.exit85

ep_is_empty.exit85:                               ; preds = %if.else.i78, %if.then11.i74
  %ret.0.in.in.in.i79 = phi i32 [ %98, %if.else.i78 ], [ %96, %if.then11.i74 ]
  %99 = and i32 %ret.0.in.in.in.i79, 64
  %tobool24.not.not = icmp eq i32 %99, 0
  br i1 %tobool24.not.not, label %ep_is_empty.exit85.do.body43_crit_edge, label %while.body

ep_is_empty.exit85.do.body43_crit_edge:           ; preds = %ep_is_empty.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

while.body:                                       ; preds = %ep_is_empty.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pxa_ep, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %104 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load30 = load i8, ptr %idx.i, align 4
  %105 = shl i8 %bf.load30, 1
  %106 = and i8 %105, 124
  %shl34 = zext i8 %106 to i32
  %add35 = or i32 %shl34, 768
  %add.ptr36 = getelementptr i8, ptr %103, i32 %add35
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !358
  %108 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pxa_ep, align 4
  %dev42 = getelementptr inbounds %struct.pxa_udc, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev42, align 4
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.116, ptr noundef %113, ptr noundef nonnull @.str.117, i32 noundef %107) #12
  br label %while.cond

do.body43:                                        ; preds = %ep_is_empty.exit85.do.body43_crit_edge, %land.lhs.true.i68.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0_ctrl_req, %do.end66)) #9
          to label %if.then55 [label %do.end66], !srcloc !360

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pxa_ep, align 4
  %dev57 = getelementptr inbounds %struct.pxa_udc, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev57, align 4
  %118 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name, align 4
  %120 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %u, align 4
  %conv59 = zext i8 %121 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 1
  %122 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bRequest, align 1
  %conv60 = zext i8 %123 to i32
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %124 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %wValue, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125)
  %conv61 = zext i16 %126 to i32
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %1, align 4
  %129 = call i16 @llvm.bswap.i16(i16 %128)
  %conv62 = zext i16 %129 to i32
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %130 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %wLength, align 2
  %132 = call i16 @llvm.bswap.i16(i16 %131)
  %conv63 = zext i16 %132 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug316, ptr noundef %117, ptr noundef nonnull @.str.118, ptr noundef %119, ptr noundef nonnull @.str.117, i32 noundef %conv59, i32 noundef %conv60, i32 noundef %conv61, i32 noundef %conv62, i32 noundef %conv63) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then55, %do.body43
  br i1 %retval.0.i60, label %do.end66.do.body102_crit_edge, label %if.end75, !prof !362

do.end66.do.body102_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end75:                                         ; preds = %do.end66
  %133 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %134)
  %tobool78.not = icmp sgt i8 %134, -1
  %ep0state.i91 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %135 = ptrtoint ptr %ep0state.i91 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ep0state.i91, align 4
  %arrayidx1.i92 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %136
  %137 = ptrtoint ptr %arrayidx1.i92 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx1.i92, align 4
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %ep0state.i91 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %ep0state.i91, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0_ctrl_req, %if.end80)) #9
          to label %if.then.i [label %if.end80], !srcloc !360

if.then.i:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pxa_ep, align 4
  %dev6.i = getelementptr inbounds %struct.pxa_udc, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev6.i, align 4
  %144 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name, align 4
  %146 = ptrtoint ptr %ep0state.i91 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ep0state.i91, align 4
  %arrayidx8.i = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx8.i, align 4
  %150 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %141, align 8
  %152 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i87 = load i8, ptr %idx.i, align 4
  %153 = shl i8 %bf.load.i87, 1
  %154 = and i8 %153, 124
  %shl.i88 = zext i8 %154 to i32
  %add.i89 = or i32 %shl.i88, 256
  %add.ptr.i90 = getelementptr i8, ptr %151, i32 %add.i89
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #9, !srcloc !358
  %156 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pxa_ep, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %160 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load14.i = load i8, ptr %idx.i, align 4
  %161 = shl i8 %bf.load14.i, 1
  %162 = and i8 %161, 124
  %shl18.i = zext i8 %162 to i32
  %add19.i = or i32 %shl18.i, 512
  %add.ptr20.i = getelementptr i8, ptr %159, i32 %add19.i
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %143, ptr noundef nonnull @.str.35, ptr noundef %145, ptr noundef nonnull @.str.34, ptr noundef %138, ptr noundef %149, i32 noundef %155, i32 noundef %163) #9
  br label %if.end80

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %ep0state.i91 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 3, ptr %ep0state.i91, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0_ctrl_req, %if.end80)) #9
          to label %if.then.i106 [label %if.end80], !srcloc !360

if.then.i106:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pxa_ep, align 4
  %dev6.i94 = getelementptr inbounds %struct.pxa_udc, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %dev6.i94 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev6.i94, align 4
  %169 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name, align 4
  %171 = ptrtoint ptr %ep0state.i91 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ep0state.i91, align 4
  %arrayidx8.i96 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx8.i96 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx8.i96, align 4
  %175 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %166, align 8
  %177 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load.i98 = load i8, ptr %idx.i, align 4
  %178 = shl i8 %bf.load.i98, 1
  %179 = and i8 %178, 124
  %shl.i99 = zext i8 %179 to i32
  %add.i100 = or i32 %shl.i99, 256
  %add.ptr.i101 = getelementptr i8, ptr %176, i32 %add.i100
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #9, !srcloc !358
  %181 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pxa_ep, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %185 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load14.i102 = load i8, ptr %idx.i, align 4
  %186 = shl i8 %bf.load14.i102, 1
  %187 = and i8 %186, 124
  %shl18.i103 = zext i8 %187 to i32
  %add19.i104 = or i32 %shl18.i103, 512
  %add.ptr20.i105 = getelementptr i8, ptr %184, i32 %add19.i104
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i105) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %168, ptr noundef nonnull @.str.35, ptr noundef %170, ptr noundef nonnull @.str.34, ptr noundef %138, ptr noundef %174, i32 noundef %180, i32 noundef %188) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then.i106, %if.else, %if.then.i, %if.then79
  %189 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %bf.load.i109 = load i8, ptr %idx.i, align 4
  %190 = and i8 %bf.load.i109, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i110 = icmp eq i8 %190, 0
  %spec.select.i111 = select i1 %tobool.not.i110, i32 641, i32 129
  %191 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pxa_ep, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 8
  %195 = shl i8 %bf.load.i109, 1
  %196 = and i8 %195, 124
  %shl.i112 = zext i8 %196 to i32
  %add.i113 = or i32 %shl.i112, 256
  %add.ptr.i114 = getelementptr i8, ptr %194, i32 %add.i113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %spec.select.i111) #9, !srcloc !359
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2) #9
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 4
  %197 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %setup, align 4
  %gadget = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 3
  %call82 = call i32 %200(ptr noundef %gadget, ptr noundef nonnull %u) #9
  %call92 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp97 = icmp slt i32 %call82, 0
  br i1 %cmp97, label %if.end80.do.body102_crit_edge, label %if.end80.out_crit_edge

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end80.do.body102_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

out:                                              ; preds = %if.then.i137, %do.end133, %if.end80.out_crit_edge
  %flags.0 = phi i32 [ %call92, %if.end80.out_crit_edge ], [ %flags.1, %do.end133 ], [ %flags.1, %if.then.i137 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u) #9
  ret void

do.body102:                                       ; preds = %if.end80.do.body102_crit_edge, %do.end66.do.body102_crit_edge, %ep_is_empty.exit.1.do.body102_crit_edge, %land.lhs.true.i27.1.do.body102_crit_edge, %ep_is_empty.exit.do.body102_crit_edge, %land.lhs.true.i27.do.body102_crit_edge
  %flags.1 = phi i32 [ %call2, %do.end66.do.body102_crit_edge ], [ %call92, %if.end80.do.body102_crit_edge ], [ %call2, %ep_is_empty.exit.1.do.body102_crit_edge ], [ %call2, %land.lhs.true.i27.1.do.body102_crit_edge ], [ %call2, %ep_is_empty.exit.do.body102_crit_edge ], [ %call2, %land.lhs.true.i27.do.body102_crit_edge ]
  %i.2 = phi i32 [ %i.1, %do.end66.do.body102_crit_edge ], [ %call82, %if.end80.do.body102_crit_edge ], [ 1, %ep_is_empty.exit.1.do.body102_crit_edge ], [ 1, %land.lhs.true.i27.1.do.body102_crit_edge ], [ 0, %ep_is_empty.exit.do.body102_crit_edge ], [ 0, %land.lhs.true.i27.do.body102_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0_ctrl_req, %do.end133)) #9
          to label %if.then116 [label %do.end133], !srcloc !360

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pxa_ep, align 4
  %dev118 = getelementptr inbounds %struct.pxa_udc, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev118, align 4
  %name119 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %205 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name119, align 4
  %207 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %202, align 8
  %209 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load123 = load i8, ptr %idx.i, align 4
  %210 = shl i8 %bf.load123, 1
  %211 = and i8 %210, 124
  %shl127 = zext i8 %211 to i32
  %add128 = or i32 %shl127, 256
  %add.ptr129 = getelementptr i8, ptr %208, i32 %add128
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug317, ptr noundef %204, ptr noundef nonnull @.str.119, ptr noundef %206, ptr noundef nonnull @.str.117, i32 noundef %212, i32 noundef %i.2) #9
  br label %do.end133

do.end133:                                        ; preds = %if.then116, %do.body102
  %213 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %bf.load.i116 = load i8, ptr %idx.i, align 4
  %214 = and i8 %bf.load.i116, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i117 = icmp eq i8 %214, 0
  %spec.select.i118 = select i1 %tobool.not.i117, i32 548, i32 36
  %215 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pxa_ep, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 8
  %219 = shl i8 %bf.load.i116, 1
  %220 = and i8 %219, 124
  %shl.i119 = zext i8 %220 to i32
  %add.i120 = or i32 %shl.i119, 256
  %add.ptr.i121 = getelementptr i8, ptr %218, i32 %add.i120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %spec.select.i118) #9, !srcloc !359
  %ep0state.i122 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 9
  %221 = ptrtoint ptr %ep0state.i122 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %ep0state.i122, align 4
  %arrayidx1.i123 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx1.i123 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx1.i123, align 4
  store i32 6, ptr %ep0state.i122, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ep0state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0_ctrl_req, %out)) #9
          to label %if.then.i137 [label %out], !srcloc !360

if.then.i137:                                     ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pxa_ep, align 4
  %dev6.i125 = getelementptr inbounds %struct.pxa_udc, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %dev6.i125 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev6.i125, align 4
  %name.i126 = getelementptr inbounds %struct.pxa_udc, ptr %udc, i32 0, i32 12, i32 0, i32 4
  %229 = ptrtoint ptr %name.i126 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %name.i126, align 4
  %231 = ptrtoint ptr %ep0state.i122 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ep0state.i122, align 4
  %arrayidx8.i127 = getelementptr [8 x ptr], ptr @ep0_state_name, i32 0, i32 %232
  %233 = ptrtoint ptr %arrayidx8.i127 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx8.i127, align 4
  %235 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %226, align 8
  %237 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %bf.load.i129 = load i8, ptr %idx.i, align 4
  %238 = shl i8 %bf.load.i129, 1
  %239 = and i8 %238, 124
  %shl.i130 = zext i8 %239 to i32
  %add.i131 = or i32 %shl.i130, 256
  %add.ptr.i132 = getelementptr i8, ptr %236, i32 %add.i131
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #9, !srcloc !358
  %241 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pxa_ep, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 8
  %245 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load14.i133 = load i8, ptr %idx.i, align 4
  %246 = shl i8 %bf.load14.i133, 1
  %247 = and i8 %246, 124
  %shl18.i134 = zext i8 %247 to i32
  %add19.i135 = or i32 %shl18.i134, 512
  %add.ptr20.i136 = getelementptr i8, ptr %244, i32 %add19.i135
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i136) #9, !srcloc !358
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ep0state.__UNIQUE_ID_ddebug293, ptr noundef %228, ptr noundef nonnull @.str.35, ptr noundef %230, ptr noundef nonnull @.str.34, ptr noundef %224, ptr noundef %234, i32 noundef %240, i32 noundef %248) #9
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_udc_phy_event(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @usb_gadget_vbus_connect(ptr noundef %data) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %data) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb1 ], [ 1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_dbg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @state_dbg_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %driver4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.123, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.124, ptr noundef %5) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool5.not = icmp sgt i32 %8, -1
  %cond6 = select i1 %tobool5.not, ptr @.str.86, ptr @.str.127
  %and7 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.86, ptr @.str.128
  %and10 = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.86, ptr @.str.129
  %and13 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.86, ptr @.str.130
  %and16 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.86, ptr @.str.131
  %and19 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.86, ptr @.str.132
  %and22 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.86, ptr @.str.133
  %and25 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.86, ptr @.str.134
  %and28 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.86, ptr @.str.135
  %and31 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.86, ptr @.str.136
  %and34 = lshr i32 %8, 11
  %shr = and i32 %and34, 3
  %and35 = lshr i32 %8, 8
  %shr36 = and i32 %and35, 7
  %and37 = lshr i32 %8, 5
  %shr38 = and i32 %and37, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, i32 noundef %8, ptr noundef nonnull %cond6, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15, ptr noundef nonnull %cond18, ptr noundef nonnull %cond21, ptr noundef nonnull %cond24, ptr noundef nonnull %cond27, ptr noundef nonnull %cond30, ptr noundef nonnull %cond33, i32 noundef %shr, i32 noundef %shr36, i32 noundef %shr38) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr40 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !358
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr43 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !358
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.137, i32 noundef %11, i32 noundef %14) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr46 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !358
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr49 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #9, !srcloc !358
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138, i32 noundef %17, i32 noundef %20) #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %add.ptr52 = getelementptr i8, ptr %22, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !358
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.139, i32 noundef %23) #9
  %stats = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats, align 8
  %irqs_suspend = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %irqs_suspend to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irqs_suspend, align 4
  %irqs_resume = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %irqs_resume to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irqs_resume, align 8
  %irqs_reconfig = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %irqs_reconfig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irqs_reconfig, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.140, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queues_dbg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @queues_dbg_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queues_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %fifo_size = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.043, i32 6
  %4 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_size, align 4
  %name = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.043, i32 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef %7, i32 noundef %5, ptr noundef nonnull @.str.142) #9
  %queue = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.043, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  br i1 %cmp.i.not, label %if.then2, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn40 = load ptr, ptr %queue, align 4
  %cmp8.not41 = icmp eq ptr %.pn40, %queue
  br i1 %cmp8.not41, label %for.cond5.preheader.for.inc19_crit_edge, label %for.cond5.preheader.for.body9_crit_edge

for.cond5.preheader.for.body9_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body9

for.cond5.preheader.for.inc19_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.143) #9
  br label %for.inc19

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond5.preheader.for.body9_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.body9.for.body9_crit_edge ], [ %.pn40, %for.cond5.preheader.for.body9_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn42, i32 -64
  %actual = getelementptr i8, ptr %.pn42, i32 -12
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual, align 4
  %length = getelementptr i8, ptr %.pn42, i32 -60
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef %req.0, i32 noundef %12, i32 noundef %14, ptr noundef %16) #9
  %17 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp8.not = icmp eq ptr %.pn, %queue
  br i1 %cmp8.not, label %for.body9.for.inc19_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.body9.for.inc19_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19

for.inc19:                                        ; preds = %for.body9.for.inc19_crit_edge, %if.then2, %for.cond5.preheader.for.inc19_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.inc19.cleanup_crit_edge, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %for.inc19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eps_dbg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @eps_dbg_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eps_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver = getelementptr inbounds %struct.pxa_udc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.peel.next

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.peel.next:                               ; preds = %entry
  %pxa_ep = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxa_ep, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %idx = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 3
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %idx, align 4
  %9 = shl i8 %bf.load, 1
  %10 = and i8 %9, 124
  %shl = zext i8 %10 to i32
  %add = or i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !358
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, ptr @.str.86, ptr @.str.146
  %and2 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.86, ptr @.str.147
  %and5 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.86, ptr @.str.148
  %and8 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.86, ptr @.str.149
  %and11 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.86, ptr @.str.150
  %and14 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.86, ptr @.str.151
  %and17 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.86, ptr @.str.152
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.145, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond4, ptr noundef nonnull %cond7, ptr noundef nonnull %cond10, ptr noundef nonnull %cond13, ptr noundef nonnull %cond16, ptr noundef nonnull %cond19) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !358
  %name.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 4
  %15 = ptrtoint ptr %name.peel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.peel, align 4
  %stats.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 10
  %in_bytes.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %in_bytes.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_bytes.peel, align 4
  %19 = ptrtoint ptr %stats.peel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stats.peel, align 4
  %out_bytes.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %out_bytes.peel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_bytes.peel, align 4
  %out_ops.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %out_ops.peel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_ops.peel, align 4
  %irqs.peel = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 0, i32 10, i32 4
  %25 = ptrtoint ptr %irqs.peel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irqs.peel, align 4
  %27 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pxa_ep, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load45.peel = load i8, ptr %idx, align 4
  %32 = shl i8 %bf.load45.peel, 1
  %33 = and i8 %32, 124
  %shl49.peel = zext i8 %33 to i32
  %add50.peel = or i32 %shl49.peel, 256
  %add.ptr51.peel = getelementptr i8, ptr %30, i32 %add50.peel
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.peel) #9, !srcloc !358
  %35 = ptrtoint ptr %pxa_ep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pxa_ep, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load56.peel = load i8, ptr %idx, align 4
  %40 = shl i8 %bf.load56.peel, 1
  %41 = and i8 %40, 124
  %shl60.peel = zext i8 %41 to i32
  %add61.peel = or i32 %shl60.peel, 512
  %add.ptr62.peel = getelementptr i8, ptr %38, i32 %add61.peel
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.peel) #9, !srcloc !358
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %14, i32 noundef %34, i32 noundef %42) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.body.peel.next
  %i.096 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %cond.end.cond.end_crit_edge ]
  %arrayidx21 = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx21, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %idx25 = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 3
  %47 = ptrtoint ptr %idx25 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load26 = load i8, ptr %idx25, align 4
  %48 = shl i8 %bf.load26, 1
  %49 = and i8 %48, 124
  %shl30 = zext i8 %49 to i32
  %add31 = or i32 %shl30, 1024
  %add.ptr32 = getelementptr i8, ptr %46, i32 %add31
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #9, !srcloc !358
  %name = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 4
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 4
  %stats = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 10
  %in_bytes = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 10, i32 2
  %53 = ptrtoint ptr %in_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %in_bytes, align 4
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats, align 4
  %out_bytes = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 10, i32 3
  %57 = ptrtoint ptr %out_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out_bytes, align 4
  %out_ops = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 10, i32 1
  %59 = ptrtoint ptr %out_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_ops, align 4
  %irqs = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 10, i32 4
  %61 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irqs, align 4
  %63 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx21, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %idx44 = getelementptr %struct.pxa_udc, ptr %1, i32 0, i32 12, i32 %i.096, i32 3
  %67 = ptrtoint ptr %idx44 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load45 = load i8, ptr %idx44, align 4
  %68 = shl i8 %bf.load45, 1
  %69 = and i8 %68, 124
  %shl49 = zext i8 %69 to i32
  %add50 = or i32 %shl49, 256
  %add.ptr51 = getelementptr i8, ptr %66, i32 %add50
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #9, !srcloc !358
  %71 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx21, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = ptrtoint ptr %idx44 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load56 = load i8, ptr %idx44, align 4
  %76 = shl i8 %bf.load56, 1
  %77 = and i8 %76, 124
  %shl60 = zext i8 %77 to i32
  %add61 = or i32 %shl60, 512
  %add.ptr62 = getelementptr i8, ptr %74, i32 %add61
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #9, !srcloc !358
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %50, i32 noundef %70, i32 noundef %78) #9
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %cond.end.cleanup_crit_edge, label %cond.end.cond.end_crit_edge, !llvm.loop !370

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa_eps_setup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_eps_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_eps_setup, %for.body)) #9
          to label %if.then [label %for.body], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.pxa_udc, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_eps_setup.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.156, ptr noundef %dev) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then, %entry
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %arrayidx = getelementptr %struct.pxa_udc, ptr %dev, i32 0, i32 12, i32 %i.010
  %config.i = getelementptr %struct.pxa_udc, ptr %dev, i32 0, i32 12, i32 %i.010, i32 5
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %config.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %shl.i = shl nuw nsw i32 %bf.cast.i, 25
  %bf.lshr2.i = lshr i16 %bf.load.i, 6
  %bf.clear3.i = and i16 %bf.lshr2.i, 7
  %bf.cast4.i = zext i16 %bf.clear3.i to i32
  %shl5.i = shl nuw nsw i32 %bf.cast4.i, 22
  %or.i = or i32 %shl.i, %shl5.i
  %bf.lshr8.i = lshr i16 %bf.load.i, 3
  %bf.clear9.i = and i16 %bf.lshr8.i, 7
  %bf.cast10.i = zext i16 %bf.clear9.i to i32
  %shl11.i = shl nuw nsw i32 %bf.cast10.i, 19
  %or13.i = or i32 %or.i, %shl11.i
  %bf.lshr15.i = lshr i16 %bf.load.i, 11
  %bf.cast17.i = zext i16 %bf.lshr15.i to i32
  %shl18.i = shl nuw nsw i32 %bf.cast17.i, 15
  %and19.i = and i32 %shl18.i, 491520
  %or20.i = or i32 %or13.i, %and19.i
  %type.i = getelementptr %struct.pxa_udc, ptr %dev, i32 0, i32 12, i32 %i.010, i32 7
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  %shl21.i = shl i32 %4, 13
  %and22.i = and i32 %shl21.i, 24576
  %or23.i = or i32 %or20.i, %and22.i
  %5 = and i16 %bf.lshr8.i, 4096
  %6 = zext i16 %5 to i32
  %or27.i = or i32 %or23.i, %6
  %fifo_size.i = getelementptr %struct.pxa_udc, ptr %dev, i32 0, i32 12, i32 %i.010, i32 6
  %7 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_size.i, align 4
  %shl28.i = shl i32 %8, 2
  %and29.i = and i32 %shl28.i, 4092
  %or30.i = or i32 %or27.i, %and29.i
  %or31.i = or i32 %or30.i, 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %idx.i = getelementptr %struct.pxa_udc, ptr %dev, i32 0, i32 12, i32 %i.010, i32 3
  %13 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load32.i = load i8, ptr %idx.i, align 4
  %14 = shl i8 %bf.load32.i, 1
  %15 = and i8 %14, 124
  %shl36.i = zext i8 %15 to i32
  %add.i = or i32 %shl36.i, 1024
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or31.i) #9, !srcloc !359
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !239, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !340, !341, !342, !344, !345, !346}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @__UNIQUE_ID_alias325, !1, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2541, i32 1}
!2 = !{ptr @__initcall__kmod_pxa27x_udc__326_2557_udc_driver_init6, !3, !"__initcall__kmod_pxa27x_udc__326_2557_udc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2557, i32 1}
!4 = !{ptr @__exitcall_udc_driver_exit, !3, !"__exitcall_udc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description327, !6, !"__UNIQUE_ID_description327", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2559, i32 1}
!7 = !{ptr @__UNIQUE_ID_author328, !8, !"__UNIQUE_ID_author328", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2560, i32 1}
!9 = !{ptr @__UNIQUE_ID_file329, !10, !"__UNIQUE_ID_file329", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2561, i32 1}
!11 = !{ptr @__UNIQUE_ID_license330, !10, !"__UNIQUE_ID_license330", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2545, i32 11}
!14 = !{ptr @udc_driver, !15, !"udc_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2543, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2366, i32 14}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2386, i32 42}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2394, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pxa_udc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pxa_udc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2419, i32 3}
!30 = !{ptr @pxa_udc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pxa_udc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2297, i32 17}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2302, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2303, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2304, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2305, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2306, i32 3}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2307, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2313, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2314, i32 3}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2316, i32 3}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2317, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2318, i32 3}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2319, i32 3}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2320, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2322, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2323, i32 3}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2324, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2330, i32 3}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2331, i32 3}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2333, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2334, i32 3}
!74 = !{ptr @memory, !75, !"memory", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2291, i32 23}
!76 = !{ptr @pxa_udc_ops, !77, !"pxa_udc_ops", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1614, i32 36}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 482, i32 2}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @set_ep0state.__UNIQUE_ID_ddebug293, !79, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 400, i32 2}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 400, i32 20}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 400, i32 35}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 400, i32 52}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 401, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 401, i32 21}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 401, i32 41}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 402, i32 2}
!99 = !{ptr @ep0_state_name, !100, !"ep0_state_name", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.h", i32 399, i32 14}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1758, i32 4}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pxa27x_udc_start._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @pxa27x_udc_start._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1395, i32 2}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pxa_ep_disable.__UNIQUE_ID_ddebug315, !107, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 672, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @req_done.__UNIQUE_ID_ddebug297, !111, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 640, i32 2}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ep_del_request.__UNIQUE_ID_ddebug296, !115, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1287, i32 3}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug312, !119, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1288, i32 2}
!124 = !{ptr @pxa_ep_fifo_flush.__UNIQUE_ID_ddebug313, !123, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!125 = !{ptr @pxa_ep_ops, !126, !"pxa_ep_ops", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1399, i32 32}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1327, i32 3}
!129 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @pxa_ep_enable._entry, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @pxa_ep_enable._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1334, i32 3}
!135 = !{ptr @pxa_ep_enable._entry.58, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @pxa_ep_enable._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1342, i32 3}
!139 = !{ptr @pxa_ep_enable._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @pxa_ep_enable._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1347, i32 3}
!143 = !{ptr @pxa_ep_enable._entry.64, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @pxa_ep_enable._entry_ptr.66, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1355, i32 3}
!147 = !{ptr @pxa_ep_enable._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @pxa_ep_enable._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1364, i32 2}
!151 = !{ptr @pxa_ep_enable.__UNIQUE_ID_ddebug314, !150, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1071, i32 3}
!154 = !{ptr @pxa_ep_queue.__UNIQUE_ID_ddebug309, !153, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1086, i32 2}
!157 = !{ptr @pxa_ep_queue.__UNIQUE_ID_ddebug310, !156, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!158 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1097, i32 3}
!162 = !{ptr @pxa_ep_queue._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @pxa_ep_queue._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1114, i32 5}
!166 = !{ptr @pxa_ep_queue._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @pxa_ep_queue._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1133, i32 4}
!170 = !{ptr @pxa_ep_queue._entry.79, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @pxa_ep_queue._entry_ptr.81, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 617, i32 2}
!174 = !{ptr @ep_add_request.__UNIQUE_ID_ddebug295, !173, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1023, i32 2}
!177 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @write_ep0_fifo.__UNIQUE_ID_ddebug308, !176, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!179 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 849, i32 2}
!184 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @write_packet.__UNIQUE_ID_ddebug302, !183, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 980, i32 3}
!188 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @read_ep0_fifo.__UNIQUE_ID_ddebug307, !187, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2039, i32 3}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @handle_ep.__UNIQUE_ID_ddebug320, !191, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 914, i32 4}
!196 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @write_fifo.__UNIQUE_ID_ddebug304, !195, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 919, i32 4}
!200 = !{ptr @write_fifo.__UNIQUE_ID_ddebug305, !199, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 952, i32 2}
!203 = !{ptr @write_fifo.__UNIQUE_ID_ddebug306, !202, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 878, i32 3}
!206 = !{ptr @read_fifo.__UNIQUE_ID_ddebug303, !205, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1218, i32 3}
!209 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @pxa_ep_set_halt.__UNIQUE_ID_ddebug311, !208, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!211 = distinct !{null, !212, !"the_controller", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 77, i32 24}
!213 = !{ptr @udc_init_data.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1674, i32 3}
!215 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2272, i32 2}
!218 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @pxa_udc_irq.__UNIQUE_ID_ddebug324, !217, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2081, i32 2}
!222 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @pxa27x_change_configuration.__UNIQUE_ID_ddebug321, !221, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2111, i32 2}
!226 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @pxa27x_change_interface.__UNIQUE_ID_ddebug322, !225, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2241, i32 2}
!230 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @irq_udc_reset._entry, !229, !"_entry", i1 false, i1 false}
!233 = !{ptr @irq_udc_reset._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2246, i32 3}
!236 = !{ptr @irq_udc_reset.__UNIQUE_ID_ddebug323, !235, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1941, i32 2}
!239 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @handle_ep0.__UNIQUE_ID_ddebug318, !238, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1946, i32 3}
!243 = !{ptr @handle_ep0.__UNIQUE_ID_ddebug319, !242, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1999, i32 3}
!246 = !{ptr @handle_ep0._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @handle_ep0._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1848, i32 3}
!250 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @handle_ep0_ctrl_req._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @handle_ep0_ctrl_req._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1851, i32 2}
!255 = !{ptr @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug316, !254, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!256 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1875, i32 2}
!258 = !{ptr @handle_ep0_ctrl_req.__UNIQUE_ID_ddebug317, !257, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!259 = !{ptr @driver_name, !260, !"driver_name", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 76, i32 19}
!261 = !{ptr @pxa27x_udc_phy, !262, !"pxa27x_udc_phy", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1606, i32 30}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 211, i32 22}
!265 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 212, i32 22}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 213, i32 22}
!269 = !{ptr @state_dbg_fops, !270, !"state_dbg_fops", i1 false, i1 false}
!270 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 134, i32 1}
!271 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 99, i32 16}
!273 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 102, i32 19}
!275 = distinct !{null, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 103, i32 47}
!277 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 107, i32 6}
!279 = !{ptr @.str.127, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 109, i32 26}
!281 = !{ptr @.str.128, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 110, i32 30}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 111, i32 27}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 112, i32 27}
!287 = !{ptr @.str.131, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 113, i32 27}
!289 = !{ptr @.str.132, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 114, i32 27}
!291 = !{ptr @.str.133, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 115, i32 27}
!293 = !{ptr @.str.134, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 116, i32 26}
!295 = !{ptr @.str.135, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 117, i32 26}
!297 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 118, i32 26}
!299 = !{ptr @.str.137, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 123, i32 16}
!301 = !{ptr @.str.138, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 125, i32 16}
!303 = !{ptr @.str.139, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 127, i32 16}
!305 = !{ptr @.str.140, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 128, i32 16}
!307 = !{ptr @queues_dbg_fops, !308, !"queues_dbg_fops", i1 false, i1 false}
!308 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 167, i32 1}
!309 = !{ptr @.str.141, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 150, i32 18}
!311 = !{ptr @.str.142, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 151, i32 27}
!313 = !{ptr @.str.143, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 154, i32 16}
!315 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 159, i32 19}
!317 = !{ptr @eps_dbg_fops, !318, !"eps_dbg_fops", i1 false, i1 false}
!318 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 204, i32 1}
!319 = !{ptr @.str.145, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 181, i32 16}
!321 = !{ptr @.str.146, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 183, i32 27}
!323 = !{ptr @.str.147, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 184, i32 28}
!325 = !{ptr @.str.148, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 185, i32 28}
!327 = !{ptr @.str.149, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 186, i32 28}
!329 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 187, i32 28}
!331 = !{ptr @.str.151, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 188, i32 28}
!333 = !{ptr @.str.152, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 189, i32 28}
!335 = !{ptr @.str.153, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 193, i32 17}
!337 = !{ptr @.str.154, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 1712, i32 3}
!339 = !{ptr @.str.155, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @udc_enable._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @udc_enable._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.156, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 556, i32 2}
!344 = !{ptr @.str.157, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @pxa_eps_setup.__UNIQUE_ID_ddebug294, !343, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!346 = !{ptr @udc_pxa_dt_ids, !347, !"udc_pxa_dt_ids", i1 false, i1 false}
!347 = !{!"../drivers/usb/gadget/udc/pxa27x_udc.c", i32 2339, i32 34}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{i8 0, i8 2}
!358 = !{i64 4945228}
!359 = !{i64 4944810}
!360 = !{i64 2149018264, i64 2149018269, i64 2149018282, i64 2149018326, i64 2149018360, i64 2149018381}
!361 = !{!"branch_weights", i32 2000, i32 1}
!362 = !{!"branch_weights", i32 1, i32 2000}
!363 = !{i64 808587, i64 808648}
!364 = !{i64 811319}
!365 = !{i64 811604}
!366 = !{!"branch_weights", i32 4001, i32 4000000}
!367 = !{i64 903175}
!368 = !{i64 4944613}
!369 = !{!"auto-init"}
!370 = distinct !{!370, !371}
!371 = !{!"llvm.loop.peeled.count", i32 1}
