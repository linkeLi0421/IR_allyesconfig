; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/mv_udc_core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/mv_udc_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mv_udc = type { %struct.usb_gadget, ptr, %struct.spinlock, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.usb_ctrlrequest, i32, i32, i32, i32, i32, i32, i32, i8, %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.mv_usb_platform_data = type { ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mv_cap_regs = type { i32, i32, i32, [5 x i32], i32, i32 }
%struct.mv_op_regs = type { i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32 }
%struct.mv_req = type { %struct.usb_request, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.mv_ep = type { %struct.usb_ep, ptr, %struct.list_head, ptr, i32, [14 x i8], i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.mv_dqh = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [4 x i32] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.mv_usb_addon_irq = type { i32, ptr }
%struct.mv_dtd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mv_udc__308_2419_udc_driver_init6 = internal global ptr @udc_driver_init, section ".initcall6.init", align 4
@udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_udc_probe, ptr @mv_udc_remove, ptr @mv_udc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_udc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udc_driver_exit = internal global ptr @udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias309 = internal constant [29 x i8] c"mv_udc.alias=platform:mv-udc\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [60 x i8] c"mv_udc.description=Marvell PXA USB Device Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [46 x i8] c"mv_udc.author=Chao Xie <chao.xie@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [42 x i8] c"mv_udc.file=drivers/usb/gadget/udc/mv_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [19 x i8] c"mv_udc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-udc\00", [25 x i8] zeroinitializer }, align 32
@mv_udc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mv_udc_suspend, ptr @mv_udc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_udc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/mv_udc_core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr = internal global ptr @mv_udc_probe._entry, section ".printk_index", align 4
@release_done = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @release_done, i64 48), ptr getelementptr (i8, ptr @release_done, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@mv_udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capregs\00", [24 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.10 = internal global ptr @mv_udc_probe._entry.8, section ".printk_index", align 4
@mv_udc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.13 = internal global ptr @mv_udc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phyregs\00", [24 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no phy I/O memory resource defined\0A\00", [60 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.17 = internal global ptr @mv_udc_probe._entry.15, section ".printk_index", align 4
@mv_udc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map phy I/O memory\0A\00", [34 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.20 = internal global ptr @mv_udc_probe._entry.18, section ".printk_index", align 4
@mv_udc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"allocate dQH memory failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.23 = internal global ptr @mv_udc_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv_dtd\00", [25 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 2241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ resource defined\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.27 = internal global ptr @mv_udc_probe._entry.25, section ".printk_index", align 4
@driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv_udc\00", [25 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 2249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request irq %d for UDC failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.30 = internal global ptr @mv_udc_probe._entry.28, section ".printk_index", align 4
@mv_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @mv_udc_get_frame, ptr @mv_udc_wakeup, ptr null, ptr @mv_udc_vbus_session, ptr null, ptr @mv_udc_pullup, ptr null, ptr null, ptr @mv_udc_start, ptr @mv_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2277, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can not request irq for VBUS, disable clock gating\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.35 = internal global ptr @mv_udc_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_udc_queue\00", [19 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 2283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot create workqueue\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.40 = internal global ptr @mv_udc_probe._entry.38, section ".printk_index", align 4
@mv_udc_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&udc->vbus_work)\00", [61 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 2308, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"successful probe UDC device %s clock gating.\0A\00", [50 x i8] zeroinitializer }, align 32
@mv_udc_probe._entry_ptr.45 = internal global ptr @mv_udc_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(release_done).wait.lock\00", [39 x i8] zeroinitializer }, align 32
@mv_udc_enable_internal.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv_udc\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv_udc_enable_internal\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable udc\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_udc_enable_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1075, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init phy error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_udc_enable_internal._entry_ptr = internal global ptr @mv_udc_enable_internal._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irq_process_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout for ENDPTPRIME = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_process_reset\00", [46 x i8] zeroinitializer }, align 32
@irq_process_reset._entry_ptr = internal global ptr @irq_process_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@irq_process_reset._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 1894, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb bus reset\0A\00", [17 x i8] zeroinitializer }, align 32
@irq_process_reset._entry_ptr.57 = internal global ptr @irq_process_reset._entry.55, section ".printk_index", align 4
@irq_process_reset._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 1900, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB reset portsc 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@irq_process_reset._entry_ptr.60 = internal global ptr @irq_process_reset._entry.58, section ".printk_index", align 4
@mv_ep_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TIMEOUT for ENDPTSTATUS=0x%x, bit_pos=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_ep_fifo_flush\00", [47 x i8] zeroinitializer }, align 32
@mv_ep_fifo_flush._entry_ptr = internal global ptr @mv_ep_fifo_flush._entry, section ".printk_index", align 4
@mv_ep_fifo_flush._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TIMEOUT for ENDPTFLUSH=0x%x,bit_pos=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@mv_ep_fifo_flush._entry_ptr.65 = internal global ptr @mv_ep_fifo_flush._entry.63, section ".printk_index", align 4
@done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 239, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"complete %s req %p stat %d len %u/%u\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@done._entry_ptr = internal global ptr @done._entry, section ".printk_index", align 4
@udc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1019, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udc_reset\00", [22 x i8] zeroinitializer }, align 32
@udc_reset._entry_ptr = internal global ptr @udc_reset._entry, section ".printk_index", align 4
@handle_setup_packet.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 1, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_setup_packet\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SETUP %02x.%02x v%04x i%04x l%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@udc_prime_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to queue dtd when prime status\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udc_prime_status\00", [47 x i8] zeroinitializer }, align 32
@udc_prime_status._entry_ptr = internal global ptr @udc_prime_status._entry, section ".printk_index", align 4
@udc_prime_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 1489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to dma_pool_alloc when prime status\0A\00", [52 x i8] zeroinitializer }, align 32
@udc_prime_status._entry_ptr.76 = internal global ptr @udc_prime_status._entry.74, section ".printk_index", align 4
@prime_status_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1430, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"switch to test mode %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prime_status_complete\00", [42 x i8] zeroinitializer }, align 32
@prime_status_complete._entry_ptr = internal global ptr @prime_status_complete._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@queue_dtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout for ATDTW_TRIPWIRE...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_dtd\00", [22 x i8] zeroinitializer }, align 32
@queue_dtd._entry_ptr = internal global ptr @queue_dtd._entry, section ".printk_index", align 4
@mv_udc_testmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"This test mode(%d) is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv_udc_testmode\00", [16 x i8] zeroinitializer }, align 32
@mv_udc_testmode._entry_ptr = internal global ptr @mv_udc_testmode._entry, section ".printk_index", align 4
@process_ep_req.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"process_ep_req\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s, dTD not completed\0A\00", [41 x i8] zeroinitializer }, align 32
@process_ep_req.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.85, ptr @.str.3, ptr @.str.87, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX dTD remains data\0A\00", [43 x i8] zeroinitializer }, align 32
@process_ep_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.85, ptr @.str.3, i32 165, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"complete_tr error: ep=%d %s: error = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@process_ep_req._entry_ptr = internal global ptr @process_ep_req._entry, section ".printk_index", align 4
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SEND\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECV\00", [27 x i8] zeroinitializer }, align 32
@ep0_req_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpect ep0 packets\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep0_req_complete\00", [47 x i8] zeroinitializer }, align 32
@ep0_req_complete._entry_ptr = internal global ptr @ep0_req_complete._entry, section ".printk_index", align 4
@mv_udc_vbus_session.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 1, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mv_udc_vbus_session\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: softconnect %d, vbus_active %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mv_udc_pullup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.95, ptr @.str.3, ptr @.str.94, i8 1, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_udc_pullup\00", [18 x i8] zeroinitializer }, align 32
@mv_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 1374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to register peripheral to otg\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_udc_start\00", [19 x i8] zeroinitializer }, align 32
@mv_udc_start._entry_ptr = internal global ptr @mv_udc_start._entry, section ".printk_index", align 4
@mv_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @mv_ep_enable, ptr @mv_ep_disable, ptr null, ptr @mv_alloc_request, ptr @mv_free_request, ptr @mv_ep_queue, ptr @mv_ep_dequeue, ptr @mv_ep_set_halt, ptr @mv_ep_set_wedge, ptr null, ptr @mv_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@mv_ep0_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 64, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%din\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep%dout\00", [24 x i8] zeroinitializer }, align 32
@mv_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 474, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ep=%d %s: Init ERROR: ENDPTPRIME=0x%x, ENDPTSTATUS=0x%x, bit_pos=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_ep_enable\00", [19 x i8] zeroinitializer }, align 32
@mv_ep_enable._entry_ptr = internal global ptr @mv_ep_enable._entry, section ".printk_index", align 4
@mv_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s, bad params\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_ep_queue\00", [20 x i8] zeroinitializer }, align 32
@mv_ep_queue._entry_ptr = internal global ptr @mv_ep_queue._entry, section ".printk_index", align 4
@mv_ep_queue._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s, bad ep\00", [21 x i8] zeroinitializer }, align 32
@mv_ep_queue._entry_ptr.107 = internal global ptr @mv_ep_queue._entry.105, section ".printk_index", align 4
@mv_ep_queue._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to queue dtd\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_ep_queue._entry_ptr.110 = internal global ptr @mv_ep_queue._entry.108, section ".printk_index", align 4
@mv_ep_queue._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to dma_pool_alloc\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_ep_queue._entry_ptr.113 = internal global ptr @mv_ep_queue._entry.111, section ".printk_index", align 4
@mv_udc_vbus_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 2061, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus is %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_udc_vbus_work\00", [47 x i8] zeroinitializer }, align 32
@mv_udc_vbus_work._entry_ptr = internal global ptr @mv_udc_vbus_work._entry, section ".printk_index", align 4
@mv_udc_disable_internal.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.116, ptr @.str.3, ptr @.str.117, i8 1, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_udc_disable_internal\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable udc\0A\00", [19 x i8] zeroinitializer }, align 32
@mv_udc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 2339, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB cable is connected!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mv_udc_suspend\00", [17 x i8] zeroinitializer }, align 32
@mv_udc_suspend._entry_ptr = internal global ptr @mv_udc_suspend._entry, section ".printk_index", align 4
@str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0\00\00\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 67108864, i64 134217728]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"udc_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2407, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2412, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"mv_udc_pm_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2387, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2114, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"release_done\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2124, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2147, i32 61 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2149, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2156, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2160, i32 61 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2162, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2168, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2196, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2203, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2241, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 55, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2248, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"mv_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1218, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2273, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2275, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2281, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2283, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2288, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2307, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 53, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1066, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1074, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1881, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1894, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1899, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 649, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 666, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 237, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1018, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1664, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1482, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1488, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1430, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 326, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 300, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1509, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 140, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 154, i32 6 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 162, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1749, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1156, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1193, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1373, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [10 x i8] c"mv_ep_ops\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 942, i32 32 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"mv_ep0_desc\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 61, i32 45 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1263, i32 33 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1267, i32 33 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 468, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 693, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 697, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 723, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 728, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2061, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1096, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.507 = private constant [40 x i8] c"../drivers/usb/gadget/udc/mv_udc_core.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2339, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_udc_driver_exit, ptr @__initcall__kmod_mv_udc__308_2419_udc_driver_init6, ptr @done._entry, ptr @done._entry_ptr, ptr @ep0_req_complete._entry, ptr @ep0_req_complete._entry_ptr, ptr @irq_process_reset._entry, ptr @irq_process_reset._entry.55, ptr @irq_process_reset._entry.58, ptr @irq_process_reset._entry_ptr, ptr @irq_process_reset._entry_ptr.57, ptr @irq_process_reset._entry_ptr.60, ptr @mv_ep_enable._entry, ptr @mv_ep_enable._entry_ptr, ptr @mv_ep_fifo_flush._entry, ptr @mv_ep_fifo_flush._entry.63, ptr @mv_ep_fifo_flush._entry_ptr, ptr @mv_ep_fifo_flush._entry_ptr.65, ptr @mv_ep_queue._entry, ptr @mv_ep_queue._entry.105, ptr @mv_ep_queue._entry.108, ptr @mv_ep_queue._entry.111, ptr @mv_ep_queue._entry_ptr, ptr @mv_ep_queue._entry_ptr.107, ptr @mv_ep_queue._entry_ptr.110, ptr @mv_ep_queue._entry_ptr.113, ptr @mv_udc_enable_internal._entry, ptr @mv_udc_enable_internal._entry_ptr, ptr @mv_udc_probe._entry, ptr @mv_udc_probe._entry.11, ptr @mv_udc_probe._entry.15, ptr @mv_udc_probe._entry.18, ptr @mv_udc_probe._entry.21, ptr @mv_udc_probe._entry.25, ptr @mv_udc_probe._entry.28, ptr @mv_udc_probe._entry.32, ptr @mv_udc_probe._entry.38, ptr @mv_udc_probe._entry.43, ptr @mv_udc_probe._entry.8, ptr @mv_udc_probe._entry_ptr, ptr @mv_udc_probe._entry_ptr.10, ptr @mv_udc_probe._entry_ptr.13, ptr @mv_udc_probe._entry_ptr.17, ptr @mv_udc_probe._entry_ptr.20, ptr @mv_udc_probe._entry_ptr.23, ptr @mv_udc_probe._entry_ptr.27, ptr @mv_udc_probe._entry_ptr.30, ptr @mv_udc_probe._entry_ptr.35, ptr @mv_udc_probe._entry_ptr.40, ptr @mv_udc_probe._entry_ptr.45, ptr @mv_udc_start._entry, ptr @mv_udc_start._entry_ptr, ptr @mv_udc_suspend._entry, ptr @mv_udc_suspend._entry_ptr, ptr @mv_udc_testmode._entry, ptr @mv_udc_testmode._entry_ptr, ptr @mv_udc_vbus_work._entry, ptr @mv_udc_vbus_work._entry_ptr, ptr @prime_status_complete._entry, ptr @prime_status_complete._entry_ptr, ptr @process_ep_req._entry, ptr @process_ep_req._entry_ptr, ptr @queue_dtd._entry, ptr @queue_dtd._entry_ptr, ptr @udc_driver_exit, ptr @udc_prime_status._entry, ptr @udc_prime_status._entry.74, ptr @udc_prime_status._entry_ptr, ptr @udc_prime_status._entry_ptr.76, ptr @udc_reset._entry, ptr @udc_reset._entry_ptr, ptr @udc_driver, ptr @.str, ptr @mv_udc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @release_done, ptr @mv_udc_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @driver_name, ptr @.str.29, ptr @mv_ops, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @mv_udc_probe.__key.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @mv_ep_ops, ptr @mv_ep0_desc, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @str], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_done to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_enable_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_process_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_process_reset._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_process_reset._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_fifo_flush._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_prime_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_prime_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prime_status_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_dtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_testmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_ep_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_req_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_queue._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_queue._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_ep_queue._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_vbus_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_udc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 0, i32 -1 }]
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
define internal i32 @mv_udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1264, i32 noundef 3520) #9
  %cmp5 = icmp eq ptr %call.i, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @release_done, ptr %done, align 8
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %pdata10 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 31
  %5 = ptrtoint ptr %pdata10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdata10, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mv_udc_probe.__key, i16 noundef signext 3) #9
  %dev15 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %dev15, align 4
  %mode = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16 = icmp eq i32 %8, 0
  br i1 %cmp16, label %if.then17, label %if.end7.if.end30_crit_edge

if.end7.if.end30_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then17:                                        ; preds = %if.end7
  %call19 = tail call ptr @devm_usb_get_phy(ptr noundef %dev, i32 noundef 1) #9
  %transceiver = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 30
  %9 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %transceiver, align 8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.then17.if.end30_crit_edge

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then22:                                        ; preds = %if.then17
  %cmp25 = icmp eq ptr %call19, inttoptr (i32 -6 to ptr)
  br i1 %cmp25, label %if.then22.cleanup_crit_edge, label %if.end27

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %transceiver, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.then17.if.end30_crit_edge, %if.end7.if.end30_crit_edge
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 32
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %clk, align 8
  %cmp.i381 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  %call40 = tail call ptr @platform_get_resource_byname(ptr noundef %14, i32 noundef 512, ptr noundef nonnull @.str.7) #9
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %15 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call40, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call40, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %16
  %add.i = add i32 %sub.i, %18
  %call50 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %16, i32 noundef %add.i) #9
  %cap_regs = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %cap_regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call50, ptr %cap_regs, align 4
  %cmp52 = icmp eq ptr %call50, null
  br i1 %cmp52, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end47
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 4
  %call60 = tail call ptr @platform_get_resource_byname(ptr noundef %21, i32 noundef 512, ptr noundef nonnull @.str.14) #9
  %cmp61 = icmp eq ptr %call60, null
  br i1 %cmp61, label %do.end65, label %if.end67

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %22 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call60, align 4
  %end.i382 = getelementptr inbounds %struct.resource, ptr %call60, i32 0, i32 1
  %24 = ptrtoint ptr %end.i382 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i382, align 4
  %sub.i383 = sub i32 1, %23
  %add.i384 = add i32 %sub.i383, %25
  %call71 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %23, i32 noundef %add.i384) #9
  %phy_regs = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call71, ptr %phy_regs, align 4
  %cmp73 = icmp eq ptr %call71, null
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end79:                                         ; preds = %if.end67
  %call80 = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool.not = icmp eq i32 %call80, 0
  br i1 %tobool.not, label %if.end82, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %if.end79
  %27 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cap_regs, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !251
  %31 = lshr i32 %30, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %add = add i32 %31, %29
  %32 = inttoptr i32 %add to ptr
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %op_regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %op_regs, align 8
  %34 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cap_regs, align 4
  %dccparams = getelementptr inbounds %struct.mv_cap_regs, ptr %35, i32 0, i32 5
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dccparams) #9, !srcloc !251
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  %and93 = and i32 %37, 31
  %max_eps = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %max_eps to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and93, ptr %max_eps, align 8
  %39 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %op_regs, align 8
  %usbintr.i = getelementptr inbounds %struct.mv_op_regs, ptr %40, i32 0, i32 2
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %42 = and i32 %41, -1191182337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %op_regs, align 8
  %usbintr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %44, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr4.i, i32 %42) #9, !srcloc !256
  %stopped.i = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 27
  %45 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %stopped.i, align 4
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %stopped.i, align 4
  %46 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op_regs, align 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %op_regs, align 8
  %usbsts = getelementptr inbounds %struct.mv_op_regs, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbsts, i32 -1) #9, !srcloc !256
  %54 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_eps, align 8
  %mul99 = shl i32 %55, 7
  %sub = add i32 %mul99, 2047
  %and101 = and i32 %sub, -2048
  %ep_dqh_dma = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 12
  %call.i385 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and101, ptr noundef %ep_dqh_dma, i32 noundef 3264, i32 noundef 0) #9
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 10
  %56 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i385, ptr %ep_dqh, align 4
  %cmp105 = icmp eq ptr %call.i385, null
  br i1 %cmp105, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %err_disable_clock

if.end111:                                        ; preds = %if.end82
  %ep_dqh_size = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 11
  %57 = ptrtoint ptr %ep_dqh_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and101, ptr %ep_dqh_size, align 8
  %call113 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.24, ptr noundef %dev, i32 noundef 40, i32 noundef 64, i32 noundef 4096) #9
  %dtd_pool = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 13
  %58 = ptrtoint ptr %dtd_pool to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call113, ptr %dtd_pool, align 8
  %tobool115.not = icmp eq ptr %call113, null
  br i1 %tobool115.not, label %if.end111.err_free_dma_crit_edge, label %if.end117

if.end111.err_free_dma_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_dma

if.end117:                                        ; preds = %if.end111
  %59 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_eps, align 8
  %mul120 = mul i32 %60, 160
  %call.i386 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul120, i32 noundef 3520) #9
  %eps = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 14
  %61 = ptrtoint ptr %eps to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i386, ptr %eps, align 4
  %cmp124 = icmp eq ptr %call.i386, null
  br i1 %cmp124, label %if.end117.err_destroy_dma_crit_edge, label %if.end126

if.end117.err_destroy_dma_crit_edge:              ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_destroy_dma

if.end126:                                        ; preds = %if.end117
  %call.i387 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #9
  %status_req = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 18
  %62 = ptrtoint ptr %status_req to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i387, ptr %status_req, align 4
  %tobool130.not = icmp eq ptr %call.i387, null
  br i1 %tobool130.not, label %if.end126.err_destroy_dma_crit_edge, label %if.end132

if.end126.err_destroy_dma_crit_edge:              ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_destroy_dma

if.end132:                                        ; preds = %if.end126
  %queue = getelementptr inbounds %struct.mv_req, ptr %call.i387, i32 0, i32 5
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.mv_req, ptr %call.i387, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %queue, ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 8) #13
  %66 = ptrtoint ptr %status_req to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %status_req, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %67, align 4
  %69 = load ptr, ptr %status_req, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %dma, align 4
  %resume_state = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 20
  %71 = ptrtoint ptr %resume_state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %resume_state, align 8
  %usb_state = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 21
  %72 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %usb_state, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 23
  %73 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %ep0_dir, align 4
  %74 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %stopped.i, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %stopped.i, align 4
  %75 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev15, align 4
  %call139 = tail call ptr @platform_get_resource(ptr noundef %76, i32 noundef 1024, i32 noundef 0) #9
  %cmp140 = icmp eq ptr %call139, null
  br i1 %cmp140, label %do.end144, label %if.end146

do.end144:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %err_destroy_dma

if.end146:                                        ; preds = %if.end132
  %77 = ptrtoint ptr %call139 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call139, align 4
  %irq = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 5
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %irq, align 8
  %call.i388 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %78, ptr noundef nonnull @mv_udc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool151.not = icmp eq i32 %call.i388, 0
  br i1 %tobool151.not, label %if.end158, label %do.end155

do.end155:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %81) #12
  br label %err_destroy_dma

if.end158:                                        ; preds = %if.end146
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @mv_ops, ptr %ops, align 8
  %83 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eps, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 3
  %85 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %ep0, align 4
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4
  %86 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i389 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %prev.i389 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %ep_list, ptr %prev.i389, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 5
  %88 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %speed, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 6
  %89 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %90 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @driver_name, ptr %name, align 4
  tail call fastcc void @eps_init(ptr noundef nonnull %call.i)
  %transceiver166 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 30
  %91 = ptrtoint ptr %transceiver166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %transceiver166, align 8
  %tobool167.not = icmp eq ptr %92, null
  br i1 %tobool167.not, label %if.else, label %if.then168

if.then168:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load169 = load i8, ptr %stopped.i, align 4
  %bf.set171 = or i8 %bf.load169, 4
  store i8 %bf.set171, ptr %stopped.i, align 4
  br label %if.end211

if.else:                                          ; preds = %if.end158
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vbus, align 4
  %tobool172.not = icmp eq ptr %95, null
  br i1 %tobool172.not, label %if.else.if.end211_crit_edge, label %if.then173

if.else.if.end211_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then173:                                       ; preds = %if.else
  %96 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load175 = load i8, ptr %stopped.i, align 4
  %bf.set177 = or i8 %bf.load175, 4
  store i8 %bf.set177, ptr %stopped.i, align 4
  %97 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vbus, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %call181 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %100, ptr noundef null, ptr noundef nonnull @mv_udc_vbus_irq, i32 noundef 8192, ptr noundef nonnull @.str.31, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then173.if.end192_crit_edge, label %do.end186

if.then173.if.end192_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

do.end186:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  %101 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load189 = load i8, ptr %stopped.i, align 4
  %bf.clear190 = and i8 %bf.load189, -5
  store i8 %bf.clear190, ptr %stopped.i, align 4
  br label %if.end192

if.end192:                                        ; preds = %do.end186, %if.then173.if.end192_crit_edge
  %call193 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.37) #9
  %qwork = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 29
  %102 = ptrtoint ptr %qwork to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call193, ptr %qwork, align 4
  %tobool195.not = icmp eq ptr %call193, null
  br i1 %tobool195.not, label %do.end199, label %do.body202

do.end199:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %err_destroy_dma

do.body202:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_work = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 28
  tail call void @__init_work(ptr noundef %vbus_work, i32 noundef 0) #9
  %103 = ptrtoint ptr %vbus_work to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %vbus_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.42, ptr noundef nonnull @mv_udc_probe.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry206 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 28, i32 1
  %104 = ptrtoint ptr %entry206 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry206, ptr %entry206, align 4
  %prev.i390 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 28, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry206, ptr %prev.i390, align 4
  %func = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 28, i32 2
  %106 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @mv_udc_vbus_work, ptr %func, align 4
  br label %if.end211

if.end211:                                        ; preds = %do.body202, %if.else.if.end211_crit_edge, %if.then168
  %107 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load213 = load i8, ptr %stopped.i, align 4
  %108 = and i8 %bf.load213, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool215.not = icmp eq i8 %108, 0
  br i1 %tobool215.not, label %if.else217, label %if.then216

if.then216:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mv_udc_disable_internal(ptr noundef nonnull %call.i)
  br label %if.end221

if.else217:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set220 = or i8 %bf.load213, 64
  %109 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %bf.set220, ptr %stopped.i, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else217, %if.then216
  %call224 = tail call i32 @usb_add_gadget_udc_release(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @gadget_release) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end227, label %err_create_workqueue

if.end227:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %111 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load233 = load i8, ptr %stopped.i, align 4
  %112 = and i8 %bf.load233, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool237.not = icmp eq i8 %112, 0
  %cond = select i1 %tobool237.not, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond) #12
  br label %cleanup

err_create_workqueue:                             ; preds = %if.end221
  %qwork238 = getelementptr inbounds %struct.mv_udc, ptr %call.i, i32 0, i32 29
  %113 = ptrtoint ptr %qwork238 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %qwork238, align 4
  %tobool239.not = icmp eq ptr %114, null
  br i1 %tobool239.not, label %err_create_workqueue.err_destroy_dma_crit_edge, label %if.then240

err_create_workqueue.err_destroy_dma_crit_edge:   ; preds = %err_create_workqueue
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_destroy_dma

if.then240:                                       ; preds = %err_create_workqueue
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %114) #9
  br label %err_destroy_dma

err_destroy_dma:                                  ; preds = %if.then240, %err_create_workqueue.err_destroy_dma_crit_edge, %do.end199, %do.end155, %do.end144, %if.end126.err_destroy_dma_crit_edge, %if.end117.err_destroy_dma_crit_edge
  %retval1.0 = phi i32 [ -19, %do.end144 ], [ -19, %do.end155 ], [ %call224, %if.then240 ], [ %call224, %err_create_workqueue.err_destroy_dma_crit_edge ], [ -12, %do.end199 ], [ -12, %if.end117.err_destroy_dma_crit_edge ], [ -12, %if.end126.err_destroy_dma_crit_edge ]
  %115 = ptrtoint ptr %dtd_pool to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dtd_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %116) #9
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_destroy_dma, %if.end111.err_free_dma_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_destroy_dma ], [ -12, %if.end111.err_free_dma_crit_edge ]
  %117 = ptrtoint ptr %ep_dqh_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ep_dqh_size, align 8
  %119 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ep_dqh, align 4
  %121 = ptrtoint ptr %ep_dqh_dma to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ep_dqh_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %118, ptr noundef %120, i32 noundef %122, i32 noundef 0) #9
  br label %err_disable_clock

err_disable_clock:                                ; preds = %err_free_dma, %do.end109
  %retval1.2 = phi i32 [ -12, %do.end109 ], [ %retval1.1, %err_free_dma ]
  %123 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i391 = load i8, ptr %stopped.i, align 4
  %124 = and i8 %bf.load.i391, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i = icmp eq i8 %124, 0
  br i1 %tobool.not.i, label %err_disable_clock.cleanup_crit_edge, label %do.body.i

err_disable_clock.cleanup_crit_edge:              ; preds = %err_disable_clock
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %err_disable_clock
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_probe, %do.end.i)) #9
          to label %if.then5.i [label %do.end.i], !srcloc !260

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev15, align 4
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %127 = ptrtoint ptr %pdata10 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdata10, align 4
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %phy_deinit.i, align 4
  %tobool7.not.i = icmp eq ptr %130, null
  br i1 %tobool7.not.i, label %do.end.i.if.end11.i_crit_edge, label %if.then8.i

do.end.i.if.end11.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %phy_regs, align 4
  tail call void %130(ptr noundef %132) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %do.end.i.if.end11.i_crit_edge
  %133 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %134) #9
  tail call void @clk_unprepare(ptr noundef %134) #9
  %135 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load13.i = load i8, ptr %stopped.i, align 4
  %bf.clear14.i = and i8 %bf.load13.i, -3
  store i8 %bf.clear14.i, ptr %stopped.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %err_disable_clock.cleanup_crit_edge, %if.end227, %if.end79.cleanup_crit_edge, %do.end77, %do.end65, %do.end56, %do.end45, %if.then35, %if.end27, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -517, %if.end27 ], [ %12, %if.then35 ], [ -19, %do.end45 ], [ -16, %do.end56 ], [ -19, %do.end65 ], [ -16, %do.end77 ], [ 0, %if.end227 ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %if.then22.cleanup_crit_edge ], [ %call80, %if.end79.cleanup_crit_edge ], [ %retval1.2, %err_disable_clock.cleanup_crit_edge ], [ %retval1.2, %if.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #9
  %qwork = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qwork, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dtd_pool = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dtd_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtd_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %5) #9
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_dqh, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %ep_dqh_size = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ep_dqh_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_dqh_size, align 8
  %ep_dqh_dma = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %ep_dqh_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep_dqh_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %clock_gating.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %clock_gating.i, align 4
  %13 = and i8 %bf.load.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %.not.i = icmp eq i8 %13, 6
  br i1 %.not.i, label %do.body.i.i, label %if.end5.mv_udc_disable.exit_crit_edge

if.end5.mv_udc_disable.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv_udc_disable.exit

do.body.i.i:                                      ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_remove, %do.end.i.i)) #9
          to label %if.then5.i.i [label %do.end.i.i], !srcloc !260

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 31
  %16 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %19(ptr noundef %21) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 32
  %22 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i.i.i, align 8
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %24 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load13.i.i = load i8, ptr %clock_gating.i, align 4
  %bf.clear14.i.i = and i8 %bf.load13.i.i, -3
  store i8 %bf.clear14.i.i, ptr %clock_gating.i, align 4
  br label %mv_udc_disable.exit

mv_udc_disable.exit:                              ; preds = %if.end11.i.i, %if.end5.mv_udc_disable.exit_crit_edge
  %done = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %done, align 8
  tail call void @wait_for_completion(ptr noundef %26) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_udc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clock_gating.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %clock_gating.i, align 4
  %3 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.mv_udc_enable.exit_crit_edge, label %if.then.i

entry.mv_udc_enable.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv_udc_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef %1) #9
  br label %mv_udc_enable.exit

mv_udc_enable.exit:                               ; preds = %if.then.i, %entry.mv_udc_enable.exit_crit_edge
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 8
  %usbmode = getelementptr inbounds %struct.mv_op_regs, ptr %5, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbmode) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %7 = and i32 %6, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_regs, align 8
  %usbmode5 = getelementptr inbounds %struct.mv_op_regs, ptr %9, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbmode5, i32 %7) #9, !srcloc !256
  %10 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i11 = load i8, ptr %clock_gating.i, align 4
  %11 = and i8 %bf.load.i11, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %.not.i = icmp eq i8 %11, 6
  br i1 %.not.i, label %do.body.i.i, label %mv_udc_enable.exit.mv_udc_disable.exit_crit_edge

mv_udc_enable.exit.mv_udc_disable.exit_crit_edge: ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv_udc_disable.exit

do.body.i.i:                                      ; preds = %mv_udc_enable.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_shutdown, %do.end.i.i)) #9
          to label %if.then5.i.i [label %do.end.i.i], !srcloc !260

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %17(ptr noundef %19) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i.i.i, align 8
  tail call void @clk_disable(ptr noundef %21) #9
  tail call void @clk_unprepare(ptr noundef %21) #9
  %22 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load13.i.i = load i8, ptr %clock_gating.i, align 4
  %bf.clear14.i.i = and i8 %bf.load13.i.i, -3
  store i8 %bf.clear14.i.i, ptr %clock_gating.i, align 4
  br label %mv_udc_disable.exit

mv_udc_disable.exit:                              ; preds = %if.end11.i.i, %mv_udc_enable.exit.mv_udc_disable.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_udc_enable_internal(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %active, align 4
  %1 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_enable_internal.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_enable_internal, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !260

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_enable_internal.__UNIQUE_ID_ddebug303, ptr noundef %dev7, ptr noundef nonnull @.str.51) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %clk.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 32
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end12, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i
  %pdata = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 31
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_init, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end12.if.end26_crit_edge, label %if.then14

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then14:                                        ; preds = %if.end12
  %phy_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 8
  %10 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_regs, align 4
  %call17 = tail call i32 %9(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end26_crit_edge, label %do.end22

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %12 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev23, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.52, i32 noundef %call17) #12
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %cleanup

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load28 = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load28, 2
  store i8 %bf.set, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end22, %if.then3.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end22 ], [ 0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %stopped, align 4
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %op_regs, align 8
  %usbsts = getelementptr inbounds %struct.mv_op_regs, ptr %2, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbsts) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 8
  %usbintr = getelementptr inbounds %struct.mv_op_regs, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  %7 = and i32 %6, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %do.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op_regs, align 8
  %usbsts12 = getelementptr inbounds %struct.mv_op_regs, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbsts12, i32 %7) #9, !srcloc !256
  %and13 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.if.end16_crit_edge, label %if.then15

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %errors.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 26
  %11 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %errors.i, align 8
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %errors.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body.if.end16_crit_edge
  %and17 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %ep0_dir.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %ep0_dir.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep0_dir.i, align 4
  %ep0_state.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 22
  %14 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ep0_state.i, align 8
  %15 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %stopped, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %stopped, align 4
  %16 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_regs, align 8
  %deviceaddr.i = getelementptr inbounds %struct.mv_op_regs, ptr %17, i32 0, i32 5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deviceaddr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %19 = and i32 %18, -255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %op_regs, align 8
  %deviceaddr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deviceaddr4.i, i32 %19) #9, !srcloc !256
  %22 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_regs, align 8
  %epsetupstat.i = getelementptr inbounds %struct.mv_op_regs, ptr %23, i32 0, i32 17
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epsetupstat.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_regs, align 8
  %epsetupstat15.i = getelementptr inbounds %struct.mv_op_regs, ptr %26, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epsetupstat15.i, i32 %24) #9, !srcloc !256
  %27 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %op_regs, align 8
  %epcomplete.i = getelementptr inbounds %struct.mv_op_regs, ptr %28, i32 0, i32 21
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epcomplete.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_regs, align 8
  %epcomplete26.i = getelementptr inbounds %struct.mv_op_regs, ptr %31, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcomplete26.i, i32 %29) #9, !srcloc !256
  %32 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_regs, align 8
  %epprime110.i = getelementptr inbounds %struct.mv_op_regs, ptr %33, i32 0, i32 18
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime110.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not111.i = icmp eq i32 %34, 0
  br i1 %tobool.not111.i, label %if.then19.do.body45.i_crit_edge, label %if.then19.while.body.i_crit_edge

if.then19.while.body.i_crit_edge:                 ; preds = %if.then19
  br label %while.body.i

if.then19.do.body45.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then19.while.body.i_crit_edge
  %loops.0112.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 5000, %if.then19.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0112.i)
  %cmp.i = icmp eq i32 %loops.0112.i, 0
  br i1 %cmp.i, label %do.end36.i, label %if.end.i

do.end36.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %op_regs, align 8
  %epprime41.i = getelementptr inbounds %struct.mv_op_regs, ptr %38, i32 0, i32 18
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime41.i) #9, !srcloc !251
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i, ptr noundef nonnull @.str.53, i32 noundef %40) #12
  br label %do.body45.i

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add nsw i32 %loops.0112.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 429496) #9
  %42 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op_regs, align 8
  %epprime.i = getelementptr inbounds %struct.mv_op_regs, ptr %43, i32 0, i32 18
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end.i.do.body45.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.do.body45.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45.i

do.body45.i:                                      ; preds = %if.end.i.do.body45.i_crit_edge, %do.end36.i, %if.then19.do.body45.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %op_regs, align 8
  %epflush.i = getelementptr inbounds %struct.mv_op_regs, ptr %46, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epflush.i, i32 -1) #9, !srcloc !256
  %47 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %op_regs, align 8
  %portsc.i = getelementptr inbounds %struct.mv_op_regs, ptr %48, i32 0, i32 14
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool56.not.i = icmp eq i32 %50, 0
  %dev66.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 4
  %51 = ptrtoint ptr %dev66.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev66.i, align 4
  %dev67.i = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  br i1 %tobool56.not.i, label %do.end65.i, label %do.end60.i

do.end60.i:                                       ; preds = %do.body45.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67.i, ptr noundef nonnull @.str.56) #12
  %usb_state.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 21
  %53 = ptrtoint ptr %usb_state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %usb_state.i, align 4
  %driver.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 1
  %54 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver.i, align 8
  %eps.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 14
  %56 = ptrtoint ptr %eps.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eps.i.i, align 4
  %stopped.i.i.i = getelementptr inbounds %struct.mv_ep, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load.i.i.i = load i16, ptr %stopped.i.i.i, align 2
  %bf.set.i.i.i = or i16 %bf.load.i.i.i, -32768
  store i16 %bf.set.i.i.i, ptr %stopped.i.i.i, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef %57) #9
  %queue.i.i.i = getelementptr inbounds %struct.mv_ep, ptr %57, i32 0, i32 2
  %59 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i.not1.i.i.i = icmp eq ptr %60, %queue.i.i.i
  br i1 %cmp.i.not1.i.i.i, label %do.end60.i.nuke.exit.i.i_crit_edge, label %do.end60.i.while.body.i.i.i_crit_edge

do.end60.i.while.body.i.i.i_crit_edge:            ; preds = %do.end60.i
  br label %while.body.i.i.i

do.end60.i.nuke.exit.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %do.end60.i.while.body.i.i.i_crit_edge
  %61 = phi ptr [ %63, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %60, %do.end60.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 -72
  tail call fastcc void @done(ptr noundef %57, ptr noundef %add.ptr.i.i.i, i32 noundef -108) #9
  %62 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %63, %queue.i.i.i
  br i1 %cmp.i.not.i.i.i, label %while.body.i.i.i.nuke.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.body.i.i.i.nuke.exit.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i.i

nuke.exit.i.i:                                    ; preds = %while.body.i.i.i.nuke.exit.i.i_crit_edge, %do.end60.i.nuke.exit.i.i_crit_edge
  %ep_list.i.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %64 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn30.i.i = load ptr, ptr %ep_list.i.i, align 4
  %cmp.not31.i.i = icmp eq ptr %.pn30.i.i, %ep_list.i.i
  br i1 %cmp.not31.i.i, label %nuke.exit.i.i.for.end.i.i_crit_edge, label %nuke.exit.i.i.for.body.i.i_crit_edge

nuke.exit.i.i.for.body.i.i_crit_edge:             ; preds = %nuke.exit.i.i
  br label %for.body.i.i

nuke.exit.i.i.for.end.i.i_crit_edge:              ; preds = %nuke.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %nuke.exit29.i.i.for.body.i.i_crit_edge, %nuke.exit.i.i.for.body.i.i_crit_edge
  %.pn32.i.i = phi ptr [ %.pn.i.i, %nuke.exit29.i.i.for.body.i.i_crit_edge ], [ %.pn30.i.i, %nuke.exit.i.i.for.body.i.i_crit_edge ]
  %ep.0.i.i = getelementptr i8, ptr %.pn32.i.i, i32 -12
  %stopped.i21.i.i = getelementptr i8, ptr %.pn32.i.i, i32 66
  %65 = ptrtoint ptr %stopped.i21.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i22.i.i = load i16, ptr %stopped.i21.i.i, align 2
  %bf.set.i23.i.i = or i16 %bf.load.i22.i.i, -32768
  store i16 %bf.set.i23.i.i, ptr %stopped.i21.i.i, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef %ep.0.i.i) #9
  %queue.i24.i.i = getelementptr i8, ptr %.pn32.i.i, i32 36
  %66 = ptrtoint ptr %queue.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %queue.i24.i.i, align 4
  %cmp.i.not1.i25.i.i = icmp eq ptr %67, %queue.i24.i.i
  br i1 %cmp.i.not1.i25.i.i, label %for.body.i.i.nuke.exit29.i.i_crit_edge, label %for.body.i.i.while.body.i28.i.i_crit_edge

for.body.i.i.while.body.i28.i.i_crit_edge:        ; preds = %for.body.i.i
  br label %while.body.i28.i.i

for.body.i.i.nuke.exit29.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit29.i.i

while.body.i28.i.i:                               ; preds = %while.body.i28.i.i.while.body.i28.i.i_crit_edge, %for.body.i.i.while.body.i28.i.i_crit_edge
  %68 = phi ptr [ %70, %while.body.i28.i.i.while.body.i28.i.i_crit_edge ], [ %67, %for.body.i.i.while.body.i28.i.i_crit_edge ]
  %add.ptr.i26.i.i = getelementptr i8, ptr %68, i32 -72
  tail call fastcc void @done(ptr noundef %ep.0.i.i, ptr noundef %add.ptr.i26.i.i, i32 noundef -108) #9
  %69 = ptrtoint ptr %queue.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %queue.i24.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %70, %queue.i24.i.i
  br i1 %cmp.i.not.i27.i.i, label %while.body.i28.i.i.nuke.exit29.i.i_crit_edge, label %while.body.i28.i.i.while.body.i28.i.i_crit_edge

while.body.i28.i.i.while.body.i28.i.i_crit_edge:  ; preds = %while.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i28.i.i

while.body.i28.i.i.nuke.exit29.i.i_crit_edge:     ; preds = %while.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit29.i.i

nuke.exit29.i.i:                                  ; preds = %while.body.i28.i.i.nuke.exit29.i.i_crit_edge, %for.body.i.i.nuke.exit29.i.i_crit_edge
  %71 = ptrtoint ptr %.pn32.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i.i = load ptr, ptr %.pn32.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ep_list.i.i
  br i1 %cmp.not.i.i, label %nuke.exit29.i.i.for.end.i.i_crit_edge, label %nuke.exit29.i.i.for.body.i.i_crit_edge

nuke.exit29.i.i.for.body.i.i_crit_edge:           ; preds = %nuke.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

nuke.exit29.i.i.for.end.i.i_crit_edge:            ; preds = %nuke.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %nuke.exit29.i.i.for.end.i.i_crit_edge, %nuke.exit.i.i.for.end.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end20_crit_edge, label %if.then.i.i

for.end.i.i.if.end20_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_udc_reset(ptr noundef %dev, ptr noundef nonnull %55) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end20

do.end65.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %op_regs, align 8
  %portsc71.i = getelementptr inbounds %struct.mv_op_regs, ptr %73, i32 0, i32 14
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc71.i) #9, !srcloc !251
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67.i, ptr noundef nonnull @.str.59, i32 noundef %75) #12
  tail call fastcc void @udc_reset(ptr noundef %dev) #9
  %driver76.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 1
  %76 = ptrtoint ptr %driver76.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver76.i, align 8
  tail call fastcc void @stop_activity(ptr noundef %dev, ptr noundef %77) #9
  %eps.i108.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 14
  %ep_dqh.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 10
  %78 = ptrtoint ptr %eps.i108.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %eps.i108.i, align 4
  %udc1.i.i = getelementptr %struct.mv_ep, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %udc1.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %udc1.i.i, align 4
  %81 = ptrtoint ptr %ep_dqh.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ep_dqh.i.i, align 4
  %dqh.i.i = getelementptr %struct.mv_ep, ptr %79, i32 0, i32 3
  %83 = ptrtoint ptr %dqh.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %dqh.i.i, align 4
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4227072, ptr %82, align 4
  %85 = load ptr, ptr %dqh.i.i, align 4
  %next_dtd_ptr.i.i = getelementptr inbounds %struct.mv_dqh, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %next_dtd_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %next_dtd_ptr.i.i, align 4
  %87 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %op_regs, align 8
  %epctrlx5.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %88, i32 0, i32 22
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %90 = or i32 %89, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %op_regs, align 8
  %epctrlx10.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %92, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.i.i, i32 %90) #9, !srcloc !256
  %93 = ptrtoint ptr %eps.i108.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eps.i108.i, align 4
  %udc1.1.i.i = getelementptr %struct.mv_ep, ptr %94, i32 1, i32 1
  %95 = ptrtoint ptr %udc1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dev, ptr %udc1.1.i.i, align 4
  %96 = ptrtoint ptr %ep_dqh.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ep_dqh.i.i, align 4
  %arrayidx2.1.i.i = getelementptr %struct.mv_dqh, ptr %97, i32 1
  %dqh.1.i.i = getelementptr %struct.mv_ep, ptr %94, i32 1, i32 3
  %98 = ptrtoint ptr %dqh.1.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx2.1.i.i, ptr %dqh.1.i.i, align 4
  %99 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4227072, ptr %arrayidx2.1.i.i, align 4
  %100 = load ptr, ptr %dqh.1.i.i, align 4
  %next_dtd_ptr.1.i.i = getelementptr inbounds %struct.mv_dqh, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %next_dtd_ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %next_dtd_ptr.1.i.i, align 4
  %102 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %op_regs, align 8
  %epctrlx5.1.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %103, i32 0, i32 22
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.1.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %105 = or i32 %104, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %106 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %op_regs, align 8
  %epctrlx10.1.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %107, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.1.i.i, i32 %105) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %op_regs, align 8
  %usbintr1.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %109, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr1.i.i, i32 1191247872) #9, !srcloc !256
  %110 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i.i = load i8, ptr %stopped, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -2
  store i8 %bf.clear.i.i, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 16777216) #9, !srcloc !256
  %usb_state77.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 21
  %113 = ptrtoint ptr %usb_state77.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %usb_state77.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end65.i, %if.then.i.i, %for.end.i.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %and21 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  %114 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %op_regs, align 8
  %portsc1.i = getelementptr inbounds %struct.mv_op_regs, ptr %115, i32 0, i32 14
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc1.i) #9, !srcloc !251
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %and.i = and i32 %117, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i55 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i55, label %if.then.i, label %if.then23.if.end.i56_crit_edge

if.then23.if.end.i56_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

if.then.i:                                        ; preds = %if.then23
  %and3.i = and i32 %117, 201326592
  %118 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and3.i, label %sw.default.i [
    i32 134217728, label %if.then.i.if.end.sink.split.i_crit_edge
    i32 0, label %sw.bb5.i
    i32 67108864, label %sw.bb8.i
  ]

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

sw.bb5.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.default.i, %sw.bb8.i, %sw.bb5.i, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb5.i ], [ 1, %sw.bb8.i ], [ 0, %sw.default.i ], [ 3, %if.then.i.if.end.sink.split.i_crit_edge ]
  %speed4.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %119 = ptrtoint ptr %speed4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink.i, ptr %speed4.i, align 8
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.end.sink.split.i, %if.then23.if.end.i56_crit_edge
  %and13.i = and i32 %117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %usb_state27.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 21
  %120 = ptrtoint ptr %usb_state27.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %usb_state27.i, align 4
  br i1 %tobool14.not.i, label %land.lhs.true.critedge.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i56
  %resume_state.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 20
  %122 = ptrtoint ptr %resume_state.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %resume_state.i, align 8
  %123 = ptrtoint ptr %usb_state27.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %usb_state27.i, align 4
  %driver.i57 = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 1
  %124 = ptrtoint ptr %driver.i57 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %driver.i57, align 8
  %suspend.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %suspend.i, align 4
  %tobool17.not.i = icmp eq ptr %127, null
  br i1 %tobool17.not.i, label %if.then15.i.if.end29.i_crit_edge, label %if.then18.i

if.then15.i.if.end29.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %128 = ptrtoint ptr %driver.i57 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %driver.i57, align 8
  %suspend20.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %129, i32 0, i32 6
  br label %if.end29.sink.split.i

land.lhs.true.critedge.i:                         ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %121)
  %cmp.i58 = icmp eq i32 %121, 8
  br i1 %cmp.i58, label %if.then28.i, label %land.lhs.true.critedge.i.if.end29.i_crit_edge

land.lhs.true.critedge.i.if.end29.i_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then28.i:                                      ; preds = %land.lhs.true.critedge.i
  %resume_state.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 20
  %130 = ptrtoint ptr %resume_state.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %resume_state.i.i, align 8
  %132 = ptrtoint ptr %usb_state27.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %usb_state27.i, align 4
  store i32 0, ptr %resume_state.i.i, align 8
  %driver.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 1
  %133 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i59 = icmp eq ptr %134, null
  br i1 %tobool.not.i.i59, label %if.then28.i.if.end29.i_crit_edge, label %if.then.i.i60

if.then28.i.if.end29.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i.i60:                                    ; preds = %if.then28.i
  %resume.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %resume.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %136, null
  br i1 %tobool3.not.i.i, label %if.then.i.i60.if.end29.i_crit_edge, label %if.then4.i.i

if.then.i.i60.if.end29.i_crit_edge:               ; preds = %if.then.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then4.i.i:                                     ; preds = %if.then.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %137 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %driver.i.i, align 8
  %resume6.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %138, i32 0, i32 7
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.then4.i.i, %if.then18.i
  %resume6.i.sink.i = phi ptr [ %resume6.i.i, %if.then4.i.i ], [ %suspend20.i, %if.then18.i ]
  %139 = ptrtoint ptr %resume6.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %resume6.i.sink.i, align 4
  tail call void %140(ptr noundef %dev) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.then.i.i60.if.end29.i_crit_edge, %if.then28.i.if.end29.i_crit_edge, %land.lhs.true.critedge.i.if.end29.i_crit_edge, %if.then15.i.if.end29.i_crit_edge
  %resume_state30.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 20
  %141 = ptrtoint ptr %resume_state30.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %resume_state30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool31.not.i = icmp eq i32 %142, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end29.i.if.end24_crit_edge

if.end29.i.if.end24_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %usb_state27.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 5, ptr %usb_state27.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then32.i, %if.end29.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %and25 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  %144 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %op_regs, align 8
  %epsetupstat.i63 = getelementptr inbounds %struct.mv_op_regs, ptr %145, i32 0, i32 17
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epsetupstat.i63) #9, !srcloc !251
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i64 = icmp eq i32 %146, 0
  br i1 %tobool.not.i64, label %if.then27.if.end7.i_crit_edge, label %for.cond.preheader.i

if.then27.if.end7.i_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.cond.preheader.i:                             ; preds = %if.then27
  %max_eps.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 9
  %148 = ptrtoint ptr %max_eps.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %max_eps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp120.not.i = icmp eq i32 %149, 0
  br i1 %cmp120.not.i, label %for.cond.preheader.i.if.end7.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %local_setup_buff.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 19
  %ep_dqh.i.i65 = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0121.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i68, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0121.i
  %and.i66 = and i32 %shl.i, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool3.not.i = icmp eq i32 %and.i66, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %150 = ptrtoint ptr %ep_dqh.i.i65 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ep_dqh.i.i65, align 4
  %conv.i.i = and i32 %i.0121.i, 255
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  tail call void @arm_heavy_mb() #9
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %152 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #9
  %153 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %op_regs, align 8
  %epsetupstat.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %154, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epsetupstat.i.i, i32 %152) #9, !srcloc !256
  %setup_buffer.i.i = getelementptr %struct.mv_dqh, ptr %151, i32 %mul.i.i, i32 10
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.body2.i.i.do.body2.i.i_crit_edge, %if.then4.i
  %155 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %op_regs, align 8
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  tail call void @arm_heavy_mb() #9
  %158 = or i32 %157, 2097152
  %159 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #9, !srcloc !256
  %161 = ptrtoint ptr %setup_buffer.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 8)
  %162 = load i64, ptr %setup_buffer.i.i, align 4
  %163 = ptrtoint ptr %local_setup_buff.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 8)
  store i64 %162, ptr %local_setup_buff.i, align 1
  %164 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %op_regs, align 8
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  %167 = and i32 %166, 2097152
  %tobool.not.i.i67 = icmp eq i32 %167, 0
  br i1 %tobool.not.i.i67, label %do.body2.i.i.do.body2.i.i_crit_edge, label %get_setup_data.exit.i

do.body2.i.i.do.body2.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i.i

get_setup_data.exit.i:                            ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %i.0121.i to i8
  %168 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %op_regs, align 8
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %171 = and i32 %170, -2097153
  %172 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #9, !srcloc !256
  tail call fastcc void @handle_setup_packet(ptr noundef %dev, i8 noundef zeroext %conv.i, ptr noundef %local_setup_buff.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %get_setup_data.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i68 = add nuw i32 %i.0121.i, 1
  %174 = ptrtoint ptr %max_eps.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %max_eps.i, align 8
  %cmp.i69 = icmp ult i32 %inc.i68, %175
  br i1 %cmp.i69, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7.i_crit_edge

for.inc.i.if.end7.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end7.i:                                        ; preds = %for.inc.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge, %if.then27.if.end7.i_crit_edge
  %176 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %op_regs, align 8
  %epcomplete.i70 = getelementptr inbounds %struct.mv_op_regs, ptr %177, i32 0, i32 21
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epcomplete.i70) #9, !srcloc !251
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool14.not.i71 = icmp eq i32 %178, 0
  br i1 %tobool14.not.i71, label %if.end7.i.if.end28_crit_edge, label %do.body.i

if.end7.i.if.end28_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body.i:                                        ; preds = %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %180 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %op_regs, align 8
  %epcomplete18.i = getelementptr inbounds %struct.mv_op_regs, ptr %181, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcomplete18.i, i32 %178) #9, !srcloc !256
  %max_eps20.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 9
  %182 = ptrtoint ptr %max_eps20.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %max_eps20.i, align 8
  %mul129.mask.i = and i32 %183, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul129.mask.i)
  %cmp21130.not.i = icmp eq i32 %mul129.mask.i, 0
  br i1 %cmp21130.not.i, label %do.body.i.if.end28_crit_edge, label %for.body23.lr.ph.i

do.body.i.if.end28_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.body23.lr.ph.i:                               ; preds = %do.body.i
  %eps33.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 14
  %usb_state.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 21
  %dev_addr.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 24
  %ep0_state.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 22
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 4
  %ep0_dir.i29.i.i = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 23
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc65.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.1131.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc66.i, %for.inc65.i.for.body23.i_crit_edge ]
  %shr.i = ashr i32 %i.1131.i, 1
  %rem.i = srem i32 %i.1131.i, 2
  %mul24.i = shl nsw i32 %rem.i, 4
  %add.i = add nsw i32 %mul24.i, %shr.i
  %shl25.i = shl nuw i32 1, %add.i
  %and26.i = and i32 %shl25.i, %179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.body23.i.for.inc65.i_crit_edge, label %if.end29.i72

for.body23.i.for.inc65.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.end29.i72:                                     ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1131.i)
  %cmp30.i = icmp eq i32 %i.1131.i, 1
  %184 = ptrtoint ptr %eps33.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %eps33.i, align 4
  %curr_ep.0.idx.i = select i1 %cmp30.i, i32 0, i32 %i.1131.i
  %curr_ep.0.i = getelementptr %struct.mv_ep, ptr %185, i32 %curr_ep.0.idx.i
  %queue.i = getelementptr %struct.mv_ep, ptr %185, i32 %curr_ep.0.idx.i, i32 2
  %186 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %queue.i, align 4
  %cmp45.not125.i = icmp eq ptr %187, %queue.i
  br i1 %cmp45.not125.i, label %if.end29.i72.for.inc65.i_crit_edge, label %for.body47.lr.ph.i

if.end29.i72.for.inc65.i_crit_edge:               ; preds = %if.end29.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

for.body47.lr.ph.i:                               ; preds = %if.end29.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1131.i)
  %cmp53.i = icmp ult i32 %i.1131.i, 2
  br label %for.body47.i

for.body47.i:                                     ; preds = %if.else56.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %.pn.in126.i = phi ptr [ %187, %for.body47.lr.ph.i ], [ %.pn128.i, %if.else56.i.for.body47.i_crit_edge ]
  %curr_req.0127.i = getelementptr i8, ptr %.pn.in126.i, i32 -72
  %188 = ptrtoint ptr %.pn.in126.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %.pn128.i = load ptr, ptr %.pn.in126.i, align 4
  %call48.i = tail call fastcc i32 @process_ep_req(ptr noundef %dev, i32 noundef %i.1131.i, ptr noundef %curr_req.0127.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %for.body47.i.for.inc65.i_crit_edge

for.body47.i.for.inc65.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.end51.i:                                       ; preds = %for.body47.i
  %status52.i = getelementptr i8, ptr %.pn.in126.i, i32 -24
  %189 = ptrtoint ptr %status52.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %status52.i, align 4
  br i1 %cmp53.i, label %if.then55.i, label %if.else56.i

if.then55.i:                                      ; preds = %if.end51.i
  %190 = ptrtoint ptr %usb_state.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %usb_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %191)
  %cmp.i.i = icmp eq i32 %191, 6
  br i1 %cmp.i.i, label %if.then.i.i73, label %if.then55.i.if.end.i.i_crit_edge

if.then55.i.if.end.i.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i73:                                    ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dev_addr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %194 = shl i32 %193, 1
  %195 = and i32 %194, 254
  %196 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %op_regs, align 8
  %deviceaddr.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %197, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deviceaddr.i.i, i32 %195) #9, !srcloc !256
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i73, %if.then55.i.if.end.i.i_crit_edge
  tail call fastcc void @done(ptr noundef %curr_ep.0.i, ptr noundef %curr_req.0127.i, i32 noundef 0) #9
  %198 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ep0_state.i.i, align 8
  %200 = zext i32 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %199, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 4, label %sw.bb3.i.i
    i32 3, label %sw.bb8.i.i
    i32 0, label %do.end13.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %call.i.i = tail call fastcc i32 @udc_prime_status(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i118.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i118.i, label %sw.bb.i.i.for.inc65.i_crit_edge, label %if.then1.i.i

sw.bb.i.i.for.inc65.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.then1.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %op_regs, align 8
  %epctrlx1.i.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %202, i32 0, i32 22
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %204 = or i32 %203, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %op_regs, align 8
  %epctrlx4.i.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %206, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i.i, i32 %204) #9, !srcloc !256
  %207 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %ep0_state.i.i, align 8
  %208 = ptrtoint ptr %ep0_dir.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %ep0_dir.i29.i.i, align 4
  br label %for.inc65.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  %call4.i.i = tail call fastcc i32 @udc_prime_status(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %sw.bb3.i.i.for.inc65.i_crit_edge, label %if.then6.i.i

sw.bb3.i.i.for.inc65.i_crit_edge:                 ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.then6.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %209 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %op_regs, align 8
  %epctrlx1.i26.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %210, i32 0, i32 22
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i26.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %212 = or i32 %211, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %op_regs, align 8
  %epctrlx4.i27.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %214, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i27.i.i, i32 %212) #9, !srcloc !256
  %215 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %ep0_state.i.i, align 8
  %216 = ptrtoint ptr %ep0_dir.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %ep0_dir.i29.i.i, align 4
  br label %for.inc65.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %ep0_state.i.i, align 8
  br label %for.inc65.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev.i.i, align 4
  %dev14.i.i = getelementptr inbounds %struct.platform_device, ptr %219, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.91) #12
  br label %for.inc65.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %220 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %op_regs, align 8
  %epctrlx1.i31.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %221, i32 0, i32 22
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i31.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %223 = or i32 %222, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %224 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %op_regs, align 8
  %epctrlx4.i32.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %225, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i32.i.i, i32 %223) #9, !srcloc !256
  %226 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %ep0_state.i.i, align 8
  %227 = ptrtoint ptr %ep0_dir.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %ep0_dir.i29.i.i, align 4
  br label %for.inc65.i

if.else56.i:                                      ; preds = %if.end51.i
  tail call fastcc void @done(ptr noundef %curr_ep.0.i, ptr noundef %curr_req.0127.i, i32 noundef 0) #9
  %cmp45.not.i = icmp eq ptr %.pn128.i, %queue.i
  br i1 %cmp45.not.i, label %if.else56.i.for.inc65.i_crit_edge, label %if.else56.i.for.body47.i_crit_edge

if.else56.i.for.body47.i_crit_edge:               ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.i

if.else56.i.for.inc65.i_crit_edge:                ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.else56.i.for.inc65.i_crit_edge, %sw.default.i.i, %do.end13.i.i, %sw.bb8.i.i, %if.then6.i.i, %sw.bb3.i.i.for.inc65.i_crit_edge, %if.then1.i.i, %sw.bb.i.i.for.inc65.i_crit_edge, %for.body47.i.for.inc65.i_crit_edge, %if.end29.i72.for.inc65.i_crit_edge, %for.body23.i.for.inc65.i_crit_edge
  %inc66.i = add nuw i32 %i.1131.i, 1
  %228 = ptrtoint ptr %max_eps20.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %max_eps20.i, align 8
  %mul.i = shl i32 %229, 1
  %cmp21.i = icmp ult i32 %inc66.i, %mul.i
  br i1 %cmp21.i, label %for.inc65.i.for.body23.i_crit_edge, label %for.inc65.i.if.end28_crit_edge

for.inc65.i.if.end28_crit_edge:                   ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.inc65.i.for.body23.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

if.end28:                                         ; preds = %for.inc65.i.if.end28_crit_edge, %do.body.i.if.end28_crit_edge, %if.end7.i.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %and29 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.cleanup.sink.split_crit_edge, label %if.then31

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then31:                                        ; preds = %if.end28
  %usb_state.i74 = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 21
  %230 = ptrtoint ptr %usb_state.i74 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %usb_state.i74, align 4
  %resume_state.i75 = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 20
  %232 = ptrtoint ptr %resume_state.i75 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %resume_state.i75, align 8
  store i32 8, ptr %usb_state.i74, align 4
  %driver.i76 = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 1
  %233 = ptrtoint ptr %driver.i76 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %driver.i76, align 8
  %suspend.i77 = getelementptr inbounds %struct.usb_gadget_driver, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %suspend.i77 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %suspend.i77, align 4
  %tobool.not.i78 = icmp eq ptr %236, null
  br i1 %tobool.not.i78, label %if.then31.cleanup.sink.split_crit_edge, label %if.then.i80

if.then31.cleanup.sink.split_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i80:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %237 = ptrtoint ptr %driver.i76 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %driver.i76, align 8
  %suspend3.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %suspend3.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %suspend3.i, align 4
  tail call void %240(ptr noundef %dev) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i80, %if.then31.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 1, %if.then.i80 ], [ 1, %if.then31.cleanup.sink.split_crit_edge ], [ 1, %if.end28.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eps_init(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %name = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name) #9
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %0 = call ptr @memset(ptr %name, i32 255, i32 14)
  %1 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eps, align 4
  %udc1 = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %udc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %udc, ptr %udc1, align 4
  %name2 = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %name2, ptr @str, i32 14)
  %name6 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name2, ptr %name6, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mv_ep_ops, ptr %ops, align 4
  %wedge = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %wedge to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %wedge, align 2
  %bf.clear9 = and i16 %bf.load, 16383
  store i16 %bf.clear9, ptr %wedge, align 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %2, i32 noundef 64) #9
  %caps = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load13 = load i8, ptr %caps, align 4
  %bf.set25 = or i8 %bf.load13, -116
  store i8 %bf.set25, ptr %caps, align 4
  %9 = ptrtoint ptr %wedge to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load26 = load i16, ptr %wedge, align 2
  %desc = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mv_ep0_desc, ptr %desc, align 4
  %queue = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i, align 4
  %bf.clear31 = and i16 %bf.load26, -16369
  store i16 %bf.clear31, ptr %wedge, align 2
  %max_eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 9
  %13 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_eps, align 8
  %mul3 = shl i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul3)
  %cmp4 = icmp ugt i32 %mul3, 2
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ep_list89 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4
  %prev.i2 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4, i32 1
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 2, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eps, align 4
  %arrayidx34 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05
  %17 = and i32 %i.05, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %div43 = sdiv i32 %i.05, 2
  %.str.100..str.99 = select i1 %tobool.not, ptr @.str.100, ptr @.str.99
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i32
  %.8 = select i1 %tobool.not, i8 4, i8 8
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 14, ptr noundef nonnull %.str.100..str.99, i32 noundef %div43)
  %direction45 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 4
  %18 = ptrtoint ptr %direction45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %direction45, align 4
  %caps47 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx34, i32 0, i32 4
  %19 = ptrtoint ptr %caps47 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load48 = load i8, ptr %caps47, align 4
  %bf.set50 = or i8 %bf.load48, %.8
  store i8 %bf.set50, ptr %caps47, align 4
  %udc51 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 1
  %20 = ptrtoint ptr %udc51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %udc, ptr %udc51, align 4
  %name52 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 5
  %call55 = call ptr @strncpy(ptr noundef %name52, ptr noundef nonnull %name, i32 noundef 14)
  %name59 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx34, i32 0, i32 1
  %21 = ptrtoint ptr %name59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name52, ptr %name59, align 4
  %caps61 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx34, i32 0, i32 4
  %22 = ptrtoint ptr %caps61 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load62 = load i8, ptr %caps61, align 4
  %bf.set74 = or i8 %bf.load62, 112
  store i8 %bf.set74, ptr %caps61, align 4
  %ops76 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx34, i32 0, i32 2
  %23 = ptrtoint ptr %ops76 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mv_ep_ops, ptr %ops76, align 4
  %stopped77 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 6
  %24 = ptrtoint ptr %stopped77 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load78 = load i16, ptr %stopped77, align 2
  %bf.clear79 = and i16 %bf.load78, 32767
  store i16 %bf.clear79, ptr %stopped77, align 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx34, i32 noundef 65535) #9
  %25 = trunc i32 %div43 to i16
  %26 = ptrtoint ptr %stopped77 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load84 = load i16, ptr %stopped77, align 2
  %bf.value = shl i16 %25, 4
  %bf.shl = and i16 %bf.value, 4080
  %bf.clear85 = and i16 %bf.load84, -4081
  %bf.set86 = or i16 %bf.clear85, %bf.shl
  store i16 %bf.set86, ptr %stopped77, align 2
  %queue87 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 2
  %27 = ptrtoint ptr %queue87 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queue87, ptr %queue87, align 4
  %prev.i1 = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue87, ptr %prev.i1, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %arrayidx34, i32 0, i32 3
  %29 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %30, ptr noundef %ep_list89) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ep_list, ptr %prev.i2, align 4
  %32 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ep_list89, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ep_list, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %ep_list, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %35 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_dqh, align 4
  %arrayidx90 = getelementptr %struct.mv_dqh, ptr %36, i32 %i.05
  %dqh = getelementptr %struct.mv_ep, ptr %16, i32 %i.05, i32 3
  %37 = ptrtoint ptr %dqh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx90, ptr %dqh, align 4
  %inc = add nuw i32 %i.05, 1
  %38 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_eps, align 8
  %mul = shl i32 %39, 1
  %cmp = icmp ult i32 %inc, %mul
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_vbus_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qwork = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qwork, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_work = getelementptr inbounds %struct.mv_udc, ptr %dev, i32 0, i32 28
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %1, ptr noundef %vbus_work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_udc_vbus_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1200
  %pdata = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %vbus1 = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vbus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %poll = getelementptr inbounds %struct.mv_usb_addon_irq, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll, align 4
  %call = tail call i32 %5() #9
  %dev = getelementptr i8, ptr %work, i32 -100
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.114, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %switch = icmp ult i32 %call, 2
  br i1 %switch, label %cleanup.sink.split, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @mv_udc_vbus_session(ptr noundef %add.ptr, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_udc_disable_internal(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %active, align 4
  %1 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_disable_internal, %do.end)) #9
          to label %if.then5 [label %do.end], !srcloc !260

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6, ptr noundef nonnull @.str.117) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %pdata = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 31
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %phy_deinit = getelementptr inbounds %struct.mv_usb_platform_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy_deinit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_deinit, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end.if.end11_crit_edge, label %if.then8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 8
  %8 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_regs, align 4
  tail call void %7(ptr noundef %9) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %clk.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 32
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load13 = load i8, ptr %active, align 4
  %bf.clear14 = and i8 %bf.load13, -3
  store i8 %bf.clear14, ptr %active, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %entry.if.end15_crit_edge
  ret void
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
  %done = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 8
  tail call void @complete(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_reset(ptr nocapture noundef readonly %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 33554432) #9, !srcloc !256
  %8 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_regs, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1 = icmp eq i32 %11, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %loops.02 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 5000, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.02)
  %cmp = icmp eq i32 %loops.02, 0
  br i1 %cmp, label %do.end20, label %if.end

do.end20:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %loops.02, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #9
  %15 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_regs, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  %18 = and i32 %17, 33554432
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %19 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_regs, align 8
  %usbmode = getelementptr inbounds %struct.mv_op_regs, ptr %20, i32 0, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbmode) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  %22 = or i32 %21, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_regs, align 8
  %usbmode33 = getelementptr inbounds %struct.mv_op_regs, ptr %24, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbmode33, i32 %22) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_regs, align 8
  %epsetupstat = getelementptr inbounds %struct.mv_op_regs, ptr %26, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epsetupstat, i32 0) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !301
  tail call void @arm_heavy_mb() #9
  %ep_dqh_dma = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 12
  %27 = ptrtoint ptr %ep_dqh_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep_dqh_dma, align 4
  %and41 = and i32 %28, -2048
  %29 = tail call i32 @llvm.bswap.i32(i32 %and41)
  %30 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_regs, align 8
  %eplistaddr = getelementptr inbounds %struct.mv_op_regs, ptr %31, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %eplistaddr, i32 %29) #9, !srcloc !256
  %32 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_regs, align 8
  %portsc46 = getelementptr inbounds %struct.mv_op_regs, ptr %33, i32 0, i32 14
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc46) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %cap_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 6
  %35 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cap_regs, align 4
  %hcsparams = getelementptr inbounds %struct.mv_cap_regs, ptr %36, i32 0, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcsparams) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  %force_fs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %38 = ptrtoint ptr %force_fs to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %force_fs, align 4
  %39 = and i8 %bf.load, 8
  %40 = and i32 %34, -2
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = zext i8 %39 to i32
  %43 = shl nuw nsw i32 %42, 21
  %portsc.1 = or i32 %43, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %portsc.1)
  %45 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %op_regs, align 8
  %portsc69 = getelementptr inbounds %struct.mv_op_regs, ptr %46, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc69, i32 %44) #9, !srcloc !256
  %47 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %op_regs, align 8
  %epctrlx = getelementptr inbounds %struct.mv_op_regs, ptr %48, i32 0, i32 22
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !305
  %50 = and i32 %49, -16777473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %op_regs, align 8
  %epctrlx83 = getelementptr inbounds %struct.mv_op_regs, ptr %52, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx83, i32 %50) #9, !srcloc !256
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %udc, ptr noundef readonly %driver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 4
  %stopped.i = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %stopped.i, align 2
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %stopped.i, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef %1) #9
  %queue.i = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %4, %queue.i
  br i1 %cmp.i.not1.i, label %entry.nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nuke.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %5 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %4, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -72
  tail call fastcc void @done(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %entry.nuke.exit_crit_edge
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4
  %8 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn30 = load ptr, ptr %ep_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %ep_list
  br i1 %cmp.not31, label %nuke.exit.for.end_crit_edge, label %nuke.exit.for.body_crit_edge

nuke.exit.for.body_crit_edge:                     ; preds = %nuke.exit
  br label %for.body

nuke.exit.for.end_crit_edge:                      ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nuke.exit29.for.body_crit_edge, %nuke.exit.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %nuke.exit29.for.body_crit_edge ], [ %.pn30, %nuke.exit.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn32, i32 -12
  %stopped.i21 = getelementptr i8, ptr %.pn32, i32 66
  %9 = ptrtoint ptr %stopped.i21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i22 = load i16, ptr %stopped.i21, align 2
  %bf.set.i23 = or i16 %bf.load.i22, -32768
  store i16 %bf.set.i23, ptr %stopped.i21, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef %ep.0) #9
  %queue.i24 = getelementptr i8, ptr %.pn32, i32 36
  %10 = ptrtoint ptr %queue.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i24, align 4
  %cmp.i.not1.i25 = icmp eq ptr %11, %queue.i24
  br i1 %cmp.i.not1.i25, label %for.body.nuke.exit29_crit_edge, label %for.body.while.body.i28_crit_edge

for.body.while.body.i28_crit_edge:                ; preds = %for.body
  br label %while.body.i28

for.body.nuke.exit29_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit29

while.body.i28:                                   ; preds = %while.body.i28.while.body.i28_crit_edge, %for.body.while.body.i28_crit_edge
  %12 = phi ptr [ %14, %while.body.i28.while.body.i28_crit_edge ], [ %11, %for.body.while.body.i28_crit_edge ]
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 -72
  tail call fastcc void @done(ptr noundef %ep.0, ptr noundef %add.ptr.i26, i32 noundef -108) #9
  %13 = ptrtoint ptr %queue.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue.i24, align 4
  %cmp.i.not.i27 = icmp eq ptr %14, %queue.i24
  br i1 %cmp.i.not.i27, label %while.body.i28.nuke.exit29_crit_edge, label %while.body.i28.while.body.i28_crit_edge

while.body.i28.while.body.i28_crit_edge:          ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i28

while.body.i28.nuke.exit29_crit_edge:             ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit29

nuke.exit29:                                      ; preds = %while.body.i28.nuke.exit29_crit_edge, %for.body.nuke.exit29_crit_edge
  %15 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %nuke.exit29.for.end_crit_edge, label %nuke.exit29.for.body_crit_edge

nuke.exit29.for.body_crit_edge:                   ; preds = %nuke.exit29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nuke.exit29.for.end_crit_edge:                    ; preds = %nuke.exit29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nuke.exit29.for.end_crit_edge, %nuke.exit.for.end_crit_edge
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 5
  %16 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disconnect, align 4
  tail call void %17(ptr noundef %udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_reset(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 10
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 4
  %udc1 = getelementptr %struct.mv_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udc1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %udc, ptr %udc1, align 4
  %3 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep_dqh, align 4
  %dqh = getelementptr %struct.mv_ep, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dqh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dqh, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4227072, ptr %4, align 4
  %7 = load ptr, ptr %dqh, align 4
  %next_dtd_ptr = getelementptr inbounds %struct.mv_dqh, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %next_dtd_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %next_dtd_ptr, align 4
  %9 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op_regs, align 8
  %epctrlx5 = getelementptr inbounds %struct.mv_op_regs, ptr %10, i32 0, i32 22
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %12 = or i32 %11, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_regs, align 8
  %epctrlx10 = getelementptr inbounds %struct.mv_op_regs, ptr %14, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10, i32 %12) #9, !srcloc !256
  %15 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eps, align 4
  %udc1.1 = getelementptr %struct.mv_ep, ptr %16, i32 1, i32 1
  %17 = ptrtoint ptr %udc1.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %udc, ptr %udc1.1, align 4
  %18 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_dqh, align 4
  %arrayidx2.1 = getelementptr %struct.mv_dqh, ptr %19, i32 1
  %dqh.1 = getelementptr %struct.mv_ep, ptr %16, i32 1, i32 3
  %20 = ptrtoint ptr %dqh.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx2.1, ptr %dqh.1, align 4
  %21 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4227072, ptr %arrayidx2.1, align 4
  %22 = load ptr, ptr %dqh.1, align 4
  %next_dtd_ptr.1 = getelementptr inbounds %struct.mv_dqh, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %next_dtd_ptr.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %next_dtd_ptr.1, align 4
  %24 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op_regs, align 8
  %epctrlx5.1 = getelementptr inbounds %struct.mv_op_regs, ptr %25, i32 0, i32 22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.1) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %27 = or i32 %26, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_regs, align 8
  %epctrlx10.1 = getelementptr inbounds %struct.mv_op_regs, ptr %29, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.1, i32 %27) #9, !srcloc !256
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_start(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 8
  %usbintr1 = getelementptr inbounds %struct.mv_op_regs, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr1, i32 1191247872) #9, !srcloc !256
  %stopped = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %stopped, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #9, !srcloc !256
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_ep_fifo_flush(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup76

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup76_crit_edge, label %if.end4

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup76

if.end4:                                          ; preds = %if.end
  %udc5 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %udc5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc5, align 4
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %4 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ep_num, align 2
  %bf.lshr10 = lshr i16 %bf.load, 4
  %bf.clear11 = and i16 %bf.lshr10, 255
  %bf.cast12 = zext i16 %bf.clear11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear11)
  %cmp13 = icmp eq i16 %bf.clear11, 0
  br i1 %cmp13, label %if.end4.if.end30_crit_edge, label %if.else

if.end4.if.end30_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else:                                          ; preds = %if.end4
  %5 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 23
  %direction7 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %ep0_dir, ptr %direction7
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp15 = icmp eq i32 %cond, 0
  br i1 %cmp15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %bf.cast12
  br label %if.end30

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shl28 = shl i32 65536, %bf.cast12
  br label %if.end30

if.end30:                                         ; preds = %if.else22, %if.then16, %if.end4.if.end30_crit_edge
  %bit_pos.0 = phi i32 [ %shl, %if.then16 ], [ %shl28, %if.else22 ], [ 65537, %if.end4.if.end30_crit_edge ]
  %7 = tail call i32 @llvm.bswap.i32(i32 %bit_pos.0)
  %op_regs41 = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond66.do.body_crit_edge, %if.end30
  %loops.0 = phi i32 [ 5000, %if.end30 ], [ %dec65, %do.cond66.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0)
  %cmp31 = icmp eq i32 %loops.0, 0
  br i1 %cmp31, label %do.end, label %do.body38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %op_regs41, align 8
  %epstatus = getelementptr inbounds %struct.mv_op_regs, ptr %11, i32 0, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus) #9, !srcloc !251
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.61, i32 noundef %13, i32 noundef %bit_pos.0) #12
  br label %cleanup76

do.body38:                                        ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !308
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_regs41, align 8
  %epflush = getelementptr inbounds %struct.mv_op_regs, ptr %15, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epflush, i32 %7) #9, !srcloc !256
  %16 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_regs41, align 8
  %epflush45106 = getelementptr inbounds %struct.mv_op_regs, ptr %17, i32 0, i32 19
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epflush45106) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not107 = icmp eq i32 %18, 0
  br i1 %tobool49.not107, label %do.body38.do.cond66_crit_edge, label %do.body38.while.body_crit_edge

do.body38.while.body_crit_edge:                   ; preds = %do.body38
  br label %while.body

do.body38.do.cond66_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond66

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %do.body38.while.body_crit_edge
  %inter_loops.0108 = phi i32 [ %dec, %if.end64.while.body_crit_edge ], [ 5000, %do.body38.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inter_loops.0108)
  %cmp50 = icmp eq i32 %inter_loops.0108, 0
  br i1 %cmp50, label %do.end54, label %if.end64

do.end54:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev55 = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev55, align 4
  %dev56 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs41, align 8
  %epflush60 = getelementptr inbounds %struct.mv_op_regs, ptr %22, i32 0, i32 19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epflush60) #9, !srcloc !251
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !310
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.64, i32 noundef %24, i32 noundef %bit_pos.0) #12
  br label %cleanup76

if.end64:                                         ; preds = %while.body
  %dec = add nsw i32 %inter_loops.0108, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 429496) #9
  %26 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op_regs41, align 8
  %epflush45 = getelementptr inbounds %struct.mv_op_regs, ptr %27, i32 0, i32 19
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epflush45) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %if.end64.do.cond66_crit_edge, label %if.end64.while.body_crit_edge

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end64.do.cond66_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond66

do.cond66:                                        ; preds = %if.end64.do.cond66_crit_edge, %do.body38.do.cond66_crit_edge
  %dec65 = add nsw i32 %loops.0, -1
  %29 = ptrtoint ptr %op_regs41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %op_regs41, align 8
  %epstatus70 = getelementptr inbounds %struct.mv_op_regs, ptr %30, i32 0, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus70) #9, !srcloc !251
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !311
  %and = and i32 %32, %bit_pos.0
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %do.cond66.cleanup76_crit_edge, label %do.cond66.do.body_crit_edge

do.cond66.do.body_crit_edge:                      ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond66.cleanup76_crit_edge:                    ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup76

cleanup76:                                        ; preds = %do.cond66.cleanup76_crit_edge, %do.end54, %do.end, %if.end.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped1 = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %stopped1, align 2
  %udc2 = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udc2, align 4
  %queue = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status4 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %11 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %12)
  %cmp = icmp eq i32 %12, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %status4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %status, ptr %status4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %12, %list_del_init.exit.if.end_crit_edge ]
  %dtd_count = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 7
  %14 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1077.not = icmp eq i32 %15, 0
  br i1 %cmp1077.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %head = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head, align 4
  %dtd_pool = getelementptr inbounds %struct.mv_udc, ptr %2, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i32 [ %15, %for.body.lr.ph ], [ %26, %if.end16.for.body_crit_edge ]
  %j.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %next_td.078 = phi ptr [ %17, %for.body.lr.ph ], [ %next_td.1, %if.end16.for.body_crit_edge ]
  %sub = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.079, i32 %sub)
  %cmp13.not = icmp eq i32 %j.079, %sub
  br i1 %cmp13.not, label %for.body.if.end16_crit_edge, label %if.then15

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %next_dtd_virt = getelementptr inbounds %struct.mv_dtd, ptr %next_td.078, i32 0, i32 9
  %19 = ptrtoint ptr %next_dtd_virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_dtd_virt, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body.if.end16_crit_edge
  %next_td.1 = phi ptr [ %20, %if.then15 ], [ %next_td.078, %for.body.if.end16_crit_edge ]
  %21 = ptrtoint ptr %dtd_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dtd_pool, align 8
  %td_dma = getelementptr inbounds %struct.mv_dtd, ptr %next_td.078, i32 0, i32 8
  %23 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %td_dma, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %next_td.078, i32 noundef %24) #9
  %inc = add nuw i32 %j.079, 1
  %25 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dtd_count, align 4
  %cmp10 = icmp ult i32 %inc, %26
  br i1 %cmp10, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.end.for.end_crit_edge
  %27 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load18 = load i16, ptr %stopped1, align 2
  %28 = and i16 %bf.load18, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp21 = icmp eq i16 %28, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udc2, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %30, i32 0, i32 23
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %direction = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ep0_dir, %cond.true ], [ %direction, %cond.false ]
  %31 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond = load i32, ptr %cond.in, align 4
  tail call void @usb_gadget_unmap_request(ptr noundef %2, ptr noundef %req, i32 noundef %cond) #9
  %32 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %status.addr.0, label %do.end [
    i32 0, label %cond.end.if.end32_crit_edge
    i32 -108, label %cond.end.if.end32_crit_edge80
  ]

cond.end.if.end32_crit_edge80:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

cond.end.if.end32_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.66, ptr noundef %36, ptr noundef %req, i32 noundef %status.addr.0, i32 noundef %38, i32 noundef %40) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %cond.end.if.end32_crit_edge, %cond.end.if.end32_crit_edge80
  %bf.lshr = and i16 %bf.load, -32768
  %41 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load34 = load i16, ptr %stopped1, align 2
  %bf.set = or i16 %bf.load34, -32768
  store i16 %bf.set, ptr %stopped1, align 2
  %42 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udc2, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %43, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #9
  %44 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udc2, align 4
  %lock40 = getelementptr inbounds %struct.mv_udc, ptr %45, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock40) #9
  %46 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load43 = load i16, ptr %stopped1, align 2
  %bf.clear44 = and i16 %bf.load43, 32767
  %bf.set45 = or i16 %bf.clear44, %bf.lshr
  store i16 %bf.set45, ptr %stopped1, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_setup_packet(ptr noundef %udc, i8 noundef zeroext %ep_num, ptr noundef readonly %setup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 4
  %conv = zext i8 %ep_num to i32
  %mul = shl nuw nsw i32 %conv, 1
  %arrayidx = getelementptr %struct.mv_ep, ptr %1, i32 %mul
  %stopped.i = getelementptr %struct.mv_ep, ptr %1, i32 %mul, i32 6
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %stopped.i, align 2
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %stopped.i, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef %arrayidx) #9
  %queue.i = getelementptr %struct.mv_ep, ptr %1, i32 %mul, i32 2
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %4, %queue.i
  br i1 %cmp.i.not1.i, label %entry.nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nuke.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %5 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %4, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -72
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %entry.nuke.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_setup_packet.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_setup_packet, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !260

if.then:                                          ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %setup, align 1
  %conv5 = zext i8 %11 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %12 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bRequest, align 1
  %conv6 = zext i8 %13 to i32
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %14 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wValue, align 1
  %conv7 = zext i16 %15 to i32
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %16 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wIndex, align 1
  %conv8 = zext i16 %17 to i32
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %18 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wLength, align 1
  %conv9 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_setup_packet.__UNIQUE_ID_ddebug307, ptr noundef %dev4, ptr noundef nonnull @.str.71, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %nuke.exit
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %setup, align 1
  %22 = and i8 %21, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  br i1 %cmp, label %if.then13, label %do.end.if.then24_crit_edge

do.end.if.then24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then13:                                        ; preds = %do.end
  %bRequest14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %23 = ptrtoint ptr %bRequest14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bRequest14, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %24, label %if.then13.if.then24_crit_edge [
    i8 0, label %sw.bb
    i8 5, label %sw.bb16
    i8 1, label %sw.bb17
    i8 3, label %sw.bb18
  ]

if.then13.if.then24_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

sw.bb:                                            ; preds = %if.then13
  %conv.i = zext i8 %21 to i32
  %and.i = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 128
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.if.end59_crit_edge

sw.bb.if.end59_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i:                                         ; preds = %sw.bb
  %and4.i = and i32 %conv.i, 31
  %26 = zext i32 %and4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %and4.i, label %if.end.i.if.end35.i_crit_edge [
    i32 0, label %if.then7.i
    i32 2, label %if.then22.i
  ]

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %27 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i98 = load i8, ptr %remote_wakeup.i, align 4
  %28 = lshr i8 %bf.load.i98, 4
  %29 = and i8 %28, 2
  %30 = or i8 %29, 1
  %conv9.i = zext i8 %30 to i16
  br label %if.end35.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %31 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wIndex.i, align 1
  %33 = trunc i16 %32 to i8
  %conv26.i = and i8 %33, 15
  %op_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %34 = ptrtoint ptr %op_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %op_regs.i.i, align 8
  %idxprom.i.i = zext i8 %conv26.i to i32
  %arrayidx.i.i = getelementptr %struct.mv_op_regs, ptr %35, i32 0, i32 22, i32 %idxprom.i.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #9, !srcloc !251
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %and4.i.i = lshr i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i2.i = icmp slt i8 %33, 0
  %retval.0.in.i.i = select i1 %cmp.i2.i, i32 %and4.i.i, i32 %37
  %38 = trunc i32 %retval.0.in.i.i to i16
  %conv32.i = and i16 %38, 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then22.i, %if.then7.i, %if.end.i.if.end35.i_crit_edge
  %status.0.i = phi i16 [ %conv9.i, %if.then7.i ], [ %conv32.i, %if.then22.i ], [ 0, %if.end.i.if.end35.i_crit_edge ]
  %call36.i = tail call fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext 1, i16 noundef zeroext %status.0.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.else39.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i1.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %39 = ptrtoint ptr %op_regs.i1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %op_regs.i1.i, align 8
  %epctrlx1.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %40, i32 0, i32 22
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %42 = or i32 %41, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %op_regs.i1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %op_regs.i1.i, align 8
  %epctrlx4.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %44, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i, i32 %42) #9, !srcloc !256
  %ep0_state.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %45 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ep0_state.i.i, align 8
  %ep0_dir.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %46 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ep0_dir.i.i, align 4
  br label %if.end59

if.else39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_state.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %47 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %ep0_state.i, align 8
  br label %if.end59

sw.bb16:                                          ; preds = %if.then13
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %48 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wValue.i, align 1
  %50 = and i16 %49, 255
  %conv1.i = zext i16 %50 to i32
  %dev_addr.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 24
  %51 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv1.i, ptr %dev_addr.i, align 8
  %usb_state.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 21
  %52 = ptrtoint ptr %usb_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %usb_state.i, align 4
  %call.i = tail call fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb16.if.end59_crit_edge, label %if.then.i

sw.bb16.if.end59_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i.i99 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %53 = ptrtoint ptr %op_regs.i.i99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %op_regs.i.i99, align 8
  %epctrlx1.i.i100 = getelementptr inbounds %struct.mv_op_regs, ptr %54, i32 0, i32 22
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i100) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %56 = or i32 %55, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %op_regs.i.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %op_regs.i.i99, align 8
  %epctrlx4.i.i101 = getelementptr inbounds %struct.mv_op_regs, ptr %58, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i101, i32 %56) #9, !srcloc !256
  %ep0_state.i.i102 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %59 = ptrtoint ptr %ep0_state.i.i102 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ep0_state.i.i102, align 8
  %ep0_dir.i.i103 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %60 = ptrtoint ptr %ep0_dir.i.i103 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %ep0_dir.i.i103, align 4
  br label %if.end59

sw.bb17:                                          ; preds = %if.then13
  %trunc.i = trunc i8 %21 to i7
  %61 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.124)
  switch i7 %trunc.i, label %sw.bb17.if.end59_crit_edge [
    i7 0, label %if.then.i106
    i7 2, label %if.then8.i
  ]

sw.bb17.if.end59_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then.i106:                                     ; preds = %sw.bb17
  %wValue.i105 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %62 = ptrtoint ptr %wValue.i105 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %wValue.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %63)
  %cond49.i = icmp eq i16 %63, 1
  br i1 %cond49.i, label %sw.bb.i, label %if.then.i106.if.end59_crit_edge

if.then.i106.if.end59_crit_edge:                  ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb.i:                                          ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup.i107 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %64 = ptrtoint ptr %remote_wakeup.i107 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i108 = load i8, ptr %remote_wakeup.i107, align 4
  %bf.clear.i = and i8 %bf.load.i108, -33
  store i8 %bf.clear.i, ptr %remote_wakeup.i107, align 4
  br label %if.end44.i

if.then8.i:                                       ; preds = %sw.bb17
  %wValue9.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %65 = ptrtoint ptr %wValue9.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %wValue9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cond48.i = icmp eq i16 %66, 0
  br i1 %cond48.i, label %sw.bb11.i, label %if.then8.i.if.end59_crit_edge

if.then8.i.if.end59_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb11.i:                                        ; preds = %if.then8.i
  %wIndex.i109 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %67 = ptrtoint ptr %wIndex.i109 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %wIndex.i109, align 1
  %69 = trunc i16 %68 to i8
  %conv14.i = and i8 %69, 15
  %70 = lshr i8 %69, 7
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %71 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp24.not.i = icmp eq i16 %72, 0
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %sw.bb11.i.if.end59_crit_edge

sw.bb11.i.if.end59_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lor.lhs.false26.i:                                ; preds = %sw.bb11.i
  %conv27.i = zext i8 %conv14.i to i32
  %max_eps.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 9
  %73 = ptrtoint ptr %max_eps.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_eps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv27.i)
  %cmp28.i = icmp ult i32 %74, %conv27.i
  br i1 %cmp28.i, label %lor.lhs.false26.i.if.end59_crit_edge, label %if.end.i111

lor.lhs.false26.i.if.end59_crit_edge:             ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i111:                                      ; preds = %lor.lhs.false26.i
  %75 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %eps, align 4
  %mul.i = shl nuw nsw i32 %conv27.i, 1
  %conv32.i110 = zext i8 %70 to i32
  %add.i = or i32 %mul.i, %conv32.i110
  %wedge.i = getelementptr %struct.mv_ep, ptr %76, i32 %add.i, i32 6
  %77 = ptrtoint ptr %wedge.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load33.i = load i16, ptr %wedge.i, align 2
  %78 = and i16 %bf.load33.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp35.not.i = icmp eq i16 %78, 0
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end.i111.if.end44.i_crit_edge

if.end.i111.if.end44.i_crit_edge:                 ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.end38.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  tail call fastcc void @ep_set_stall(ptr noundef %udc, i8 noundef zeroext %conv14.i, i8 noundef zeroext %70, i32 noundef 0) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end38.i, %if.end.i111.if.end44.i_crit_edge, %sw.bb.i
  %call.i112 = tail call fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool45.not.i = icmp eq i32 %call.i112, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end59_crit_edge, label %if.then46.i

if.end44.i.if.end59_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i.i113 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %79 = ptrtoint ptr %op_regs.i.i113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %op_regs.i.i113, align 8
  %epctrlx1.i.i114 = getelementptr inbounds %struct.mv_op_regs, ptr %80, i32 0, i32 22
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i114) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %82 = or i32 %81, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %83 = ptrtoint ptr %op_regs.i.i113 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %op_regs.i.i113, align 8
  %epctrlx4.i.i115 = getelementptr inbounds %struct.mv_op_regs, ptr %84, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i115, i32 %82) #9, !srcloc !256
  %ep0_state.i.i116 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %85 = ptrtoint ptr %ep0_state.i.i116 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %ep0_state.i.i116, align 8
  %ep0_dir.i.i117 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %86 = ptrtoint ptr %ep0_dir.i.i117 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %ep0_dir.i.i117, align 4
  br label %if.end59

sw.bb18:                                          ; preds = %if.then13
  %trunc.i118 = trunc i8 %21 to i7
  %87 = zext i7 %trunc.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.125)
  switch i7 %trunc.i118, label %sw.bb18.if.end59_crit_edge [
    i7 0, label %if.then.i120
    i7 2, label %if.then28.i
  ]

sw.bb18.if.end59_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then.i120:                                     ; preds = %sw.bb18
  %wValue.i119 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %88 = ptrtoint ptr %wValue.i119 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %wValue.i119, align 1
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %89, label %if.then.i120.if.end59_crit_edge [
    i16 1, label %sw.bb.i124
    i16 2, label %sw.bb3.i
  ]

if.then.i120.if.end59_crit_edge:                  ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb.i124:                                       ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #11
  %remote_wakeup.i121 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 27
  %91 = ptrtoint ptr %remote_wakeup.i121 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i122 = load i8, ptr %remote_wakeup.i121, align 4
  %bf.set.i123 = or i8 %bf.load.i122, 32
  store i8 %bf.set.i123, ptr %remote_wakeup.i121, align 4
  br label %if.end60.i

sw.bb3.i:                                         ; preds = %if.then.i120
  %wIndex.i125 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %92 = ptrtoint ptr %wIndex.i125 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %wIndex.i125, align 1
  %94 = and i16 %93, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i126 = icmp eq i16 %94, 0
  br i1 %tobool.not.i126, label %lor.lhs.false.i, label %sw.bb3.i.if.then8.i132_crit_edge

sw.bb3.i.if.then8.i132_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i132

lor.lhs.false.i:                                  ; preds = %sw.bb3.i
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 5
  %95 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp6.not.i = icmp eq i32 %96, 3
  br i1 %cmp6.not.i, label %lor.lhs.false.i.if.end.i134_crit_edge, label %lor.lhs.false.i.if.then8.i132_crit_edge

lor.lhs.false.i.if.then8.i132_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i132

lor.lhs.false.i.if.end.i134_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i134

if.then8.i132:                                    ; preds = %lor.lhs.false.i.if.then8.i132_crit_edge, %sw.bb3.i.if.then8.i132_crit_edge
  %op_regs.i.i127 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %97 = ptrtoint ptr %op_regs.i.i127 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %op_regs.i.i127, align 8
  %epctrlx1.i.i128 = getelementptr inbounds %struct.mv_op_regs, ptr %98, i32 0, i32 22
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i128) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %100 = or i32 %99, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %op_regs.i.i127 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %op_regs.i.i127, align 8
  %epctrlx4.i.i129 = getelementptr inbounds %struct.mv_op_regs, ptr %102, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i129, i32 %100) #9, !srcloc !256
  %ep0_state.i.i130 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %103 = ptrtoint ptr %ep0_state.i.i130 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %ep0_state.i.i130, align 8
  %ep0_dir.i.i131 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %104 = ptrtoint ptr %ep0_dir.i.i131 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %ep0_dir.i.i131, align 4
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.then8.i132, %lor.lhs.false.i.if.end.i134_crit_edge
  %usb_state.i133 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 21
  %105 = ptrtoint ptr %usb_state.i133 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %usb_state.i133, align 4
  %.off.i = add i32 %106, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end.i134.if.end19.i_crit_edge, label %if.then18.i

if.end.i134.if.end19.i_crit_edge:                 ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i88.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %107 = ptrtoint ptr %op_regs.i88.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %op_regs.i88.i, align 8
  %epctrlx1.i89.i = getelementptr inbounds %struct.mv_op_regs, ptr %108, i32 0, i32 22
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i89.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %110 = or i32 %109, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %op_regs.i88.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %op_regs.i88.i, align 8
  %epctrlx4.i90.i = getelementptr inbounds %struct.mv_op_regs, ptr %112, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i90.i, i32 %110) #9, !srcloc !256
  %ep0_state.i91.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %113 = ptrtoint ptr %ep0_state.i91.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %ep0_state.i91.i, align 8
  %ep0_dir.i92.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %114 = ptrtoint ptr %ep0_dir.i92.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %ep0_dir.i92.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end.i134.if.end19.i_crit_edge
  %115 = ptrtoint ptr %wIndex.i125 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %wIndex.i125, align 1
  %117 = lshr i16 %116, 8
  %conv.i.i = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %116)
  %cmp.i.i = icmp ult i16 %116, 1536
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  %test_mode.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 25
  %118 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv.i.i, ptr %test_mode.i.i, align 4
  %call.i.i = tail call fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end59_crit_edge, label %if.then3.i.i

if.then.i.i.if.end59_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %119 = ptrtoint ptr %op_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %op_regs.i.i.i, align 8
  %epctrlx1.i.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %120, i32 0, i32 22
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %122 = or i32 %121, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %123 = ptrtoint ptr %op_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %op_regs.i.i.i, align 8
  %epctrlx4.i.i.i = getelementptr inbounds %struct.mv_op_regs, ptr %124, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i.i.i, i32 %122) #9, !srcloc !256
  %ep0_state.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %125 = ptrtoint ptr %ep0_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %ep0_state.i.i.i, align 8
  %ep0_dir.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %126 = ptrtoint ptr %ep0_dir.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %ep0_dir.i.i.i, align 4
  br label %if.end59

do.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %127 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.platform_device, ptr %128, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.83, i32 noundef %conv.i.i) #12
  br label %if.end59

if.then28.i:                                      ; preds = %sw.bb18
  %wValue29.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %129 = ptrtoint ptr %wValue29.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %wValue29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cond64.i = icmp eq i16 %130, 0
  br i1 %cond64.i, label %sw.bb31.i, label %if.then28.i.if.end59_crit_edge

if.then28.i.if.end59_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb31.i:                                        ; preds = %if.then28.i
  %wIndex32.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %131 = ptrtoint ptr %wIndex32.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %wIndex32.i, align 1
  %133 = trunc i16 %132 to i8
  %wLength.i135 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %134 = ptrtoint ptr %wLength.i135 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %wLength.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %cmp47.not.i = icmp eq i16 %135, 0
  br i1 %cmp47.not.i, label %lor.lhs.false49.i, label %sw.bb31.i.if.end59_crit_edge

sw.bb31.i.if.end59_crit_edge:                     ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lor.lhs.false49.i:                                ; preds = %sw.bb31.i
  %conv35.i = and i8 %133, 15
  %conv50.i = zext i8 %conv35.i to i32
  %max_eps.i136 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 9
  %136 = ptrtoint ptr %max_eps.i136 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_eps.i136, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %conv50.i)
  %cmp51.i = icmp ult i32 %137, %conv50.i
  br i1 %cmp51.i, label %lor.lhs.false49.i.if.end59_crit_edge, label %if.end54.i

lor.lhs.false49.i.if.end59_crit_edge:             ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end54.i:                                       ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i137 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock.i137) #9
  %op_regs.i93.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %138 = ptrtoint ptr %op_regs.i93.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %op_regs.i93.i, align 8
  %arrayidx.i.i138 = getelementptr %struct.mv_op_regs, ptr %139, i32 0, i32 22, i32 %conv50.i
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i138) #9, !srcloc !251
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp8.i.i = icmp slt i8 %133, 0
  %epctrlx.0.i.v.i = select i1 %cmp8.i.i, i32 65536, i32 1
  %epctrlx.0.i.i = or i32 %141, %epctrlx.0.i.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  tail call void @arm_heavy_mb() #9
  %142 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.0.i.i) #9
  %143 = ptrtoint ptr %op_regs.i93.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %op_regs.i93.i, align 8
  %arrayidx20.i.i = getelementptr %struct.mv_op_regs, ptr %144, i32 0, i32 22, i32 %conv50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.i.i, i32 %142) #9, !srcloc !256
  tail call void @_raw_spin_lock(ptr noundef %lock.i137) #9
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end54.i, %sw.bb.i124
  %call.i139 = tail call fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool61.not.i = icmp eq i32 %call.i139, 0
  br i1 %tobool61.not.i, label %if.end60.i.if.end59_crit_edge, label %if.then62.i

if.end60.i.if.end59_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i95.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %145 = ptrtoint ptr %op_regs.i95.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %op_regs.i95.i, align 8
  %epctrlx1.i96.i = getelementptr inbounds %struct.mv_op_regs, ptr %146, i32 0, i32 22
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i96.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %148 = or i32 %147, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %149 = ptrtoint ptr %op_regs.i95.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %op_regs.i95.i, align 8
  %epctrlx4.i97.i = getelementptr inbounds %struct.mv_op_regs, ptr %150, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i97.i, i32 %148) #9, !srcloc !256
  %ep0_state.i98.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %151 = ptrtoint ptr %ep0_state.i98.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %ep0_state.i98.i, align 8
  %ep0_dir.i99.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %152 = ptrtoint ptr %ep0_dir.i99.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %ep0_dir.i99.i, align 4
  br label %if.end59

if.then24:                                        ; preds = %if.then13.if.then24_crit_edge, %do.end.if.then24_crit_edge
  %wLength25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %153 = ptrtoint ptr %wLength25 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %wLength25, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool26.not = icmp eq i16 %154, 0
  br i1 %tobool26.not, label %if.else44, label %if.then27

if.then27:                                        ; preds = %if.then24
  %.lobit = lshr i8 %21, 7
  %155 = zext i8 %.lobit to i32
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %156 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %ep0_dir, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %driver = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 1
  %157 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %driver, align 8
  %setup32 = getelementptr inbounds %struct.usb_gadget_driver, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %setup32 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %setup32, align 4
  %local_setup_buff = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 19
  %call33 = tail call i32 %160(ptr noundef %udc, ptr noundef %local_setup_buff) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %161 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %op_regs.i, align 8
  %epctrlx1.i = getelementptr inbounds %struct.mv_op_regs, ptr %162, i32 0, i32 22
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %164 = or i32 %163, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %op_regs.i, align 8
  %epctrlx4.i = getelementptr inbounds %struct.mv_op_regs, ptr %166, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i, i32 %164) #9, !srcloc !256
  %ep0_state.i140 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %167 = ptrtoint ptr %ep0_state.i140 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %ep0_state.i140, align 8
  %168 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %ep0_dir, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then27.if.end37_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %169 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %setup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %170)
  %tobool42.not = icmp sgt i8 %170, -1
  %cond43 = select i1 %tobool42.not, i32 4, i32 1
  %ep0_state = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %171 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %cond43, ptr %ep0_state, align 8
  br label %if.end59

if.else44:                                        ; preds = %if.then24
  %ep0_dir45 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %172 = ptrtoint ptr %ep0_dir45 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %ep0_dir45, align 4
  %lock46 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock46) #9
  %driver47 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 1
  %173 = ptrtoint ptr %driver47 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %driver47, align 8
  %setup48 = getelementptr inbounds %struct.usb_gadget_driver, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %setup48 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %setup48, align 4
  %local_setup_buff50 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 19
  %call51 = tail call i32 %176(ptr noundef %udc, ptr noundef %local_setup_buff50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else44.if.end55_crit_edge

if.else44.if.end55_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i141 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %177 = ptrtoint ptr %op_regs.i141 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %op_regs.i141, align 8
  %epctrlx1.i142 = getelementptr inbounds %struct.mv_op_regs, ptr %178, i32 0, i32 22
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx1.i142) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %180 = or i32 %179, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %op_regs.i141 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %op_regs.i141, align 8
  %epctrlx4.i143 = getelementptr inbounds %struct.mv_op_regs, ptr %182, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx4.i143, i32 %180) #9, !srcloc !256
  %ep0_state.i144 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %183 = ptrtoint ptr %ep0_state.i144 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %ep0_state.i144, align 8
  %184 = ptrtoint ptr %ep0_dir45 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %ep0_dir45, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else44.if.end55_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock46) #9
  %ep0_state57 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %185 = ptrtoint ptr %ep0_state57 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 3, ptr %ep0_state57, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end37, %if.then62.i, %if.end60.i.if.end59_crit_edge, %lor.lhs.false49.i.if.end59_crit_edge, %sw.bb31.i.if.end59_crit_edge, %if.then28.i.if.end59_crit_edge, %do.end.i.i, %if.then3.i.i, %if.then.i.i.if.end59_crit_edge, %if.then.i120.if.end59_crit_edge, %sw.bb18.if.end59_crit_edge, %if.then46.i, %if.end44.i.if.end59_crit_edge, %lor.lhs.false26.i.if.end59_crit_edge, %sw.bb11.i.if.end59_crit_edge, %if.then8.i.if.end59_crit_edge, %if.then.i106.if.end59_crit_edge, %sw.bb17.if.end59_crit_edge, %if.then.i, %sw.bb16.if.end59_crit_edge, %if.else39.i, %if.then38.i, %sw.bb.if.end59_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_ep_req(ptr nocapture noundef readonly %udc, i32 noundef %index, ptr nocapture noundef %curr_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 10
  %0 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_dqh, align 4
  %rem = srem i32 %index, 2
  %head = getelementptr inbounds %struct.mv_req, ptr %curr_req, i32 0, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %curr_req, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %dtd_count = getelementptr inbounds %struct.mv_req, ptr %curr_req, i32 0, i32 7
  %6 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp164.not = icmp eq i32 %7, 0
  br i1 %cmp164.not, label %entry.if.end72_crit_edge, label %for.body.lr.ph

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

for.body.lr.ph:                                   ; preds = %entry
  %dev45 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %shr47 = ashr i32 %index, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool48.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool48.not, ptr @.str.90, ptr @.str.89
  %size_ioc_int_sts = getelementptr %struct.mv_dqh, ptr %1, i32 %index, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %curr_dtd.0168 = phi ptr [ %3, %for.body.lr.ph ], [ %curr_dtd.1, %for.inc.for.body_crit_edge ]
  %actual.0167 = phi i32 [ %5, %for.body.lr.ph ], [ %actual.1, %for.inc.for.body_crit_edge ]
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %retval1.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %retval1.1, %for.inc.for.body_crit_edge ]
  %size_ioc_sts = getelementptr inbounds %struct.mv_dtd, ptr %curr_dtd.0168, i32 0, i32 1
  %8 = ptrtoint ptr %size_ioc_sts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size_ioc_sts, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_ep_req.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@process_ep_req, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !260

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev45, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %12 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eps, align 4
  %name = getelementptr %struct.mv_ep, ptr %13, i32 %index, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_ep_req.__UNIQUE_ID_ddebug297, ptr noundef %dev7, ptr noundef nonnull @.str.86, ptr noundef %name) #9
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %and11 = and i32 %9, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end44

if.then13:                                        ; preds = %if.end9
  %and15 = lshr i32 %9, 16
  %shr = and i32 %and15, 32767
  %sub = sub i32 %actual.0167, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool16.not = icmp eq i32 %shr, 0
  br i1 %tobool16.not, label %if.then13.if.end64_crit_edge, label %if.then17

if.then13.if.end64_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then17:                                        ; preds = %if.then13
  br i1 %tobool48.not, label %for.end.thread146, label %do.body20

do.body20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_ep_req.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@process_ep_req, %cleanup)) #9
          to label %if.then34 [label %cleanup], !srcloc !260

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev45, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_ep_req.__UNIQUE_ID_ddebug298, ptr noundef %dev36, ptr noundef nonnull @.str.87) #9
  br label %cleanup

do.end44:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev45, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev46, ptr noundef nonnull @.str.88, i32 noundef %shr47, ptr noundef nonnull %cond, i32 noundef %and11) #12
  %and49 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %and11, -1
  %18 = ptrtoint ptr %size_ioc_int_sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size_ioc_int_sts, align 4
  %and52 = and i32 %19, %neg
  store i32 %and52, ptr %size_ioc_int_sts, align 4
  br label %if.end64

if.else53:                                        ; preds = %do.end44
  %and54 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else57, label %if.else53.if.end64_crit_edge

if.else53.if.end64_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.else57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  %and58 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %spec.select = select i1 %tobool59.not, i32 %retval1.0165, i32 -84
  br label %if.end64

if.end64:                                         ; preds = %if.else57, %if.else53.if.end64_crit_edge, %if.then51, %if.then13.if.end64_crit_edge
  %retval1.1 = phi i32 [ -32, %if.then51 ], [ %retval1.0165, %if.then13.if.end64_crit_edge ], [ -71, %if.else53.if.end64_crit_edge ], [ %spec.select, %if.else57 ]
  %actual.1 = phi i32 [ %actual.0167, %if.then51 ], [ %sub, %if.then13.if.end64_crit_edge ], [ %actual.0167, %if.else53.if.end64_crit_edge ], [ %actual.0167, %if.else57 ]
  %20 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dtd_count, align 4
  %sub66 = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0166, i32 %sub66)
  %cmp67.not = icmp eq i32 %i.0166, %sub66
  br i1 %cmp67.not, label %if.end64.for.inc_crit_edge, label %if.then68

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %next_dtd_virt = getelementptr inbounds %struct.mv_dtd, ptr %curr_dtd.0168, i32 0, i32 9
  %22 = ptrtoint ptr %next_dtd_virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_dtd_virt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %if.end64.for.inc_crit_edge
  %curr_dtd.1 = phi ptr [ %23, %if.then68 ], [ %curr_dtd.0168, %if.end64.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0166, 1
  %24 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtd_count, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool70.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool70.not, label %for.end.if.end72_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

for.end.thread146:                                ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0165)
  %tobool70.not149 = icmp eq i32 %retval1.0165, 0
  br i1 %tobool70.not149, label %for.end.thread146.if.then74_crit_edge, label %for.end.thread146.cleanup_crit_edge

for.end.thread146.cleanup_crit_edge:              ; preds = %for.end.thread146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.thread146.if.then74_crit_edge:            ; preds = %for.end.thread146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

if.end72:                                         ; preds = %for.end.if.end72_crit_edge, %entry.if.end72_crit_edge
  %curr_dtd.0.lcssa186 = phi ptr [ %curr_dtd.1, %for.end.if.end72_crit_edge ], [ %3, %entry.if.end72_crit_edge ]
  %actual.0.lcssa185 = phi i32 [ %actual.1, %for.end.if.end72_crit_edge ], [ %5, %entry.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp73 = icmp eq i32 %rem, 0
  br i1 %cmp73, label %if.end72.if.then74_crit_edge, label %if.else75

if.end72.if.then74_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

if.then74:                                        ; preds = %if.end72.if.then74_crit_edge, %for.end.thread146.if.then74_crit_edge
  %curr_dtd.0159 = phi ptr [ %curr_dtd.0.lcssa186, %if.end72.if.then74_crit_edge ], [ %curr_dtd.0168, %for.end.thread146.if.then74_crit_edge ]
  %actual.2150154 = phi i32 [ %actual.0.lcssa185, %if.end72.if.then74_crit_edge ], [ %sub, %for.end.thread146.if.then74_crit_edge ]
  %ep = getelementptr inbounds %struct.mv_req, ptr %curr_req, i32 0, i32 4
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep, align 4
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %ep_num, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 255
  br label %if.end83

if.else75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %ep76 = getelementptr inbounds %struct.mv_req, ptr %curr_req, i32 0, i32 4
  %29 = ptrtoint ptr %ep76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep76, align 4
  %ep_num77 = getelementptr inbounds %struct.mv_ep, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ep_num77 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load78 = load i16, ptr %ep_num77, align 2
  %bf.lshr79 = lshr i16 %bf.load78, 4
  %bf.clear80 = and i16 %bf.lshr79, 255
  %narrow = add nuw nsw i16 %bf.clear80, 16
  br label %if.end83

if.end83:                                         ; preds = %if.else75, %if.then74
  %curr_dtd.0158 = phi ptr [ %curr_dtd.0159, %if.then74 ], [ %curr_dtd.0.lcssa186, %if.else75 ]
  %actual.2150153 = phi i32 [ %actual.2150154, %if.then74 ], [ %actual.0.lcssa185, %if.else75 ]
  %bf.cast.pn.in = phi i16 [ %bf.clear, %if.then74 ], [ %narrow, %if.else75 ]
  %bf.cast.pn = zext i16 %bf.cast.pn.in to i32
  %bit_pos.0 = shl nuw i32 1, %bf.cast.pn
  %curr_dtd_ptr = getelementptr %struct.mv_dqh, ptr %1, i32 %index, i32 1
  %td_dma = getelementptr inbounds %struct.mv_dtd, ptr %curr_dtd.0158, i32 0, i32 8
  %32 = ptrtoint ptr %curr_dtd_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curr_dtd_ptr, align 4
  %34 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %td_dma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp84172 = icmp eq i32 %33, %35
  br i1 %cmp84172, label %if.end83.while.body_crit_edge, label %if.end83.while.end95_crit_edge

if.end83.while.end95_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end95

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %if.end83.while.body_crit_edge
  %36 = ptrtoint ptr %curr_dtd.0158 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curr_dtd.0158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp85 = icmp eq i32 %37, 1
  br i1 %cmp85, label %while.cond87.preheader, label %if.end94

while.cond87.preheader:                           ; preds = %while.body
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %38 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_regs, align 8
  %epstatus173 = getelementptr inbounds %struct.mv_op_regs, ptr %39, i32 0, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus173) #9, !srcloc !251
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  %and91174 = and i32 %41, %bit_pos.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91174)
  %tobool92.not175 = icmp eq i32 %and91174, 0
  br i1 %tobool92.not175, label %while.cond87.preheader.while.end95_crit_edge, label %while.cond87.preheader.while.body93_crit_edge

while.cond87.preheader.while.body93_crit_edge:    ; preds = %while.cond87.preheader
  br label %while.body93

while.cond87.preheader.while.end95_crit_edge:     ; preds = %while.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end95

while.body93:                                     ; preds = %while.body93.while.body93_crit_edge, %while.cond87.preheader.while.body93_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #9
  %43 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %op_regs, align 8
  %epstatus = getelementptr inbounds %struct.mv_op_regs, ptr %44, i32 0, i32 20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus) #9, !srcloc !251
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  %and91 = and i32 %46, %bit_pos.0
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %while.body93.while.end95_crit_edge, label %while.body93.while.body93_crit_edge

while.body93.while.body93_crit_edge:              ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body93

while.body93.while.end95_crit_edge:               ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end95

if.end94:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #9
  %48 = ptrtoint ptr %curr_dtd_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %curr_dtd_ptr, align 4
  %50 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %td_dma, align 4
  %cmp84 = icmp eq i32 %49, %51
  br i1 %cmp84, label %if.end94.while.body_crit_edge, label %if.end94.while.end95_crit_edge

if.end94.while.end95_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end95

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end95:                                      ; preds = %if.end94.while.end95_crit_edge, %while.body93.while.end95_crit_edge, %while.cond87.preheader.while.end95_crit_edge, %if.end83.while.end95_crit_edge
  %actual97 = getelementptr inbounds %struct.usb_request, ptr %curr_req, i32 0, i32 12
  %52 = ptrtoint ptr %actual97 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %actual.2150153, ptr %actual97, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end95, %for.end.thread146.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then34, %do.body20, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %while.end95 ], [ 1, %if.then6 ], [ %retval1.1, %for.end.cleanup_crit_edge ], [ %retval1.0165, %for.end.thread146.cleanup_crit_edge ], [ 1, %do.body ], [ -71, %if.then34 ], [ -71, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udc_prime_status(ptr noundef %udc, i8 noundef zeroext %direction, i16 noundef zeroext %status, i1 noundef zeroext %empty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 14
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 4
  %conv = zext i8 %direction to i32
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 23
  %2 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %ep0_dir, align 4
  %ep0_state = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 22
  %3 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %ep0_state, align 8
  %status_req = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 18
  %4 = ptrtoint ptr %status_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status_req, align 4
  br i1 %empty, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i16 @llvm.bswap.i16(i16 %status)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ 2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  %ep8 = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %ep8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %ep8, align 4
  %status10 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -115, ptr %status10, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %actual, align 4
  %test_mode = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 25
  %15 = ptrtoint ptr %test_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %test_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  %complete20 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  br i1 %tobool12.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %complete20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @prime_status_complete, ptr %complete20, align 4
  %18 = ptrtoint ptr %test_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %test_mode, align 4
  %test_mode16 = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %test_mode16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %test_mode16, align 4
  store i32 0, ptr %test_mode, align 4
  br label %if.end21

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %complete20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %complete20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then13
  %dtd_count = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %dtd_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dtd_count, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp23 = icmp eq i32 %24, -1
  br i1 %cmp23, label %if.then25, label %if.end21.if.end42_crit_edge

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then25:                                        ; preds = %if.end21
  %udc26 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %udc26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udc26, align 4
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %10, align 4
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %ep_num, align 2
  %34 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp31 = icmp eq i16 %34, 0
  %ep0_dir34 = getelementptr inbounds %struct.mv_udc, ptr %26, i32 0, i32 23
  %direction35 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 4
  %cond.in = select i1 %cmp31, ptr %ep0_dir34, ptr %direction35
  %35 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond = load i32, ptr %cond.in, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then25
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !316

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %28) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.80, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool36.not = icmp eq i32 %cond, 0
  %cond37 = select i1 %tobool36.not, i32 2, i32 1
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %30, i32 noundef %32) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %30 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %32, i32 noundef %cond37, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i, ptr %dma, align 4
  %mapped = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 8
  %43 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load40 = load i8, ptr %mapped, align 4
  %bf.set = or i8 %bf.load40, -128
  store i8 %bf.set, ptr %mapped, align 4
  br label %if.end42

if.end42:                                         ; preds = %dma_map_single_attrs.exit, %if.end21.if.end42_crit_edge
  %call43 = tail call fastcc i32 @req_to_dtd(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then45:                                        ; preds = %if.end42
  %call46 = tail call fastcc i32 @queue_dtd(ptr noundef %1, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end58, label %if.then45.out_crit_edge

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end58:                                         ; preds = %if.then45
  %queue = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 5
  %queue59 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %45, ptr noundef %queue59) #9
  br i1 %call.i.i, label %if.end.i.i115, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i115:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %queue, ptr %prev.i, align 4
  %47 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %queue59, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.mv_req, ptr %5, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %queue, ptr %45, align 4
  br label %cleanup

out:                                              ; preds = %if.then45.out_crit_edge, %if.end42.out_crit_edge
  %.str.75.sink = phi ptr [ @.str.72, %if.then45.out_crit_edge ], [ @.str.75, %if.end42.out_crit_edge ]
  %retval1.0 = phi i32 [ %call46, %if.then45.out_crit_edge ], [ -12, %if.end42.out_crit_edge ]
  %dev56 = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 4
  %50 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev56, align 4
  %dev57 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull %.str.75.sink) #12
  %ep_num62 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %ep_num62 to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load63 = load i16, ptr %ep_num62, align 2
  %53 = and i16 %bf.load63, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp67 = icmp eq i16 %53, 0
  br i1 %cmp67, label %cond.true69, label %cond.false72

cond.true69:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %udc70 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %udc70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udc70, align 4
  %ep0_dir71 = getelementptr inbounds %struct.mv_udc, ptr %55, i32 0, i32 23
  br label %cond.end74

cond.false72:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %direction73 = getelementptr inbounds %struct.mv_ep, ptr %1, i32 0, i32 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false72, %cond.true69
  %cond75.in = phi ptr [ %ep0_dir71, %cond.true69 ], [ %direction73, %cond.false72 ]
  %56 = ptrtoint ptr %cond75.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %cond75 = load i32, ptr %cond75.in, align 4
  tail call void @usb_gadget_unmap_request(ptr noundef %udc, ptr noundef %5, i32 noundef %cond75) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end74, %if.end.i.i115, %if.end58.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %cond.end74 ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %if.end.i.i115 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prime_status_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %dev = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %test_mode = getelementptr inbounds %struct.mv_req, ptr %_req, i32 0, i32 6
  %4 = ptrtoint ptr %test_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_mode, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.77, i32 noundef %5) #12
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %6 = ptrtoint ptr %test_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %test_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_regs.i, align 8
  %portsc1.i = getelementptr inbounds %struct.mv_op_regs, ptr %9, i32 0, i32 14
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc1.i) #9, !srcloc !251
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %shl.i = shl i32 %7, 16
  %or.i = or i32 %11, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %13 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_regs.i, align 8
  %portsc4.i = getelementptr inbounds %struct.mv_op_regs, ptr %14, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc4.i, i32 %12) #9, !srcloc !256
  %15 = ptrtoint ptr %test_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %test_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @req_to_dtd(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #9
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !319
  %ep.i = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 4
  %length10.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %actual12.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %dma27.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %head = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 2
  %dtd_count = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end2.do.body_crit_edge, %entry
  %tobool.not = phi i1 [ true, %if.end2.do.body_crit_edge ], [ false, %entry ]
  %last_dtd.0 = phi ptr [ %call22.i, %if.end2.do.body_crit_edge ], [ null, %entry ]
  %1 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep.i, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes.i.i, align 1
  %7 = and i8 %6, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i.not.i = icmp eq i8 %7, 1
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dqh3.i = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %dqh3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dqh3.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr.i = lshr i32 %11, 30
  %12 = ptrtoint ptr %length10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length10.i, align 4
  %14 = ptrtoint ptr %actual12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual12.i, align 4
  %sub.i = sub i32 %13, %15
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 7
  %16 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %mul.i = mul nuw nsw i32 %shr.i, %bf.cast.i
  %17 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %mul.i) #9
  %phi.bo.i = shl nuw nsw i32 %shr.i, 10
  br label %if.end.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %length10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length10.i, align 4
  %20 = ptrtoint ptr %actual12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual12.i, align 4
  %sub13.i = sub i32 %19, %21
  %22 = call i32 @llvm.umin.i32(i32 %sub13.i, i32 16384) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %22, %if.else.i ], [ %17, %if.then.i ]
  %mult.0.i = phi i32 [ 0, %if.else.i ], [ %phi.bo.i, %if.then.i ]
  %udc21.i = getelementptr inbounds %struct.mv_ep, ptr %2, i32 0, i32 1
  %23 = ptrtoint ptr %udc21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udc21.i, align 4
  %dtd_pool.i = getelementptr inbounds %struct.mv_udc, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %dtd_pool.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dtd_pool.i, align 8
  %call22.i = call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef 2592, ptr noundef nonnull %dma) #9
  %cmp23.i = icmp eq ptr %call22.i, null
  br i1 %cmp23.i, label %if.end.i.cleanup_crit_edge, label %if.end25.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma, align 4
  %td_dma.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 8
  %29 = ptrtoint ptr %td_dma.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %td_dma.i, align 4
  %30 = ptrtoint ptr %dma27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma27.i, align 4
  %32 = ptrtoint ptr %actual12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual12.i, align 4
  %add.i = add i32 %33, %31
  %34 = call i32 @llvm.bswap.i32(i32 %add.i) #9
  %buff_ptr0.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 2
  %35 = ptrtoint ptr %buff_ptr0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buff_ptr0.i, align 4
  %and30.i = and i32 %add.i, -4096
  %add31.i = add i32 %and30.i, 4096
  %36 = call i32 @llvm.bswap.i32(i32 %add31.i) #9
  %buff_ptr1.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 3
  %37 = ptrtoint ptr %buff_ptr1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buff_ptr1.i, align 4
  %add32.i = add i32 %and30.i, 8192
  %38 = call i32 @llvm.bswap.i32(i32 %add32.i) #9
  %buff_ptr2.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 4
  %39 = ptrtoint ptr %buff_ptr2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buff_ptr2.i, align 4
  %add33.i = add i32 %and30.i, 12288
  %40 = call i32 @llvm.bswap.i32(i32 %add33.i) #9
  %buff_ptr3.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 5
  %41 = ptrtoint ptr %buff_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buff_ptr3.i, align 4
  %add34.i = add i32 %and30.i, 16384
  %42 = call i32 @llvm.bswap.i32(i32 %add34.i) #9
  %buff_ptr4.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 6
  %43 = ptrtoint ptr %buff_ptr4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buff_ptr4.i, align 4
  %44 = ptrtoint ptr %actual12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual12.i, align 4
  %add37.i = add i32 %45, %storemerge.i
  store i32 %add37.i, ptr %actual12.i, align 4
  %46 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load39.i = load i32, ptr %zero.i, align 4
  %47 = and i32 %bf.load39.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool41.not.i = icmp eq i32 %47, 0
  br i1 %tobool41.not.i, label %if.else54.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i)
  %cmp43.i = icmp eq i32 %storemerge.i, 0
  br i1 %cmp43.i, label %if.then42.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.then42.i.land.lhs.true.i_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.then42.i
  %48 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep.i, align 4
  %maxpacket46.i = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %maxpacket46.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 7)
  %bf.load47.i = load i56, ptr %maxpacket46.i, align 2
  %bf.lshr48.i = lshr i56 %bf.load47.i, 40
  %bf.cast49.i = trunc i56 %bf.lshr48.i to i32
  %rem.i = urem i32 %storemerge.i, %bf.cast49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp50.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp50.not.i, label %lor.lhs.false.i.if.end63.thread.i_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

lor.lhs.false.i.if.end63.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.thread.i

if.else54.i:                                      ; preds = %if.end25.i
  %51 = ptrtoint ptr %length10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add37.i)
  %cmp59.i = icmp eq i32 %52, %add37.i
  br i1 %cmp59.i, label %if.else54.i.land.lhs.true.i_crit_edge, label %if.else54.i.if.end63.thread.i_crit_edge

if.else54.i.if.end63.thread.i_crit_edge:          ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.thread.i

if.else54.i.land.lhs.true.i_crit_edge:            ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end63.thread.i:                                ; preds = %if.else54.i.if.end63.thread.i_crit_edge, %lor.lhs.false.i.if.end63.thread.i_crit_edge
  %shl126.i = shl i32 %storemerge.i, 16
  %or127.i = or i32 %shl126.i, 128
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else54.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.then42.i.land.lhs.true.i_crit_edge
  %shl.i = shl i32 %storemerge.i, 16
  %53 = and i32 %bf.load39.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool69.not.i = icmp eq i32 %53, 0
  %spec.select.v.i = select i1 %tobool69.not.i, i32 32896, i32 128
  %spec.select.i = or i32 %spec.select.v.i, %shl.i
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i, %if.end63.thread.i
  %tobool3.not = phi i1 [ false, %land.lhs.true.i ], [ true, %if.end63.thread.i ]
  %temp.0.i = phi i32 [ %spec.select.i, %land.lhs.true.i ], [ %or127.i, %if.end63.thread.i ]
  %or74.i = or i32 %temp.0.i, %mult.0.i
  %size_ioc_sts.i = getelementptr inbounds %struct.mv_dtd, ptr %call22.i, i32 0, i32 1
  %54 = ptrtoint ptr %size_ioc_sts.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or74.i, ptr %size_ioc_sts.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !320
  call void @arm_heavy_mb() #9
  br i1 %tobool.not, label %if.else, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma, align 4
  %57 = ptrtoint ptr %last_dtd.0 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %last_dtd.0, align 4
  %next_dtd_virt = getelementptr inbounds %struct.mv_dtd, ptr %last_dtd.0, i32 0, i32 9
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.end.if.end2_crit_edge
  %next_dtd_virt.sink = phi ptr [ %next_dtd_virt, %if.else ], [ %head, %if.end.if.end2_crit_edge ]
  %58 = ptrtoint ptr %next_dtd_virt.sink to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call22.i, ptr %next_dtd_virt.sink, align 4
  %59 = ptrtoint ptr %dtd_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dtd_count, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %dtd_count, align 4
  br i1 %tobool3.not, label %if.end2.do.body_crit_edge, label %do.end

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %call22.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %call22.i, align 4
  %tail = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 3
  %62 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call22.i, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_dtd(ptr noundef %ep, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc2 = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 6
  %2 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ep_num, align 2
  %3 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 23
  %direction4 = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %ep0_dir, ptr %direction4
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %ep_dqh = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %ep_dqh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep_dqh, align 4
  %bf.lshr7 = lshr i16 %bf.load, 4
  %bf.clear8 = and i16 %bf.lshr7, 255
  %bf.cast9 = zext i16 %bf.clear8 to i32
  %mul = shl nuw nsw i32 %bf.cast9, 1
  %add = add i32 %mul, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp10 = icmp eq i32 %cond, 0
  %cond11 = select i1 %cmp10, i32 0, i32 16
  %add17 = add nuw nsw i32 %cond11, %bf.cast9
  %shl = shl nuw i32 1, %add17
  %queue = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 2
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %entry.if.end79_crit_edge, label %if.then

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.mv_ep, ptr %ep, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %head = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head, align 4
  %td_dma = getelementptr inbounds %struct.mv_dtd, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %td_dma, align 4
  %and = and i32 %14, -32
  %tail = getelementptr i8, ptr %10, i32 -8
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  tail call void @arm_heavy_mb() #9
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_regs, align 8
  %epprime = getelementptr inbounds %struct.mv_op_regs, ptr %19, i32 0, i32 18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime) #9, !srcloc !251
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  %and22 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then.while.cond_crit_edge, label %if.then.cleanup92_crit_edge

if.then.cleanup92_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.then.while.cond_crit_edge:                     ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.then.while.cond_crit_edge
  %loops.0 = phi i32 [ %dec, %if.end62 ], [ 500, %if.then.while.cond_crit_edge ]
  %22 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_regs, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  %25 = or i32 %24, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !256
  %28 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_regs, align 8
  %epstatus40 = getelementptr inbounds %struct.mv_op_regs, ptr %29, i32 0, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus40) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !325
  %31 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %op_regs, align 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %34 = and i32 %33, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool53.not = icmp eq i32 %34, 0
  br i1 %tobool53.not, label %if.end55, label %while.end

if.end55:                                         ; preds = %while.cond
  %dec = add nsw i32 %loops.0, -1
  %cmp56 = icmp eq i32 %dec, 0
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.81) #12
  br label %cleanup92

if.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 429496) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = tail call i32 @llvm.bswap.i32(i32 %30)
  %and44 = and i32 %38, %shl
  %39 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %op_regs, align 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %42 = and i32 %41, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool76.not = icmp eq i32 %and44, 0
  br i1 %tobool76.not, label %while.end.if.end79_crit_edge, label %while.end.cleanup92_crit_edge

while.end.cleanup92_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end79:                                         ; preds = %while.end.if.end79_crit_edge, %entry.if.end79_crit_edge
  %head80 = getelementptr inbounds %struct.mv_req, ptr %req, i32 0, i32 2
  %45 = ptrtoint ptr %head80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head80, align 4
  %td_dma81 = getelementptr inbounds %struct.mv_dtd, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %td_dma81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %td_dma81, align 4
  %and82 = and i32 %48, -32
  %next_dtd_ptr = getelementptr %struct.mv_dqh, ptr %6, i32 %add, i32 2
  %49 = ptrtoint ptr %next_dtd_ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and82, ptr %next_dtd_ptr, align 4
  %size_ioc_int_sts = getelementptr %struct.mv_dqh, ptr %6, i32 %add, i32 3
  %50 = ptrtoint ptr %size_ioc_int_sts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size_ioc_int_sts, align 4
  %and83 = and i32 %51, -193
  store i32 %and83, ptr %size_ioc_int_sts, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %op_regs90 = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %53 = ptrtoint ptr %op_regs90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %op_regs90, align 8
  %epprime91 = getelementptr inbounds %struct.mv_op_regs, ptr %54, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epprime91, i32 %52) #9, !srcloc !256
  br label %cleanup92

cleanup92:                                        ; preds = %if.end79, %while.end.cleanup92_crit_edge, %do.end60, %if.then.cleanup92_crit_edge
  %retval1.2 = phi i32 [ 0, %if.end79 ], [ 0, %while.end.cleanup92_crit_edge ], [ 0, %if.then.cleanup92_crit_edge ], [ -62, %do.end60 ]
  ret i32 %retval1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_set_stall(ptr nocapture noundef readonly %udc, i8 noundef zeroext %ep_num, i8 noundef zeroext %direction, i32 noundef %stall) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 8
  %idxprom = zext i8 %ep_num to i32
  %arrayidx = getelementptr %struct.mv_op_regs, ptr %1, i32 0, i32 22, i32 %idxprom
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !251
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stall)
  %tobool.not = icmp eq i32 %stall, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %direction)
  %cmp8 = icmp eq i8 %direction, 1
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp8, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, 65536
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %3, 1
  br label %do.body

if.else6:                                         ; preds = %entry
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %3, -4259841
  %or11 = or i32 %and, 4194304
  br label %do.body

if.else12:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %3, -66
  %or14 = or i32 %and13, 64
  br label %do.body

do.body:                                          ; preds = %if.else12, %if.then10, %if.else, %if.then4
  %epctrlx.0 = phi i32 [ %or, %if.then4 ], [ %or5, %if.else ], [ %or11, %if.then10 ], [ %or14, %if.else12 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.0)
  %5 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_regs, align 8
  %arrayidx20 = getelementptr %struct.mv_op_regs, ptr %6, i32 0, i32 22, i32 %idxprom
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 %4) #9, !srcloc !256
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_get_frame(ptr noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 8
  %frindex = getelementptr inbounds %struct.mv_op_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frindex) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %3 = and i32 %2, -12648448
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_wakeup(ptr nocapture noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_wakeup = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 27
  %0 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %remote_wakeup, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %2 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_regs, align 8
  %portsc1 = getelementptr inbounds %struct.mv_op_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc1) #9, !srcloc !251
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %5, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op_regs, align 8
  %portsc8 = getelementptr inbounds %struct.mv_op_regs, ptr %8, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc8, i32 %6) #9, !srcloc !256
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_vbus_session(ptr noundef %gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %cmp7.not = icmp eq i32 %is_active, 0
  %vbus_active = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 27
  %0 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vbus_active, align 4
  %bf.shl = select i1 %cmp7.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %vbus_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_vbus_session.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_vbus_session, %do.end23)) #9
          to label %if.then [label %do.end23], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load16 = load i8, ptr %vbus_active, align 4
  %bf.lshr = lshr i8 %bf.load16, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr19 = lshr i8 %bf.load16, 6
  %bf.clear20 = and i8 %bf.lshr19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_vbus_session.__UNIQUE_ID_ddebug305, ptr noundef %dev15, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i32 noundef %bf.cast, i32 noundef %bf.cast21) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  %driver = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end23.out_crit_edge, label %land.lhs.true

do.end23.out_crit_edge:                           ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %do.end23
  %6 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load26 = load i8, ptr %vbus_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load26)
  %.not = icmp ugt i8 %bf.load26, -65
  br i1 %.not, label %if.then37, label %land.lhs.true46

if.then37:                                        ; preds = %land.lhs.true
  %7 = and i8 %bf.load26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then37.if.then41_crit_edge, label %mv_udc_enable.exit

if.then37.if.then41_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

mv_udc_enable.exit:                               ; preds = %if.then37
  %call.i = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp eq i32 %call.i, 0
  br i1 %cmp39, label %mv_udc_enable.exit.if.then41_crit_edge, label %mv_udc_enable.exit.out_crit_edge

mv_udc_enable.exit.out_crit_edge:                 ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

mv_udc_enable.exit.if.then41_crit_edge:           ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %mv_udc_enable.exit.if.then41_crit_edge, %if.then37.if.then41_crit_edge
  tail call fastcc void @udc_reset(ptr noundef %gadget)
  %eps.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 14
  %ep_dqh.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 10
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %8 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eps.i, align 4
  %udc1.i = getelementptr %struct.mv_ep, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %udc1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %gadget, ptr %udc1.i, align 4
  %11 = ptrtoint ptr %ep_dqh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep_dqh.i, align 4
  %dqh.i = getelementptr %struct.mv_ep, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %dqh.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dqh.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4227072, ptr %12, align 4
  %15 = load ptr, ptr %dqh.i, align 4
  %next_dtd_ptr.i = getelementptr inbounds %struct.mv_dqh, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %next_dtd_ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %next_dtd_ptr.i, align 4
  %17 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op_regs.i, align 8
  %epctrlx5.i = getelementptr inbounds %struct.mv_op_regs, ptr %18, i32 0, i32 22
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %20 = or i32 %19, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs.i, align 8
  %epctrlx10.i = getelementptr inbounds %struct.mv_op_regs, ptr %22, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.i, i32 %20) #9, !srcloc !256
  %23 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eps.i, align 4
  %udc1.1.i = getelementptr %struct.mv_ep, ptr %24, i32 1, i32 1
  %25 = ptrtoint ptr %udc1.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gadget, ptr %udc1.1.i, align 4
  %26 = ptrtoint ptr %ep_dqh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep_dqh.i, align 4
  %arrayidx2.1.i = getelementptr %struct.mv_dqh, ptr %27, i32 1
  %dqh.1.i = getelementptr %struct.mv_ep, ptr %24, i32 1, i32 3
  %28 = ptrtoint ptr %dqh.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx2.1.i, ptr %dqh.1.i, align 4
  %29 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4227072, ptr %arrayidx2.1.i, align 4
  %30 = load ptr, ptr %dqh.1.i, align 4
  %next_dtd_ptr.1.i = getelementptr inbounds %struct.mv_dqh, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %next_dtd_ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %next_dtd_ptr.1.i, align 4
  %32 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_regs.i, align 8
  %epctrlx5.1.i = getelementptr inbounds %struct.mv_op_regs, ptr %33, i32 0, i32 22
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.1.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %35 = or i32 %34, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %op_regs.i, align 8
  %epctrlx10.1.i = getelementptr inbounds %struct.mv_op_regs, ptr %37, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.1.i, i32 %35) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_regs.i, align 8
  %usbintr1.i = getelementptr inbounds %struct.mv_op_regs, ptr %39, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr1.i, i32 1191247872) #9, !srcloc !256
  %40 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i87 = load i8, ptr %vbus_active, align 4
  %bf.clear.i = and i8 %bf.load.i87, -2
  store i8 %bf.clear.i, ptr %vbus_active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %op_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 16777216) #9, !srcloc !256
  br label %out

land.lhs.true46:                                  ; preds = %land.lhs.true
  %43 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load48 = load i8, ptr %vbus_active, align 4
  %44 = and i8 %bf.load48, -126
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %44)
  %.not96 = icmp eq i8 %44, -126
  br i1 %.not96, label %if.end59, label %land.lhs.true46.out_crit_edge

land.lhs.true46.out_crit_edge:                    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end59:                                         ; preds = %land.lhs.true46
  tail call fastcc void @stop_activity(ptr noundef %gadget, ptr noundef nonnull %5)
  %op_regs.i88 = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %45 = ptrtoint ptr %op_regs.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %op_regs.i88, align 8
  %usbintr.i = getelementptr inbounds %struct.mv_op_regs, ptr %46, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %48 = and i32 %47, -1191182337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %op_regs.i88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %op_regs.i88, align 8
  %usbintr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %50, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr4.i, i32 %48) #9, !srcloc !256
  %51 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i90 = load i8, ptr %vbus_active, align 4
  %bf.set.i = or i8 %bf.load.i90, 1
  store i8 %bf.set.i, ptr %vbus_active, align 4
  %52 = ptrtoint ptr %op_regs.i88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %op_regs.i88, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %55 = and i32 %54, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %op_regs.i88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %op_regs.i88, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !256
  %58 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i92 = load i8, ptr %vbus_active, align 4
  %59 = and i8 %bf.load.i92, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %59)
  %.not.i = icmp eq i8 %59, 6
  br i1 %.not.i, label %do.body.i.i, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.i.i:                                      ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_vbus_session, %do.end.i.i)) #9
          to label %if.then5.i.i [label %do.end.i.i], !srcloc !260

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 31
  %62 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %65, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 8
  %66 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %65(ptr noundef %67) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 32
  %68 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i.i.i, align 8
  tail call void @clk_disable(ptr noundef %69) #9
  tail call void @clk_unprepare(ptr noundef %69) #9
  %70 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load13.i.i = load i8, ptr %vbus_active, align 4
  %bf.clear14.i.i = and i8 %bf.load13.i.i, -3
  store i8 %bf.clear14.i.i, ptr %vbus_active, align 4
  br label %out

out:                                              ; preds = %if.end11.i.i, %if.end59.out_crit_edge, %land.lhs.true46.out_crit_edge, %if.then41, %mv_udc_enable.exit.out_crit_edge, %do.end23.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then41 ], [ %call.i, %mv_udc_enable.exit.out_crit_edge ], [ 0, %land.lhs.true46.out_crit_edge ], [ 0, %if.end59.out_crit_edge ], [ 0, %if.end11.i.i ], [ 0, %do.end23.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp7.not = icmp eq i32 %is_on, 0
  %softconnect = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 27
  %0 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %softconnect, align 4
  %bf.shl = select i1 %cmp7.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %softconnect, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_pullup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_pullup, %do.end23)) #9
          to label %if.then [label %do.end23], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load17 = load i8, ptr %softconnect, align 4
  %bf.lshr = lshr i8 %bf.load17, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr19 = lshr i8 %bf.load17, 6
  %bf.clear20 = and i8 %bf.lshr19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_pullup.__UNIQUE_ID_ddebug306, ptr noundef %dev15, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef %bf.cast, i32 noundef %bf.cast21) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  %driver = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end23.if.end56_crit_edge, label %land.lhs.true

do.end23.if.end56_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %do.end23
  %6 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load26 = load i8, ptr %softconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load26)
  %.not = icmp ugt i8 %bf.load26, -65
  br i1 %.not, label %if.then37, label %land.lhs.true46

if.then37:                                        ; preds = %land.lhs.true
  %7 = and i8 %bf.load26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then37.if.then41_crit_edge, label %mv_udc_enable.exit

if.then37.if.then41_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

mv_udc_enable.exit:                               ; preds = %if.then37
  %call.i = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp eq i32 %call.i, 0
  br i1 %cmp39, label %mv_udc_enable.exit.if.then41_crit_edge, label %mv_udc_enable.exit.if.end56_crit_edge

mv_udc_enable.exit.if.end56_crit_edge:            ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

mv_udc_enable.exit.if.then41_crit_edge:           ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %mv_udc_enable.exit.if.then41_crit_edge, %if.then37.if.then41_crit_edge
  tail call fastcc void @udc_reset(ptr noundef %gadget)
  %eps.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 14
  %ep_dqh.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 10
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %8 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eps.i, align 4
  %udc1.i = getelementptr %struct.mv_ep, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %udc1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %gadget, ptr %udc1.i, align 4
  %11 = ptrtoint ptr %ep_dqh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep_dqh.i, align 4
  %dqh.i = getelementptr %struct.mv_ep, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %dqh.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dqh.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4227072, ptr %12, align 4
  %15 = load ptr, ptr %dqh.i, align 4
  %next_dtd_ptr.i = getelementptr inbounds %struct.mv_dqh, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %next_dtd_ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %next_dtd_ptr.i, align 4
  %17 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op_regs.i, align 8
  %epctrlx5.i = getelementptr inbounds %struct.mv_op_regs, ptr %18, i32 0, i32 22
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %20 = or i32 %19, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs.i, align 8
  %epctrlx10.i = getelementptr inbounds %struct.mv_op_regs, ptr %22, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.i, i32 %20) #9, !srcloc !256
  %23 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eps.i, align 4
  %udc1.1.i = getelementptr %struct.mv_ep, ptr %24, i32 1, i32 1
  %25 = ptrtoint ptr %udc1.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gadget, ptr %udc1.1.i, align 4
  %26 = ptrtoint ptr %ep_dqh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep_dqh.i, align 4
  %arrayidx2.1.i = getelementptr %struct.mv_dqh, ptr %27, i32 1
  %dqh.1.i = getelementptr %struct.mv_ep, ptr %24, i32 1, i32 3
  %28 = ptrtoint ptr %dqh.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx2.1.i, ptr %dqh.1.i, align 4
  %29 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4227072, ptr %arrayidx2.1.i, align 4
  %30 = load ptr, ptr %dqh.1.i, align 4
  %next_dtd_ptr.1.i = getelementptr inbounds %struct.mv_dqh, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %next_dtd_ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %next_dtd_ptr.1.i, align 4
  %32 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_regs.i, align 8
  %epctrlx5.1.i = getelementptr inbounds %struct.mv_op_regs, ptr %33, i32 0, i32 22
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epctrlx5.1.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %35 = or i32 %34, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %op_regs.i, align 8
  %epctrlx10.1.i = getelementptr inbounds %struct.mv_op_regs, ptr %37, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epctrlx10.1.i, i32 %35) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_regs.i, align 8
  %usbintr1.i = getelementptr inbounds %struct.mv_op_regs, ptr %39, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr1.i, i32 1191247872) #9, !srcloc !256
  %40 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i79 = load i8, ptr %softconnect, align 4
  %bf.clear.i = and i8 %bf.load.i79, -2
  store i8 %bf.clear.i, ptr %softconnect, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %op_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 16777216) #9, !srcloc !256
  br label %if.end56

land.lhs.true46:                                  ; preds = %land.lhs.true
  %43 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load48 = load i8, ptr %softconnect, align 4
  %44 = and i8 %bf.load48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool52.not = icmp eq i8 %44, 0
  br i1 %tobool52.not, label %land.lhs.true46.if.end56_crit_edge, label %if.then53

land.lhs.true46.if.end56_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %land.lhs.true46
  tail call fastcc void @stop_activity(ptr noundef %gadget, ptr noundef nonnull %5)
  %op_regs.i80 = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %45 = ptrtoint ptr %op_regs.i80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %op_regs.i80, align 8
  %usbintr.i = getelementptr inbounds %struct.mv_op_regs, ptr %46, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %48 = and i32 %47, -1191182337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %op_regs.i80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %op_regs.i80, align 8
  %usbintr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %50, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr4.i, i32 %48) #9, !srcloc !256
  %51 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i82 = load i8, ptr %softconnect, align 4
  %bf.set.i = or i8 %bf.load.i82, 1
  store i8 %bf.set.i, ptr %softconnect, align 4
  %52 = ptrtoint ptr %op_regs.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %op_regs.i80, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %55 = and i32 %54, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %op_regs.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %op_regs.i80, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !256
  %58 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i84 = load i8, ptr %softconnect, align 4
  %59 = and i8 %bf.load.i84, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %59)
  %.not.i = icmp eq i8 %59, 6
  br i1 %.not.i, label %do.body.i.i, label %if.then53.if.end56_crit_edge

if.then53.if.end56_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body.i.i:                                      ; preds = %if.then53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_pullup, %do.end.i.i)) #9
          to label %if.then5.i.i [label %do.end.i.i], !srcloc !260

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 31
  %62 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %65, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 8
  %66 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %65(ptr noundef %67) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 32
  %68 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i.i.i, align 8
  tail call void @clk_disable(ptr noundef %69) #9
  tail call void @clk_unprepare(ptr noundef %69) #9
  %70 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load13.i.i = load i8, ptr %softconnect, align 4
  %bf.clear14.i.i = and i8 %bf.load13.i.i, -3
  store i8 %bf.clear14.i.i, ptr %softconnect, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end11.i.i, %if.then53.if.end56_crit_edge, %land.lhs.true46.if.end56_crit_edge, %if.then41, %mv_udc_enable.exit.if.end56_crit_edge, %do.end23.if.end56_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then41 ], [ %call.i, %mv_udc_enable.exit.if.end56_crit_edge ], [ 0, %land.lhs.true46.if.end56_crit_edge ], [ 0, %if.then53.if.end56_crit_edge ], [ 0, %if.end11.i.i ], [ 0, %do.end23.if.end56_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver2 = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 1
  %0 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bus, align 4
  %3 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %driver, ptr %driver2, align 8
  %usb_state = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 21
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %usb_state, align 4
  %ep0_state = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 22
  %5 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ep0_state, align 8
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 23
  %6 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ep0_dir, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %transceiver = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 30
  %7 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transceiver, align 8
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %do.body3.if.end24_crit_edge, label %if.then12

do.body3.if.end24_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then12:                                        ; preds = %do.body3
  %otg = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then12.do.end20_crit_edge, label %land.lhs.true.i

if.then12.do.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

land.lhs.true.i:                                  ; preds = %if.then12
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end20_crit_edge, label %otg_set_peripheral.exit

land.lhs.true.i.do.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

otg_set_peripheral.exit:                          ; preds = %land.lhs.true.i
  %call.i = tail call i32 %12(ptr noundef nonnull %10, ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %otg_set_peripheral.exit.if.end24_crit_edge, label %otg_set_peripheral.exit.do.end20_crit_edge

otg_set_peripheral.exit.do.end20_crit_edge:       ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

otg_set_peripheral.exit.if.end24_crit_edge:       ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end20:                                         ; preds = %otg_set_peripheral.exit.do.end20_crit_edge, %land.lhs.true.i.do.end20_crit_edge, %if.then12.do.end20_crit_edge
  %retval.0.i52 = phi i32 [ %call.i, %otg_set_peripheral.exit.do.end20_crit_edge ], [ -524, %land.lhs.true.i.do.end20_crit_edge ], [ -524, %if.then12.do.end20_crit_edge ]
  %dev = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.96) #12
  %15 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %driver2, align 8
  br label %cleanup

if.end24:                                         ; preds = %otg_set_peripheral.exit.if.end24_crit_edge, %do.body3.if.end24_crit_edge
  %qwork = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 29
  %16 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qwork, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_work = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 28
  %call.i49 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %17, ptr noundef %vbus_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %do.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i52, %do.end20 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %clock_gating.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 27
  %0 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %clock_gating.i, align 4
  %1 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.mv_udc_enable.exit_crit_edge, label %if.then.i

entry.mv_udc_enable.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv_udc_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef %gadget) #9
  br label %mv_udc_enable.exit

mv_udc_enable.exit:                               ; preds = %if.then.i, %entry.mv_udc_enable.exit_crit_edge
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 7
  %2 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_regs.i, align 8
  %usbintr.i = getelementptr inbounds %struct.mv_op_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %5 = and i32 %4, -1191182337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs.i, align 8
  %usbintr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr4.i, i32 %5) #9, !srcloc !256
  %8 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i16 = load i8, ptr %clock_gating.i, align 4
  %bf.set.i = or i8 %bf.load.i16, 1
  store i8 %bf.set.i, ptr %clock_gating.i, align 4
  %9 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op_regs.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %12 = and i32 %11, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !256
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %speed, align 8
  tail call fastcc void @stop_activity(ptr noundef %gadget, ptr noundef null)
  %16 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i18 = load i8, ptr %clock_gating.i, align 4
  %17 = and i8 %bf.load.i18, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %.not.i = icmp eq i8 %17, 6
  br i1 %.not.i, label %do.body.i.i, label %mv_udc_enable.exit.mv_udc_disable.exit_crit_edge

mv_udc_enable.exit.mv_udc_disable.exit_crit_edge: ; preds = %mv_udc_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv_udc_disable.exit

do.body.i.i:                                      ; preds = %mv_udc_enable.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_stop, %do.end.i.i)) #9
          to label %if.then5.i.i [label %do.end.i.i], !srcloc !260

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 31
  %20 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %23, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

do.end.i.i.if.end11.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 8
  %24 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %23(ptr noundef %25) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %do.end.i.i.if.end11.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 32
  %26 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i.i.i, align 8
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  %28 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load13.i.i = load i8, ptr %clock_gating.i, align 4
  %bf.clear14.i.i = and i8 %bf.load13.i.i, -3
  store i8 %bf.clear14.i.i, ptr %clock_gating.i, align 4
  br label %mv_udc_disable.exit

mv_udc_disable.exit:                              ; preds = %if.end11.i.i, %mv_udc_enable.exit.mv_udc_disable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %driver = getelementptr inbounds %struct.mv_udc, ptr %gadget, i32 0, i32 1
  %29 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.not = icmp eq i8 %3, 5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %driver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %8 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ep_num, align 2
  %9 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp11 = icmp eq i16 %9, 0
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 23
  %direction14 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  %cond.in = select i1 %cmp11, ptr %ep0_dir, ptr %direction14
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %cond.in, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %11 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wMaxPacketSize.i, align 1
  %13 = and i16 %12, -249
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  %and.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp16 = icmp eq i32 %cond, 0
  %cond18 = select i1 %cmp16, i32 0, i32 16
  %bf.lshr21 = lshr i16 %bf.load, 4
  %bf.clear22 = and i16 %bf.lshr21, 255
  %bf.cast23 = zext i16 %bf.clear22 to i32
  %add = add nuw nsw i32 %cond18, %bf.cast23
  %shl = shl nuw i32 1, %add
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_regs, align 8
  %epprime = getelementptr inbounds %struct.mv_op_regs, ptr %16, i32 0, i32 18
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime) #9, !srcloc !251
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  %and = and i32 %18, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.end10.do.end_crit_edge

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false28:                                  ; preds = %if.end10
  %19 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_regs, align 8
  %epstatus = getelementptr inbounds %struct.mv_op_regs, ptr %20, i32 0, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus) #9, !srcloc !251
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  %and35 = and i32 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end60, label %lor.lhs.false28.do.end_crit_edge

lor.lhs.false28.do.end_crit_edge:                 ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false28.do.end_crit_edge, %if.end10.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load40 = load i16, ptr %ep_num, align 2
  %bf.lshr41 = lshr i16 %bf.load40, 4
  %bf.clear42 = and i16 %bf.lshr41, 255
  %bf.cast43 = zext i16 %bf.clear42 to i32
  %cond45 = select i1 %cmp16, ptr @.str.90, ptr @.str.89
  %26 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op_regs, align 8
  %epprime49 = getelementptr inbounds %struct.mv_op_regs, ptr %27, i32 0, i32 18
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epprime49) #9, !srcloc !251
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  %30 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_regs, align 8
  %epstatus56 = getelementptr inbounds %struct.mv_op_regs, ptr %31, i32 0, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epstatus56) #9, !srcloc !251
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.101, i32 noundef %bf.cast43, ptr noundef nonnull %cond45, i32 noundef %29, i32 noundef %33, i32 noundef %shl) #12
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false28
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %34 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bmAttributes, align 1
  %36 = and i8 %35, 3
  %and62 = zext i8 %36 to i32
  %37 = zext i32 %and62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %and62, label %if.end60.unreachabledefault [
    i32 2, label %if.end60.do.body73_crit_edge
    i32 3, label %if.end60.do.body73_crit_edge270
    i32 0, label %sw.bb63
    i32 1, label %sw.bb64
  ]

if.end60.do.body73_crit_edge270:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.end60.do.body73_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

sw.bb63:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

sw.bb64:                                          ; preds = %if.end60
  %38 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wMaxPacketSize.i, align 1
  %40 = lshr i16 %39, 3
  %41 = and i16 %40, 3
  %narrow.i = add nuw nsw i16 %41, 1
  %add.i = zext i16 %narrow.i to i32
  %conv67 = and i32 %add.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv67)
  %cmp68.not = icmp eq i32 %conv67, 0
  br i1 %cmp68.not, label %sw.bb64.do.body73_crit_edge, label %sw.bb64.cleanup_crit_edge

sw.bb64.cleanup_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb64.do.body73_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.end60.unreachabledefault:                      ; preds = %if.end60
  unreachable

do.body73:                                        ; preds = %sw.bb64.do.body73_crit_edge, %sw.bb63, %if.end60.do.body73_crit_edge, %if.end60.do.body73_crit_edge270
  %mult.0 = phi i32 [ %add.i, %sw.bb64.do.body73_crit_edge ], [ 0, %sw.bb63 ], [ 0, %if.end60.do.body73_crit_edge ], [ 0, %if.end60.do.body73_crit_edge270 ]
  %tobool90.not = phi i32 [ 0, %sw.bb64.do.body73_crit_edge ], [ 32768, %sw.bb63 ], [ 0, %if.end60.do.body73_crit_edge ], [ 0, %if.end60.do.body73_crit_edge270 ]
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %dqh83 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 3
  %42 = ptrtoint ptr %dqh83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dqh83, align 4
  %shl85 = shl nuw nsw i32 %and.i, 16
  %shl87 = shl i32 %mult.0, 30
  %or = or i32 %shl87, %shl85
  %or88 = or i32 %or, %tobool90.not
  %or92 = or i32 %or88, 536870912
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or92, ptr %43, align 4
  %next_dtd_ptr = getelementptr inbounds %struct.mv_dqh, ptr %43, i32 0, i32 2
  %45 = ptrtoint ptr %next_dtd_ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %next_dtd_ptr, align 4
  %size_ioc_int_sts = getelementptr inbounds %struct.mv_dqh, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %size_ioc_int_sts to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %size_ioc_int_sts, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %47 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %47, i32 7)
  %bf.load95 = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %14 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear96 = and i56 %bf.load95, 1099511627775
  %bf.set = or i56 %bf.clear96, %bf.shl
  store i56 %bf.set, ptr %maxpacket, align 2
  %desc98 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %48 = ptrtoint ptr %desc98 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %desc, ptr %desc98, align 4
  %49 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load99 = load i16, ptr %ep_num, align 2
  %bf.clear100 = and i16 %bf.load99, 32767
  store i16 %bf.clear100, ptr %ep_num, align 2
  %50 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %op_regs, align 8
  %bf.lshr108 = lshr i16 %bf.load99, 4
  %bf.clear109 = and i16 %bf.lshr108, 255
  %bf.cast110 = zext i16 %bf.clear109 to i32
  %arrayidx = getelementptr %struct.mv_op_regs, ptr %51, i32 0, i32 22, i32 %bf.cast110
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !251
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp114 = icmp eq i32 %cond, 1
  br i1 %cmp114, label %if.then116, label %if.else

if.then116:                                       ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %and117 = and i32 %53, 65535
  %54 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bmAttributes, align 1
  %56 = and i8 %55, 3
  %and120 = zext i8 %56 to i32
  %shl121 = shl nuw nsw i32 %and120, 18
  %or122 = or i32 %shl121, %and117
  %or123 = or i32 %or122, 12582912
  br label %do.body132

if.else:                                          ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %and124 = and i32 %53, -65536
  %57 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bmAttributes, align 1
  %59 = shl i8 %58, 2
  %60 = and i8 %59, 12
  %61 = or i8 %60, -64
  %or129 = zext i8 %61 to i32
  %or130 = or i32 %and124, %or129
  br label %do.body132

do.body132:                                       ; preds = %if.else, %if.then116
  %epctrlx.0 = phi i32 [ %or123, %if.then116 ], [ %or130, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.0)
  %63 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %op_regs, align 8
  %65 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load138 = load i16, ptr %ep_num, align 2
  %bf.lshr139 = lshr i16 %bf.load138, 4
  %bf.clear140 = and i16 %bf.lshr139, 255
  %bf.cast141 = zext i16 %bf.clear140 to i32
  %arrayidx142 = getelementptr %struct.mv_op_regs, ptr %64, i32 0, i32 22, i32 %bf.cast141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx142, i32 %62) #9, !srcloc !256
  %66 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %op_regs, align 8
  %68 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load148 = load i16, ptr %ep_num, align 2
  %bf.lshr149 = lshr i16 %bf.load148, 4
  %bf.clear150 = and i16 %bf.lshr149, 255
  %bf.cast151 = zext i16 %bf.clear150 to i32
  %arrayidx152 = getelementptr %struct.mv_op_regs, ptr %67, i32 0, i32 22, i32 %bf.cast151
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx152) #9, !srcloc !251
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  %and156 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %cmp157 = icmp eq i32 %and156, 0
  br i1 %cmp157, label %if.then159, label %do.body132.if.end172_crit_edge

do.body132.if.end172_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then159:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  %or160 = or i32 %70, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %or160)
  %72 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %op_regs, align 8
  %74 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load167 = load i16, ptr %ep_num, align 2
  %bf.lshr168 = lshr i16 %bf.load167, 4
  %bf.clear169 = and i16 %bf.lshr168, 255
  %bf.cast170 = zext i16 %bf.clear169 to i32
  %arrayidx171 = getelementptr %struct.mv_op_regs, ptr %73, i32 0, i32 22, i32 %bf.cast170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx171, i32 %71) #9, !srcloc !256
  br label %if.end172

if.end172:                                        ; preds = %if.then159, %do.body132.if.end172_crit_edge
  %75 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %op_regs, align 8
  %77 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load178 = load i16, ptr %ep_num, align 2
  %bf.lshr179 = lshr i16 %bf.load178, 4
  %bf.clear180 = and i16 %bf.lshr179, 255
  %bf.cast181 = zext i16 %bf.clear180 to i32
  %arrayidx182 = getelementptr %struct.mv_op_regs, ptr %76, i32 0, i32 22, i32 %bf.cast181
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx182) #9, !srcloc !251
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %and186 = and i32 %79, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %cmp187 = icmp eq i32 %and186, 0
  br i1 %cmp187, label %if.then189, label %if.end172.if.end202_crit_edge

if.end172.if.end202_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then189:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %or190 = or i32 %79, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  tail call void @arm_heavy_mb() #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %or190)
  %81 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %op_regs, align 8
  %83 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load197 = load i16, ptr %ep_num, align 2
  %bf.lshr198 = lshr i16 %bf.load197, 4
  %bf.clear199 = and i16 %bf.lshr198, 255
  %bf.cast200 = zext i16 %bf.clear199 to i32
  %arrayidx201 = getelementptr %struct.mv_op_regs, ptr %82, i32 0, i32 22, i32 %bf.cast200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx201, i32 %80) #9, !srcloc !256
  br label %if.end202

if.end202:                                        ; preds = %if.then189, %if.end172.if.end202_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call78) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %sw.bb64.cleanup_crit_edge, %do.end, %lor.lhs.false6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end202 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false6.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -22, %sw.bb64.cleanup_crit_edge ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %_ep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %udc2 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc2, align 4
  %dqh3 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %dqh3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqh3, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ep_num, align 2
  %7 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp10 = icmp eq i16 %7, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udc2, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %9, i32 0, i32 23
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %direction13 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ep0_dir, %cond.true ], [ %direction13, %cond.false ]
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %cond.in, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_regs, align 8
  %14 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load16 = load i16, ptr %ep_num, align 2
  %bf.lshr17 = lshr i16 %bf.load16, 4
  %bf.clear18 = and i16 %bf.lshr17, 255
  %bf.cast19 = zext i16 %bf.clear18 to i32
  %arrayidx = getelementptr %struct.mv_op_regs, ptr %13, i32 0, i32 22, i32 %bf.cast19
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !251
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp23 = icmp eq i32 %cond, 1
  %neg = select i1 %cmp23, i32 -9175041, i32 -141
  %and = and i32 %16, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %and)
  %18 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_regs, align 8
  %20 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load32 = load i16, ptr %ep_num, align 2
  %bf.lshr33 = lshr i16 %bf.load32, 4
  %bf.clear34 = and i16 %bf.lshr33, 255
  %bf.cast35 = zext i16 %bf.clear34 to i32
  %arrayidx36 = getelementptr %struct.mv_op_regs, ptr %19, i32 0, i32 22, i32 %bf.cast35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx36, i32 %17) #9, !srcloc !256
  %21 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %ep_num, align 2
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %ep_num, align 2
  tail call void @mv_ep_fifo_flush(ptr noundef nonnull %_ep) #9
  %queue.i = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 2
  %22 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %23, %queue.i
  br i1 %cmp.i.not1.i, label %cond.end.nuke.exit_crit_edge, label %cond.end.while.body.i_crit_edge

cond.end.while.body.i_crit_edge:                  ; preds = %cond.end
  br label %while.body.i

cond.end.nuke.exit_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cond.end.while.body.i_crit_edge
  %24 = phi ptr [ %26, %while.body.i.while.body.i_crit_edge ], [ %23, %cond.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %24, i32 -72
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %25 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %cond.end.nuke.exit_crit_edge
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %desc, align 4
  %28 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load39 = load i16, ptr %ep_num, align 2
  %bf.set = or i16 %bf.load39, -32768
  store i16 %bf.set, ptr %ep_num, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %nuke.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nuke.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !316

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
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 92) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 8
  %queue = getelementptr inbounds %struct.mv_req, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.mv_req, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %_req) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_req, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %lor.lhs.false8.do.end_crit_edge, label %lor.lhs.false11

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %queue = getelementptr inbounds %struct.mv_req, ptr %_req, i32 0, i32 5
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %7, %queue
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false11.do.end_crit_edge

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false11.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %tobool14.not = icmp eq ptr %_ep, null
  br i1 %tobool14.not, label %if.end.do.end23_crit_edge, label %lor.rhs, !prof !346

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

lor.rhs:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %lor.rhs.do.end23_crit_edge, label %if.end26, !prof !346

lor.rhs.do.end23_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %lor.rhs.do.end23_crit_edge, %if.end.do.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 4
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104) #12
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %driver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 8
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %lor.lhs.false29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false29:                                  ; preds = %if.end26
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %lor.lhs.false29.cleanup_crit_edge, label %if.end31

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false29
  %ep32 = getelementptr inbounds %struct.mv_req, ptr %_req, i32 0, i32 4
  %18 = ptrtoint ptr %ep32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %_ep, ptr %ep32, align 4
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %19 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %ep_num, align 2
  %20 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp34 = icmp eq i16 %20, 0
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udc4, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %22, i32 0, i32 23
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %direction = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ep0_dir, %cond.true ], [ %direction, %cond.false ]
  %23 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond = load i32, ptr %cond.in, align 4
  %call36 = tail call i32 @usb_gadget_map_request(ptr noundef %1, ptr noundef nonnull %_req, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %cond.end
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %25 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %actual, align 4
  %dtd_count = getelementptr inbounds %struct.mv_req, ptr %_req, i32 0, i32 7
  %26 = ptrtoint ptr %dtd_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dtd_count, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call52 = tail call fastcc i32 @req_to_dtd(ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end39.err_unmap_dma_crit_edge

if.end39.err_unmap_dma_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_dma

if.then54:                                        ; preds = %if.end39
  %call55 = tail call fastcc i32 @queue_dtd(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end71, label %if.then54.err_unmap_dma_crit_edge

if.then54.err_unmap_dma_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_dma

if.end71:                                         ; preds = %if.then54
  %27 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load73 = load i16, ptr %ep_num, align 2
  %28 = and i16 %bf.load73, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp77 = icmp eq i16 %28, 0
  br i1 %cmp77, label %if.then79, label %if.end71.if.end80_crit_edge

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_state = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 22
  %29 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %ep0_state, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end71.if.end80_crit_edge
  %queue82 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %31, ptr noundef %queue82) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end80.list_add_tail.exit_crit_edge

if.end80.list_add_tail.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queue, ptr %prev.i, align 4
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %queue82, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.mv_req, ptr %_req, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %queue, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end80.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call47) #9
  br label %cleanup

err_unmap_dma:                                    ; preds = %if.then54.err_unmap_dma_crit_edge, %if.end39.err_unmap_dma_crit_edge
  %.str.112.sink = phi ptr [ @.str.109, %if.then54.err_unmap_dma_crit_edge ], [ @.str.112, %if.end39.err_unmap_dma_crit_edge ]
  %retval5.0 = phi i32 [ %call55, %if.then54.err_unmap_dma_crit_edge ], [ -12, %if.end39.err_unmap_dma_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call47) #9
  %dev69 = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev69, align 4
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull %.str.112.sink) #12
  %38 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load86 = load i16, ptr %ep_num, align 2
  %39 = and i16 %bf.load86, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp90 = icmp eq i16 %39, 0
  br i1 %cmp90, label %cond.true92, label %cond.false95

cond.true92:                                      ; preds = %err_unmap_dma
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udc4, align 4
  %ep0_dir94 = getelementptr inbounds %struct.mv_udc, ptr %41, i32 0, i32 23
  br label %cond.end97

cond.false95:                                     ; preds = %err_unmap_dma
  call void @__sanitizer_cov_trace_pc() #11
  %direction96 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true92
  %cond98.in = phi ptr [ %ep0_dir94, %cond.true92 ], [ %direction96, %cond.false95 ]
  %42 = ptrtoint ptr %cond98.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond98 = load i32, ptr %cond98.in, align 4
  tail call void @usb_gadget_unmap_request(ptr noundef %1, ptr noundef nonnull %_req, i32 noundef %cond98) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end97, %list_add_tail.exit, %cond.end.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %retval5.0, %cond.end97 ], [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -108, %lor.lhs.false29.cleanup_crit_edge ], [ -108, %if.end26.cleanup_crit_edge ], [ %call36, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_dequeue(ptr noundef %_ep, ptr noundef writeonly %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stopped9 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %2 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %stopped9, align 2
  %bf.lshr = and i16 %bf.load, -32768
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %stopped9, align 2
  %op_regs = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_regs, align 8
  %bf.lshr14 = lshr i16 %bf.load, 4
  %bf.clear15 = and i16 %bf.lshr14, 255
  %bf.cast16 = zext i16 %bf.clear15 to i32
  %arrayidx = getelementptr %struct.mv_op_regs, ptr %4, i32 0, i32 22, i32 %bf.cast16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !251
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %7 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load21 = load i16, ptr %stopped9, align 2
  %8 = and i16 %bf.load21, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp25 = icmp eq i16 %8, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udc1, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %10, i32 0, i32 23
  br label %cond.end

cond.false:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %direction = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ep0_dir, %cond.true ], [ %direction, %cond.false ]
  %11 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp28 = icmp eq i32 %cond, 1
  %epctrlx.0.v = select i1 %cmp28, i32 -8388609, i32 -129
  %epctrlx.0 = and i32 %epctrlx.0.v, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.0)
  %13 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_regs, align 8
  %15 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load39 = load i16, ptr %stopped9, align 2
  %bf.lshr40 = lshr i16 %bf.load39, 4
  %bf.clear41 = and i16 %bf.lshr40, 255
  %bf.cast42 = zext i16 %bf.clear41 to i32
  %arrayidx43 = getelementptr %struct.mv_op_regs, ptr %14, i32 0, i32 22, i32 %bf.cast42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx43, i32 %12) #9, !srcloc !256
  %queue = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %cond.end
  %.pn.in = phi ptr [ %queue, %cond.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -72
  %cmp49.not = icmp eq ptr %.pn, %queue
  %cmp52 = icmp eq ptr %req.0, %_req
  %or.cond202 = or i1 %cmp49.not, %cmp52
  br i1 %or.cond202, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp52, label %if.end65, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end65:                                         ; preds = %for.end
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %cmp69 = icmp eq ptr %18, %.pn
  br i1 %cmp69, label %if.then71, label %if.else85

if.then71:                                        ; preds = %if.end65
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -104, ptr %status, align 4
  tail call void @mv_ep_fifo_flush(ptr noundef nonnull %_ep)
  %20 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn, align 4
  %cmp75.not = icmp eq ptr %21, %queue
  %dqh = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 3
  %22 = ptrtoint ptr %dqh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dqh, align 4
  br i1 %cmp75.not, label %if.else83, label %if.then77

if.then77:                                        ; preds = %if.then71
  %head.i = getelementptr i8, ptr %21, i32 -12
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 4
  %td_dma.i = getelementptr inbounds %struct.mv_dtd, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %td_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %td_dma.i, align 4
  %and.i = and i32 %27, -32
  %next_dtd_ptr.i = getelementptr inbounds %struct.mv_dqh, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %next_dtd_ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %next_dtd_ptr.i, align 4
  %size_ioc_int_sts.i = getelementptr inbounds %struct.mv_dqh, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %size_ioc_int_sts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size_ioc_int_sts.i, align 4
  %and2.i = and i32 %30, -193
  store i32 %and2.i, ptr %size_ioc_int_sts.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %stopped9, align 2
  %32 = and i16 %bf.load.i, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.i = icmp eq i16 %32, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udc1, align 4
  %ep0_dir.i = getelementptr inbounds %struct.mv_udc, ptr %34, i32 0, i32 23
  br label %mv_prime_ep.exit

cond.false.i:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %direction.i = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %mv_prime_ep.exit

mv_prime_ep.exit:                                 ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %ep0_dir.i, %cond.true.i ], [ %direction.i, %cond.false.i ]
  %35 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp3.i = icmp eq i32 %cond.i, 0
  %cond4.i = select i1 %cmp3.i, i32 0, i32 16
  %bf.lshr7.i = lshr i16 %bf.load.i, 4
  %bf.clear8.i = and i16 %bf.lshr7.i, 255
  %bf.cast9.i = zext i16 %bf.clear8.i to i32
  %add.i = add nuw nsw i32 %cond4.i, %bf.cast9.i
  %shl.i = shl nuw i32 1, %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %37 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udc1, align 4
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %op_regs.i, align 8
  %epprime.i = getelementptr inbounds %struct.mv_op_regs, ptr %40, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epprime.i, i32 %36) #9, !srcloc !256
  br label %if.end100

if.else83:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %next_dtd_ptr = getelementptr inbounds %struct.mv_dqh, ptr %23, i32 0, i32 2
  %41 = ptrtoint ptr %next_dtd_ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %next_dtd_ptr, align 4
  %size_ioc_int_sts = getelementptr inbounds %struct.mv_dqh, ptr %23, i32 0, i32 3
  %42 = ptrtoint ptr %size_ioc_int_sts to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %size_ioc_int_sts, align 4
  br label %if.end100

if.else85:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %43 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  tail call void @arm_heavy_mb() #9
  %tail = getelementptr i8, ptr %.pn, i32 -8
  %45 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  %tail98 = getelementptr i8, ptr %44, i32 -8
  %48 = ptrtoint ptr %tail98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail98, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #9, !srcloc !256
  br label %if.end100

if.end100:                                        ; preds = %if.else85, %if.else83, %mv_prime_ep.exit
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %out

out:                                              ; preds = %if.end100, %for.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end100 ], [ -22, %for.end.out_crit_edge ]
  %50 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %op_regs, align 8
  %52 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load106 = load i16, ptr %stopped9, align 2
  %bf.lshr107 = lshr i16 %bf.load106, 4
  %bf.clear108 = and i16 %bf.lshr107, 255
  %bf.cast109 = zext i16 %bf.clear108 to i32
  %arrayidx110 = getelementptr %struct.mv_op_regs, ptr %51, i32 0, i32 22, i32 %bf.cast109
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx110) #9, !srcloc !251
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %55 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load115 = load i16, ptr %stopped9, align 2
  %56 = and i16 %bf.load115, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp119 = icmp eq i16 %56, 0
  br i1 %cmp119, label %cond.true121, label %cond.false124

cond.true121:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udc1, align 4
  %ep0_dir123 = getelementptr inbounds %struct.mv_udc, ptr %58, i32 0, i32 23
  br label %cond.end126

cond.false124:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %direction125 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false124, %cond.true121
  %cond127.in = phi ptr [ %ep0_dir123, %cond.true121 ], [ %direction125, %cond.false124 ]
  %59 = ptrtoint ptr %cond127.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %cond127 = load i32, ptr %cond127.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond127)
  %cmp128 = icmp eq i32 %cond127, 1
  %epctrlx.1.v = select i1 %cmp128, i32 8388608, i32 128
  %epctrlx.1 = or i32 %epctrlx.1.v, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.1)
  %61 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %op_regs, align 8
  %63 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load140 = load i16, ptr %stopped9, align 2
  %bf.lshr141 = lshr i16 %bf.load140, 4
  %bf.clear142 = and i16 %bf.lshr141, 255
  %bf.cast143 = zext i16 %bf.clear142 to i32
  %arrayidx144 = getelementptr %struct.mv_op_regs, ptr %62, i32 0, i32 22, i32 %bf.cast143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx144, i32 %60) #9, !srcloc !256
  %64 = ptrtoint ptr %stopped9 to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load146 = load i16, ptr %stopped9, align 2
  %bf.clear147 = and i16 %bf.load146, 32767
  %bf.set148 = or i16 %bf.clear147, %bf.lshr
  store i16 %bf.set148, ptr %stopped9, align 2
  %65 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %udc1, align 4
  %lock150 = getelementptr inbounds %struct.mv_udc, ptr %66, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock150, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end126, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cond.end126 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_set_halt(ptr noundef %_ep, i32 noundef %halt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef %halt, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_ep_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef %halt, i32 noundef %wedge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool9.not = icmp eq i32 %halt, 0
  br i1 %tobool9.not, label %if.end8.do.body19_crit_edge, label %land.lhs.true

if.end8.do.body19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.lhs.true:                                    ; preds = %if.end8
  %ep_num = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ep_num, align 2
  %7 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp10 = icmp eq i16 %7, 0
  %ep0_dir = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 23
  %direction = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  %cond.in = select i1 %cmp10, ptr %ep0_dir, ptr %direction
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp13 = icmp eq i32 %cond, 1
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.do.body19_crit_edge

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.lhs.true15:                                  ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 2
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %land.lhs.true15.do.body19_crit_edge, label %land.lhs.true15.out_crit_edge

land.lhs.true15.out_crit_edge:                    ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true15.do.body19_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body19:                                        ; preds = %land.lhs.true15.do.body19_crit_edge, %land.lhs.true.do.body19_crit_edge, %if.end8.do.body19_crit_edge
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ep_num28 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 6
  %11 = ptrtoint ptr %ep_num28 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load29 = load i16, ptr %ep_num28, align 2
  %bf.lshr30 = lshr i16 %bf.load29, 4
  %12 = and i16 %bf.load29, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp39 = icmp eq i16 %12, 0
  br i1 %cmp39, label %cond.true41, label %cond.false44

cond.true41:                                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udc1, align 4
  %ep0_dir43 = getelementptr inbounds %struct.mv_udc, ptr %14, i32 0, i32 23
  br label %cond.end46

cond.false44:                                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %direction45 = getelementptr inbounds %struct.mv_ep, ptr %_ep, i32 0, i32 4
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false44, %cond.true41
  %cond47.in = phi ptr [ %ep0_dir43, %cond.true41 ], [ %direction45, %cond.false44 ]
  %15 = ptrtoint ptr %cond47.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond47 = load i32, ptr %cond47.in, align 4
  %conv48 = trunc i32 %cond47 to i8
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_regs.i, align 8
  %18 = and i16 %bf.lshr30, 255
  %idxprom.i = zext i16 %18 to i32
  %arrayidx.i = getelementptr %struct.mv_op_regs, ptr %17, i32 0, i32 22, i32 %idxprom.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !251
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv48)
  %cmp8.i = icmp eq i8 %conv48, 1
  br i1 %tobool9.not, label %if.else6.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end46
  br i1 %cmp8.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %20, 65536
  br label %ep_set_stall.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or5.i = or i32 %20, 1
  br label %ep_set_stall.exit

if.else6.i:                                       ; preds = %cond.end46
  br i1 %cmp8.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %20, -4259841
  %or11.i = or i32 %and.i, 4194304
  br label %ep_set_stall.exit

if.else12.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %and13.i = and i32 %20, -66
  %or14.i = or i32 %and13.i, 64
  br label %ep_set_stall.exit

ep_set_stall.exit:                                ; preds = %if.else12.i, %if.then10.i, %if.else.i, %if.then4.i
  %epctrlx.0.i = phi i32 [ %or.i, %if.then4.i ], [ %or5.i, %if.else.i ], [ %or11.i, %if.then10.i ], [ %or14.i, %if.else12.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %epctrlx.0.i) #9
  %22 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_regs.i, align 8
  %arrayidx20.i = getelementptr %struct.mv_op_regs, ptr %23, i32 0, i32 22, i32 %idxprom.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.i, i32 %21) #9, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool51.not = icmp eq i32 %wedge, 0
  %or.cond = or i1 %tobool9.not, %tobool51.not
  br i1 %or.cond, label %if.else, label %if.then52

if.then52:                                        ; preds = %ep_set_stall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ep_num28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load54 = load i16, ptr %ep_num28, align 2
  %bf.set = or i16 %bf.load54, 16384
  br label %if.end63.sink.split

if.else:                                          ; preds = %ep_set_stall.exit
  br i1 %tobool9.not, label %if.then57, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ep_num28 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load59 = load i16, ptr %ep_num28, align 2
  %bf.clear60 = and i16 %bf.load59, -16385
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.then57, %if.then52
  %bf.clear60.sink = phi i16 [ %bf.clear60, %if.then57 ], [ %bf.set, %if.then52 ]
  %26 = ptrtoint ptr %ep_num28 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.clear60.sink, ptr %ep_num28, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else.if.end63_crit_edge
  %27 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udc1, align 4
  %lock65 = getelementptr inbounds %struct.mv_udc, ptr %28, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock65, i32 noundef %call25) #9
  %29 = ptrtoint ptr %ep_num28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load67 = load i16, ptr %ep_num28, align 2
  %30 = and i16 %bf.load67, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp71 = icmp eq i16 %30, 0
  br i1 %cmp71, label %if.then73, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then73:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_state = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ep0_state, align 8
  %ep0_dir74 = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 23
  %32 = ptrtoint ptr %ep0_dir74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ep0_dir74, align 4
  br label %out

out:                                              ; preds = %if.then73, %if.end63.out_crit_edge, %land.lhs.true15.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ 0, %if.then73 ], [ 0, %if.end63.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -95, %if.end.out_crit_edge ], [ -11, %land.lhs.true15.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %transceiver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %poll = getelementptr inbounds %struct.mv_usb_addon_irq, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end14_crit_edge, label %if.then5

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then5:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %9() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp = icmp eq i32 %call9, 1
  br i1 %cmp, label %do.end, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.118) #12
  br label %cleanup

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %clock_gating = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %clock_gating, align 4
  %13 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %op_regs.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_regs.i, align 8
  %usbintr.i = getelementptr inbounds %struct.mv_op_regs, ptr %15, i32 0, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbintr.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %17 = and i32 %16, -1191182337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_regs.i, align 8
  %usbintr4.i = getelementptr inbounds %struct.mv_op_regs, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr4.i, i32 %17) #9, !srcloc !256
  %20 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %clock_gating, align 4
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %clock_gating, align 4
  %21 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs.i, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %24 = and i32 %23, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !256
  %lock = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %driver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver, align 8
  tail call fastcc void @stop_activity(ptr noundef %1, ptr noundef %28)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %29 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i31 = load i8, ptr %clock_gating, align 4
  %30 = and i8 %bf.load.i31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then16.cleanup_crit_edge, label %do.body.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_udc_suspend, %do.end.i)) #9
          to label %if.then5.i [label %do.end.i], !srcloc !260

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, ptr noundef %dev6.i, ptr noundef nonnull @.str.117) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %33 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata, align 4
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_deinit.i, align 4
  %tobool7.not.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i, label %do.end.i.if.end11.i_crit_edge, label %if.then8.i

do.end.i.if.end11.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_regs.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_regs.i, align 4
  tail call void %36(ptr noundef %38) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %do.end.i.if.end11.i_crit_edge
  %clk.i.i = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 32
  %39 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i.i, align 8
  tail call void @clk_disable(ptr noundef %40) #9
  tail call void @clk_unprepare(ptr noundef %40) #9
  %41 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load13.i = load i8, ptr %clock_gating, align 4
  %bf.clear14.i = and i8 %bf.load13.i, -3
  store i8 %bf.clear14.i, ptr %clock_gating, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %if.then16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_udc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %transceiver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock_gating = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %clock_gating, align 4
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @mv_udc_enable_internal(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %driver = getelementptr inbounds %struct.mv_udc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %8 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9 = load i8, ptr %clock_gating, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool12.not = icmp sgt i8 %bf.load9, -1
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @udc_reset(ptr noundef %1)
  tail call fastcc void @ep0_reset(ptr noundef %1)
  tail call fastcc void @udc_start(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !178, !180, !182, !184, !185, !186, !188, !189, !191, !192, !193, !194, !196, !198, !200, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !239, !240, !241}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__initcall__kmod_mv_udc__308_2419_udc_driver_init6, !1, !"__initcall__kmod_mv_udc__308_2419_udc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2419, i32 1}
!2 = !{ptr @__exitcall_udc_driver_exit, !1, !"__exitcall_udc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias309, !4, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2420, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2421, i32 1}
!7 = !{ptr @__UNIQUE_ID_author311, !8, !"__UNIQUE_ID_author311", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2422, i32 1}
!9 = !{ptr @__UNIQUE_ID_file312, !10, !"__UNIQUE_ID_file312", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2423, i32 1}
!11 = !{ptr @__UNIQUE_ID_license313, !10, !"__UNIQUE_ID_license313", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2412, i32 11}
!14 = !{ptr @udc_driver, !15, !"udc_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2407, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2114, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mv_udc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mv_udc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mv_udc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2124, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2147, i32 61}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2149, i32 3}
!31 = !{ptr @mv_udc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mv_udc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2156, i32 3}
!35 = !{ptr @mv_udc_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mv_udc_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2160, i32 61}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2162, i32 3}
!41 = !{ptr @mv_udc_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mv_udc_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2168, i32 3}
!45 = !{ptr @mv_udc_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mv_udc_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2196, i32 3}
!49 = !{ptr @mv_udc_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mv_udc_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2203, i32 34}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2241, i32 3}
!55 = !{ptr @mv_udc_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mv_udc_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2248, i32 3}
!59 = !{ptr @mv_udc_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mv_udc_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2273, i32 36}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2275, i32 4}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mv_udc_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mv_udc_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2281, i32 16}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2283, i32 4}
!73 = !{ptr @mv_udc_probe._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mv_udc_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mv_udc_probe.__key.41, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2288, i32 3}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2307, i32 2}
!80 = !{ptr @mv_udc_probe._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mv_udc_probe._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 53, i32 8}
!86 = !{ptr @release_done, !85, !"release_done", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1066, i32 2}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mv_udc_enable_internal.__UNIQUE_ID_ddebug303, !88, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1074, i32 4}
!94 = !{ptr @mv_udc_enable_internal._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mv_udc_enable_internal._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1881, i32 4}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @irq_process_reset._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @irq_process_reset._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1894, i32 3}
!103 = !{ptr @irq_process_reset._entry.55, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @irq_process_reset._entry_ptr.57, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1899, i32 3}
!107 = !{ptr @irq_process_reset._entry.58, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @irq_process_reset._entry_ptr.60, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 649, i32 4}
!111 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mv_ep_fifo_flush._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mv_ep_fifo_flush._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 666, i32 5}
!116 = !{ptr @mv_ep_fifo_flush._entry.63, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mv_ep_fifo_flush._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 237, i32 3}
!120 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @done._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @done._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1018, i32 4}
!125 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @udc_reset._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @udc_reset._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1664, i32 2}
!130 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @handle_setup_packet.__UNIQUE_ID_ddebug307, !129, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1482, i32 4}
!134 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @udc_prime_status._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @udc_prime_status._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1488, i32 3}
!139 = !{ptr @udc_prime_status._entry.74, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @udc_prime_status._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1430, i32 2}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @prime_status_complete._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @prime_status_complete._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!148 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 300, i32 5}
!152 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @queue_dtd._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @queue_dtd._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1509, i32 3}
!157 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @mv_udc_testmode._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @mv_udc_testmode._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 140, i32 4}
!162 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @process_ep_req.__UNIQUE_ID_ddebug297, !161, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 154, i32 6}
!166 = !{ptr @process_ep_req.__UNIQUE_ID_ddebug298, !165, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 162, i32 4}
!169 = !{ptr @process_ep_req._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @process_ep_req._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1749, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ep0_req_complete._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @ep0_req_complete._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @driver_name, !179, !"driver_name", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 55, i32 19}
!180 = !{ptr @mv_ops, !181, !"mv_ops", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1218, i32 36}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1156, i32 2}
!184 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @mv_udc_vbus_session.__UNIQUE_ID_ddebug305, !183, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1193, i32 2}
!188 = !{ptr @mv_udc_pullup.__UNIQUE_ID_ddebug306, !187, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1373, i32 4}
!191 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mv_udc_start._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mv_udc_start._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = distinct !{null, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1244, i32 20}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1263, i32 33}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1267, i32 33}
!200 = !{ptr @mv_ep_ops, !201, !"mv_ep_ops", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 942, i32 32}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 468, i32 3}
!204 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mv_ep_enable._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @mv_ep_enable._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 693, i32 3}
!209 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @mv_ep_queue._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @mv_ep_queue._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 697, i32 3}
!214 = !{ptr @mv_ep_queue._entry.105, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @mv_ep_queue._entry_ptr.107, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 723, i32 4}
!218 = !{ptr @mv_ep_queue._entry.108, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @mv_ep_queue._entry_ptr.110, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 728, i32 3}
!222 = !{ptr @mv_ep_queue._entry.111, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @mv_ep_queue._entry_ptr.113, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @mv_ep0_desc, !225, !"mv_ep0_desc", i1 false, i1 false}
!225 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 61, i32 45}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2061, i32 2}
!228 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @mv_udc_vbus_work._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @mv_udc_vbus_work._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 1096, i32 3}
!233 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @mv_udc_disable_internal.__UNIQUE_ID_ddebug304, !232, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!235 = !{ptr @mv_udc_pm_ops, !236, !"mv_udc_pm_ops", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2387, i32 32}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/udc/mv_udc_core.c", i32 2339, i32 4}
!239 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @mv_udc_suspend._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @mv_udc_suspend._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i64 5036142}
!252 = !{i64 2155873853}
!253 = !{i64 2155874378}
!254 = !{i64 2155777376}
!255 = !{i64 2155777647}
!256 = !{i64 5035724}
!257 = !{i64 2155778329}
!258 = !{i64 2155778560}
!259 = !{i64 2155874610}
!260 = !{i64 2149009294, i64 2149009299, i64 2149009312, i64 2149009356, i64 2149009390, i64 2149009411}
!261 = !{i64 2155889080}
!262 = !{i64 2155889300}
!263 = !{i64 2155860859}
!264 = !{i64 2155861365}
!265 = !{i64 2155861586}
!266 = !{i64 2155849450}
!267 = !{i64 2155849685}
!268 = !{i64 2155850390}
!269 = !{i64 2155850613}
!270 = !{i64 2155851315}
!271 = !{i64 2155851537}
!272 = !{i64 2155852272}
!273 = !{i64 2155854514}
!274 = !{i64 2155855347}
!275 = !{i64 2155856053}
!276 = !{i64 2155859766}
!277 = !{i64 2155702962}
!278 = !{i64 2155703227}
!279 = !{i64 2155779027}
!280 = !{i64 2155779459}
!281 = !{i64 2155860280}
!282 = !{i64 2155838772}
!283 = !{i64 2155835561}
!284 = !{i64 2155836277}
!285 = !{i64 2155836524}
!286 = !{i64 2155837253}
!287 = !{i64 2155837768}
!288 = !{i64 2155838017}
!289 = !{i64 2155839290}
!290 = !{i64 2155839512}
!291 = !{i64 2155833495}
!292 = !{i64 2155703940}
!293 = !{i64 2155704192}
!294 = !{i64 2155780167}
!295 = !{i64 2155780398}
!296 = !{i64 2155780817}
!297 = !{i64 2155781571}
!298 = !{i64 2155784407}
!299 = !{i64 2155784648}
!300 = !{i64 2155785051}
!301 = !{i64 2155785493}
!302 = !{i64 2155786265}
!303 = !{i64 2155786783}
!304 = !{i64 2155787052}
!305 = !{i64 2155787761}
!306 = !{i64 2155788009}
!307 = !{i64 2155747956}
!308 = !{i64 2155748179}
!309 = !{i64 2155748923}
!310 = !{i64 2155751403}
!311 = !{i64 2155752523}
!312 = !{i64 2155775220}
!313 = !{i64 2155774169}
!314 = !{i64 2155774482}
!315 = !{i64 2155715586}
!316 = !{!"branch_weights", i32 2000, i32 1}
!317 = !{i64 2155819787}
!318 = !{i64 2155820011}
!319 = !{!"auto-init"}
!320 = !{i64 2155731374}
!321 = !{i64 2155720164}
!322 = !{i64 2155720670}
!323 = !{i64 2155721216}
!324 = !{i64 2155721450}
!325 = !{i64 2155722148}
!326 = !{i64 2155722650}
!327 = !{i64 2155725453}
!328 = !{i64 2155725716}
!329 = !{i64 2155726089}
!330 = !{i64 2155726312}
!331 = !{i64 2155795819}
!332 = !{i64 2155797491}
!333 = !{i64 2155797737}
!334 = !{i64 2155733099}
!335 = !{i64 2155733609}
!336 = !{i64 2155736529}
!337 = !{i64 2155737039}
!338 = !{i64 2155737986}
!339 = !{i64 2155738320}
!340 = !{i64 2155739078}
!341 = !{i64 2155739332}
!342 = !{i64 2155740090}
!343 = !{i64 2155740345}
!344 = !{i64 2155742638}
!345 = !{i64 2155742927}
!346 = !{!"branch_weights", i32 1, i32 2000}
!347 = !{i64 2155764251}
!348 = !{i64 2155764594}
!349 = !{i64 2155761744}
!350 = !{i64 2155762053}
!351 = !{i64 2155771602}
!352 = !{i64 2155772514}
!353 = !{i64 2155773084}
!354 = !{i64 2155773427}
