; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/mv_u3d_core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/mv_u3d_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mv_u3d = type { %struct.usb_gadget, ptr, %struct.spinlock, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, ptr, %struct.usb_ctrlrequest, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.mv_usb_platform_data = type { ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mv_u3d_cap_regs = type { [5 x i32], i32, i32, i32 }
%struct.mv_u3d_vuc_regs = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, [43 x i32], i32, [7 x i32], [16 x %struct.xferstatus], [16 x %struct.xferstatus], i32, i32, i32, i32, [60 x i32], i32, i32, i32, i32, [60 x i32], i32, i32, i32, [61 x i32], [16 x %struct.epxcr], [64 x i32], i32, i32 }
%struct.xferstatus = type { i32, i32, i32, i32 }
%struct.epxcr = type { i32, i32, i32, i32 }
%struct.mv_u3d_req = type { %struct.usb_request, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.mv_u3d_ep = type { %struct.usb_ep, ptr, %struct.list_head, %struct.list_head, ptr, i32, [14 x i8], i32, %struct.spinlock, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.mv_u3d_ep_context = type { i32, i32, i32, i32, i32, i32, %struct.usb_ctrlrequest }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.mv_u3d_op_regs = type { i32, [11 x i32], i32, i32, [243 x i32], i32, i32, [9917 x i32], i32 }
%struct.mv_u3d_trb = type { ptr, i32, %struct.list_head }
%struct.mv_u3d_trb_hw = type { i32, i32, i32, %struct.mv_u3d_trb_ctrl }
%struct.mv_u3d_trb_ctrl = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_mv_u3d_core__276_2059_mv_u3d_driver_init6 = internal global ptr @mv_u3d_driver_init, section ".initcall6.init", align 4
@mv_u3d_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_u3d_probe, ptr @mv_u3d_remove, ptr @mv_u3d_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_u3d_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mv_u3d_driver_exit = internal global ptr @mv_u3d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias277 = internal constant [34 x i8] c"mv_u3d_core.alias=platform:mv-u3d\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [68 x i8] c"mv_u3d_core.description=Marvell PXA USB3.0 Device Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [44 x i8] c"mv_u3d_core.author=Yu Xu <yuxu@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [52 x i8] c"mv_u3d_core.file=drivers/usb/gadget/udc/mv_u3d_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [24 x i8] c"mv_u3d_core.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-u3d\00", [25 x i8] zeroinitializer }, align 32
@mv_u3d_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mv_u3d_suspend, ptr @mv_u3d_resume, ptr @mv_u3d_suspend, ptr @mv_u3d_resume, ptr @mv_u3d_suspend, ptr @mv_u3d_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_u3d_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/mv_u3d_core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr = internal global ptr @mv_u3d_probe._entry, section ".printk_index", align 4
@mv_u3d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&u3d->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capregs\00", [24 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.10 = internal global ptr @mv_u3d_probe._entry.8, section ".printk_index", align 4
@mv_u3d_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.13 = internal global ptr @mv_u3d_probe._entry.11, section ".printk_index", align 4
@mv_u3d_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 -55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_u3d_core\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cap_regs address: 0x%lx/0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_enable error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.18 = internal global ptr @mv_u3d_probe._entry.16, section ".printk_index", align 4
@mv_u3d_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init phy error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.21 = internal global ptr @mv_u3d_probe._entry.19, section ".printk_index", align 4
@mv_u3d_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"allocate ep context memory failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.24 = internal global ptr @mv_u3d_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u3d_trb\00", [24 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ resource defined\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.28 = internal global ptr @mv_u3d_probe._entry.26, section ".printk_index", align 4
@mv_u3d_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr null, ptr null, ptr @mv_u3d_vbus_session, ptr @mv_u3d_vbus_draw, ptr @mv_u3d_pullup, ptr null, ptr null, ptr @mv_u3d_start, ptr @mv_u3d_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv_u3d\00", [25 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1940, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request irq %d for u3d failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.31 = internal global ptr @mv_u3d_probe._entry.29, section ".printk_index", align 4
@mv_u3d_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"external vbus detection\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_probe._entry_ptr.34 = internal global ptr @mv_u3d_probe._entry.32, section ".printk_index", align 4
@mv_u3d_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.35, i8 1, i8 -22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"successful probe usb3 device %s clock gating.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mv_u3d_controller_stop.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 1, i8 1, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv_u3d_controller_stop\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"after u3d_stop, USBCMD 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@mv_u3d_vbus_session.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mv_u3d_vbus_session\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: softconnect %d, vbus_active %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mv_u3d_enable.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 1, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_u3d_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable u3d\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_u3d_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.42, ptr @.str.3, i32 1109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mv_u3d_enable._entry_ptr = internal global ptr @mv_u3d_enable._entry, section ".printk_index", align 4
@mv_u3d_controller_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1076, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_u3d_controller_reset\00", [40 x i8] zeroinitializer }, align 32
@mv_u3d_controller_reset._entry_ptr = internal global ptr @mv_u3d_controller_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mv_u3d_controller_start.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 1, i8 7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_u3d_controller_start\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"after u3d_start, USBCMD 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_u3d_ep_fifo_flush\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EP FLUSH TIMEOUT for ep%d%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@mv_u3d_done.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_u3d_done\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mv_u3d_done: remove req->queue\0A\00", [32 x i8] zeroinitializer }, align 32
@mv_u3d_done.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.52, ptr @.str.3, ptr @.str.54, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"complete %s req %p stat %d len %u/%u\00", [59 x i8] zeroinitializer }, align 32
@mv_u3d_disable.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mv_u3d_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable u3d\0A\00", [19 x i8] zeroinitializer }, align 32
@mv_u3d_pullup.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.57, ptr @.str.3, ptr @.str.41, i8 1, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_u3d_pullup\00", [18 x i8] zeroinitializer }, align 32
@mv_u3d_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @mv_u3d_ep_enable, ptr @mv_u3d_ep_disable, ptr null, ptr @mv_u3d_alloc_request, ptr @mv_u3d_free_request, ptr @mv_u3d_ep_queue, ptr @mv_u3d_ep_dequeue, ptr @mv_u3d_ep_set_halt, ptr @mv_u3d_ep_set_wedge, ptr null, ptr @mv_u3d_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@mv_u3d_ep0_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 512, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%din\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep%dout\00", [24 x i8] zeroinitializer }, align 32
@mv_u3d_eps_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ep->req_lock\00", [18 x i8] zeroinitializer }, align 32
@mv_u3d_ep_enable.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_u3d_ep_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"max burst should not be greater than 16 on bulk ep\0A\00", [44 x i8] zeroinitializer }, align 32
@mv_u3d_ep_enable.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxburst: %d on bulk %s\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_ep_enable.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.62, ptr @.str.3, ptr @.str.65, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"max burst should be 1 on int ep if transfer size is not 1024\0A\00", [34 x i8] zeroinitializer }, align 32
@mv_u3d_ep_enable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 0, i8 -112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"max burst should be 1 on isoc ep if transfer size is not 1024\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv_u3d_ep_queue\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ep0 status stage\0A\00", [46 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.67, ptr @.str.3, ptr @.str.69, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s, req: 0x%p\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s, bad params, _req: 0x%p,req->req.complete: 0x%p, req->req.buf: 0x%p,list_empty: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue._entry_ptr = internal global ptr @mv_u3d_ep_queue._entry, section ".printk_index", align 4
@mv_u3d_ep_queue._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, bad ep\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue._entry_ptr.73 = internal global ptr @mv_u3d_ep_queue._entry.71, section ".printk_index", align 4
@mv_u3d_ep_queue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad params of driver/speed\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue._entry_ptr.76 = internal global ptr @mv_u3d_ep_queue._entry.74, section ".printk_index", align 4
@mv_u3d_ep_queue.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.67, ptr @.str.3, ptr @.str.77, i8 0, i8 -48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"list is not empty\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_u3d_ep_queue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.67, ptr @.str.3, ptr @.str.78, i8 0, i8 -47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"call mv_u3d_start_queue from usb_ep_queue\0A\00", [53 x i8] zeroinitializer }, align 32
@mv_u3d_start_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s, mv_u3d_req_to_trb fail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv_u3d_start_queue\00", [45 x i8] zeroinitializer }, align 32
@mv_u3d_start_queue._entry_ptr = internal global ptr @mv_u3d_start_queue._entry, section ".printk_index", align 4
@mv_u3d_req_to_trb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, mv_u3d_build_trb_chain fail\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_u3d_req_to_trb\00", [46 x i8] zeroinitializer }, align 32
@mv_u3d_req_to_trb._entry_ptr = internal global ptr @mv_u3d_req_to_trb._entry, section ".printk_index", align 4
@mv_u3d_build_trb_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s, dma_pool_alloc fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_u3d_build_trb_one\00", [43 x i8] zeroinitializer }, align 32
@mv_u3d_build_trb_one._entry_ptr = internal global ptr @mv_u3d_build_trb_one._entry, section ".printk_index", align 4
@mv_u3d_build_trb_chain.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv_u3d_build_trb_chain\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chain trb\0A\00", [21 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mv_u3d_queue_trb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"add trb to non-empty queue!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_u3d_queue_trb\00", [47 x i8] zeroinitializer }, align 32
@mv_u3d_queue_trb._entry_ptr = internal global ptr @mv_u3d_queue_trb._entry, section ".printk_index", align 4
@mv_u3d_ep_dequeue.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 0, i8 -36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_u3d_ep_dequeue\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"it is the last request in this ep queue\0A\00", [55 x i8] zeroinitializer }, align 32
@mv_u3d_ep_set_stall.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mv_u3d_ep_set_stall\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq error!\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mv_u3d_irq\00", [21 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry_ptr = internal global ptr @mv_u3d_irq._entry, section ".printk_index", align 4
@mv_u3d_irq.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.96, ptr @.str.3, ptr @.str.97, i8 1, i8 -88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus valid\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.3, i32 1712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vbus bit is not set\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry_ptr.100 = internal global ptr @mv_u3d_irq._entry.98, section ".printk_index", align 4
@mv_u3d_irq._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.3, i32 1718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"under run, ep%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry_ptr.103 = internal global ptr @mv_u3d_irq._entry.101, section ".printk_index", align 4
@mv_u3d_irq._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.96, ptr @.str.3, i32 1728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"desc err 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_u3d_irq._entry_ptr.106 = internal global ptr @mv_u3d_irq._entry.104, section ".printk_index", align 4
@mv_u3d_irq_process_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.107, ptr @.str.3, i32 1398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv_u3d_irq_process_error\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_error._entry_ptr = internal global ptr @mv_u3d_irq_process_error._entry, section ".printk_index", align 4
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 1, i8 96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv_u3d_irq_process_link_change\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linkchange: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.110, i8 1, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"link up: ltssm state: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.111, i8 1, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link suspend\0A\00", [18 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.112, i8 1, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link resume\0A\00", [19 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.113, i8 1, i8 102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"warm reset\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.114, i8 1, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hot reset\0A\00", [21 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.115, i8 1, i8 105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inactive\0A\00", [22 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.116, i8 1, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ss.disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.108, ptr @.str.3, ptr @.str.117, i8 1, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vbus invalid\0A\00", [18 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 1, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv_u3d_irq_process_tr_complete\00", [33 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tr_complete: ep: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.118, ptr @.str.3, ptr @.str.120, i8 1, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tr comp: check req_list\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.118, ptr @.str.3, ptr @.str.121, i8 1, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"call mv_u3d_start_queue from ep complete\0A\00", [54 x i8] zeroinitializer }, align 32
@mv_u3d_process_ep_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, TRB own error!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mv_u3d_process_ep_req\00", [42 x i8] zeroinitializer }, align 32
@mv_u3d_process_ep_req._entry_ptr = internal global ptr @mv_u3d_process_ep_req._entry, section ".printk_index", align 4
@mv_u3d_process_ep_req._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"complete_tr error: ep=%d %s: error = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@mv_u3d_process_ep_req._entry_ptr.126 = internal global ptr @mv_u3d_process_ep_req._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SEND\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECV\00", [27 x i8] zeroinitializer }, align 32
@mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.129, ptr @.str.3, ptr @.str.130, i8 1, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mv_u3d_handle_setup_packet\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SETUP %02x.%02x v%04x i%04x l%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@mv_u3d_handle_setup_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.3, i32 1559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup error!\0A\00", [18 x i8] zeroinitializer }, align 32
@mv_u3d_handle_setup_packet._entry_ptr = internal global ptr @mv_u3d_handle_setup_packet._entry, section ".printk_index", align 4
@mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.129, ptr @.str.3, ptr @.str.132, i8 1, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"u3d configured\0A\00", [16 x i8] zeroinitializer }, align 32
@mv_u3d_ch9setaddress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 1473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s, cannot setaddr in this state (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_u3d_ch9setaddress\00", [43 x i8] zeroinitializer }, align 32
@mv_u3d_ch9setaddress._entry_ptr = internal global ptr @mv_u3d_ch9setaddress._entry, section ".printk_index", align 4
@mv_u3d_ch9setaddress.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.134, ptr @.str.3, ptr @.str.135, i8 1, i8 113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@mv_u3d_ch9setaddress._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.134, ptr @.str.3, i32 1483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s, u3d address is wrong (out of range)\0A\00", [55 x i8] zeroinitializer }, align 32
@mv_u3d_ch9setaddress._entry_ptr.138 = internal global ptr @mv_u3d_ch9setaddress._entry.136, section ".printk_index", align 4
@mv_u3d_ep0_stall.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.139, ptr @.str.3, ptr @.str.94, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_u3d_ep0_stall\00", [47 x i8] zeroinitializer }, align 32
@str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0\00\00\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"mv_u3d_driver\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 2049, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 2054, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"mv_u3d_pm_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 2037, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1790, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1801, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1814, i32 56 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1816, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1824, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1828, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1836, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1843, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1874, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1881, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1919, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [11 x i8] c"mv_u3d_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1288, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 34, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1939, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1948, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1961, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1028, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1142, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1103, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1108, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1075, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1054, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 735, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 180, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 206, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1123, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1199, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"mv_u3d_ep_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 994, i32 32 }
@___asan_gen_.319 = private unnamed_addr constant [16 x i8] c"mv_u3d_ep0_desc\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 41, i32 45 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1330, i32 33 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1334, i32 33 }
@___asan_gen_.328 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1354, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 549, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 555, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 565, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 574, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 789, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 794, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 800, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 810, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 819, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 832, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 836, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 501, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 443, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 294, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 387, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 326, i32 6 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 236, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 880, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 923, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1689, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1699, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1712, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1718, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1728, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1398, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1408, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1411, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1423, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1429, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1435, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1440, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1445, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1448, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1451, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1620, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1640, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1669, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 132, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 152, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1520, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1559, i32 5 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1575, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1471, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1479, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1482, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.575 = private constant [40 x i8] c"../drivers/usb/gadget/udc/mv_u3d_core.c\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 98, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_mv_u3d_driver_exit, ptr @__initcall__kmod_mv_u3d_core__276_2059_mv_u3d_driver_init6, ptr @mv_u3d_build_trb_one._entry, ptr @mv_u3d_build_trb_one._entry_ptr, ptr @mv_u3d_ch9setaddress._entry, ptr @mv_u3d_ch9setaddress._entry.136, ptr @mv_u3d_ch9setaddress._entry_ptr, ptr @mv_u3d_ch9setaddress._entry_ptr.138, ptr @mv_u3d_controller_reset._entry, ptr @mv_u3d_controller_reset._entry_ptr, ptr @mv_u3d_driver_exit, ptr @mv_u3d_enable._entry, ptr @mv_u3d_enable._entry_ptr, ptr @mv_u3d_ep_queue._entry, ptr @mv_u3d_ep_queue._entry.71, ptr @mv_u3d_ep_queue._entry.74, ptr @mv_u3d_ep_queue._entry_ptr, ptr @mv_u3d_ep_queue._entry_ptr.73, ptr @mv_u3d_ep_queue._entry_ptr.76, ptr @mv_u3d_handle_setup_packet._entry, ptr @mv_u3d_handle_setup_packet._entry_ptr, ptr @mv_u3d_irq._entry, ptr @mv_u3d_irq._entry.101, ptr @mv_u3d_irq._entry.104, ptr @mv_u3d_irq._entry.98, ptr @mv_u3d_irq._entry_ptr, ptr @mv_u3d_irq._entry_ptr.100, ptr @mv_u3d_irq._entry_ptr.103, ptr @mv_u3d_irq._entry_ptr.106, ptr @mv_u3d_irq_process_error._entry, ptr @mv_u3d_irq_process_error._entry_ptr, ptr @mv_u3d_probe._entry, ptr @mv_u3d_probe._entry.11, ptr @mv_u3d_probe._entry.16, ptr @mv_u3d_probe._entry.19, ptr @mv_u3d_probe._entry.22, ptr @mv_u3d_probe._entry.26, ptr @mv_u3d_probe._entry.29, ptr @mv_u3d_probe._entry.32, ptr @mv_u3d_probe._entry.8, ptr @mv_u3d_probe._entry_ptr, ptr @mv_u3d_probe._entry_ptr.10, ptr @mv_u3d_probe._entry_ptr.13, ptr @mv_u3d_probe._entry_ptr.18, ptr @mv_u3d_probe._entry_ptr.21, ptr @mv_u3d_probe._entry_ptr.24, ptr @mv_u3d_probe._entry_ptr.28, ptr @mv_u3d_probe._entry_ptr.31, ptr @mv_u3d_probe._entry_ptr.34, ptr @mv_u3d_process_ep_req._entry, ptr @mv_u3d_process_ep_req._entry.124, ptr @mv_u3d_process_ep_req._entry_ptr, ptr @mv_u3d_process_ep_req._entry_ptr.126, ptr @mv_u3d_queue_trb._entry, ptr @mv_u3d_queue_trb._entry_ptr, ptr @mv_u3d_req_to_trb._entry, ptr @mv_u3d_req_to_trb._entry_ptr, ptr @mv_u3d_start_queue._entry, ptr @mv_u3d_start_queue._entry_ptr, ptr @mv_u3d_driver, ptr @.str, ptr @mv_u3d_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mv_u3d_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @mv_u3d_ops, ptr @driver_name, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @mv_u3d_ep_ops, ptr @mv_u3d_ep0_desc, ptr @.str.59, ptr @.str.60, ptr @mv_u3d_eps_init.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @str], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_controller_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_eps_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ep_queue._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ep_queue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_start_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_req_to_trb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_build_trb_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_queue_trb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_irq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_irq._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_irq._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_irq_process_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_process_ep_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_process_ep_req._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_handle_setup_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ch9setaddress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_u3d_ch9setaddress._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_u3d_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv_u3d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_u3d_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_probe(ptr noundef %dev) #2 align 64 {
entry:
  %name.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1200) #15
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.body10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mv_u3d_probe.__key, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev15 = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev15, align 4
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vbus, align 4
  %vbus16 = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 25
  %7 = ptrtoint ptr %vbus16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %vbus16, align 4
  %call18 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 27
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call18 to i32
  br label %err_get_clk

if.end24:                                         ; preds = %do.body10
  %call25 = tail call ptr @platform_get_resource_byname(ptr noundef %dev, i32 noundef 512, ptr noundef nonnull @.str.7) #11
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #14
  br label %err_get_cap_regs

if.end32:                                         ; preds = %if.end24
  %10 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call25, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call25, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %11
  %add.i = add i32 %sub.i, %13
  %call34 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %add.i) #11
  %cap_regs = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %cap_regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %cap_regs, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %do.end40, label %do.body42

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #14
  br label %err_get_cap_regs

do.body42:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_probe, %if.end55)) #11
          to label %if.then48 [label %if.end55], !srcloc !319

if.then48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call25, align 4
  %17 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cap_regs, align 4
  %19 = ptrtoint ptr %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %16, i32 noundef %19) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %do.body42
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call57 = tail call i32 @clk_enable(ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call57) #14
  br label %err_u3d_enable

if.end64:                                         ; preds = %if.end55
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_init, align 4
  %tobool65.not = icmp eq ptr %23, null
  br i1 %tobool65.not, label %if.end64.if.end77_crit_edge, label %if.then66

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then66:                                        ; preds = %if.end64
  %phy_regs = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_regs, align 8
  %call68 = tail call i32 %23(ptr noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then66.if.end77_crit_edge, label %do.end73

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call68) #14
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #11
  br label %err_u3d_enable

if.end77:                                         ; preds = %if.then66.if.end77_crit_edge, %if.end64.if.end77_crit_edge
  %28 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cap_regs, align 4
  %add.ptr = getelementptr %struct.mv_u3d_cap_regs, ptr %29, i32 256
  %op_regs = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %op_regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %op_regs, align 8
  %vuoff = getelementptr inbounds %struct.mv_u3d_cap_regs, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vuoff) #11, !srcloc !320
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %add.ptr82 = getelementptr %struct.mv_u3d_cap_regs, ptr %29, i32 %32
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr82, ptr %vuc_regs, align 4
  %max_eps = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %max_eps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %max_eps, align 4
  tail call fastcc void @mv_u3d_controller_stop(ptr noundef nonnull %call7.i.i)
  %35 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vuc_regs, align 4
  %intrcause = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intrcause, i32 -1) #11, !srcloc !323
  %phy_deinit = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %phy_deinit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_deinit, align 4
  %tobool84.not = icmp eq ptr %38, null
  br i1 %tobool84.not, label %if.end77.if.end88_crit_edge, label %if.then85

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs87 = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %phy_regs87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy_regs87, align 8
  tail call void %38(ptr noundef %40) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end77.if.end88_crit_edge
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %42) #11
  %43 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_eps, align 4
  %mul91 = shl i32 %44, 6
  %ep_context_dma = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 13
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %mul91, ptr noundef %ep_context_dma, i32 noundef 3264, i32 noundef 0) #11
  %ep_context = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 11
  %45 = ptrtoint ptr %ep_context to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %ep_context, align 8
  %tobool95.not = icmp eq ptr %call.i, null
  br i1 %tobool95.not, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #14
  br label %err_u3d_enable

if.end101:                                        ; preds = %if.end88
  %ep_context_size = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %ep_context_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul91, ptr %ep_context_size, align 4
  %call103 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.25, ptr noundef %dev1, i32 noundef 16, i32 noundef 16, i32 noundef 4096) #11
  %trb_pool = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 14
  %47 = ptrtoint ptr %trb_pool to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call103, ptr %trb_pool, align 4
  %tobool105.not = icmp eq ptr %call103, null
  br i1 %tobool105.not, label %if.end101.err_alloc_trb_pool_crit_edge, label %if.end8.i.i

if.end101.err_alloc_trb_pool_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_trb_pool

if.end8.i.i:                                      ; preds = %if.end101
  %48 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_eps, align 4
  %mul110 = mul i32 %49, 280
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul110, i32 noundef 3520) #16
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %eps to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9.i.i, ptr %eps, align 8
  %tobool113.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool113.not, label %if.end8.i.i.err_alloc_eps_crit_edge, label %if.end115

if.end8.i.i.err_alloc_eps_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_eps

if.end115:                                        ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i350 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 104) #15
  %status_req = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 16
  %52 = ptrtoint ptr %status_req to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i350, ptr %status_req, align 4
  %tobool118.not = icmp eq ptr %call7.i.i350, null
  br i1 %tobool118.not, label %if.end115.err_alloc_status_req_crit_edge, label %if.end120

if.end115.err_alloc_status_req_crit_edge:         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_status_req

if.end120:                                        ; preds = %if.end115
  %queue = getelementptr inbounds %struct.mv_u3d_req, ptr %call7.i.i350, i32 0, i32 2
  %53 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.mv_u3d_req, ptr %call7.i.i350, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %queue, ptr %prev.i, align 8
  %add.ptr123 = getelementptr i8, ptr %call7.i.i350, i32 96
  %55 = ptrtoint ptr %call7.i.i350 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr123, ptr %call7.i.i350, align 8
  %56 = ptrtoint ptr %add.ptr123 to i32
  %call.i352 = tail call i32 @__virt_to_phys(i32 noundef %56) #11
  %57 = ptrtoint ptr %status_req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %status_req, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i352, ptr %dma, align 4
  %resume_state = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 18
  %60 = ptrtoint ptr %resume_state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %resume_state, align 8
  %usb_state = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %usb_state, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %ep0_dir, align 4
  %remote_wakeup = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 24
  %63 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %remote_wakeup, align 8
  %call131 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 1024, i32 noundef 0) #11
  %tobool132.not = icmp eq ptr %call131, null
  br i1 %tobool132.not, label %do.end136, label %if.end138

do.end136:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #14
  br label %err_request_irq

if.end138:                                        ; preds = %if.end120
  %64 = ptrtoint ptr %call131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call131, align 4
  %irq = getelementptr inbounds %struct.mv_u3d, ptr %call7.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %irq, align 8
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mv_u3d_ops, ptr %ops, align 8
  %68 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eps, align 8
  %arrayidx = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx, ptr %ep0, align 4
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i353 = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %prev.i353 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ep_list, ptr %prev.i353, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 5
  %73 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %speed, align 8
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 10
  %74 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @driver_name, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name.i) #11
  %75 = call ptr @memset(ptr %name.i, i32 255, i32 14)
  %u3d1.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 1
  %76 = ptrtoint ptr %u3d1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %u3d1.i, align 4
  %name2.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 6
  %77 = call ptr @memcpy(ptr %name2.i, ptr @str, i32 14)
  %name6.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %name2.i, ptr %name6.i, align 4
  %ops.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @mv_u3d_ep_ops, ptr %ops.i, align 4
  %wedge.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 9
  %80 = ptrtoint ptr %wedge.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i = load i16, ptr %wedge.i, align 4
  %bf.clear.i = and i16 %bf.load.i, 32767
  store i16 %bf.clear.i, ptr %wedge.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx, i32 noundef 512) #11
  %caps.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 0, i32 4
  %81 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load10.i = load i8, ptr %caps.i, align 4
  %bf.set22.i = or i8 %bf.load10.i, -116
  store i8 %bf.set22.i, ptr %caps.i, align 4
  %82 = ptrtoint ptr %wedge.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load23.i = load i16, ptr %wedge.i, align 4
  %desc.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 0, i32 9
  %83 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mv_u3d_ep0_desc, ptr %desc.i, align 4
  %queue.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 2
  %84 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 2, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %req_list.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 3
  %86 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i1.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 3, i32 1
  %87 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %req_list.i, ptr %prev.i1.i, align 4
  %bf.clear28.i = and i16 %bf.load23.i, -16369
  store i16 %bf.clear28.i, ptr %wedge.i, align 4
  %88 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ep_context, align 8
  %arrayidx30.i = getelementptr %struct.mv_u3d_ep_context, ptr %89, i32 1
  %ep_context31.i = getelementptr %struct.mv_u3d_ep, ptr %69, i32 1, i32 4
  %90 = ptrtoint ptr %ep_context31.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx30.i, ptr %ep_context31.i, align 4
  %91 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_eps, align 4
  %mul5.i = shl i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul5.i)
  %cmp6.i = icmp ugt i32 %mul5.i, 2
  br i1 %cmp6.i, label %if.end138.for.body.i_crit_edge, label %if.end138.mv_u3d_eps_init.exit_crit_edge

if.end138.mv_u3d_eps_init.exit_crit_edge:         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_eps_init.exit

if.end138.for.body.i_crit_edge:                   ; preds = %if.end138
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end138.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 2, %if.end138.for.body.i_crit_edge ]
  %93 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eps, align 8
  %arrayidx33.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i
  %and.i = and i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shr42.i = ashr i32 %i.07.i, 1
  %.str.60..str.59.i = select i1 %tobool.not.i, ptr @.str.60, ptr @.str.59
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %..i = zext i1 %not.tobool.not.i to i32
  %.10.i = select i1 %tobool.not.i, i8 4, i8 8
  %call43.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 14, ptr noundef nonnull %.str.60..str.59.i, i32 noundef %shr42.i) #11
  %direction44.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 5
  %95 = ptrtoint ptr %direction44.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %..i, ptr %direction44.i, align 4
  %caps46.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx33.i, i32 0, i32 4
  %96 = ptrtoint ptr %caps46.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load47.i = load i8, ptr %caps46.i, align 4
  %bf.set49.i = or i8 %bf.load47.i, %.10.i
  %u3d50.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 1
  %97 = ptrtoint ptr %u3d50.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %u3d50.i, align 4
  %name51.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 6
  %call54.i = call ptr @strncpy(ptr noundef %name51.i, ptr noundef nonnull %name.i, i32 noundef 14) #11
  %name58.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx33.i, i32 0, i32 1
  %98 = ptrtoint ptr %name58.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %name51.i, ptr %name58.i, align 4
  %bf.set73.i = or i8 %bf.set49.i, 112
  %99 = ptrtoint ptr %caps46.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %bf.set73.i, ptr %caps46.i, align 4
  %ops75.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx33.i, i32 0, i32 2
  %100 = ptrtoint ptr %ops75.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @mv_u3d_ep_ops, ptr %ops75.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx33.i, i32 noundef 65535) #11
  %div.i = sdiv i32 %i.07.i, 2
  %ep_num77.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 9
  %101 = trunc i32 %div.i to i16
  %102 = ptrtoint ptr %ep_num77.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load78.i = load i16, ptr %ep_num77.i, align 4
  %bf.value.i = shl i16 %101, 4
  %bf.shl.i = and i16 %bf.value.i, 4080
  %bf.clear79.i = and i16 %bf.load78.i, -4081
  %bf.set80.i = or i16 %bf.clear79.i, %bf.shl.i
  store i16 %bf.set80.i, ptr %ep_num77.i, align 4
  %queue81.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 2
  %103 = ptrtoint ptr %queue81.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %queue81.i, ptr %queue81.i, align 4
  %prev.i2.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 2, i32 1
  %104 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %queue81.i, ptr %prev.i2.i, align 4
  %ep_list.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx33.i, i32 0, i32 3
  %105 = ptrtoint ptr %prev.i353 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i353, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i, ptr noundef %106, ptr noundef %ep_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i354, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i354:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %prev.i353 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %ep_list.i, ptr %prev.i353, align 4
  %108 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ep_list, ptr %ep_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ep_list.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %ep_list.i, ptr %106, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i354, %for.body.i.list_add_tail.exit.i_crit_edge
  %req_list84.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 3
  %111 = ptrtoint ptr %req_list84.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %req_list84.i, ptr %req_list84.i, align 4
  %prev.i4.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 3, i32 1
  %112 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %req_list84.i, ptr %prev.i4.i, align 4
  %req_lock.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %req_lock.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @mv_u3d_eps_init.__key, i16 noundef signext 3) #11
  %113 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ep_context, align 8
  %arrayidx87.i = getelementptr %struct.mv_u3d_ep_context, ptr %114, i32 %i.07.i
  %ep_context88.i = getelementptr %struct.mv_u3d_ep, ptr %94, i32 %i.07.i, i32 4
  %115 = ptrtoint ptr %ep_context88.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx87.i, ptr %ep_context88.i, align 4
  %inc.i = add nuw i32 %i.07.i, 1
  %116 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_eps, align 4
  %mul.i = shl i32 %117, 1
  %cmp.i355 = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp.i355, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.mv_u3d_eps_init.exit_crit_edge

list_add_tail.exit.i.mv_u3d_eps_init.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_eps_init.exit

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mv_u3d_eps_init.exit:                             ; preds = %list_add_tail.exit.i.mv_u3d_eps_init.exit_crit_edge, %if.end138.mv_u3d_eps_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name.i) #11
  %118 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irq, align 8
  %call.i356 = tail call i32 @request_threaded_irq(i32 noundef %119, ptr noundef nonnull @mv_u3d_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool148.not = icmp eq i32 %call.i356, 0
  br i1 %tobool148.not, label %if.end156, label %if.then149

if.then149:                                       ; preds = %mv_u3d_eps_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef 0) #14
  br label %err_request_irq

if.end156:                                        ; preds = %mv_u3d_eps_init.exit
  %121 = ptrtoint ptr %vbus16 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vbus16, align 4
  %tobool158.not = icmp eq ptr %122, null
  br i1 %tobool158.not, label %if.end156.if.end167_crit_edge, label %if.then159

if.end156.if.end167_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load160 = load i8, ptr %remote_wakeup, align 8
  %bf.set162 = or i8 %bf.load160, 16
  store i8 %bf.set162, ptr %remote_wakeup, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #14
  br label %if.end167

if.end167:                                        ; preds = %if.then159, %if.end156.if.end167_crit_edge
  %124 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load169 = load i8, ptr %remote_wakeup, align 8
  %125 = and i8 %bf.load169, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool171.not = icmp eq i8 %125, 0
  br i1 %tobool171.not, label %if.then172, label %if.end167.if.end176_crit_edge

if.end167.if.end176_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set175 = or i8 %bf.load169, 64
  %126 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %bf.set175, ptr %remote_wakeup, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.end167.if.end176_crit_edge
  %127 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load177 = load i8, ptr %remote_wakeup, align 8
  %bf.set179 = or i8 %bf.load177, 4
  store i8 %bf.set179, ptr %remote_wakeup, align 8
  %call182 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev1, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %do.body186, label %err_unregister

do.body186:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_probe, %cleanup)) #11
          to label %if.then200 [label %cleanup], !srcloc !319

if.then200:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load203 = load i8, ptr %remote_wakeup, align 8
  %129 = and i8 %bf.load203, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool207.not = icmp eq i8 %129, 0
  %cond = select i1 %tobool207.not, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #11
  br label %cleanup

err_unregister:                                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq, align 8
  %call212 = tail call ptr @free_irq(i32 noundef %131, ptr noundef nonnull %call7.i.i) #11
  br label %err_request_irq

err_request_irq:                                  ; preds = %err_unregister, %if.then149, %do.end136
  %retval2.0 = phi i32 [ -19, %if.then149 ], [ %call182, %err_unregister ], [ -19, %do.end136 ]
  %132 = ptrtoint ptr %status_req to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %status_req, align 4
  tail call void @kfree(ptr noundef %133) #11
  br label %err_alloc_status_req

err_alloc_status_req:                             ; preds = %err_request_irq, %if.end115.err_alloc_status_req_crit_edge
  %retval2.1 = phi i32 [ %retval2.0, %err_request_irq ], [ -12, %if.end115.err_alloc_status_req_crit_edge ]
  %134 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %eps, align 8
  tail call void @kfree(ptr noundef %135) #11
  br label %err_alloc_eps

err_alloc_eps:                                    ; preds = %err_alloc_status_req, %if.end8.i.i.err_alloc_eps_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %err_alloc_status_req ], [ -12, %if.end8.i.i.err_alloc_eps_crit_edge ]
  %136 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %trb_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %137) #11
  br label %err_alloc_trb_pool

err_alloc_trb_pool:                               ; preds = %err_alloc_eps, %if.end101.err_alloc_trb_pool_crit_edge
  %retval2.3 = phi i32 [ %retval2.2, %err_alloc_eps ], [ -12, %if.end101.err_alloc_trb_pool_crit_edge ]
  %138 = ptrtoint ptr %ep_context_size to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ep_context_size, align 4
  %140 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ep_context, align 8
  %142 = ptrtoint ptr %ep_context_dma to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ep_context_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %139, ptr noundef %141, i32 noundef %143, i32 noundef 0) #11
  br label %err_u3d_enable

err_u3d_enable:                                   ; preds = %err_alloc_trb_pool, %do.end99, %do.end73, %do.end62
  %retval2.4 = phi i32 [ %call57, %do.end62 ], [ %call68, %do.end73 ], [ %retval2.3, %err_alloc_trb_pool ], [ -12, %do.end99 ]
  %144 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cap_regs, align 4
  tail call void @iounmap(ptr noundef %145) #11
  br label %err_get_cap_regs

err_get_cap_regs:                                 ; preds = %err_u3d_enable, %do.end40, %do.end30
  %retval2.5 = phi i32 [ %retval2.4, %err_u3d_enable ], [ -16, %do.end40 ], [ -19, %do.end30 ]
  %146 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %147) #11
  br label %err_get_clk

err_get_clk:                                      ; preds = %err_get_cap_regs, %if.then21
  %retval2.6 = phi i32 [ %9, %if.then21 ], [ %retval2.5, %err_get_cap_regs ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_get_clk, %if.then200, %do.body186, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then200 ], [ %retval2.6, %err_get_clk ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body186 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !324

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/mv_u3d_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1752, 0\0A.popsection", ""() #11, !srcloc !325
  unreachable

do.end7:                                          ; preds = %entry
  tail call void @usb_del_gadget_udc(ptr noundef nonnull %1) #11
  %trb_pool = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trb_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %3) #11
  %ep_context = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_context, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end7.if.end12_crit_edge, label %if.then9

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %ep_context_size = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %ep_context_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_context_size, align 4
  %ep_context_dma = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %ep_context_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_context_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef %7, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end7.if.end12_crit_edge
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eps, align 8
  tail call void @kfree(ptr noundef %11) #11
  %irq = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call ptr @free_irq(i32 noundef %13, ptr noundef nonnull %1) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %cap_regs = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cap_regs, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %15) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %16 = ptrtoint ptr %cap_regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cap_regs, align 4
  %status_req = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %status_req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %status_req, align 4
  tail call void @kfree(ptr noundef %18) #11
  %clk = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %20) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_u3d_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %op_regs = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_regs, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !323
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_controller_stop(ptr nocapture noundef readonly %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_gating = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 24
  %0 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %clock_gating, align 8
  %1 = and i8 %bf.load, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %.not = icmp eq i8 %1, 4
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %2 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vuc_regs, align 4
  %intrenable = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intrenable, i32 256) #11, !srcloc !323
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intrenable, i32 0) #11, !srcloc !323
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vuc_regs8 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %4 = ptrtoint ptr %vuc_regs8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vuc_regs8, align 4
  %endcomplete = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %endcomplete, i32 -1) #11, !srcloc !323
  %6 = ptrtoint ptr %vuc_regs8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vuc_regs8, align 4
  %trbunderrun = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %trbunderrun, i32 -1) #11, !srcloc !323
  %8 = ptrtoint ptr %vuc_regs8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vuc_regs8, align 4
  %trbcomplete = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %9, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %trbcomplete, i32 -1) #11, !srcloc !323
  %10 = ptrtoint ptr %vuc_regs8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs8, align 4
  %linkchange = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %linkchange, i32 -1) #11, !srcloc !323
  %12 = ptrtoint ptr %vuc_regs8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vuc_regs8, align 4
  %setuplock = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %setuplock, i32 16777216) #11, !srcloc !323
  %op_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 7
  %14 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_regs, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !323
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_controller_stop.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_controller_stop, %do.end)) #11
          to label %if.then21 [label %do.end], !srcloc !319

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_regs, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !320
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_controller_stop.__UNIQUE_ID_ddebug252, ptr noundef %21, ptr noundef nonnull @.str.39, i32 noundef %25) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vuc_regs, align 4
  %intrcause = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intrcause) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %3 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vuc_regs, align 4
  %intrenable = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intrenable) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %dev4 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end.if.end37_crit_edge, label %if.then6

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %bridgesetting8 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bridgesetting8) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %do.end34, label %if.then12

if.then12:                                        ; preds = %if.then6
  %14 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vuc_regs, align 4
  %bridgesetting14 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %15, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bridgesetting14, i32 256) #11, !srcloc !323
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq, %do.end25)) #11
          to label %if.then21 [label %do.end25], !srcloc !319

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %dev22 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq.__UNIQUE_ID_ddebug273, ptr noundef %17, ptr noundef nonnull @.str.97) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.then12
  %usb_state = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %usb_state, align 4
  %vbus_valid_detect = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 24
  %19 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %vbus_valid_detect, align 8
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %vbus_valid_detect, align 8
  %vbus = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 25
  %20 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbus, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.then27, label %do.end25.if.end37_crit_edge

do.end25.if.end37_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %call29 = tail call i32 @mv_u3d_vbus_session(ptr noundef %dev, i32 noundef 1)
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %if.end37

do.end34:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dev35 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.99) #14
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then27, %do.end25.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %and38 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end50_crit_edge, label %if.then40

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vuc_regs, align 4
  %trbunderrun42 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %25, i32 0, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %trbunderrun42) #11, !srcloc !320
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %dev47 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 4
  %28 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.102, i32 noundef %27) #14
  %30 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vuc_regs, align 4
  %trbunderrun49 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %31, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %trbunderrun49, i32 %26) #11, !srcloc !323
  %errors.i = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 23
  %32 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %errors.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %errors.i, align 4
  %34 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.107) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.end37.if.end50_crit_edge
  %and51 = and i32 %7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end61_crit_edge, label %if.then53

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vuc_regs, align 4
  %intrcause56 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %38 = shl nuw nsw i32 %and51, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intrcause56, i32 %38) #11, !srcloc !323
  %dev60 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 4
  %39 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.105, i32 noundef %7) #14
  %errors.i121 = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 23
  %41 = ptrtoint ptr %errors.i121 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %errors.i121, align 4
  %inc.i122 = add i32 %42, 1
  store i32 %inc.i122, ptr %errors.i121, align 4
  %43 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.107) #14
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.end50.if.end61_crit_edge
  %and62 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end65_crit_edge, label %if.then64

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_irq_process_link_change(ptr noundef %dev)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  %and66 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end69_crit_edge, label %if.then68

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_irq_process_tr_complete(ptr noundef %dev)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %and70 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end73_crit_edge, label %if.then72

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_irq_process_tr_complete(ptr noundef %dev)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69.if.end73_crit_edge
  %and74 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end77_crit_edge, label %if.then76

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then76:                                        ; preds = %if.end73
  %45 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vuc_regs, align 4
  %setuplock.i = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %46, i32 0, i32 1
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %setuplock.i) #11, !srcloc !320
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.then76.mv_u3d_irq_process_setup.exit_crit_edge, label %for.cond.preheader.i

if.then76.mv_u3d_irq_process_setup.exit_crit_edge: ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_irq_process_setup.exit

for.cond.preheader.i:                             ; preds = %if.then76
  %max_eps.i = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 10
  %49 = ptrtoint ptr %max_eps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_eps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp20.not.i = icmp eq i32 %50, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.mv_u3d_irq_process_setup.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.mv_u3d_irq_process_setup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_irq_process_setup.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %local_setup_buff.i = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 17
  %ep_context.i.i = getelementptr inbounds %struct.mv_u3d, ptr %dev, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i124, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.021.i
  %and.i = and i32 %shl.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %i.021.i to i8
  %51 = ptrtoint ptr %ep_context.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep_context.i.i, align 8
  %conv.i.i = shl i32 %i.021.i, 1
  %mul.i.i = and i32 %conv.i.i, 510
  %add.i.i = or i32 %mul.i.i, 1
  %setup_buffer.i.i = getelementptr %struct.mv_u3d_ep_context, ptr %52, i32 %add.i.i, i32 6
  %53 = ptrtoint ptr %setup_buffer.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %setup_buffer.i.i, align 4
  %55 = ptrtoint ptr %local_setup_buff.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %local_setup_buff.i, align 1
  tail call fastcc void @mv_u3d_handle_setup_packet(ptr noundef %dev, i8 noundef zeroext %conv.i, ptr noundef %local_setup_buff.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i124 = add nuw i32 %i.021.i, 1
  %56 = ptrtoint ptr %max_eps.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_eps.i, align 4
  %cmp.i = icmp ult i32 %inc.i124, %57
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mv_u3d_irq_process_setup.exit_crit_edge

for.inc.i.mv_u3d_irq_process_setup.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_irq_process_setup.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mv_u3d_irq_process_setup.exit:                    ; preds = %for.inc.i.mv_u3d_irq_process_setup.exit_crit_edge, %for.cond.preheader.i.mv_u3d_irq_process_setup.exit_crit_edge, %if.then76.mv_u3d_irq_process_setup.exit_crit_edge
  %58 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vuc_regs, align 4
  %setuplock7.i = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %59, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %setuplock7.i, i32 %47) #11, !srcloc !323
  br label %if.end77

if.end77:                                         ; preds = %mv_u3d_irq_process_setup.exit, %if.end73.if.end77_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_vbus_session(ptr noundef %gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %cmp7.not = icmp eq i32 %is_active, 0
  %vbus_active = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 24
  %0 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vbus_active, align 8
  %bf.shl = select i1 %cmp7.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %vbus_active, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_vbus_session.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_vbus_session, %do.end22)) #11
          to label %if.then [label %do.end22], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load15 = load i8, ptr %vbus_active, align 8
  %bf.lshr = lshr i8 %bf.load15, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr18 = lshr i8 %bf.load15, 6
  %bf.clear19 = and i8 %bf.lshr18, 1
  %bf.cast20 = zext i8 %bf.clear19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_vbus_session.__UNIQUE_ID_ddebug256, ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %bf.cast, i32 noundef %bf.cast20) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then, %entry
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool23.not = icmp eq ptr %5, null
  br i1 %tobool23.not, label %do.end22.out_crit_edge, label %land.lhs.true

do.end22.out_crit_edge:                           ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %do.end22
  %6 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load25 = load i8, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load25)
  %.not = icmp ugt i8 %bf.load25, -65
  br i1 %.not, label %if.then36, label %land.lhs.true45

if.then36:                                        ; preds = %land.lhs.true
  %call37 = tail call fastcc i32 @mv_u3d_enable(ptr noundef %gadget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.then36.out_crit_edge

if.then36.out_crit_edge:                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_controller_reset(ptr noundef %gadget)
  tail call fastcc void @mv_u3d_ep0_reset(ptr noundef %gadget)
  tail call fastcc void @mv_u3d_controller_start(ptr noundef %gadget)
  br label %out

land.lhs.true45:                                  ; preds = %land.lhs.true
  %7 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load47 = load i8, ptr %vbus_active, align 8
  %8 = and i8 %bf.load47, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %8)
  %.not85 = icmp eq i8 %8, -120
  br i1 %.not85, label %if.end58, label %land.lhs.true45.out_crit_edge

land.lhs.true45.out_crit_edge:                    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end58:                                         ; preds = %land.lhs.true45
  tail call fastcc void @mv_u3d_stop_activity(ptr noundef %gadget, ptr noundef nonnull %5)
  tail call fastcc void @mv_u3d_controller_stop(ptr noundef %gadget)
  %dev.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i.i, align 8
  %13 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %vbus_active, align 8
  %14 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %14)
  %.not.i = icmp eq i8 %14, 24
  br i1 %.not.i, label %do.body.i, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body.i:                                        ; preds = %if.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_disable.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_vbus_session, %do.end.i)) #11
          to label %if.then11.i [label %do.end.i], !srcloc !319

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_disable.__UNIQUE_ID_ddebug255, ptr noundef %16, ptr noundef nonnull @.str.56) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %do.body.i
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_deinit.i, align 4
  %tobool13.not.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i, label %do.end.i.if.end16.i_crit_edge, label %if.then14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 9
  %19 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_regs.i, align 8
  tail call void %18(ptr noundef %20) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end.i.if.end16.i_crit_edge
  %clk.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 27
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  %23 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load18.i = load i8, ptr %vbus_active, align 8
  %bf.clear19.i = and i8 %bf.load18.i, -9
  store i8 %bf.clear19.i, ptr %vbus_active, align 8
  br label %out

out:                                              ; preds = %if.end16.i, %if.end58.out_crit_edge, %land.lhs.true45.out_crit_edge, %if.then40, %if.then36.out_crit_edge, %do.end22.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then40 ], [ %call37, %if.then36.out_crit_edge ], [ 0, %land.lhs.true45.out_crit_edge ], [ 0, %if.end58.out_crit_edge ], [ 0, %if.end16.i ], [ 0, %do.end22.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret i32 %retval1.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_u3d_vbus_draw(ptr nocapture noundef writeonly %gadget, i32 noundef %mA) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 26
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mA, ptr %power, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_pullup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_pullup, %do.end17)) #11
          to label %if.then [label %do.end17], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %softconnect = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 24
  %2 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %softconnect, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr14 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr14, 1
  %bf.cast15 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_pullup.__UNIQUE_ID_ddebug257, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.57, i32 noundef %bf.cast, i32 noundef %bf.cast15) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp18.not = icmp eq i32 %is_on, 0
  %softconnect20 = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 24
  %3 = ptrtoint ptr %softconnect20 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load21 = load i8, ptr %softconnect20, align 8
  %bf.shl = select i1 %cmp18.not, i8 0, i8 -128
  %bf.clear22 = and i8 %bf.load21, 127
  %bf.set = or i8 %bf.clear22, %bf.shl
  store i8 %bf.set, ptr %softconnect20, align 8
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool23.not = icmp eq ptr %5, null
  %brmerge = or i1 %cmp18.not, %tobool23.not
  %6 = and i8 %bf.load21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool35.not = icmp eq i8 %6, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.else, label %if.then36

if.then36:                                        ; preds = %do.end17
  %call37 = tail call fastcc i32 @mv_u3d_enable(ptr noundef %gadget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.then36.if.end55_crit_edge

if.then36.if.end55_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_controller_reset(ptr noundef %gadget)
  tail call fastcc void @mv_u3d_ep0_reset(ptr noundef %gadget)
  tail call fastcc void @mv_u3d_controller_start(ptr noundef %gadget)
  br label %if.end55

if.else:                                          ; preds = %do.end17
  %or.cond77 = select i1 %tobool23.not, i1 true, i1 %tobool35.not
  br i1 %or.cond77, label %if.else.if.end55_crit_edge, label %if.then52

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then52:                                        ; preds = %if.else
  tail call fastcc void @mv_u3d_stop_activity(ptr noundef %gadget, ptr noundef nonnull %5)
  tail call fastcc void @mv_u3d_controller_stop(ptr noundef %gadget)
  %dev.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i.i, align 8
  %11 = ptrtoint ptr %softconnect20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %softconnect20, align 8
  %12 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %12)
  %.not.i = icmp eq i8 %12, 24
  br i1 %.not.i, label %do.body.i, label %if.then52.if.end55_crit_edge

if.then52.if.end55_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

do.body.i:                                        ; preds = %if.then52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_disable.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_pullup, %do.end.i)) #11
          to label %if.then11.i [label %do.end.i], !srcloc !319

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_disable.__UNIQUE_ID_ddebug255, ptr noundef %14, ptr noundef nonnull @.str.56) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %do.body.i
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_deinit.i, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %do.end.i.if.end16.i_crit_edge, label %if.then14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 9
  %17 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_regs.i, align 8
  tail call void %16(ptr noundef %18) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end.i.if.end16.i_crit_edge
  %clk.i = getelementptr inbounds %struct.mv_u3d, ptr %gadget, i32 0, i32 27
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #11
  %21 = ptrtoint ptr %softconnect20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load18.i = load i8, ptr %softconnect20, align 8
  %bf.clear19.i = and i8 %bf.load18.i, -9
  store i8 %bf.clear19.i, ptr %softconnect20, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end16.i, %if.then52.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.then40, %if.then36.if.end55_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then40 ], [ %call37, %if.then36.if.end55_crit_edge ], [ 0, %if.else.if.end55_crit_edge ], [ 0, %if.then52.if.end55_crit_edge ], [ 0, %if.end16.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_start(ptr noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %driver1 = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 1
  %4 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %clock_gating = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 24
  %6 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %clock_gating, align 8
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.then9, label %do.body2.if.end16_crit_edge

do.body2.if.end16_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then9:                                         ; preds = %do.body2
  %clk = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 27
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_enable(ptr noundef %9) #11
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_init, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.then9.if.end16_crit_edge, label %if.then12

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 9
  %12 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_regs, align 8
  %call14 = tail call i32 %11(ptr noundef %13) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then9.if.end16_crit_edge, %do.body2.if.end16_crit_edge
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bus, align 4
  %15 = ptrtoint ptr %driver1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %driver, ptr %driver1, align 8
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 21
  %16 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ep0_dir, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %17 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load20 = load i8, ptr %clock_gating, align 8
  %bf.set = or i8 %bf.load20, 4
  store i8 %bf.set, ptr %clock_gating, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_stop(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %vbus_valid_detect = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 24
  %4 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %vbus_valid_detect, align 8
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %vbus_valid_detect, align 8
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %clk = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 27
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_enable(ptr noundef %6) #11
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_init, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 9
  %9 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_regs, align 8
  %call9 = tail call i32 %8(ptr noundef %10) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @mv_u3d_controller_stop(ptr noundef %g)
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 5
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %speed, align 8
  %eps.i = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 15
  %12 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eps.i, align 8
  %arrayidx.i = getelementptr %struct.mv_u3d_ep, ptr %13, i32 1
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef %arrayidx.i) #11
  %queue.i.i = getelementptr %struct.mv_u3d_ep, ptr %13, i32 1, i32 2
  %14 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not1.i.i = icmp eq ptr %15, %queue.i.i
  br i1 %cmp.i.not1.i.i, label %if.end.mv_u3d_nuke.exit.i_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.mv_u3d_nuke.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %16 = phi ptr [ %18, %while.body.i.i.while.body.i.i_crit_edge ], [ %15, %if.end.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i.i, i32 noundef -108) #11
  %17 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %queue.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.i.mv_u3d_nuke.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.mv_u3d_nuke.exit.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit.i

mv_u3d_nuke.exit.i:                               ; preds = %while.body.i.i.mv_u3d_nuke.exit.i_crit_edge, %if.end.mv_u3d_nuke.exit.i_crit_edge
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 4
  %19 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn27.i = load ptr, ptr %ep_list.i, align 4
  %cmp.not28.i = icmp eq ptr %.pn27.i, %ep_list.i
  br i1 %cmp.not28.i, label %mv_u3d_nuke.exit.i.mv_u3d_stop_activity.exit_crit_edge, label %mv_u3d_nuke.exit.i.for.body.i_crit_edge

mv_u3d_nuke.exit.i.for.body.i_crit_edge:          ; preds = %mv_u3d_nuke.exit.i
  br label %for.body.i

mv_u3d_nuke.exit.i.mv_u3d_stop_activity.exit_crit_edge: ; preds = %mv_u3d_nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_stop_activity.exit

for.body.i:                                       ; preds = %mv_u3d_nuke.exit26.i.for.body.i_crit_edge, %mv_u3d_nuke.exit.i.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %mv_u3d_nuke.exit26.i.for.body.i_crit_edge ], [ %.pn27.i, %mv_u3d_nuke.exit.i.for.body.i_crit_edge ]
  %ep.0.i = getelementptr i8, ptr %.pn29.i, i32 -12
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef %ep.0.i) #11
  %queue.i21.i = getelementptr i8, ptr %.pn29.i, i32 36
  %20 = ptrtoint ptr %queue.i21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue.i21.i, align 4
  %cmp.i.not1.i22.i = icmp eq ptr %21, %queue.i21.i
  br i1 %cmp.i.not1.i22.i, label %for.body.i.mv_u3d_nuke.exit26.i_crit_edge, label %for.body.i.while.body.i25.i_crit_edge

for.body.i.while.body.i25.i_crit_edge:            ; preds = %for.body.i
  br label %while.body.i25.i

for.body.i.mv_u3d_nuke.exit26.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit26.i

while.body.i25.i:                                 ; preds = %while.body.i25.i.while.body.i25.i_crit_edge, %for.body.i.while.body.i25.i_crit_edge
  %22 = phi ptr [ %24, %while.body.i25.i.while.body.i25.i_crit_edge ], [ %21, %for.body.i.while.body.i25.i_crit_edge ]
  %add.ptr.i23.i = getelementptr i8, ptr %22, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef %ep.0.i, ptr noundef %add.ptr.i23.i, i32 noundef -108) #11
  %23 = ptrtoint ptr %queue.i21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue.i21.i, align 4
  %cmp.i.not.i24.i = icmp eq ptr %24, %queue.i21.i
  br i1 %cmp.i.not.i24.i, label %while.body.i25.i.mv_u3d_nuke.exit26.i_crit_edge, label %while.body.i25.i.while.body.i25.i_crit_edge

while.body.i25.i.while.body.i25.i_crit_edge:      ; preds = %while.body.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i25.i

while.body.i25.i.mv_u3d_nuke.exit26.i_crit_edge:  ; preds = %while.body.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit26.i

mv_u3d_nuke.exit26.i:                             ; preds = %while.body.i25.i.mv_u3d_nuke.exit26.i_crit_edge, %for.body.i.mv_u3d_nuke.exit26.i_crit_edge
  %25 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn29.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp.not.i, label %mv_u3d_nuke.exit26.i.mv_u3d_stop_activity.exit_crit_edge, label %mv_u3d_nuke.exit26.i.for.body.i_crit_edge

mv_u3d_nuke.exit26.i.for.body.i_crit_edge:        ; preds = %mv_u3d_nuke.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mv_u3d_nuke.exit26.i.mv_u3d_stop_activity.exit_crit_edge: ; preds = %mv_u3d_nuke.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_stop_activity.exit

mv_u3d_stop_activity.exit:                        ; preds = %mv_u3d_nuke.exit26.i.mv_u3d_stop_activity.exit_crit_edge, %mv_u3d_nuke.exit.i.mv_u3d_stop_activity.exit_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data.i.i, align 8
  %30 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %vbus_valid_detect, align 8
  %31 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %31)
  %.not.i = icmp eq i8 %31, 24
  br i1 %.not.i, label %do.body.i, label %mv_u3d_stop_activity.exit.mv_u3d_disable.exit_crit_edge

mv_u3d_stop_activity.exit.mv_u3d_disable.exit_crit_edge: ; preds = %mv_u3d_stop_activity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_disable.exit

do.body.i:                                        ; preds = %mv_u3d_stop_activity.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_disable.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_stop, %do.end.i)) #11
          to label %if.then11.i [label %do.end.i], !srcloc !319

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_disable.__UNIQUE_ID_ddebug255, ptr noundef %33, ptr noundef nonnull @.str.56) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %do.body.i
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_deinit.i, align 4
  %tobool13.not.i = icmp eq ptr %35, null
  br i1 %tobool13.not.i, label %do.end.i.if.end16.i_crit_edge, label %if.then14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs.i = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 9
  %36 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_regs.i, align 8
  tail call void %35(ptr noundef %37) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end.i.if.end16.i_crit_edge
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %39) #11
  %40 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load18.i = load i8, ptr %vbus_valid_detect, align 8
  %bf.clear19.i = and i8 %bf.load18.i, -9
  store i8 %bf.clear19.i, ptr %vbus_valid_detect, align 8
  br label %mv_u3d_disable.exit

mv_u3d_disable.exit:                              ; preds = %if.end16.i, %mv_u3d_stop_activity.exit.mv_u3d_disable.exit_crit_edge
  %phy_deinit = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %phy_deinit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy_deinit, align 4
  %tobool10.not = icmp eq ptr %42, null
  br i1 %tobool10.not, label %mv_u3d_disable.exit.if.end14_crit_edge, label %if.then11

mv_u3d_disable.exit.if.end14_crit_edge:           ; preds = %mv_u3d_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %mv_u3d_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs13 = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 9
  %43 = ptrtoint ptr %phy_regs13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_regs13, align 8
  tail call void %42(ptr noundef %44) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %mv_u3d_disable.exit.if.end14_crit_edge
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %46) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %g, i32 0, i32 1
  %47 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_u3d_enable(ptr nocapture noundef %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %active = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 24
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 8
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i8 %bf.load, 8
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set, ptr %active, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_enable.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_enable, %do.end)) #11
          to label %if.then17 [label %do.end], !srcloc !319

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_enable.__UNIQUE_ID_ddebug254, ptr noundef %9, ptr noundef nonnull @.str.43) #11
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %clk = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 27
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call20 = tail call i32 @clk_enable(ptr noundef %11) #11
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_init, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %do.end.if.end33_crit_edge, label %if.then22

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then22:                                        ; preds = %do.end
  %phy_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 9
  %14 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_regs, align 8
  %call24 = tail call i32 %13(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end33_crit_edge, label %do.end29

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.20, i32 noundef %call24) #14
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  br label %cleanup

if.end33:                                         ; preds = %if.then22.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load35 = load i8, ptr %active, align 8
  %bf.set37 = or i8 %bf.load35, 8
  store i8 %bf.set37, ptr %active, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end29, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ 0, %if.end33 ], [ 0, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_controller_reset(ptr nocapture noundef readonly %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 7
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #11, !srcloc !323
  %6 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 33554432) #11, !srcloc !323
  %8 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_regs, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1 = icmp eq i32 %11, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %loops.02 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 625, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.02)
  %cmp = icmp eq i32 %loops.02, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44) #14
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %loops.02, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 3435968) #11
  %15 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_regs, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %18 = and i32 %17, 33554432
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %ep_context_dma = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 13
  %19 = ptrtoint ptr %ep_context_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ep_context_dma, align 8
  %21 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs, align 8
  %dcbaapl = getelementptr inbounds %struct.mv_u3d_op_regs, ptr %22, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dcbaapl, i32 %23) #11, !srcloc !323
  %24 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op_regs, align 8
  %dcbaaph = getelementptr inbounds %struct.mv_u3d_op_regs, ptr %25, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dcbaaph, i32 0) #11, !srcloc !323
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_ep0_reset(ptr noundef %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 15
  %ep_context = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 11
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 8
  %u3d1 = getelementptr %struct.mv_u3d_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %u3d1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %u3d, ptr %u3d1, align 4
  %3 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep_context, align 8
  %arrayidx2 = getelementptr %struct.mv_u3d_ep_context, ptr %4, i32 1
  %ep_context3 = getelementptr %struct.mv_u3d_ep, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ep_context3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2, ptr %ep_context3, align 4
  %6 = load ptr, ptr %eps, align 8
  %u3d1.1 = getelementptr %struct.mv_u3d_ep, ptr %6, i32 1, i32 1
  %7 = ptrtoint ptr %u3d1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %u3d, ptr %u3d1.1, align 4
  %8 = load ptr, ptr %ep_context, align 8
  %arrayidx2.1 = getelementptr %struct.mv_u3d_ep_context, ptr %8, i32 1
  %ep_context3.1 = getelementptr %struct.mv_u3d_ep, ptr %6, i32 1, i32 4
  %9 = ptrtoint ptr %ep_context3.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx2.1, ptr %ep_context3.1, align 4
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %epcr = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epcr) #11, !srcloc !320
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or = or i32 %13, 1
  %14 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vuc_regs, align 4
  %epcr6 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %15, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcr6, i32 %16) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #11
  %and = and i32 %13, -2
  %18 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vuc_regs, align 4
  %epcr10 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %19, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcr10, i32 %20) #11, !srcloc !323
  %21 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vuc_regs, align 4
  %epxoutcr1 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %22, i32 0, i32 28, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxoutcr1, i32 269484034) #11, !srcloc !323
  %23 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vuc_regs, align 4
  %epxincr0 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %24, i32 0, i32 28, i32 0, i32 2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0) #11, !srcloc !320
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or20 = or i32 %26, 1
  %27 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vuc_regs, align 4
  %epxincr024 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %28, i32 0, i32 28, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %or20) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr024, i32 %29) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 1073740) #11
  %and25 = and i32 %26, -2
  %31 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vuc_regs, align 4
  %epxincr029 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %32, i32 0, i32 28, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %and25) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr029, i32 %33) #11, !srcloc !323
  %34 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vuc_regs, align 4
  %epxincr1 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %35, i32 0, i32 28, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr1, i32 269484034) #11, !srcloc !323
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_controller_start(ptr nocapture noundef readonly %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %0 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vuc_regs, align 4
  %ltssm = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %1, i32 0, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ltssm) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %3 = or i32 %2, 128
  %4 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vuc_regs, align 4
  %ltssm2 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %5, i32 0, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ltssm2, i32 %3) #11, !srcloc !323
  %vbus_valid_detect = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 24
  %6 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %vbus_valid_detect, align 8
  %7 = and i8 %bf.load, 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 14
  %or3 = or i32 %9, 16777271
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %intrenable = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intrenable, i32 %12) #11, !srcloc !323
  %13 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vuc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16777216) #11, !srcloc !323
  %op_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 7
  %15 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #11, !srcloc !323
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_controller_start.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_controller_start, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_regs, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !320
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_controller_start.__UNIQUE_ID_ddebug253, ptr noundef %18, ptr noundef nonnull @.str.47, i32 noundef %22) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_stop_activity(ptr noundef %u3d, ptr noundef readonly %driver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 15
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 8
  %arrayidx = getelementptr %struct.mv_u3d_ep, ptr %1, i32 1
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef %arrayidx) #11
  %queue.i = getelementptr %struct.mv_u3d_ep, ptr %1, i32 1, i32 2
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not1.i, label %entry.mv_u3d_nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.mv_u3d_nuke.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #11
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.mv_u3d_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.mv_u3d_nuke.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

mv_u3d_nuke.exit:                                 ; preds = %while.body.i.mv_u3d_nuke.exit_crit_edge, %entry.mv_u3d_nuke.exit_crit_edge
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %u3d, i32 0, i32 4
  %7 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn27 = load ptr, ptr %ep_list, align 4
  %cmp.not28 = icmp eq ptr %.pn27, %ep_list
  br i1 %cmp.not28, label %mv_u3d_nuke.exit.for.end_crit_edge, label %mv_u3d_nuke.exit.for.body_crit_edge

mv_u3d_nuke.exit.for.body_crit_edge:              ; preds = %mv_u3d_nuke.exit
  br label %for.body

mv_u3d_nuke.exit.for.end_crit_edge:               ; preds = %mv_u3d_nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %mv_u3d_nuke.exit26.for.body_crit_edge, %mv_u3d_nuke.exit.for.body_crit_edge
  %.pn29 = phi ptr [ %.pn, %mv_u3d_nuke.exit26.for.body_crit_edge ], [ %.pn27, %mv_u3d_nuke.exit.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn29, i32 -12
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef %ep.0) #11
  %queue.i21 = getelementptr i8, ptr %.pn29, i32 36
  %8 = ptrtoint ptr %queue.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue.i21, align 4
  %cmp.i.not1.i22 = icmp eq ptr %9, %queue.i21
  br i1 %cmp.i.not1.i22, label %for.body.mv_u3d_nuke.exit26_crit_edge, label %for.body.while.body.i25_crit_edge

for.body.while.body.i25_crit_edge:                ; preds = %for.body
  br label %while.body.i25

for.body.mv_u3d_nuke.exit26_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit26

while.body.i25:                                   ; preds = %while.body.i25.while.body.i25_crit_edge, %for.body.while.body.i25_crit_edge
  %10 = phi ptr [ %12, %while.body.i25.while.body.i25_crit_edge ], [ %9, %for.body.while.body.i25_crit_edge ]
  %add.ptr.i23 = getelementptr i8, ptr %10, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef %ep.0, ptr noundef %add.ptr.i23, i32 noundef -108) #11
  %11 = ptrtoint ptr %queue.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue.i21, align 4
  %cmp.i.not.i24 = icmp eq ptr %12, %queue.i21
  br i1 %cmp.i.not.i24, label %while.body.i25.mv_u3d_nuke.exit26_crit_edge, label %while.body.i25.while.body.i25_crit_edge

while.body.i25.while.body.i25_crit_edge:          ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i25

while.body.i25.mv_u3d_nuke.exit26_crit_edge:      ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit26

mv_u3d_nuke.exit26:                               ; preds = %while.body.i25.mv_u3d_nuke.exit26_crit_edge, %for.body.mv_u3d_nuke.exit26_crit_edge
  %13 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %mv_u3d_nuke.exit26.for.end_crit_edge, label %mv_u3d_nuke.exit26.for.body_crit_edge

mv_u3d_nuke.exit26.for.body_crit_edge:            ; preds = %mv_u3d_nuke.exit26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

mv_u3d_nuke.exit26.for.end_crit_edge:             ; preds = %mv_u3d_nuke.exit26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %mv_u3d_nuke.exit26.for.end_crit_edge, %mv_u3d_nuke.exit.for.end_crit_edge
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 5
  %14 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disconnect, align 4
  tail call void %15(ptr noundef %u3d) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_u3d_ep_fifo_flush(ptr nocapture noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %enabled, align 4
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %u3d2 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %u3d2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u3d2, align 4
  %4 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 21
  %direction8 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 5
  %cond.in = select i1 %cmp, ptr %ep0_dir, ptr %direction8
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %bf.lshr11 = lshr i16 %bf.load, 4
  %bf.clear12 = and i16 %bf.lshr11, 255
  %bf.cast13 = zext i16 %bf.clear12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear12)
  %tobool14.not = icmp eq i16 %bf.clear12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp16 = icmp eq i32 %cond, 0
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vuc_regs, align 4
  br i1 %tobool14.not, label %if.then15, label %if.end41

if.then15:                                        ; preds = %if.end
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %epcr = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epcr) #11, !srcloc !320
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or = or i32 %9, 128
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %epcr19 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcr19, i32 %12) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #11
  %and = and i32 %9, -129
  %14 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vuc_regs, align 4
  %epcr23 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %15, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcr23, i32 %16) #11, !srcloc !323
  br label %cleanup

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %epxincr0 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 28, i32 0, i32 2
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0) #11, !srcloc !320
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or30 = or i32 %18, 128
  %19 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vuc_regs, align 4
  %epxincr034 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %20, i32 0, i32 28, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or30) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr034, i32 %21) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #11
  %and35 = and i32 %18, -129
  %23 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vuc_regs, align 4
  %epxincr039 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %24, i32 0, i32 28, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %and35) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr039, i32 %25) #11, !srcloc !323
  br label %cleanup

if.end41:                                         ; preds = %if.end
  br i1 %cmp16, label %if.then43, label %if.else94

if.then43:                                        ; preds = %if.end41
  %arrayidx51 = getelementptr %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 28, i32 %bf.cast13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx51) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %27 = or i32 %26, -2147483648
  %28 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vuc_regs, align 4
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load58 = load i16, ptr %enabled, align 4
  %bf.lshr59 = lshr i16 %bf.load58, 4
  %bf.clear60 = and i16 %bf.lshr59, 255
  %bf.cast61 = zext i16 %bf.clear60 to i32
  %arrayidx62 = getelementptr %struct.mv_u3d_vuc_regs, ptr %29, i32 0, i32 28, i32 %bf.cast61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx62, i32 %27) #11, !srcloc !323
  %31 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vuc_regs, align 4
  %33 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load67221 = load i16, ptr %enabled, align 4
  %bf.lshr68222 = lshr i16 %bf.load67221, 4
  %bf.clear69223 = and i16 %bf.lshr68222, 255
  %bf.cast70224 = zext i16 %bf.clear69223 to i32
  %arrayidx71225 = getelementptr %struct.mv_u3d_vuc_regs, ptr %32, i32 0, i32 28, i32 %bf.cast70224
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx71225) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool75.not226 = icmp sgt i32 %34, -1
  br i1 %tobool75.not226, label %if.then43.cleanup_crit_edge, label %if.then43.while.body_crit_edge

if.then43.while.body_crit_edge:                   ; preds = %if.then43
  br label %while.body

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %if.end93.while.body_crit_edge, %if.then43.while.body_crit_edge
  %loops.0227 = phi i32 [ %dec, %if.end93.while.body_crit_edge ], [ 6250, %if.then43.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0227)
  %cmp76 = icmp eq i32 %loops.0227, 0
  br i1 %cmp76, label %do.body, label %if.end93

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_fifo_flush, %cleanup)) #11
          to label %if.then84 [label %cleanup], !srcloc !319

if.then84:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load86 = load i16, ptr %enabled, align 4
  %bf.lshr87 = lshr i16 %bf.load86, 4
  %bf.clear88 = and i16 %bf.lshr87, 255
  %bf.cast89 = zext i16 %bf.clear88 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug244, ptr noundef %36, ptr noundef nonnull @.str.49, i32 noundef %bf.cast89, ptr noundef nonnull @.str.51) #11
  br label %cleanup

if.end93:                                         ; preds = %while.body
  %dec = add nsw i32 %loops.0227, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 3435968) #11
  %39 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vuc_regs, align 4
  %41 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load67 = load i16, ptr %enabled, align 4
  %bf.lshr68 = lshr i16 %bf.load67, 4
  %bf.clear69 = and i16 %bf.lshr68, 255
  %bf.cast70 = zext i16 %bf.clear69 to i32
  %arrayidx71 = getelementptr %struct.mv_u3d_vuc_regs, ptr %40, i32 0, i32 28, i32 %bf.cast70
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx71) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %tobool75.not = icmp sgt i32 %42, -1
  br i1 %tobool75.not, label %if.end93.cleanup_crit_edge, label %if.end93.while.body_crit_edge

if.end93.while.body_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else94:                                        ; preds = %if.end41
  %epxincr0103 = getelementptr %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 28, i32 %bf.cast13, i32 2
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0103) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %44 = or i32 %43, -2147483648
  %45 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vuc_regs, align 4
  %47 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load109 = load i16, ptr %enabled, align 4
  %bf.lshr110 = lshr i16 %bf.load109, 4
  %bf.clear111 = and i16 %bf.lshr110, 255
  %bf.cast112 = zext i16 %bf.clear111 to i32
  %epxincr0114 = getelementptr %struct.mv_u3d_vuc_regs, ptr %46, i32 0, i32 28, i32 %bf.cast112, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr0114, i32 %44) #11, !srcloc !323
  %48 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vuc_regs, align 4
  %50 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load119214 = load i16, ptr %enabled, align 4
  %bf.lshr120215 = lshr i16 %bf.load119214, 4
  %bf.clear121216 = and i16 %bf.lshr120215, 255
  %bf.cast122217 = zext i16 %bf.clear121216 to i32
  %epxincr0124218 = getelementptr %struct.mv_u3d_vuc_regs, ptr %49, i32 0, i32 28, i32 %bf.cast122217, i32 2
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0124218) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool127.not219 = icmp sgt i32 %51, -1
  br i1 %tobool127.not219, label %if.else94.cleanup_crit_edge, label %if.else94.while.body128_crit_edge

if.else94.while.body128_crit_edge:                ; preds = %if.else94
  br label %while.body128

if.else94.cleanup_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body128:                                    ; preds = %if.end157.while.body128_crit_edge, %if.else94.while.body128_crit_edge
  %loops.1220 = phi i32 [ %dec158, %if.end157.while.body128_crit_edge ], [ 6250, %if.else94.while.body128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.1220)
  %cmp129 = icmp eq i32 %loops.1220, 0
  br i1 %cmp129, label %do.body131, label %if.end157

do.body131:                                       ; preds = %while.body128
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_fifo_flush, %cleanup)) #11
          to label %if.then145 [label %cleanup], !srcloc !319

if.then145:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  %dev146 = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %52 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev146, align 4
  %54 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load148 = load i16, ptr %enabled, align 4
  %bf.lshr149 = lshr i16 %bf.load148, 4
  %bf.clear150 = and i16 %bf.lshr149, 255
  %bf.cast151 = zext i16 %bf.clear150 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug245, ptr noundef %53, ptr noundef nonnull @.str.49, i32 noundef %bf.cast151, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end157:                                        ; preds = %while.body128
  %dec158 = add nsw i32 %loops.1220, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 3435968) #11
  %56 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vuc_regs, align 4
  %58 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load119 = load i16, ptr %enabled, align 4
  %bf.lshr120 = lshr i16 %bf.load119, 4
  %bf.clear121 = and i16 %bf.lshr120, 255
  %bf.cast122 = zext i16 %bf.clear121 to i32
  %epxincr0124 = getelementptr %struct.mv_u3d_vuc_regs, ptr %57, i32 0, i32 28, i32 %bf.cast122, i32 2
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0124) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %tobool127.not = icmp sgt i32 %59, -1
  br i1 %tobool127.not, label %if.end157.cleanup_crit_edge, label %if.end157.while.body128_crit_edge

if.end157.while.body128_crit_edge:                ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body128

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end157.cleanup_crit_edge, %if.then145, %do.body131, %if.else94.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then84, %do.body, %if.then43.cleanup_crit_edge, %if.else, %if.then17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d1 = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_done.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_done, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_done.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.53) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %queue = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status6 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %13)
  %cmp = icmp eq i32 %13, -115
  br i1 %cmp, label %if.then7, label %list_del_init.exit.if.end12_crit_edge

list_del_init.exit.if.end12_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %status, ptr %status6, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %list_del_init.exit.if.end12_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then7 ], [ %13, %list_del_init.exit.if.end12_crit_edge ]
  %chain = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 7
  %15 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %trb_pool = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trb_pool, align 4
  %trb_head = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 5
  %19 = ptrtoint ptr %trb_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trb_head, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %trb_dma = getelementptr inbounds %struct.mv_u3d_trb, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %trb_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trb_dma, align 4
  tail call void @dma_pool_free(ptr noundef %18, ptr noundef %22, i32 noundef %24) #11
  br label %if.end23

if.else16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %u3d1, align 4
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %trb_head19 = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 5
  %29 = ptrtoint ptr %trb_head19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trb_head19, align 4
  %trb_dma20 = getelementptr inbounds %struct.mv_u3d_trb, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %trb_dma20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %trb_dma20, align 4
  %trb_count = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 6
  %33 = ptrtoint ptr %trb_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %trb_count, align 4
  %mul = shl i32 %34, 4
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %32, i32 noundef %mul, i32 noundef 0, i32 noundef 0) #11
  %35 = ptrtoint ptr %trb_head19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trb_head19, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %38) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %if.then14
  %trb_head24 = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 5
  %39 = ptrtoint ptr %trb_head24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trb_head24, align 4
  tail call void @kfree(ptr noundef %40) #11
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 9
  %41 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ep_num, align 4
  %42 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp27 = icmp eq i16 %42, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %u3d1, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %44, i32 0, i32 21
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %direction = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ep0_dir, %cond.true ], [ %direction, %cond.false ]
  %45 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond = load i32, ptr %cond.in, align 4
  tail call void @usb_gadget_unmap_request(ptr noundef %1, ptr noundef %req, i32 noundef %cond) #11
  %46 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.addr.0, label %do.body32 [
    i32 0, label %cond.end.if.end55_crit_edge
    i32 -108, label %cond.end.if.end55_crit_edge95
  ]

cond.end.if.end55_crit_edge95:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

cond.end.if.end55_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

do.body32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_done.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_done, %if.end55)) #11
          to label %if.then46 [label %if.end55], !srcloc !319

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %dev47 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev47, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %51 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_done.__UNIQUE_ID_ddebug236, ptr noundef %48, ptr noundef nonnull @.str.54, ptr noundef %50, ptr noundef %req, i32 noundef %status.addr.0, i32 noundef %52, i32 noundef %54) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %do.body32, %cond.end.if.end55_crit_edge, %cond.end.if.end55_crit_edge95
  %55 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %u3d1, align 4
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %56, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #11
  %57 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %u3d1, align 4
  %lock60 = getelementptr inbounds %struct.mv_u3d, ptr %58, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock60) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %u3d4 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %u3d4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u3d4, align 4
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %8 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ep_num, align 4
  %9 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp11 = icmp eq i16 %9, 0
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 21
  %direction14 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 5
  %cond.in = select i1 %cmp11, ptr %ep0_dir, ptr %direction14
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %cond.in, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %11 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wMaxPacketSize, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %maxburst15 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %14 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load16 = load i56, ptr %maxburst15, align 2
  %15 = and i56 %bf.load16, 62
  %tobool20.not = icmp eq i56 %15, 0
  br i1 %tobool20.not, label %if.then21, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear24 = and i56 %bf.load16, -63
  %bf.set = or i56 %bf.clear24, 2
  %16 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 7)
  store i56 %bf.set, ptr %maxburst15, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end10.if.end25_crit_edge
  %17 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load27 = load i56, ptr %maxburst15, align 2
  %18 = trunc i56 %bf.load27 to i32
  %19 = lshr i32 %18, 1
  %bf.cast30 = and i32 %19, 31
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes, align 1
  %22 = and i8 %21, 3
  %and = zext i8 %22 to i32
  %23 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and, label %if.end25.unreachabledefault [
    i32 2, label %sw.bb
    i32 0, label %sw.bb66
    i32 3, label %sw.bb74
    i32 1, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bf.cast30)
  %cmp32 = icmp ugt i32 %bf.cast30, 16
  br i1 %cmp32, label %do.body, label %sw.bb.do.body47_crit_edge

sw.bb.do.body47_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_enable, %do.end)) #11
          to label %if.then40 [label %do.end], !srcloc !319

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_enable.__UNIQUE_ID_ddebug240, ptr noundef %25, ptr noundef nonnull @.str.63) #11
  br label %do.end

do.end:                                           ; preds = %if.then40, %do.body
  %26 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 7)
  %bf.load43 = load i56, ptr %maxburst15, align 2
  %bf.clear44 = and i56 %bf.load43, -63
  %bf.set45 = or i56 %bf.clear44, 2
  store i56 %bf.set45, ptr %maxburst15, align 2
  br label %do.body47

do.body47:                                        ; preds = %do.end, %sw.bb.do.body47_crit_edge
  %maxburst.0 = phi i32 [ 1, %do.end ], [ %bf.cast30, %sw.bb.do.body47_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_enable, %sw.epilog)) #11
          to label %if.then61 [label %sw.epilog], !srcloc !319

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %dev62 = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev62, align 4
  %name = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_enable.__UNIQUE_ID_ddebug241, ptr noundef %28, ptr noundef nonnull @.str.64, i32 noundef %maxburst.0, ptr noundef %name) #11
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear71 = and i56 %bf.load27, -63
  %bf.set72 = or i56 %bf.clear71, 2
  %29 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 7)
  store i56 %bf.set72, ptr %maxburst15, align 2
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.cast30)
  %cmp75.not = icmp eq i32 %bf.cast30, 1
  br i1 %cmp75.not, label %sw.bb74.sw.epilog_crit_edge, label %do.body78

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body78:                                        ; preds = %sw.bb74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_enable, %do.end96)) #11
          to label %if.then92 [label %do.end96], !srcloc !319

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %dev93 = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_enable.__UNIQUE_ID_ddebug242, ptr noundef %31, ptr noundef nonnull @.str.65) #11
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body78
  %32 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load98 = load i56, ptr %maxburst15, align 2
  %bf.clear101 = and i56 %bf.load98, -63
  %bf.set102 = or i56 %bf.clear101, 2
  store i56 %bf.set102, ptr %maxburst15, align 2
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.cast30)
  %cmp106.not = icmp eq i32 %bf.cast30, 1
  br i1 %cmp106.not, label %sw.bb105.sw.epilog_crit_edge, label %do.body109

sw.bb105.sw.epilog_crit_edge:                     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body109:                                       ; preds = %sw.bb105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_enable, %do.end127)) #11
          to label %if.then123 [label %do.end127], !srcloc !319

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %dev124 = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev124, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_enable.__UNIQUE_ID_ddebug243, ptr noundef %34, ptr noundef nonnull @.str.66) #11
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %do.body109
  %35 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load129 = load i56, ptr %maxburst15, align 2
  %bf.clear132 = and i56 %bf.load129, -63
  %bf.set133 = or i56 %bf.clear132, 2
  store i56 %bf.set133, ptr %maxburst15, align 2
  br label %sw.epilog

if.end25.unreachabledefault:                      ; preds = %if.end25
  unreachable

sw.epilog:                                        ; preds = %do.end127, %sw.bb105.sw.epilog_crit_edge, %do.end96, %sw.bb74.sw.epilog_crit_edge, %sw.bb66, %if.then61, %do.body47
  %maxburst.1 = phi i32 [ 1, %do.end127 ], [ 1, %sw.bb105.sw.epilog_crit_edge ], [ 1, %do.end96 ], [ 1, %sw.bb74.sw.epilog_crit_edge ], [ 1, %sw.bb66 ], [ %maxburst.0, %if.then61 ], [ %maxburst.0, %do.body47 ]
  %conv136 = zext i16 %13 to i32
  %36 = zext i16 %13 to i56
  %37 = ptrtoint ptr %maxburst15 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 7)
  %bf.load138 = load i56, ptr %maxburst15, align 2
  %bf.shl140 = shl nuw i56 %36, 40
  %bf.clear141 = and i56 %bf.load138, 1099511627775
  %bf.set142 = or i56 %bf.clear141, %bf.shl140
  store i56 %bf.set142, ptr %maxburst15, align 2
  %desc145 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %38 = ptrtoint ptr %desc145 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %desc, ptr %desc145, align 4
  %39 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load146 = load i16, ptr %ep_num, align 4
  %bf.set148 = or i16 %bf.load146, 16384
  store i16 %bf.set148, ptr %ep_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp149 = icmp eq i32 %cond, 0
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 8
  %40 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vuc_regs, align 4
  %bf.lshr154 = lshr i16 %bf.load146, 4
  %bf.clear155 = and i16 %bf.lshr154, 255
  %bf.cast156 = zext i16 %bf.clear155 to i32
  br i1 %cmp149, label %if.then151, label %if.else

if.then151:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.mv_u3d_vuc_regs, ptr %41, i32 0, i32 28, i32 %bf.cast156
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #11, !srcloc !320
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or = or i32 %43, 1
  %44 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vuc_regs, align 4
  %46 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load161 = load i16, ptr %ep_num, align 4
  %bf.lshr162 = lshr i16 %bf.load161, 4
  %bf.clear163 = and i16 %bf.lshr162, 255
  %bf.cast164 = zext i16 %bf.clear163 to i32
  %arrayidx165 = getelementptr %struct.mv_u3d_vuc_regs, ptr %45, i32 0, i32 28, i32 %bf.cast164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx165, i32 %47) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1073740) #11
  %and167 = and i32 %43, -2
  %49 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vuc_regs, align 4
  %51 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load171 = load i16, ptr %ep_num, align 4
  %bf.lshr172 = lshr i16 %bf.load171, 4
  %bf.clear173 = and i16 %bf.lshr172, 255
  %bf.cast174 = zext i16 %bf.clear173 to i32
  %arrayidx175 = getelementptr %struct.mv_u3d_vuc_regs, ptr %50, i32 0, i32 28, i32 %bf.cast174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %and167) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx175, i32 %52) #11, !srcloc !323
  %shl = shl nuw i32 %conv136, 16
  %sub = shl nuw nsw i32 %maxburst.1, 12
  %shl178 = add nsw i32 %sub, -4096
  %53 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bmAttributes, align 1
  %55 = and i8 %54, 3
  %and183 = zext i8 %55 to i32
  %or179 = or i32 %shl, %shl178
  %or180 = or i32 %or179, %and183
  %or184 = or i32 %or180, 16
  %56 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vuc_regs, align 4
  %58 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load188 = load i16, ptr %ep_num, align 4
  %bf.lshr189 = lshr i16 %bf.load188, 4
  %bf.clear190 = and i16 %bf.lshr189, 255
  %bf.cast191 = zext i16 %bf.clear190 to i32
  %epxoutcr1 = getelementptr %struct.mv_u3d_vuc_regs, ptr %57, i32 0, i32 28, i32 %bf.cast191, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %or184) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxoutcr1, i32 %59) #11, !srcloc !323
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %epxincr0 = getelementptr %struct.mv_u3d_vuc_regs, ptr %41, i32 0, i32 28, i32 %bf.cast156, i32 2
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0) #11, !srcloc !320
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %or202 = or i32 %61, 1
  %62 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vuc_regs, align 4
  %64 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load206 = load i16, ptr %ep_num, align 4
  %bf.lshr207 = lshr i16 %bf.load206, 4
  %bf.clear208 = and i16 %bf.lshr207, 255
  %bf.cast209 = zext i16 %bf.clear208 to i32
  %epxincr0211 = getelementptr %struct.mv_u3d_vuc_regs, ptr %63, i32 0, i32 28, i32 %bf.cast209, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %65 = tail call i32 @llvm.bswap.i32(i32 %or202) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr0211, i32 %65) #11, !srcloc !323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 1073740) #11
  %and212 = and i32 %61, -2
  %67 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vuc_regs, align 4
  %69 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load216 = load i16, ptr %ep_num, align 4
  %bf.lshr217 = lshr i16 %bf.load216, 4
  %bf.clear218 = and i16 %bf.lshr217, 255
  %bf.cast219 = zext i16 %bf.clear218 to i32
  %epxincr0221 = getelementptr %struct.mv_u3d_vuc_regs, ptr %68, i32 0, i32 28, i32 %bf.cast219, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %70 = tail call i32 @llvm.bswap.i32(i32 %and212) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr0221, i32 %70) #11, !srcloc !323
  %shl223 = shl nuw i32 %conv136, 16
  %sub224 = shl nuw nsw i32 %maxburst.1, 12
  %shl225 = add nsw i32 %sub224, -4096
  %71 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bmAttributes, align 1
  %73 = and i8 %72, 3
  %and230 = zext i8 %73 to i32
  %or226 = or i32 %shl223, %shl225
  %or227 = or i32 %or226, %and230
  %or231 = or i32 %or227, 16
  %74 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vuc_regs, align 4
  %76 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load235 = load i16, ptr %ep_num, align 4
  %bf.lshr236 = lshr i16 %bf.load235, 4
  %bf.clear237 = and i16 %bf.lshr236, 255
  %bf.cast238 = zext i16 %bf.clear237 to i32
  %epxincr1 = getelementptr %struct.mv_u3d_vuc_regs, ptr %75, i32 0, i32 28, i32 %bf.cast238, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %or231) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr1, i32 %77) #11, !srcloc !323
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then151, %lor.lhs.false6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false6.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then151 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %u3d5 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %u3d5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u3d5, align 4
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %4 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ep_num, align 4
  %5 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 21
  %direction7 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 5
  %cond.in = select i1 %cmp, ptr %ep0_dir, ptr %direction7
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 2
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef nonnull %_ep) #11
  %queue.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 2
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not1.i, label %if.end4.mv_u3d_nuke.exit_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.mv_u3d_nuke.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end4.while.body.i_crit_edge
  %9 = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %8, %if.end4.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #11
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.mv_u3d_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.mv_u3d_nuke.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

mv_u3d_nuke.exit:                                 ; preds = %while.body.i.mv_u3d_nuke.exit_crit_edge, %if.end4.mv_u3d_nuke.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp15 = icmp eq i32 %cond, 0
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vuc_regs, align 4
  %14 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load19 = load i16, ptr %ep_num, align 4
  %bf.lshr20 = lshr i16 %bf.load19, 4
  %bf.clear21 = and i16 %bf.lshr20, 255
  %bf.cast22 = zext i16 %bf.clear21 to i32
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %mv_u3d_nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  %epxoutcr1 = getelementptr %struct.mv_u3d_vuc_regs, ptr %13, i32 0, i32 28, i32 %bf.cast22, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxoutcr1) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %16 = and i32 %15, -318767105
  %17 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vuc_regs, align 4
  %19 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load27 = load i16, ptr %ep_num, align 4
  %bf.lshr28 = lshr i16 %bf.load27, 4
  %bf.clear29 = and i16 %bf.lshr28, 255
  %bf.cast30 = zext i16 %bf.clear29 to i32
  %epxoutcr132 = getelementptr %struct.mv_u3d_vuc_regs, ptr %18, i32 0, i32 28, i32 %bf.cast30, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxoutcr132, i32 %16) #11, !srcloc !323
  br label %if.end52

if.else:                                          ; preds = %mv_u3d_nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  %epxincr1 = getelementptr %struct.mv_u3d_vuc_regs, ptr %13, i32 0, i32 28, i32 %bf.cast22, i32 3
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr1) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %21 = and i32 %20, -318767105
  %22 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vuc_regs, align 4
  %24 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load46 = load i16, ptr %ep_num, align 4
  %bf.lshr47 = lshr i16 %bf.load46, 4
  %bf.clear48 = and i16 %bf.lshr47, 255
  %bf.cast49 = zext i16 %bf.clear48 to i32
  %epxincr151 = getelementptr %struct.mv_u3d_vuc_regs, ptr %23, i32 0, i32 28, i32 %bf.cast49, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr151, i32 %21) #11, !srcloc !323
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then17
  %25 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load53 = load i16, ptr %ep_num, align 4
  %bf.clear54 = and i16 %bf.load53, -16385
  store i16 %bf.clear54, ptr %ep_num, align 4
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv_u3d_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !326

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 96) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %queue = getelementptr inbounds %struct.mv_u3d_req, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.mv_u3d_req, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_u3d_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !324

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %u3d5 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %u3d5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d5, align 4
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %2 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ep_num, align 4
  %3 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not = icmp eq i16 %3, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.do.body27_crit_edge

if.end.do.body27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true:                                    ; preds = %if.end
  %ep0_state = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true.do.body27_crit_edge

land.lhs.true.do.body27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true10:                                  ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %do.body, label %land.lhs.true10.do.body27_crit_edge

land.lhs.true10.do.body27_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

do.body:                                          ; preds = %land.lhs.true10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_queue, %do.end)) #11
          to label %if.then23 [label %do.end], !srcloc !319

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_queue.__UNIQUE_ID_ddebug246, ptr noundef %9, ptr noundef nonnull @.str.68) #11
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %10 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ep0_state, align 8
  br label %cleanup

do.body27:                                        ; preds = %land.lhs.true10.do.body27_crit_edge, %land.lhs.true.do.body27_crit_edge, %if.end.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_queue, %do.end45)) #11
          to label %if.then41 [label %do.end45], !srcloc !319

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev42, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_queue.__UNIQUE_ID_ddebug247, ptr noundef %12, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, ptr noundef %14, ptr noundef nonnull %_req) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body27
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 4
  %tobool47.not = icmp eq ptr %16, null
  br i1 %tobool47.not, label %do.end45.do.end56_crit_edge, label %lor.lhs.false

do.end45.do.end56_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

lor.lhs.false:                                    ; preds = %do.end45
  %17 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_req, align 4
  %tobool49.not = icmp eq ptr %18, null
  br i1 %tobool49.not, label %lor.lhs.false.do.end56_crit_edge, label %lor.lhs.false50

lor.lhs.false.do.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

lor.lhs.false50:                                  ; preds = %lor.lhs.false
  %queue = getelementptr inbounds %struct.mv_u3d_req, ptr %_req, i32 0, i32 2
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %20, %queue
  br i1 %cmp.i.not, label %if.end64, label %lor.lhs.false50.do.end56_crit_edge

lor.lhs.false50.do.end56_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

do.end56:                                         ; preds = %lor.lhs.false50.do.end56_crit_edge, %lor.lhs.false.do.end56_crit_edge, %do.end45.do.end56_crit_edge
  %dev57 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev57, align 4
  %23 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_req, align 4
  %queue62 = getelementptr inbounds %struct.mv_u3d_req, ptr %_req, i32 0, i32 2
  %25 = ptrtoint ptr %queue62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue62, align 4
  %cmp.i228 = icmp eq ptr %26, %queue62
  %conv.i229 = zext i1 %cmp.i228 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.67, ptr noundef nonnull %_req, ptr noundef %16, ptr noundef %24, i32 noundef %conv.i229) #14
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false50
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 4
  %tobool66.not = icmp eq ptr %28, null
  br i1 %tobool66.not, label %do.end78, label %if.end80, !prof !324

do.end78:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %dev79 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67) #14
  br label %cleanup

if.end80:                                         ; preds = %if.end64
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bmAttributes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp83 = icmp eq i8 %32, 1
  br i1 %cmp83, label %if.then85, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then85:                                        ; preds = %if.end80
  %length87 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %33 = ptrtoint ptr %length87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length87, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %35 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load89 = load i56, ptr %maxpacket, align 2
  %bf.lshr90 = lshr i56 %bf.load89, 40
  %bf.cast91 = trunc i56 %bf.lshr90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %bf.cast91)
  %cmp92 = icmp ugt i32 %34, %bf.cast91
  br i1 %cmp92, label %if.then85.cleanup_crit_edge, label %if.then85.if.end96_crit_edge

if.then85.if.end96_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end96:                                         ; preds = %if.then85.if.end96_crit_edge, %if.end80.if.end96_crit_edge
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver, align 8
  %tobool97.not = icmp eq ptr %37, null
  br i1 %tobool97.not, label %if.end96.do.end104_crit_edge, label %lor.lhs.false98

if.end96.do.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

lor.lhs.false98:                                  ; preds = %if.end96
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp99 = icmp eq i32 %39, 0
  br i1 %cmp99, label %lor.lhs.false98.do.end104_crit_edge, label %if.end106

lor.lhs.false98.do.end104_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

do.end104:                                        ; preds = %lor.lhs.false98.do.end104_crit_edge, %if.end96.do.end104_crit_edge
  %dev105 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev105, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.75) #14
  br label %cleanup

if.end106:                                        ; preds = %lor.lhs.false98
  %ep107 = getelementptr inbounds %struct.mv_u3d_req, ptr %_req, i32 0, i32 1
  %42 = ptrtoint ptr %ep107 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %_ep, ptr %ep107, align 4
  %req_lock = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 8
  %call114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #11
  %req_list = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 3
  %43 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %req_list, align 4
  %cmp.i230.not = icmp eq ptr %44, %req_list
  %list = getelementptr inbounds %struct.mv_u3d_req, ptr %_req, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %46, ptr noundef %req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end106.list_add_tail.exit_crit_edge

if.end106.list_add_tail.exit_crit_edge:           ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list, ptr %prev.i, align 4
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mv_u3d_req, ptr %_req, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end106.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call114) #11
  br i1 %cmp.i230.not, label %do.body144, label %do.body124

do.body124:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_queue, %cleanup)) #11
          to label %if.then138 [label %cleanup], !srcloc !319

if.then138:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  %dev139 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev139, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_queue.__UNIQUE_ID_ddebug248, ptr noundef %52, ptr noundef nonnull @.str.77) #11
  br label %cleanup

do.body144:                                       ; preds = %list_add_tail.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_queue, %do.body164)) #11
          to label %if.then158 [label %do.body164], !srcloc !319

if.then158:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  %dev159 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev159, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_queue.__UNIQUE_ID_ddebug249, ptr noundef %54, ptr noundef nonnull @.str.78) #11
  br label %do.body164

do.body164:                                       ; preds = %if.then158, %do.body144
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 2
  %call171 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call fastcc void @mv_u3d_start_queue(ptr noundef nonnull %_ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call171) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body164, %if.then138, %do.body124, %do.end104, %if.then85.cleanup_crit_edge, %do.end78, %do.end56, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end78 ], [ -108, %do.end104 ], [ 0, %do.body164 ], [ -22, %do.end56 ], [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -90, %if.then85.cleanup_crit_edge ], [ 0, %if.then138 ], [ 0, %do.body124 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_dequeue(ptr noundef %_ep, ptr noundef writeonly %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %u3d2 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %u3d2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d2, align 4
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %queue = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %queue, %if.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -60
  %cmp14.not = icmp eq ptr %.pn, %queue
  %cmp17 = icmp eq ptr %req.0, %_req
  %or.cond141 = or i1 %cmp14.not, %cmp17
  br i1 %or.cond141, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp17, label %if.end30, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end30:                                         ; preds = %for.end
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %cmp34 = icmp eq ptr %4, %.pn
  br i1 %cmp34, label %if.then36, label %do.end77

if.then36:                                        ; preds = %if.end30
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -104, ptr %status, align 4
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef nonnull %_ep)
  %6 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn, align 4
  %cmp40.not = icmp eq ptr %7, %queue
  br i1 %cmp40.not, label %if.else, label %do.body43

do.body43:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_dequeue.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_dequeue, %do.end54)) #11
          to label %if.then51 [label %do.end54], !srcloc !319

if.then51:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_dequeue.__UNIQUE_ID_ddebug250, ptr noundef %9, ptr noundef nonnull @.str.92) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body43
  %ep_context55 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 4
  %10 = ptrtoint ptr %ep_context55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep_context55, align 4
  %12 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn, align 4
  %trb_head = getelementptr i8, ptr %13, i32 24
  %14 = ptrtoint ptr %trb_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trb_head, align 4
  %16 = ptrtoint ptr %15 to i32
  %trb_addr_lo = getelementptr inbounds %struct.mv_u3d_ep_context, ptr %11, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %trb_addr_lo, i32 %17) #11, !srcloc !323
  br label %if.end91

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %ep_context62 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 4
  %18 = ptrtoint ptr %ep_context62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_context62, align 4
  %trb_addr_lo63 = getelementptr inbounds %struct.mv_u3d_ep_context, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %trb_addr_lo63 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %trb_addr_lo63, align 4
  %trb_addr_hi = getelementptr inbounds %struct.mv_u3d_ep_context, ptr %19, i32 0, i32 3
  %21 = ptrtoint ptr %trb_addr_hi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %trb_addr_hi, align 4
  br label %if.end91

do.end77:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 897, i32 noundef 9, ptr noundef null) #11
  br label %if.end91

if.end91:                                         ; preds = %do.end77, %if.else, %do.end54
  tail call fastcc void @mv_u3d_done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  %req_list = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 3
  %22 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %req_list, align 4
  %cmp.i = icmp ne ptr %23, %req_list
  %add.ptr99 = getelementptr i8, ptr %23, i32 -68
  %cmp100 = icmp eq ptr %add.ptr99, %_req
  %or.cond143 = and i1 %cmp.i, %cmp100
  br i1 %or.cond143, label %if.then102, label %if.end91.out_crit_edge

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then102:                                       ; preds = %if.end91
  %list = getelementptr i8, ptr %.pn, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then102.list_del_init.exit_crit_edge

if.then102.list_del_init.exit_crit_edge:          ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %.pn, i32 12
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then102.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr i8, ptr %.pn, i32 12
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev.i3.i, align 4
  %processing = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 7
  %32 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %processing, align 4
  br label %out

out:                                              ; preds = %list_del_init.exit, %if.end91.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end91.out_crit_edge ], [ -22, %for.end.out_crit_edge ], [ 0, %list_del_init.exit ]
  %33 = ptrtoint ptr %u3d2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %u3d2, align 4
  %lock106 = getelementptr inbounds %struct.mv_u3d, ptr %34, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock106, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_set_halt(ptr noundef %_ep, i32 noundef %halt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv_u3d_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef %halt, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_ep_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv_u3d_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_start_queue(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  %count.i = alloca i32, align 4
  %is_last.i = alloca i32, align 4
  %dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d1 = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d1, align 4
  %req_list = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %3, %req_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %processing = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %processing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %processing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %3, i32 -68
  %6 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %processing, align 4
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 9
  %7 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ep_num, align 4
  %8 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 21
  %direction = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 5
  %cond.in = select i1 %cmp, ptr %ep0_dir, ptr %direction
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load i32, ptr %cond.in, align 4
  %call7 = tail call i32 @usb_gadget_map_request(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then.break_processing_crit_edge

if.then.break_processing_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_processing

if.end10:                                         ; preds = %if.then
  %status = getelementptr i8, ptr %3, i32 -20
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr i8, ptr %3, i32 -16
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %actual, align 4
  %trb_count = getelementptr i8, ptr %3, i32 20
  %12 = ptrtoint ptr %trb_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %trb_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #11
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %count.i, align 4, !annotation !327
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_last.i) #11
  %14 = ptrtoint ptr %is_last.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %is_last.i, align 4, !annotation !327
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i) #11
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dma.i, align 4, !annotation !327
  %ep.i = getelementptr i8, ptr %3, i32 -12
  %16 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep.i, align 4
  %u3d1.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %u3d1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %u3d1.i, align 4
  %trb_list.i = getelementptr i8, ptr %3, i32 8
  %20 = ptrtoint ptr %trb_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %trb_list.i, ptr %trb_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %3, i32 12
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %trb_list.i, ptr %prev.i.i, align 4
  %length3.i = getelementptr i8, ptr %3, i32 -64
  %22 = ptrtoint ptr %length3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length3.i, align 4
  %24 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual, align 4
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %sub.i)
  %cmp.i1 = icmp ult i32 %sub.i, 65537
  br i1 %cmp.i1, label %do.end10.i.i, label %if.else.i

do.end10.i.i:                                     ; preds = %if.end10
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %count.i, align 4
  %27 = ptrtoint ptr %u3d1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %u3d1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 16) #15
  %tobool12.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.mv_u3d_build_trb_one.exit.i_crit_edge, label %if.end14.i.i

do.end10.i.i.mv_u3d_build_trb_one.exit.i_crit_edge: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_build_trb_one.exit.i

if.end14.i.i:                                     ; preds = %do.end10.i.i
  %trb_pool.i.i = getelementptr inbounds %struct.mv_u3d, ptr %28, i32 0, i32 14
  %30 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trb_pool.i.i, align 4
  %call15.i.i = call ptr @dma_pool_alloc(ptr noundef %31, i32 noundef 2592, ptr noundef nonnull %dma.i) #11
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %if.end21.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %dev.i.i = getelementptr inbounds %struct.mv_u3d, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #14
  br label %mv_u3d_build_trb_one.exit.i

if.end21.i.i:                                     ; preds = %if.end14.i.i
  %34 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma.i, align 4
  %trb_dma.i.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %call7.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %trb_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %trb_dma.i.i, align 4
  %37 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call15.i.i, ptr %call7.i.i.i.i, align 8
  %dma24.i.i = getelementptr i8, ptr %3, i32 -60
  %38 = ptrtoint ptr %dma24.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma24.i.i, align 4
  %40 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual, align 4
  %add.i.i = add i32 %41, %39
  %42 = call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %43 = ptrtoint ptr %call15.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call15.i.i, align 4
  %buf_addr_hi.i.i = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %call15.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %buf_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buf_addr_hi.i.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %sub.i) #11
  %trb_len.i.i = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %call15.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %trb_len.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %trb_len.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %call15.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i.i = load i32, ptr %ctrl.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %ctrl.i.i, align 4
  %48 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep.i, align 4
  %ep_num.i.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %ep_num.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load28.i.i = load i16, ptr %ep_num.i.i, align 4
  %51 = and i16 %bf.load28.i.i, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp30.i.i = icmp eq i16 %51, 0
  %bf.clear38.i.i = and i32 %bf.set.i.i, -4128769
  %storemerge.v.i.i = select i1 %cmp30.i.i, i32 196608, i32 65536
  %storemerge.i.i = or i32 %storemerge.v.i.i, %bf.clear38.i.i
  %52 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge.i.i, ptr %ctrl.i.i, align 4
  %53 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual, align 4
  %add43.i.i = add i32 %54, %sub.i
  store i32 %add43.i.i, ptr %actual, align 4
  %55 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ep.i, align 4
  %ep_num45.i.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %ep_num45.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load46.i.i = load i16, ptr %ep_num45.i.i, align 4
  %58 = and i16 %bf.load46.i.i, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp50.i.i = icmp eq i16 %58, 0
  br i1 %cmp50.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %u3d52.i.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %u3d52.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %u3d52.i.i, align 4
  %ep0_dir.i.i = getelementptr inbounds %struct.mv_u3d, ptr %60, i32 0, i32 21
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %direction54.i.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %56, i32 0, i32 5
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.in.i.i = phi ptr [ %ep0_dir.i.i, %cond.true.i.i ], [ %direction54.i.i, %cond.false.i.i ]
  %61 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i)
  %cmp55.i.i = icmp eq i32 %cond.i.i, 1
  %62 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load58.i.i = load i32, ptr %ctrl.i.i, align 4
  %bf.clear64.i.i = and i32 %bf.load58.i.i, -32769
  %masksel.i.i = select i1 %cmp55.i.i, i32 32768, i32 0
  %storemerge119.i.i = or i32 %bf.clear64.i.i, %masksel.i.i
  store i32 %storemerge119.i.i, ptr %ctrl.i.i, align 4
  %no_interrupt.i.i = getelementptr i8, ptr %3, i32 -44
  %63 = ptrtoint ptr %no_interrupt.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load68.i.i = load i32, ptr %no_interrupt.i.i, align 4
  %64 = and i32 %bf.load68.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool71.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool71.not.i.i, label %if.then72.i.i, label %cond.end.i.i.if.end77.i.i_crit_edge

cond.end.i.i.if.end77.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i.i

if.then72.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set76.i.i = or i32 %storemerge119.i.i, 67108864
  %65 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %bf.set76.i.i, ptr %ctrl.i.i, align 4
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then72.i.i, %cond.end.i.i.if.end77.i.i_crit_edge
  %66 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load79.i.i = load i32, ptr %ctrl.i.i, align 4
  %bf.clear80.i.i = and i32 %bf.load79.i.i, -134217729
  store i32 %bf.clear80.i.i, ptr %ctrl.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  call void @arm_heavy_mb() #11
  br label %mv_u3d_build_trb_one.exit.i

mv_u3d_build_trb_one.exit.i:                      ; preds = %if.end77.i.i, %if.then17.i.i, %do.end10.i.i.mv_u3d_build_trb_one.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.end77.i.i ], [ null, %if.then17.i.i ], [ null, %do.end10.i.i.mv_u3d_build_trb_one.exit.i_crit_edge ]
  %trb_list5.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %retval.0.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %trb_list5.i, ptr noundef %68, ptr noundef %trb_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %mv_u3d_build_trb_one.exit.i.list_add_tail.exit.i_crit_edge

mv_u3d_build_trb_one.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %mv_u3d_build_trb_one.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %mv_u3d_build_trb_one.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %trb_list5.i, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %trb_list5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %trb_list.i, ptr %trb_list5.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %trb_list5.i, ptr %68, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %mv_u3d_build_trb_one.exit.i.list_add_tail.exit.i_crit_edge
  %trb_head.i = getelementptr i8, ptr %3, i32 16
  %73 = ptrtoint ptr %trb_head.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %retval.0.i.i, ptr %trb_head.i, align 4
  %74 = ptrtoint ptr %trb_count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %trb_count, align 4
  br label %if.end16

if.else.i:                                        ; preds = %if.end10
  %div93.i = lshr i32 %sub.i, 16
  %rem.i = and i32 %sub.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nuw nsw i32 %div93.i, %inc.i
  %75 = shl nuw nsw i32 %spec.select.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 2848) #16
  %tobool9.not143.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not143.i, label %if.else.i.do.end_crit_edge, label %if.end7.i.i127.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end7.i.i127.i:                                 ; preds = %if.else.i
  %call8.i.i126.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 2848) #16
  %tobool13.not.i = icmp eq ptr %call8.i.i126.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end7.i.i127.i.do.body.i_crit_edge

if.end7.i.i127.i.do.body.i_crit_edge:             ; preds = %if.end7.i.i127.i
  br label %do.body.i

if.then14.i:                                      ; preds = %if.end7.i.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %do.end

do.body.i:                                        ; preds = %list_add_tail.exit134.i.do.body.i_crit_edge, %if.end7.i.i127.i.do.body.i_crit_edge
  %trb_hw.0.i = phi ptr [ %incdec.ptr26.i, %list_add_tail.exit134.i.do.body.i_crit_edge ], [ %call8.i.i126.i, %if.end7.i.i127.i.do.body.i_crit_edge ]
  %trb.0.i = phi ptr [ %incdec.ptr.i, %list_add_tail.exit134.i.do.body.i_crit_edge ], [ %call8.i.i.i, %if.end7.i.i127.i.do.body.i_crit_edge ]
  %76 = ptrtoint ptr %trb.0.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %trb_hw.0.i, ptr %trb.0.i, align 4
  call fastcc void @mv_u3d_build_trb_chain(ptr noundef %add.ptr, ptr noundef nonnull %count.i, ptr noundef %trb.0.i, ptr noundef nonnull %is_last.i) #11
  %trb_list22.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %trb.0.i, i32 0, i32 2
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %call.i.i131.i = tail call zeroext i1 @__list_add_valid(ptr noundef %trb_list22.i, ptr noundef %78, ptr noundef %trb_list.i) #11
  br i1 %call.i.i131.i, label %if.end.i.i133.i, label %do.body.i.list_add_tail.exit134.i_crit_edge

do.body.i.list_add_tail.exit134.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit134.i

if.end.i.i133.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %trb_list22.i, ptr %prev.i.i, align 4
  %80 = ptrtoint ptr %trb_list22.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %trb_list.i, ptr %trb_list22.i, align 4
  %prev3.i.i132.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %trb.0.i, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %prev3.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i132.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %trb_list22.i, ptr %78, align 4
  br label %list_add_tail.exit134.i

list_add_tail.exit134.i:                          ; preds = %if.end.i.i133.i, %do.body.i.list_add_tail.exit134.i_crit_edge
  %83 = ptrtoint ptr %trb_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %trb_count, align 4
  %inc25.i = add i32 %84, 1
  store i32 %inc25.i, ptr %trb_count, align 4
  %incdec.ptr.i = getelementptr %struct.mv_u3d_trb, ptr %trb.0.i, i32 1
  %incdec.ptr26.i = getelementptr %struct.mv_u3d_trb_hw, ptr %trb_hw.0.i, i32 1
  %85 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %is_last.i, align 4
  %tobool28.not.i = icmp eq i32 %86, 0
  br i1 %tobool28.not.i, label %list_add_tail.exit134.i.do.body.i_crit_edge, label %do.end29.i

list_add_tail.exit134.i.do.body.i_crit_edge:      ; preds = %list_add_tail.exit134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end29.i:                                       ; preds = %list_add_tail.exit134.i
  %87 = ptrtoint ptr %trb_list.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trb_list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %88, i32 -8
  %trb_head31.i = getelementptr i8, ptr %3, i32 16
  %89 = ptrtoint ptr %trb_head31.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i, ptr %trb_head31.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11, i32 1
  %90 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %parent.i, align 8
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %93) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %do.end29.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !326

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %91) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i135.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i135.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %91, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i135.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i136.i = phi ptr [ %97, %if.end.i.i135.i ], [ %95, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.88, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i136.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %91, ptr noundef %93, i32 noundef %75) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %98 = load ptr, ptr @mem_map, align 4
  %99 = ptrtoint ptr %93 to i32
  %sub.i137.i = add i32 %99, 1073741824
  %shr.i.i = lshr i32 %sub.i137.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %98, i32 %shr.i.i
  %and.i.i = and i32 %99, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %91, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %75, i32 noundef 0, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i138.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %100 = ptrtoint ptr %trb_head31.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %trb_head31.i, align 4
  %trb_dma.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %trb_dma.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i138.i, ptr %trb_dma.i, align 4
  %103 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %parent.i, align 8
  %105 = load ptr, ptr %trb_head31.i, align 4
  %trb_dma41.i = getelementptr inbounds %struct.mv_u3d_trb, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %trb_dma41.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %trb_dma41.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %104, i32 noundef %107) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp.i139.not.i = icmp eq i32 %107, -1
  br i1 %cmp.i139.not.i, label %if.then44.i, label %dma_map_single_attrs.exit.i.if.end16_crit_edge

dma_map_single_attrs.exit.i.if.end16_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then44.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %trb_head31.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %trb_head31.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  tail call void @kfree(ptr noundef %111) #11
  %112 = ptrtoint ptr %trb_head31.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %trb_head31.i, align 4
  tail call void @kfree(ptr noundef %113) #11
  br label %do.end

do.end:                                           ; preds = %if.then44.i, %if.then14.i, %if.else.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #14
  br label %break_processing

if.end16:                                         ; preds = %dma_map_single_attrs.exit.i.if.end16_crit_edge, %list_add_tail.exit.i
  %.sink = phi i32 [ 0, %list_add_tail.exit.i ], [ 1, %dma_map_single_attrs.exit.i.if.end16_crit_edge ]
  %chain49.i = getelementptr i8, ptr %3, i32 24
  %116 = ptrtoint ptr %chain49.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %.sink, ptr %chain49.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  %117 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %u3d1, align 4
  %119 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i = load i16, ptr %ep_num, align 4
  %120 = and i16 %bf.load.i, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp.i2 = icmp eq i16 %120, 0
  %ep0_dir.i = getelementptr inbounds %struct.mv_u3d, ptr %118, i32 0, i32 21
  %cond.in.i = select i1 %cmp.i2, ptr %ep0_dir.i, ptr %direction
  %121 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %ep_context11.i = getelementptr inbounds %struct.mv_u3d, ptr %118, i32 0, i32 11
  %122 = ptrtoint ptr %ep_context11.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ep_context11.i, align 8
  %queue.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 2
  %124 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %125, %queue.i
  br i1 %cmp.i.not.i, label %if.else41.i, label %mv_u3d_queue_trb.exit

if.else41.i:                                      ; preds = %if.end16
  %bf.lshr7.i = lshr i16 %bf.load.i, 4
  %bf.clear8.i = and i16 %bf.lshr7.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear8.i)
  %cmp10.i = icmp eq i16 %bf.clear8.i, 0
  %126 = shl nuw nsw i16 %bf.clear8.i, 1
  %mul.i = zext i16 %126 to i32
  %add.i = add i32 %cond.i, %mul.i
  %add.sink.i = select i1 %cmp10.i, i32 1, i32 %add.i
  %arrayidx18.i = getelementptr %struct.mv_u3d_ep_context, ptr %123, i32 %add.sink.i
  %127 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 16777216, ptr %arrayidx18.i, align 4
  %rsvd1.i = getelementptr %struct.mv_u3d_ep_context, ptr %123, i32 %add.sink.i, i32 1
  %128 = ptrtoint ptr %rsvd1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %rsvd1.i, align 4
  %trb_head.i3 = getelementptr i8, ptr %3, i32 16
  %129 = ptrtoint ptr %trb_head.i3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %trb_head.i3, align 4
  %trb_dma.i4 = getelementptr inbounds %struct.mv_u3d_trb, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %trb_dma.i4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %trb_dma.i4, align 4
  %or.i = or i32 %132, 1
  %133 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %trb_addr_lo.i = getelementptr %struct.mv_u3d_ep_context, ptr %123, i32 %add.sink.i, i32 2
  %134 = ptrtoint ptr %trb_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %trb_addr_lo.i, align 4
  %trb_addr_hi.i = getelementptr %struct.mv_u3d_ep_context, ptr %123, i32 %add.sink.i, i32 3
  %135 = ptrtoint ptr %trb_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %trb_addr_hi.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  call void @arm_heavy_mb() #11
  %136 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load46.i = load i16, ptr %ep_num, align 4
  %bf.lshr47.i = lshr i16 %bf.load46.i, 4
  %bf.clear48.i = and i16 %bf.lshr47.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear48.i)
  %cmp50.i = icmp eq i16 %bf.clear48.i, 0
  br i1 %cmp50.i, label %if.else41.i.if.end20_crit_edge, label %if.else52.i

if.else41.i.if.end20_crit_edge:                   ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else52.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = shl nuw nsw i16 %bf.clear48.i, 1
  %mul58.i = zext i16 %137 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp59.i = icmp ne i32 %cond.i, 0
  %cond60.i = zext i1 %cmp59.i to i32
  %add61.i = or i32 %mul58.i, %cond60.i
  br label %if.end20

mv_u3d_queue_trb.exit:                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.mv_u3d, ptr %118, i32 0, i32 4
  %138 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.89) #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 238, i32 noundef 9, ptr noundef null) #11
  br label %break_processing

if.end20:                                         ; preds = %if.else52.i, %if.else41.i.if.end20_crit_edge
  %tmp.0.i = phi i32 [ %add61.i, %if.else52.i ], [ 1, %if.else41.i.if.end20_crit_edge ]
  %op_regs.i = getelementptr inbounds %struct.mv_u3d, ptr %118, i32 0, i32 7
  %140 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %op_regs.i, align 8
  %doorbell.i = getelementptr inbounds %struct.mv_u3d_op_regs, ptr %141, i32 0, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  call void @arm_heavy_mb() #11
  %142 = call i32 @llvm.bswap.i32(i32 %tmp.0.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %doorbell.i, i32 %142) #11, !srcloc !323
  %queue = getelementptr i8, ptr %3, i32 -8
  %prev.i = getelementptr inbounds %struct.mv_u3d_ep, ptr %ep, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i, align 4
  %call.i.i5 = call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %144, ptr noundef %queue.i) #11
  br i1 %call.i.i5, label %if.end.i.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %queue, ptr %prev.i, align 4
  %146 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %queue.i, ptr %queue, align 4
  %prev3.i.i = getelementptr i8, ptr %3, i32 -4
  %147 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev3.i.i, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %queue, ptr %144, align 4
  br label %cleanup

break_processing:                                 ; preds = %mv_u3d_queue_trb.exit, %do.end, %if.then.break_processing_crit_edge
  %149 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %processing, align 4
  br label %cleanup

cleanup:                                          ; preds = %break_processing, %if.end.i.i, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_build_trb_chain(ptr nocapture noundef %req, ptr nocapture noundef %length, ptr nocapture noundef %trb, ptr nocapture noundef %is_last) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %length2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length2, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65536)
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %length, align 4
  %ep = getelementptr inbounds %struct.mv_u3d_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 4
  %u3d4 = getelementptr inbounds %struct.mv_u3d_ep, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %u3d4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %u3d4, align 4
  %trb_dma = getelementptr inbounds %struct.mv_u3d_trb, ptr %trb, i32 0, i32 1
  %10 = ptrtoint ptr %trb_dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %trb_dma, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  %add = add i32 %14, %12
  %15 = tail call i32 @llvm.bswap.i32(i32 %add)
  %16 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trb, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 4
  %19 = load ptr, ptr %trb, align 4
  %buf_addr_hi = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %buf_addr_hi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buf_addr_hi, align 4
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trb, align 4
  %trb_len = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %trb_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %trb_len, align 4
  %27 = load ptr, ptr %trb, align 4
  %ctrl = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %ctrl, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %ctrl, align 4
  %29 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep, align 4
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load12 = load i16, ptr %ep_num, align 4
  %32 = and i16 %bf.load12, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp14 = icmp eq i16 %32, 0
  %33 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trb, align 4
  %ctrl16 = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ctrl16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load17 = load i32, ptr %ctrl16, align 4
  %bf.clear18 = and i32 %bf.load17, -4128769
  %. = select i1 %cmp14, i32 196608, i32 65536
  %bf.set24 = or i32 %bf.clear18, %.
  store i32 %bf.set24, ptr %ctrl16, align 4
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  %38 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual, align 4
  %add27 = add i32 %39, %37
  store i32 %add27, ptr %actual, align 4
  %40 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep, align 4
  %ep_num29 = getelementptr inbounds %struct.mv_u3d_ep, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %ep_num29 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load30 = load i16, ptr %ep_num29, align 4
  %43 = and i16 %bf.load30, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp34 = icmp eq i16 %43, 0
  br i1 %cmp34, label %cond.true35, label %cond.false38

cond.true35:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %u3d37 = getelementptr inbounds %struct.mv_u3d_ep, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %u3d37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %u3d37, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %45, i32 0, i32 21
  br label %cond.end41

cond.false38:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %direction40 = getelementptr inbounds %struct.mv_u3d_ep, ptr %41, i32 0, i32 5
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false38, %cond.true35
  %cond42.in = phi ptr [ %ep0_dir, %cond.true35 ], [ %direction40, %cond.false38 ]
  %46 = ptrtoint ptr %cond42.in to i32
  call void @__asan_load4_noabort(i32 %46)
  %cond42 = load i32, ptr %cond42.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond42)
  %cmp43 = icmp eq i32 %cond42, 1
  %47 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trb, align 4
  %ctrl46 = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %ctrl46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load47 = load i32, ptr %ctrl46, align 4
  %bf.clear54 = and i32 %bf.load47, -32769
  %masksel = select i1 %cmp43, i32 32768, i32 0
  %bf.clear54.sink = or i32 %bf.clear54, %masksel
  store i32 %bf.clear54.sink, ptr %ctrl46, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %50 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load58 = load i32, ptr %zero, align 4
  %51 = and i32 %bf.load58, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  br i1 %tobool.not, label %if.else72, label %if.then61

if.then61:                                        ; preds = %cond.end41
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp62 = icmp eq i32 %53, 0
  br i1 %cmp62, label %if.then61.land.lhs.true_crit_edge, label %lor.lhs.false

if.then61.land.lhs.true_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then61
  %54 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %56, i32 7)
  %bf.load65 = load i56, ptr %maxpacket, align 2
  %bf.lshr66 = lshr i56 %bf.load65, 40
  %bf.cast67 = trunc i56 %bf.lshr66 to i32
  %rem = urem i32 %53, %bf.cast67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp68.not = icmp eq i32 %rem, 0
  br i1 %cmp68.not, label %lor.lhs.false.if.else102.sink.split_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false.if.else102.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else102.sink.split

if.else72:                                        ; preds = %cond.end41
  %57 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length2, align 4
  %59 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp77 = icmp eq i32 %58, %60
  br i1 %cmp77, label %if.else72.land.lhs.true_crit_edge, label %if.else72.if.else102.sink.split_crit_edge

if.else72.if.else102.sink.split_crit_edge:        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else102.sink.split

if.else72.land.lhs.true_crit_edge:                ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else72.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge, %if.then61.land.lhs.true_crit_edge
  %61 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %is_last, align 4
  %62 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load84 = load i32, ptr %zero, align 4
  %63 = and i32 %bf.load84, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool87.not = icmp eq i32 %63, 0
  br i1 %tobool87.not, label %if.end94, label %land.lhs.true.if.then96_crit_edge

land.lhs.true.if.then96_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then96

if.end94:                                         ; preds = %land.lhs.true
  %64 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trb, align 4
  %ctrl90 = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ctrl90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load91 = load i32, ptr %ctrl90, align 4
  %bf.set93 = or i32 %bf.load91, 67108864
  store i32 %bf.set93, ptr %ctrl90, align 4
  %67 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr.pr = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool95.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool95.not, label %if.end94.if.else102_crit_edge, label %if.end94.if.then96_crit_edge

if.end94.if.then96_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then96

if.end94.if.else102_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else102

if.then96:                                        ; preds = %if.end94.if.then96_crit_edge, %land.lhs.true.if.then96_crit_edge
  %68 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %trb, align 4
  %ctrl98 = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ctrl98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load99 = load i32, ptr %ctrl98, align 4
  %bf.clear100 = and i32 %bf.load99, -134217729
  store i32 %bf.clear100, ptr %ctrl98, align 4
  br label %do.body116

if.else102.sink.split:                            ; preds = %if.else72.if.else102.sink.split_crit_edge, %lor.lhs.false.if.else102.sink.split_crit_edge
  %71 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %is_last, align 4
  br label %if.else102

if.else102:                                       ; preds = %if.else102.sink.split, %if.end94.if.else102_crit_edge
  %72 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %trb, align 4
  %ctrl104 = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ctrl104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load105 = load i32, ptr %ctrl104, align 4
  %bf.set107 = or i32 %bf.load105, 134217728
  store i32 %bf.set107, ptr %ctrl104, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_build_trb_chain.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_build_trb_chain, %do.body116)) #11
          to label %if.then113 [label %do.body116], !srcloc !319

if.then113:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %9, i32 0, i32 4
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_build_trb_chain.__UNIQUE_ID_ddebug239, ptr noundef %76, ptr noundef nonnull @.str.86) #11
  br label %do.body116

do.body116:                                       ; preds = %if.then113, %if.else102, %if.then96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @arm_heavy_mb() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_u3d_ep_set_halt_wedge(ptr noundef %_ep, i32 noundef %halt, i32 noundef %wedge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d1 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d1, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool8.not = icmp eq i32 %halt, 0
  br i1 %tobool8.not, label %if.end7.do.body18_crit_edge, label %land.lhs.true

if.end7.do.body18_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

land.lhs.true:                                    ; preds = %if.end7
  %ep_num = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ep_num, align 4
  %7 = and i16 %bf.load, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp9 = icmp eq i16 %7, 0
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 21
  %direction = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 5
  %cond.in = select i1 %cmp9, ptr %ep0_dir, ptr %direction
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp12 = icmp eq i32 %cond, 1
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.do.body18_crit_edge

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

land.lhs.true14:                                  ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 2
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %10, %queue
  br i1 %cmp.i.not, label %land.lhs.true14.do.body18_crit_edge, label %land.lhs.true14.out_crit_edge

land.lhs.true14.out_crit_edge:                    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true14.do.body18_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body18:                                        ; preds = %land.lhs.true14.do.body18_crit_edge, %land.lhs.true.do.body18_crit_edge, %if.end7.do.body18_crit_edge
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 2
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ep_num27 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 9
  %11 = ptrtoint ptr %ep_num27 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load28 = load i16, ptr %ep_num27, align 4
  %12 = and i16 %bf.load28, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp38 = icmp eq i16 %12, 0
  br i1 %cmp38, label %cond.true40, label %cond.false43

cond.true40:                                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %u3d1, align 4
  %ep0_dir42 = getelementptr inbounds %struct.mv_u3d, ptr %14, i32 0, i32 21
  br label %cond.end45

cond.false43:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %direction44 = getelementptr inbounds %struct.mv_u3d_ep, ptr %_ep, i32 0, i32 5
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %cond.true40
  %cond46.in = phi ptr [ %ep0_dir42, %cond.true40 ], [ %direction44, %cond.false43 ]
  %15 = ptrtoint ptr %cond46.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond46 = load i32, ptr %cond46.in, align 4
  %conv47 = trunc i32 %cond46 to i8
  tail call fastcc void @mv_u3d_ep_set_stall(ptr noundef %1, i8 noundef zeroext %conv47, i32 noundef %halt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool50.not = icmp eq i32 %wedge, 0
  %or.cond = or i1 %tobool8.not, %tobool50.not
  br i1 %or.cond, label %if.else, label %if.then51

if.then51:                                        ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %ep_num27 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load53 = load i16, ptr %ep_num27, align 4
  %bf.set = or i16 %bf.load53, -32768
  br label %if.end62.sink.split

if.else:                                          ; preds = %cond.end45
  br i1 %tobool8.not, label %if.then56, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ep_num27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load58 = load i16, ptr %ep_num27, align 4
  %bf.clear59 = and i16 %bf.load58, 32767
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then56, %if.then51
  %bf.clear59.sink = phi i16 [ %bf.clear59, %if.then56 ], [ %bf.set, %if.then51 ]
  %18 = ptrtoint ptr %ep_num27 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.clear59.sink, ptr %ep_num27, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else.if.end62_crit_edge
  %19 = ptrtoint ptr %u3d1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u3d1, align 4
  %lock64 = getelementptr inbounds %struct.mv_u3d, ptr %20, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock64, i32 noundef %call24) #11
  %21 = ptrtoint ptr %ep_num27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load66 = load i16, ptr %ep_num27, align 4
  %22 = and i16 %bf.load66, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp70 = icmp eq i16 %22, 0
  br i1 %cmp70, label %if.then72, label %if.end62.out_crit_edge

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %ep0_dir73 = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %ep0_dir73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ep0_dir73, align 4
  br label %out

out:                                              ; preds = %if.then72, %if.end62.out_crit_edge, %land.lhs.true14.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ 0, %if.then72 ], [ 0, %if.end62.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -95, %if.end.out_crit_edge ], [ -11, %land.lhs.true14.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_ep_set_stall(ptr nocapture noundef readonly %u3d, i8 noundef zeroext %direction, i32 noundef %stall) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 15
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep_set_stall.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep_set_stall, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep_set_stall.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direction)
  %cmp = icmp eq i8 %direction, 0
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %4 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vuc_regs, align 4
  %ep_num7 = getelementptr inbounds %struct.mv_u3d_ep, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ep_num7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ep_num7, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 255
  %bf.cast = zext i16 %bf.clear to i32
  br i1 %cmp, label %if.then6, label %if.else21

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.mv_u3d_vuc_regs, ptr %5, i32 0, i32 28, i32 %bf.cast
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stall)
  %tobool9.not = icmp eq i32 %stall, 0
  %8 = and i32 %7, -33554433
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %masksel2 = select i1 %tobool9.not, i32 0, i32 2
  %tmp.0 = or i32 %9, %masksel2
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %12 = ptrtoint ptr %ep_num7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load15 = load i16, ptr %ep_num7, align 4
  %bf.lshr16 = lshr i16 %bf.load15, 4
  %bf.clear17 = and i16 %bf.lshr16, 255
  %bf.cast18 = zext i16 %bf.clear17 to i32
  %arrayidx19 = getelementptr %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 28, i32 %bf.cast18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19, i32 %13) #11, !srcloc !323
  br label %if.end46

if.else21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %epxincr0 = getelementptr %struct.mv_u3d_vuc_regs, ptr %5, i32 0, i32 28, i32 %bf.cast, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stall)
  %tobool31.not = icmp eq i32 %stall, 0
  %15 = and i32 %14, -33554433
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %masksel = select i1 %tobool31.not, i32 0, i32 2
  %tmp.1 = or i32 %16, %masksel
  %17 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vuc_regs, align 4
  %19 = ptrtoint ptr %ep_num7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load40 = load i16, ptr %ep_num7, align 4
  %bf.lshr41 = lshr i16 %bf.load40, 4
  %bf.clear42 = and i16 %bf.lshr41, 255
  %bf.cast43 = zext i16 %bf.clear42 to i32
  %epxincr045 = getelementptr %struct.mv_u3d_vuc_regs, ptr %18, i32 0, i32 28, i32 %bf.cast43, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr045, i32 %20) #11, !srcloc !323
  br label %if.end46

if.end46:                                         ; preds = %if.else21, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_irq_process_link_change(ptr noundef %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %0 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vuc_regs, align 4
  %linkchange1 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %linkchange1) #11, !srcloc !320
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %4 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vuc_regs, align 4
  %linkchange3 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %linkchange3, i32 %2) #11, !srcloc !323
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug258, ptr noundef %7, ptr noundef nonnull @.str.109, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end.if.end31_crit_edge, label %do.body10

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.body10:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end30)) #11
          to label %if.then24 [label %do.end30], !srcloc !319

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %8 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev25, align 4
  %10 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vuc_regs, align 4
  %ltssmstate = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %11, i32 0, i32 21
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ltssmstate) #11, !srcloc !320
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug259, ptr noundef %9, ptr noundef nonnull @.str.110, i32 noundef %13) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body10
  %usb_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %14 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %usb_state, align 4
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 21
  %15 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ep0_dir, align 4
  %ep0_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 20
  %16 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ep0_state, align 8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %u3d, i32 0, i32 5
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %speed, align 8
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.end.if.end31_crit_edge
  %and32 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end56_crit_edge, label %do.body35

if.end31.if.end56_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.body35:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end53)) #11
          to label %if.then49 [label %do.end53], !srcloc !319

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %dev50 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %18 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug260, ptr noundef %19, ptr noundef nonnull @.str.111) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body35
  %usb_state54 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %20 = ptrtoint ptr %usb_state54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_state54, align 4
  %resume_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 18
  %22 = ptrtoint ptr %resume_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %resume_state, align 8
  store i32 8, ptr %usb_state54, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.end31.if.end56_crit_edge
  %and57 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end82_crit_edge, label %do.body60

if.end56.if.end82_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.body60:                                        ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end78)) #11
          to label %if.then74 [label %do.end78], !srcloc !319

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %dev75 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %23 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug261, ptr noundef %24, ptr noundef nonnull @.str.112) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body60
  %resume_state79 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 18
  %25 = ptrtoint ptr %resume_state79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resume_state79, align 8
  %usb_state80 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %27 = ptrtoint ptr %usb_state80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %usb_state80, align 4
  store i32 0, ptr %resume_state79, align 8
  br label %if.end82

if.end82:                                         ; preds = %do.end78, %if.end56.if.end82_crit_edge
  %and83 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end106_crit_edge, label %do.body86

if.end82.if.end106_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

do.body86:                                        ; preds = %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end104)) #11
          to label %if.then100 [label %do.end104], !srcloc !319

if.then100:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %dev101 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %28 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug262, ptr noundef %29, ptr noundef nonnull @.str.113) #11
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body86
  %usb_state105 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %30 = ptrtoint ptr %usb_state105 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %usb_state105, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end104, %if.end82.if.end106_crit_edge
  %and107 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end130_crit_edge, label %do.body110

if.end106.if.end130_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.body110:                                       ; preds = %if.end106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end128)) #11
          to label %if.then124 [label %do.end128], !srcloc !319

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  %dev125 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %31 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev125, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug263, ptr noundef %32, ptr noundef nonnull @.str.114) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body110
  %usb_state129 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %33 = ptrtoint ptr %usb_state129 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %usb_state129, align 4
  br label %if.end130

if.end130:                                        ; preds = %do.end128, %if.end106.if.end130_crit_edge
  %and131 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end153_crit_edge, label %do.body134

if.end130.if.end153_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

do.body134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %if.end153)) #11
          to label %if.then148 [label %if.end153], !srcloc !319

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  %dev149 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %34 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev149, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug264, ptr noundef %35, ptr noundef nonnull @.str.115) #11
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %do.body134, %if.end130.if.end153_crit_edge
  %and154 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end153.if.end176_crit_edge, label %do.body157

if.end153.if.end176_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

do.body157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %if.end176)) #11
          to label %if.then171 [label %if.end176], !srcloc !319

if.then171:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  %dev172 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %36 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev172, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug265, ptr noundef %37, ptr noundef nonnull @.str.116) #11
  br label %if.end176

if.end176:                                        ; preds = %if.then171, %do.body157, %if.end153.if.end176_crit_edge
  %and177 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end176.if.end206_crit_edge, label %do.body180

if.end176.if.end206_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

do.body180:                                       ; preds = %if.end176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_link_change, %do.end198)) #11
          to label %if.then194 [label %do.end198], !srcloc !319

if.then194:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #13
  %dev195 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %38 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev195, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug266, ptr noundef %39, ptr noundef nonnull @.str.117) #11
  br label %do.end198

do.end198:                                        ; preds = %if.then194, %do.body180
  %usb_state199 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %40 = ptrtoint ptr %usb_state199 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %usb_state199, align 4
  %vbus_valid_detect = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 24
  %41 = ptrtoint ptr %vbus_valid_detect to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %vbus_valid_detect, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %vbus_valid_detect, align 8
  %vbus = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 25
  %42 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vbus, align 4
  %tobool200.not = icmp eq ptr %43, null
  br i1 %tobool200.not, label %if.then201, label %do.end198.if.end206_crit_edge

do.end198.if.end206_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

if.then201:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %call203 = tail call i32 @mv_u3d_vbus_session(ptr noundef %u3d, i32 noundef 0)
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %do.end198.if.end206_crit_edge, %if.end176.if.end206_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_irq_process_tr_complete(ptr nocapture noundef readonly %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %0 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vuc_regs, align 4
  %endcomplete = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %endcomplete) #11, !srcloc !320
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_tr_complete, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug270, ptr noundef %5, ptr noundef nonnull @.str.119, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vuc_regs, align 4
  %endcomplete10 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %endcomplete10, i32 %2) #11, !srcloc !323
  %max_eps = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 10
  %8 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_eps, align 4
  %mul164.mask = and i32 %9, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul164.mask)
  %cmp165.not = icmp eq i32 %mul164.mask, 0
  br i1 %cmp165.not, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %eps17 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 15
  %dev35 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc97.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc97.for.body_crit_edge ]
  %shr = ashr i32 %i.0166, 1
  %i.0166.frozen = freeze i32 %i.0166
  %div.i = sdiv i32 %i.0166.frozen, 2
  %10 = mul i32 %div.i, 2
  %rem.decomposed = sub i32 %i.0166.frozen, %10
  %mul11 = shl nsw i32 %rem.decomposed, 4
  %add = add nsw i32 %mul11, %shr
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.body.for.inc97_crit_edge, label %if.end14

for.body.for.inc97_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc97

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0166)
  %cmp15 = icmp eq i32 %i.0166, 0
  %11 = ptrtoint ptr %eps17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eps17, align 8
  %.i.0166 = select i1 %cmp15, i32 1, i32 %i.0166
  %arrayidx = getelementptr %struct.mv_u3d_ep, ptr %12, i32 %.i.0166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_tr_complete, %do.end38)) #11
          to label %if.then34 [label %do.end38], !srcloc !319

if.then34:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug271, ptr noundef %14, ptr noundef nonnull @.str.120) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %if.end14
  %req_lock = getelementptr %struct.mv_u3d_ep, ptr %12, i32 %.i.0166, i32 8
  tail call void @_raw_spin_lock(ptr noundef %req_lock) #11
  %req_list = getelementptr %struct.mv_u3d_ep, ptr %12, i32 %.i.0166, i32 3
  %15 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %16, %req_list
  br i1 %cmp.i.not, label %do.end38.if.end44_crit_edge, label %if.then41

do.end38.if.end44_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %do.end38
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_del_init.exit_crit_edge

if.then41.list_del_init.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then41.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %prev.i3.i, align 4
  %processing = getelementptr %struct.mv_u3d_ep, ptr %12, i32 %.i.0166, i32 7
  %25 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %processing, align 4
  br label %if.end44

if.end44:                                         ; preds = %list_del_init.exit, %do.end38.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #11
  %queue = getelementptr %struct.mv_u3d_ep, ptr %12, i32 %.i.0166, i32 2
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue, align 4
  %cmp58.not160 = icmp eq ptr %27, %queue
  br i1 %cmp58.not160, label %if.end44.do.body77_crit_edge, label %for.body61.lr.ph

if.end44.do.body77_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

for.body61.lr.ph:                                 ; preds = %if.end44
  %28 = and i32 %i.0166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i149 = icmp eq i32 %28, 0
  %cond.i = select i1 %cmp.i149, ptr @.str.128, ptr @.str.127
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0166)
  %cmp68 = icmp ult i32 %i.0166, 2
  br label %for.body61

for.body61:                                       ; preds = %if.end65.for.body61_crit_edge, %for.body61.lr.ph
  %.pn.in161 = phi ptr [ %27, %for.body61.lr.ph ], [ %.pn163, %if.end65.for.body61_crit_edge ]
  %curr_req.0162 = getelementptr i8, ptr %.pn.in161, i32 -60
  %29 = ptrtoint ptr %.pn.in161 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn163 = load ptr, ptr %.pn.in161, align 4
  %length2.i = getelementptr i8, ptr %.pn.in161, i32 -56
  %30 = ptrtoint ptr %length2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length2.i, align 4
  %trb_list.i = getelementptr i8, ptr %.pn.in161, i32 16
  %32 = ptrtoint ptr %trb_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %trb_list.i, align 4
  %cmp.i.not66.i = icmp eq ptr %33, %trb_list.i
  br i1 %cmp.i.not66.i, label %for.body61.if.end65_crit_edge, label %for.body61.while.body.i_crit_edge

for.body61.while.body.i_crit_edge:                ; preds = %for.body61
  br label %while.body.i

for.body61.if.end65_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %for.body61.while.body.i_crit_edge
  %34 = phi ptr [ %61, %list_del_init.exit.i.while.body.i_crit_edge ], [ %33, %for.body61.while.body.i_crit_edge ]
  %retval1.071.i = phi i32 [ %retval1.1.i, %list_del_init.exit.i.while.body.i_crit_edge ], [ 0, %for.body61.while.body.i_crit_edge ]
  %remaining_length.069.i = phi i32 [ %remaining_length.1.i, %list_del_init.exit.i.while.body.i_crit_edge ], [ 0, %for.body61.while.body.i_crit_edge ]
  %actual.067.i = phi i32 [ %actual.1.i, %list_del_init.exit.i.while.body.i_crit_edge ], [ %31, %for.body61.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %34, i32 -8
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %ctrl.i = getelementptr inbounds %struct.mv_u3d_trb_hw, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i = load i32, ptr %ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool5.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool5.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev35, align 4
  %40 = ptrtoint ptr %eps17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eps17, align 8
  %name.i = getelementptr %struct.mv_u3d_ep, ptr %41, i32 %i.0166, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.122, ptr noundef %name.i) #14
  br label %do.body77

if.end.i:                                         ; preds = %while.body.i
  %bf.clear.i = and i32 %bf.load.i, 2147483647
  %42 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bf.clear.i, ptr %ctrl.i, align 4
  %43 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vuc_regs, align 4
  br i1 %cmp.i149, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %statuslo.i = getelementptr %struct.mv_u3d_vuc_regs, ptr %44, i32 0, i32 13, i32 %div.i, i32 2
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %statuslo.i) #11, !srcloc !320
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %statuslo14.i = getelementptr %struct.mv_u3d_vuc_regs, ptr %44, i32 0, i32 12, i32 %div.i, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %statuslo14.i) #11, !srcloc !320
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then9.i
  %tmp.0.i = phi i32 [ %46, %if.then9.i ], [ %48, %if.else.i ]
  %shr.i = lshr i32 %tmp.0.i, 24
  %and.i = and i32 %tmp.0.i, 16777215
  %trunc.i = trunc i32 %shr.i to i8
  %49 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %trunc.i, label %if.end16.i.do.end24.i_crit_edge [
    i8 1, label %if.end16.i.if.then20.i_crit_edge
    i8 3, label %land.lhs.true.i
  ]

if.end16.i.if.then20.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end16.i.do.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  br i1 %cmp.i149, label %land.lhs.true.i.if.then20.i_crit_edge, label %land.lhs.true.i.do.end24.i_crit_edge

land.lhs.true.i.do.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

land.lhs.true.i.if.then20.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.then20.i:                                      ; preds = %land.lhs.true.i.if.then20.i_crit_edge, %if.end16.i.if.then20.i_crit_edge
  %add.i = add i32 %and.i, %remaining_length.069.i
  %sub.i = sub i32 %actual.067.i, %add.i
  br label %if.end28.i

do.end24.i:                                       ; preds = %land.lhs.true.i.do.end24.i_crit_edge, %if.end16.i.do.end24.i_crit_edge
  %50 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.125, i32 noundef %shr, ptr noundef nonnull %cond.i, i32 noundef %shr.i) #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end24.i, %if.then20.i
  %actual.1.i = phi i32 [ %sub.i, %if.then20.i ], [ %actual.067.i, %do.end24.i ]
  %remaining_length.1.i = phi i32 [ %add.i, %if.then20.i ], [ %remaining_length.069.i, %do.end24.i ]
  %retval1.1.i = phi i32 [ %retval1.071.i, %if.then20.i ], [ -71, %do.end24.i ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end28.i.list_del_init.exit.i_crit_edge

if.end28.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %34, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end28.i.list_del_init.exit.i_crit_edge
  %58 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %34, ptr %34, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %34, ptr %prev.i3.i.i, align 4
  %60 = ptrtoint ptr %trb_list.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %trb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %61, %trb_list.i
  br i1 %cmp.i.not.i, label %while.end.i, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.i)
  %tobool30.not.i = icmp eq i32 %retval1.1.i, 0
  br i1 %tobool30.not.i, label %while.end.i.if.end65_crit_edge, label %while.end.i.do.body77_crit_edge

while.end.i.do.body77_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

while.end.i.if.end65_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.end65:                                         ; preds = %while.end.i.if.end65_crit_edge, %for.body61.if.end65_crit_edge
  %actual.0.lcssa76.i = phi i32 [ %actual.1.i, %while.end.i.if.end65_crit_edge ], [ %31, %for.body61.if.end65_crit_edge ]
  %actual34.i = getelementptr i8, ptr %.pn.in161, i32 -8
  %62 = ptrtoint ptr %actual34.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %actual.0.lcssa76.i, ptr %actual34.i, align 4
  %status67 = getelementptr i8, ptr %.pn.in161, i32 -12
  %63 = ptrtoint ptr %status67 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %status67, align 4
  tail call fastcc void @mv_u3d_done(ptr noundef %arrayidx, ptr noundef %curr_req.0162, i32 noundef 0)
  %cmp58.not = icmp eq ptr %.pn163, %queue
  %or.cond = select i1 %cmp68, i1 true, i1 %cmp58.not
  br i1 %or.cond, label %if.end65.do.body77_crit_edge, label %if.end65.for.body61_crit_edge

if.end65.for.body61_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

if.end65.do.body77_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

do.body77:                                        ; preds = %if.end65.do.body77_crit_edge, %while.end.i.do.body77_crit_edge, %do.end.i, %if.end44.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_irq_process_tr_complete, %do.end95)) #11
          to label %if.then91 [label %do.end95], !srcloc !319

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug272, ptr noundef %65, ptr noundef nonnull @.str.121) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body77
  tail call fastcc void @mv_u3d_start_queue(ptr noundef %arrayidx)
  br label %for.inc97

for.inc97:                                        ; preds = %do.end95, %for.body.for.inc97_crit_edge
  %inc = add nuw i32 %i.0166, 1
  %66 = ptrtoint ptr %max_eps to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_eps, align 4
  %mul = shl i32 %67, 1
  %cmp = icmp ult i32 %inc, %mul
  br i1 %cmp, label %for.inc97.for.body_crit_edge, label %for.inc97.cleanup_crit_edge

for.inc97.cleanup_crit_edge:                      ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc97.for.body_crit_edge:                     ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc97.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_handle_setup_packet(ptr noundef %u3d, i8 noundef zeroext %ep_num, ptr nocapture noundef readonly %setup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 15
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 8
  %conv = zext i8 %ep_num to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = or i32 %mul, 1
  %arrayidx = getelementptr %struct.mv_u3d_ep, ptr %1, i32 %add
  tail call void @mv_u3d_ep_fifo_flush(ptr noundef %arrayidx) #11
  %queue.i = getelementptr %struct.mv_u3d_ep, ptr %1, i32 %add, i32 2
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not1.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not1.i, label %entry.mv_u3d_nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.mv_u3d_nuke.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -60
  tail call fastcc void @mv_u3d_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #11
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.mv_u3d_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.mv_u3d_nuke.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_u3d_nuke.exit

mv_u3d_nuke.exit:                                 ; preds = %while.body.i.mv_u3d_nuke.exit_crit_edge, %entry.mv_u3d_nuke.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_handle_setup_packet, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %mv_u3d_nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %setup, align 1
  %conv4 = zext i8 %10 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %11 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bRequest, align 1
  %conv5 = zext i8 %12 to i32
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %13 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wValue, align 1
  %conv6 = zext i16 %14 to i32
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %15 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wIndex, align 1
  %conv7 = zext i16 %16 to i32
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %17 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wLength, align 1
  %conv8 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug268, ptr noundef %8, ptr noundef nonnull @.str.130, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %mv_u3d_nuke.exit
  %19 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %setup, align 1
  %21 = and i8 %20, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  br i1 %cmp, label %if.then12, label %do.end.if.then20_crit_edge

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then12:                                        ; preds = %do.end
  %bRequest13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %22 = ptrtoint ptr %bRequest13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bRequest13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %23)
  %cond = icmp eq i8 %23, 5
  br i1 %cond, label %sw.bb15, label %if.then12.if.then20_crit_edge

if.then12.if.then20_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

sw.bb15:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_ch9setaddress(ptr noundef %u3d, ptr noundef %setup)
  br label %if.end76

if.then20:                                        ; preds = %if.then12.if.then20_crit_edge, %do.end.if.then20_crit_edge
  %wLength21 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %24 = ptrtoint ptr %wLength21 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wLength21, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool22.not = icmp eq i16 %25, 0
  br i1 %tobool22.not, label %if.else39, label %if.then23

if.then23:                                        ; preds = %if.then20
  %.lobit = lshr i8 %20, 7
  %26 = zext i8 %.lobit to i32
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 21
  %27 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ep0_dir, align 4
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 1
  %28 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver, align 8
  %setup28 = getelementptr inbounds %struct.usb_gadget_driver, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %setup28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setup28, align 4
  %local_setup_buff = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 17
  %call29 = tail call i32 %31(ptr noundef %u3d, ptr noundef %local_setup_buff) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end35, label %if.then23.if.end52_crit_edge

if.then23.if.end52_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end35:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %dev36 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %32 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.131) #14
  br label %if.end52.sink.split

if.else39:                                        ; preds = %if.then20
  %ep0_dir40 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 21
  %34 = ptrtoint ptr %ep0_dir40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %ep0_dir40, align 4
  %ep0_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 20
  %35 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %ep0_state, align 8
  %lock41 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock41) #11
  %driver42 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 1
  %36 = ptrtoint ptr %driver42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver42, align 8
  %setup43 = getelementptr inbounds %struct.usb_gadget_driver, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %setup43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setup43, align 4
  %local_setup_buff45 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 17
  %call46 = tail call i32 %39(ptr noundef %u3d, ptr noundef %local_setup_buff45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.else39.if.end52.sink.split_crit_edge, label %if.else39.if.end52_crit_edge

if.else39.if.end52_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.else39.if.end52.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.else39.if.end52.sink.split_crit_edge, %do.end35
  %lock41.sink.ph = phi ptr [ %lock, %do.end35 ], [ %lock41, %if.else39.if.end52.sink.split_crit_edge ]
  tail call fastcc void @mv_u3d_ep0_stall(ptr noundef %u3d)
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else39.if.end52_crit_edge, %if.then23.if.end52_crit_edge
  %lock41.sink = phi ptr [ %lock, %if.then23.if.end52_crit_edge ], [ %lock41, %if.else39.if.end52_crit_edge ], [ %lock41.sink.ph, %if.end52.sink.split ]
  tail call void @_raw_spin_lock(ptr noundef %lock41.sink) #11
  %40 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %setup, align 1
  %42 = and i8 %41, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i = icmp eq i8 %42, 0
  br i1 %cmp.i, label %if.then.i, label %if.end52.if.end76_crit_edge

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then.i:                                        ; preds = %if.end52
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %43 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bRequest.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %44)
  %cmp3.i = icmp eq i8 %44, 9
  br i1 %cmp3.i, label %do.body56, label %if.then.i.if.end76_crit_edge

if.then.i.if.end76_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.body56:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_handle_setup_packet, %do.end74)) #11
          to label %if.then70 [label %do.end74], !srcloc !319

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %dev71 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %45 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug269, ptr noundef %46, ptr noundef nonnull @.str.132) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %do.body56
  %usb_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %47 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %usb_state, align 4
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %if.then.i.if.end76_crit_edge, %if.end52.if.end76_crit_edge, %sw.bb15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_ch9setaddress(ptr nocapture noundef %u3d, ptr nocapture noundef readonly %setup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 19
  %0 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.not = icmp eq i32 %1, 5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef %1) #14
  br label %err

if.end:                                           ; preds = %entry
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %4 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wValue, align 1
  %6 = and i16 %5, 255
  %conv2 = zext i16 %6 to i32
  %dev_addr = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 22
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %dev_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ch9setaddress.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ch9setaddress, %do.end13)) #11
          to label %if.then8 [label %do.end13], !srcloc !319

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_addr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ch9setaddress.__UNIQUE_ID_ddebug267, ptr noundef %9, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.134, i32 noundef %11) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %if.end
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %13)
  %cmp15 = icmp ugt i32 %13, 127
  br i1 %cmp15, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %14 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.134) #14
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dev_addr, align 8
  br label %err

if.end23:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %usb_state, align 4
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %18 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vuc_regs, align 4
  %devaddrtiebrkr = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %19, i32 0, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %devaddrtiebrkr) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %21 = and i32 %20, -2130706433
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_addr, align 8
  %or = or i32 %22, %24
  %25 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vuc_regs, align 4
  %devaddrtiebrkr28 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %26, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %devaddrtiebrkr28, i32 %27) #11, !srcloc !323
  br label %cleanup

err:                                              ; preds = %do.end20, %do.end
  tail call fastcc void @mv_u3d_ep0_stall(ptr noundef %u3d)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_u3d_ep0_stall(ptr nocapture noundef %u3d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_ep0_stall.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_ep0_stall, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_ep0_stall.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.139) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vuc_regs = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 8
  %2 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vuc_regs, align 4
  %epcr = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %3, i32 0, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epcr) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %5 = or i32 %4, 33554432
  %6 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vuc_regs, align 4
  %epcr7 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %7, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epcr7, i32 %5) #11, !srcloc !323
  %8 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vuc_regs, align 4
  %epxincr0 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %9, i32 0, i32 28, i32 0, i32 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %epxincr0) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %11 = or i32 %10, 33554432
  %12 = ptrtoint ptr %vuc_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vuc_regs, align 4
  %epxincr018 = getelementptr inbounds %struct.mv_u3d_vuc_regs, ptr %13, i32 0, i32 28, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %epxincr018, i32 %11) #11, !srcloc !323
  %ep0_state = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 20
  %14 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ep0_state, align 8
  %ep0_dir = getelementptr inbounds %struct.mv_u3d, ptr %u3d, i32 0, i32 21
  %15 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ep0_dir, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock_gating = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %clock_gating, align 8
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @mv_u3d_controller_stop(ptr noundef %1)
  %lock = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  tail call fastcc void @mv_u3d_stop_activity(ptr noundef %1, ptr noundef %5)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %dev.i = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i.i, align 8
  %10 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %clock_gating, align 8
  %11 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %11)
  %.not.i = icmp eq i8 %11, 24
  br i1 %.not.i, label %do.body.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_u3d_disable.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_u3d_suspend, %do.end.i)) #11
          to label %if.then11.i [label %do.end.i], !srcloc !319

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_u3d_disable.__UNIQUE_ID_ddebug255, ptr noundef %13, ptr noundef nonnull @.str.56) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %do.body.i
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_deinit.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %do.end.i.if.end16.i_crit_edge, label %if.then14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %phy_regs.i = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_regs.i, align 8
  tail call void %15(ptr noundef %17) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %do.end.i.if.end16.i_crit_edge
  %clk.i = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  %20 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load18.i = load i8, ptr %clock_gating, align 8
  %bf.clear19.i = and i8 %bf.load18.i, -9
  store i8 %bf.clear19.i, ptr %clock_gating, align 8
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_u3d_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock_gating = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %clock_gating, align 8
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @mv_u3d_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %driver = getelementptr inbounds %struct.mv_u3d, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load6 = load i8, ptr %clock_gating, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6)
  %tobool9.not = icmp sgt i8 %bf.load6, -1
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mv_u3d_controller_reset(ptr noundef %1)
  tail call fastcc void @mv_u3d_ep0_reset(ptr noundef %1)
  tail call fastcc void @mv_u3d_controller_start(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !124, !126, !128, !130, !131, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !211, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !265, !267, !268, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !295, !296, !297, !298, !300, !301, !303, !304, !305, !307, !308}
!llvm.module.flags = !{!310, !311, !312, !313, !314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = !{ptr @__initcall__kmod_mv_u3d_core__276_2059_mv_u3d_driver_init6, !1, !"__initcall__kmod_mv_u3d_core__276_2059_mv_u3d_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2059, i32 1}
!2 = !{ptr @__exitcall_mv_u3d_driver_exit, !1, !"__exitcall_mv_u3d_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias277, !4, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2060, i32 1}
!5 = !{ptr @__UNIQUE_ID_description278, !6, !"__UNIQUE_ID_description278", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2061, i32 1}
!7 = !{ptr @__UNIQUE_ID_author279, !8, !"__UNIQUE_ID_author279", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2062, i32 1}
!9 = !{ptr @__UNIQUE_ID_file280, !10, !"__UNIQUE_ID_file280", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2063, i32 1}
!11 = !{ptr @__UNIQUE_ID_license281, !10, !"__UNIQUE_ID_license281", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2054, i32 11}
!14 = !{ptr @mv_u3d_driver, !15, !"mv_u3d_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2049, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1790, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mv_u3d_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mv_u3d_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mv_u3d_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1801, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1814, i32 56}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1816, i32 3}
!31 = !{ptr @mv_u3d_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mv_u3d_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1824, i32 3}
!35 = !{ptr @mv_u3d_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mv_u3d_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1828, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mv_u3d_probe.__UNIQUE_ID_ddebug274, !38, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1836, i32 3}
!43 = !{ptr @mv_u3d_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mv_u3d_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1843, i32 4}
!47 = !{ptr @mv_u3d_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mv_u3d_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1874, i32 3}
!51 = !{ptr @mv_u3d_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mv_u3d_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1881, i32 34}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1919, i32 3}
!57 = !{ptr @mv_u3d_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mv_u3d_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1939, i32 3}
!61 = !{ptr @mv_u3d_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mv_u3d_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1948, i32 3}
!65 = !{ptr @mv_u3d_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mv_u3d_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1961, i32 2}
!69 = !{ptr @mv_u3d_probe.__UNIQUE_ID_ddebug275, !68, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!70 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1028, i32 2}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mv_u3d_controller_stop.__UNIQUE_ID_ddebug252, !73, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!76 = !{ptr @mv_u3d_ops, !77, !"mv_u3d_ops", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1288, i32 36}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1142, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mv_u3d_vbus_session.__UNIQUE_ID_ddebug256, !79, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1103, i32 2}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mv_u3d_enable.__UNIQUE_ID_ddebug254, !83, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!86 = !{ptr @mv_u3d_enable._entry, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1108, i32 4}
!88 = !{ptr @mv_u3d_enable._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1075, i32 4}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mv_u3d_controller_reset._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @mv_u3d_controller_reset._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1054, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mv_u3d_controller_start.__UNIQUE_ID_ddebug253, !95, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 735, i32 5}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug244, !99, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!102 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mv_u3d_ep_fifo_flush.__UNIQUE_ID_ddebug245, !105, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 757, i32 5}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 180, i32 2}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mv_u3d_done.__UNIQUE_ID_ddebug235, !107, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 206, i32 3}
!112 = !{ptr @mv_u3d_done.__UNIQUE_ID_ddebug236, !111, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1123, i32 3}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mv_u3d_disable.__UNIQUE_ID_ddebug255, !114, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1199, i32 2}
!119 = !{ptr @mv_u3d_pullup.__UNIQUE_ID_ddebug257, !118, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!120 = !{ptr @driver_name, !121, !"driver_name", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 34, i32 19}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1309, i32 20}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1330, i32 33}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1334, i32 33}
!128 = !{ptr @mv_u3d_eps_init.__key, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1354, i32 3}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mv_u3d_ep_ops, !132, !"mv_u3d_ep_ops", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 994, i32 32}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 549, i32 4}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug240, !134, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 555, i32 3}
!139 = !{ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug241, !138, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 565, i32 4}
!142 = !{ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug242, !141, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 574, i32 4}
!145 = !{ptr @mv_u3d_ep_enable.__UNIQUE_ID_ddebug243, !144, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 789, i32 3}
!148 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug246, !147, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 794, i32 2}
!152 = !{ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug247, !151, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 800, i32 3}
!155 = !{ptr @mv_u3d_ep_queue._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mv_u3d_ep_queue._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 810, i32 3}
!159 = !{ptr @mv_u3d_ep_queue._entry.71, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mv_u3d_ep_queue._entry_ptr.73, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 819, i32 3}
!163 = !{ptr @mv_u3d_ep_queue._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @mv_u3d_ep_queue._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 832, i32 3}
!167 = !{ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug248, !166, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 836, i32 2}
!170 = !{ptr @mv_u3d_ep_queue.__UNIQUE_ID_ddebug249, !169, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 501, i32 3}
!173 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @mv_u3d_start_queue._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @mv_u3d_start_queue._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 443, i32 5}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mv_u3d_req_to_trb._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @mv_u3d_req_to_trb._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 294, i32 3}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mv_u3d_build_trb_one._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mv_u3d_build_trb_one._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 387, i32 3}
!188 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mv_u3d_build_trb_chain.__UNIQUE_ID_ddebug239, !187, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!192 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 236, i32 3}
!196 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mv_u3d_queue_trb._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @mv_u3d_queue_trb._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 880, i32 4}
!201 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @mv_u3d_ep_dequeue.__UNIQUE_ID_ddebug250, !200, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 923, i32 2}
!205 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mv_u3d_ep_set_stall.__UNIQUE_ID_ddebug251, !204, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!207 = !{ptr @mv_u3d_ep0_desc, !208, !"mv_u3d_ep0_desc", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 41, i32 45}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1689, i32 3}
!211 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mv_u3d_irq._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mv_u3d_irq._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1699, i32 4}
!216 = !{ptr @mv_u3d_irq.__UNIQUE_ID_ddebug273, !215, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1712, i32 4}
!219 = !{ptr @mv_u3d_irq._entry.98, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @mv_u3d_irq._entry_ptr.100, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1718, i32 3}
!223 = !{ptr @mv_u3d_irq._entry.101, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @mv_u3d_irq._entry_ptr.103, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1728, i32 3}
!227 = !{ptr @mv_u3d_irq._entry.104, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @mv_u3d_irq._entry_ptr.106, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1398, i32 2}
!231 = !{ptr @mv_u3d_irq_process_error._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @mv_u3d_irq_process_error._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1408, i32 2}
!235 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug258, !234, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1411, i32 3}
!239 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug259, !238, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1423, i32 3}
!242 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug260, !241, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1429, i32 3}
!245 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug261, !244, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1435, i32 3}
!248 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug262, !247, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1440, i32 3}
!251 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug263, !250, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1445, i32 3}
!254 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug264, !253, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1448, i32 3}
!257 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug265, !256, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1451, i32 3}
!260 = !{ptr @mv_u3d_irq_process_link_change.__UNIQUE_ID_ddebug266, !259, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!261 = !{ptr @.str.118, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1620, i32 2}
!263 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug270, !262, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1640, i32 3}
!267 = !{ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug271, !266, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!268 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1669, i32 3}
!270 = !{ptr @mv_u3d_irq_process_tr_complete.__UNIQUE_ID_ddebug272, !269, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 132, i32 4}
!273 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @mv_u3d_process_ep_req._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @mv_u3d_process_ep_req._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.125, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 152, i32 4}
!278 = !{ptr @mv_u3d_process_ep_req._entry.124, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @mv_u3d_process_ep_req._entry_ptr.126, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1520, i32 2}
!284 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug268, !283, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1559, i32 5}
!288 = !{ptr @mv_u3d_handle_setup_packet._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @mv_u3d_handle_setup_packet._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.132, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1575, i32 4}
!292 = !{ptr @mv_u3d_handle_setup_packet.__UNIQUE_ID_ddebug269, !291, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1471, i32 3}
!295 = !{ptr @.str.134, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @mv_u3d_ch9setaddress._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @mv_u3d_ch9setaddress._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.135, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1479, i32 2}
!300 = !{ptr @mv_u3d_ch9setaddress.__UNIQUE_ID_ddebug267, !299, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!301 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 1482, i32 3}
!303 = !{ptr @mv_u3d_ch9setaddress._entry.136, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @mv_u3d_ch9setaddress._entry_ptr.138, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 98, i32 2}
!307 = !{ptr @mv_u3d_ep0_stall.__UNIQUE_ID_ddebug234, !306, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!308 = !{ptr @mv_u3d_pm_ops, !309, !"mv_u3d_pm_ops", i1 false, i1 false}
!309 = !{!"../drivers/usb/gadget/udc/mv_u3d_core.c", i32 2037, i32 8}
!310 = !{i32 1, !"wchar_size", i32 2}
!311 = !{i32 1, !"min_enum_size", i32 4}
!312 = !{i32 8, !"branch-target-enforcement", i32 0}
!313 = !{i32 8, !"sign-return-address", i32 0}
!314 = !{i32 8, !"sign-return-address-all", i32 0}
!315 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!316 = !{i32 7, !"uwtable", i32 1}
!317 = !{i32 7, !"frame-pointer", i32 2}
!318 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!319 = !{i64 2149002622, i64 2149002627, i64 2149002640, i64 2149002684, i64 2149002718, i64 2149002739}
!320 = !{i64 6266299}
!321 = !{i64 2153806648}
!322 = !{i64 2153808003}
!323 = !{i64 6265881}
!324 = !{!"branch_weights", i32 1, i32 2000}
!325 = !{i64 2154464114, i64 2154464616, i64 2154464151, i64 2154464207, i64 2154464241, i64 2154464265, i64 2154464306, i64 2154464327, i64 2154464355, i64 2154464389}
!326 = !{!"branch_weights", i32 2000, i32 1}
!327 = !{!"auto-init"}
!328 = !{i64 2154300957}
!329 = !{i64 2154296842}
!330 = !{i64 2154305408}
