; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/lpc32xx_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/lpc32xx_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lpc32xx_usbd_cfg = type { i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lpc32xx_udc = type { %struct.usb_gadget, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, [4 x i32], ptr, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, %struct.work_struct, %struct.work_struct, [16 x %struct.lpc32xx_ep], i8, i8, i8, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.lpc32xx_ep = type { %struct.usb_ep, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.lpc32xx_usbd_dd_gad = type { i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.lpc32xx_request = type { %struct.usb_request, %struct.list_head, ptr, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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

@__initcall__kmod_lpc32xx_udc__304_3264_lpc32xx_udc_driver_init6 = internal global ptr @lpc32xx_udc_driver_init, section ".initcall6.init", align 4
@lpc32xx_udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @lpc32xx_udc_remove, ptr @lpc32xx_udc_shutdown, ptr @lpc32xx_udc_suspend, ptr @lpc32xx_udc_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc32xx_udc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc32xx_udc_driver_exit = internal global ptr @lpc32xx_udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [43 x i8] c"lpc32xx_udc.description=LPC32XX udc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [53 x i8] c"lpc32xx_udc.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [52 x i8] c"lpc32xx_udc.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [52 x i8] c"lpc32xx_udc.file=drivers/usb/gadget/udc/lpc32xx_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [24 x i8] c"lpc32xx_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias310 = internal constant [39 x i8] c"lpc32xx_udc.alias=platform:lpc32xx_udc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transceiver\00", [20 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ISP1301 I2C device at address 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc32xx_udc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/lpc32xx_udc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr = internal global ptr @lpc32xx_udc_probe._entry, section ".printk_index", align 4
@lpc32xx_usbd_dmamask = internal global { i64, [24 x i8] } { i64 4294967168, [24 x i8] zeroinitializer }, align 32
@lpc32xx_usbddata = internal global { %struct.lpc32xx_usbd_cfg, [16 x i8] } { %struct.lpc32xx_usbd_cfg { i32 0, ptr @lpc32xx_usbd_conn_chg, ptr @lpc32xx_usbd_susp_chg, ptr @lpc32xx_rmwkup_chg }, [16 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 3051, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IO map failure\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.10 = internal global ptr @lpc32xx_udc_probe._entry.7, section ".printk_index", align 4
@lpc32xx_udc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 3058, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to acquire USB device clock\0A\00", [60 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.13 = internal global ptr @lpc32xx_udc_probe._entry.11, section ".printk_index", align 4
@lpc32xx_udc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 3065, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to start USB device clock\0A\00", [62 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.16 = internal global ptr @lpc32xx_udc_probe._entry.14, section ".printk_index", align 4
@lpc32xx_udc_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&udc->pullup_job)\00", [60 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&udc->power_job)\00", [61 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 3085, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error getting UDCA region\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.23 = internal global ptr @lpc32xx_udc_probe._entry.21, section ".printk_index", align 4
@lpc32xx_udc_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 3, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc32xx_udc\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA buffer(0x%x bytes), P:0x%08x, V:0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"udc_dd\00", [25 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 3098, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting DD DMA region\0A\00", [35 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.29 = internal global ptr @lpc32xx_udc_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"udc_lp\00", [25 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 3113, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LP request irq %d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.33 = internal global ptr @lpc32xx_udc_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"udc_hp\00", [25 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 3120, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HP request irq %d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.37 = internal global ptr @lpc32xx_udc_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udc_dma\00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 3128, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DEV request irq %d failed\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.41 = internal global ptr @lpc32xx_udc_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udc_otg\00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 3139, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VBUS request irq %d failed\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.45 = internal global ptr @lpc32xx_udc_probe._entry.43, section ".printk_index", align 4
@lpc32xx_udc_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&udc->ep_disable_wait_queue\00", [36 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 3158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s version %s\0A\00", [17 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.50 = internal global ptr @lpc32xx_udc_probe._entry.48, section ".printk_index", align 4
@driver_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc32xx_udc\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.03\00", [27 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 3169, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s probe failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lpc32xx_udc_probe._entry_ptr.54 = internal global ptr @lpc32xx_udc_probe._entry.52, section ".printk_index", align 4
@lpc32xx_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @lpc32xx_get_frame, ptr @lpc32xx_wakeup, ptr @lpc32xx_set_selfpowered, ptr @lpc32xx_vbus_session, ptr null, ptr @lpc32xx_pullup, ptr null, ptr null, ptr @lpc32xx_start, ptr @lpc32xx_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@lpc32xx_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @lpc32xx_ep_enable, ptr @lpc32xx_ep_disable, ptr null, ptr @lpc32xx_ep_alloc_request, ptr @lpc32xx_ep_free_request, ptr @lpc32xx_ep_queue, ptr @lpc32xx_ep_dequeue, ptr @lpc32xx_ep_set_halt, ptr @lpc32xx_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep1-int\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep2-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep3-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep4-int\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep5-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep6-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep7-int\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep8-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep9-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep10-int\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep11-bulk\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep12-iso\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep13-int\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep14-bulk\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep15-bulk\00", [22 x i8] zeroinitializer }, align 32
@controller_template = internal constant { { { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, [4 x i32], ptr, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, %struct.work_struct, %struct.work_struct, [16 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 }], i8, i8, i8, i32, %struct.atomic_t, %struct.wait_queue_head }, [680 x i8] } { { { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, [4 x i32], ptr, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, %struct.work_struct, %struct.work_struct, [16 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 }], i8, i8, i8, i32, %struct.atomic_t, %struct.wait_queue_head } { { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 } { %struct.work_struct zeroinitializer, ptr null, ptr @lpc32xx_udc_ops, ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @driver_name, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @nop_release, ptr null, ptr null, i32 0, i8 0 }, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, i32 0 }, ptr null, ptr null, ptr null, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, [4 x i32] zeroinitializer, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, i32 0, %struct.work_struct zeroinitializer, %struct.work_struct zeroinitializer, [16 x { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 }] [{ { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.56, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 -116, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, i32 64, i32 0, i8 0, i8 0, i32 3, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.57, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 28, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 2, i32 0, i32 64, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.58, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 4, i32 0, i32 64, i32 2, i8 0, i8 0, i32 2, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.59, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 76, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 6, i32 0, i32 1023, i32 3, i8 0, i8 0, i32 1, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.60, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 28, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 8, i32 0, i32 64, i32 4, i8 0, i8 0, i32 0, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.61, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 10, i32 0, i32 64, i32 5, i8 0, i8 0, i32 2, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.62, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 76, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 12, i32 0, i32 1023, i32 6, i8 0, i8 0, i32 1, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.63, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 28, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 14, i32 0, i32 64, i32 7, i8 0, i8 0, i32 0, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.64, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 16, i32 0, i32 64, i32 8, i8 0, i8 0, i32 2, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.65, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 76, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 18, i32 0, i32 1023, i32 9, i8 0, i8 0, i32 1, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.66, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 28, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 20, i32 0, i32 64, i32 10, i8 0, i8 0, i32 0, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.67, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 22, i32 0, i32 64, i32 11, i8 0, i8 0, i32 2, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.68, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 76, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 24, i32 0, i32 1023, i32 12, i8 0, i8 0, i32 1, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.69, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 28, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 26, i32 0, i32 64, i32 13, i8 0, i8 0, i32 0, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.70, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 28, i32 0, i32 64, i32 14, i8 0, i8 0, i32 2, i32 0, i8 0 }, { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }, %struct.list_head, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i8 } { { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr } { ptr null, ptr @.str.71, ptr @lpc32xx_ep_ops, %struct.list_head zeroinitializer, %struct.usb_ep_caps { i8 44, [3 x i8] undef }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, i32 30, i32 0, i32 1023, i32 15, i8 0, i8 0, i32 2, i32 0, i8 0 }], i8 0, i8 0, i8 0, i32 0, %struct.atomic_t zeroinitializer, %struct.wait_queue_head zeroinitializer }, [680 x i8] zeroinitializer }, align 32
@udc_protocol_cmd_r.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"udc_protocol_cmd_r\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Protocol engine didn't receive response (CDFULL)\0A\00", [46 x i8] zeroinitializer }, align 32
@udc_realize_hwep.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udc_realize_hwep\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EP not correctly realized in hardware\0A\00", [57 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@done.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 1, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s done %p, status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc32xx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 2887, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad parameter.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc32xx_start\00", [18 x i8] zeroinitializer }, align 32
@lpc32xx_start._entry_ptr = internal global ptr @lpc32xx_start._entry, section ".printk_index", align 4
@lpc32xx_start._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 2892, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UDC already has a gadget driver\0A\00", [63 x i8] zeroinitializer }, align 32
@lpc32xx_start._entry_ptr.83 = internal global ptr @lpc32xx_start._entry.81, section ".printk_index", align 4
@lpc32xx_ep_enable.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 1, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc32xx_ep_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad ep descriptor's packet size\0A\00", [63 x i8] zeroinitializer }, align 32
@lpc32xx_ep_enable.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 1, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't re-enable EP0!!!\0A\00", [40 x i8] zeroinitializer }, align 32
@lpc32xx_ep_enable.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.84, ptr @.str.3, ptr @.str.87, i8 1, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bogus device state\0A\00", [44 x i8] zeroinitializer }, align 32
@lpc32xx_ep_enable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.84, ptr @.str.3, ptr @.str.89, i8 1, i8 -98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Bad BULK endpoint maxpacket %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc32xx_ep_enable.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.84, ptr @.str.3, ptr @.str.90, i8 1, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: EP enabled: %s, HW:%d, MP:%d IN:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpc32xx_ep_queue.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 1, i8 -65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc32xx_ep_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: %s queue req %p len %d buf %p (in=%d) z=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@udc_read_hwep.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 1, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"udc_read_hwep\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No packet ready on FIFO EP read\0A\00", [63 x i8] zeroinitializer }, align 32
@isp1301_udc_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ISP1301 Vendor ID  : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isp1301_udc_configure\00", [42 x i8] zeroinitializer }, align 32
@isp1301_udc_configure._entry_ptr = internal global ptr @isp1301_udc_configure._entry, section ".printk_index", align 4
@isp1301_udc_configure._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ISP1301 Product ID : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@isp1301_udc_configure._entry_ptr.99 = internal global ptr @isp1301_udc_configure._entry.97, section ".printk_index", align 4
@isp1301_udc_configure._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ISP1301 Version ID : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@isp1301_udc_configure._entry_ptr.102 = internal global ptr @isp1301_udc_configure._entry.100, section ".printk_index", align 4
@lpc32xx_usb_lp_irq.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 2, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc32xx_usb_lp_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device error (0x%x)!\0A\00", [42 x i8] zeroinitializer }, align 32
@udc_handle_ep0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 2196, ptr @.str.107, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:Incorrectly sized setup packet (s/b 8, is %d)!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"udc_handle_ep0_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@udc_handle_ep0_setup._entry_ptr = internal global ptr @udc_handle_ep0_setup._entry, section ".printk_index", align 4
@udc_handle_ep0_setup.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.106, ptr @.str.3, ptr @.str.108, i8 2, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"req %02x.%02x protocol STALL; stat %d\0A\00", [57 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 1991, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: DMA interrupt on no req!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udc_handle_dma_ep\00", [46 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr = internal global ptr @udc_handle_dma_ep._entry, section ".printk_index", align 4
@udc_handle_dma_ep._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.3, i32 1998, ptr @.str.107, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:DMA descriptor did not retire\0A\00", [62 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr.113 = internal global ptr @udc_handle_dma_ep._entry.111, section ".printk_index", align 4
@udc_handle_dma_ep._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.3, i32 2010, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: AHB critical error!\0A\00", [39 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr.116 = internal global ptr @udc_handle_dma_ep._entry.114, section ".printk_index", align 4
@udc_handle_dma_ep._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.110, ptr @.str.3, i32 2027, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: DMA critical EP error: DD not serviced (0x%x)!\0A\00", [44 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr.119 = internal global ptr @udc_handle_dma_ep._entry.117, section ".printk_index", align 4
@udc_handle_dma_ep._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.110, ptr @.str.3, i32 2036, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: DMA critical EP error: EOT prior to service completion (0x%x)!\0A\00", [60 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr.122 = internal global ptr @udc_handle_dma_ep._entry.120, section ".printk_index", align 4
@udc_handle_dma_ep._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.110, ptr @.str.3, i32 2050, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: DMA critical EP error: System error (0x%x)!\0A\00", [47 x i8] zeroinitializer }, align 32
@udc_handle_dma_ep._entry_ptr.125 = internal global ptr @udc_handle_dma_ep._entry.123, section ".printk_index", align 4
@debug_filename = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"driver/udc\00", [21 x i8] zeroinitializer }, align 32
@udc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @udc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: version %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vbus %s, pullup %s, %s powered%s, gadget %s\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"self\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBUS\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", suspended\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%12s, maxpacket %4d %3s\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" type %4s\00", [22 x i8] zeroinitializer }, align 32
@epnames = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" ints: %12d\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09(queue empty)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09req %p len %d/%d buf %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INT\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISO\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BULK\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTRL\00", [27 x i8] zeroinitializer }, align 32
@lpc32xx_udc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"lpc32xx_udc_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3253, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3011, i32 7 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3021, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"lpc32xx_usbd_dmamask\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2985, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"lpc32xx_usbddata\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2977, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3040, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3051, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3058, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3065, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3071, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3073, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3085, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3090, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3094, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3098, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3110, i32 30 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3112, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3117, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3119, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3125, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3127, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3136, i32 9 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3138, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3144, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 462, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3158, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3169, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"lpc32xx_udc_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2489, i32 36 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2509, i32 17 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2515, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant [15 x i8] c"lpc32xx_ep_ops\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1905, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2528, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2541, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2554, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2567, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2580, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2593, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2606, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2619, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2632, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2645, i32 12 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2658, i32 12 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2671, i32 12 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2684, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2697, i32 12 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2710, i32 12 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c"controller_template\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2504, i32 33 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 745, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 837, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1415, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2887, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2892, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1618, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1624, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1630, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1656, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1678, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1789, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1217, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 615, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 616, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 617, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2754, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2195, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2298, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1991, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1998, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2010, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2026, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2035, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2049, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [15 x i8] c"debug_filename\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 471, i32 19 }
@___asan_gen_.513 = private unnamed_addr constant [9 x i8] c"udc_fops\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 526, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 503, i32 16 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 507, i32 16 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 508, i32 18 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 508, i32 30 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 509, i32 34 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 509, i32 45 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 510, i32 6 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 511, i32 35 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 511, i32 44 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 512, i32 23 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 512, i32 39 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 513, i32 47 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 477, i32 16 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 478, i32 16 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 480, i32 16 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 480, i32 23 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 481, i32 16 }
@___asan_gen_.567 = private unnamed_addr constant [8 x i8] c"epnames\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 470, i32 14 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 482, i32 16 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 485, i32 17 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 490, i32 18 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 470, i32 27 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 470, i32 34 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 470, i32 41 }
@___asan_gen_.588 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 470, i32 49 }
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c"lpc32xx_udc_of_match\00", align 1
@___asan_gen_.592 = private constant [40 x i8] c"../drivers/usb/gadget/udc/lpc32xx_udc.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3246, i32 34 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_alias310, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_lpc32xx_udc_driver_exit, ptr @__initcall__kmod_lpc32xx_udc__304_3264_lpc32xx_udc_driver_init6, ptr @isp1301_udc_configure._entry, ptr @isp1301_udc_configure._entry.100, ptr @isp1301_udc_configure._entry.97, ptr @isp1301_udc_configure._entry_ptr, ptr @isp1301_udc_configure._entry_ptr.102, ptr @isp1301_udc_configure._entry_ptr.99, ptr @lpc32xx_start._entry, ptr @lpc32xx_start._entry.81, ptr @lpc32xx_start._entry_ptr, ptr @lpc32xx_start._entry_ptr.83, ptr @lpc32xx_udc_driver_exit, ptr @lpc32xx_udc_probe._entry, ptr @lpc32xx_udc_probe._entry.11, ptr @lpc32xx_udc_probe._entry.14, ptr @lpc32xx_udc_probe._entry.21, ptr @lpc32xx_udc_probe._entry.27, ptr @lpc32xx_udc_probe._entry.31, ptr @lpc32xx_udc_probe._entry.35, ptr @lpc32xx_udc_probe._entry.39, ptr @lpc32xx_udc_probe._entry.43, ptr @lpc32xx_udc_probe._entry.48, ptr @lpc32xx_udc_probe._entry.52, ptr @lpc32xx_udc_probe._entry.7, ptr @lpc32xx_udc_probe._entry_ptr, ptr @lpc32xx_udc_probe._entry_ptr.10, ptr @lpc32xx_udc_probe._entry_ptr.13, ptr @lpc32xx_udc_probe._entry_ptr.16, ptr @lpc32xx_udc_probe._entry_ptr.23, ptr @lpc32xx_udc_probe._entry_ptr.29, ptr @lpc32xx_udc_probe._entry_ptr.33, ptr @lpc32xx_udc_probe._entry_ptr.37, ptr @lpc32xx_udc_probe._entry_ptr.41, ptr @lpc32xx_udc_probe._entry_ptr.45, ptr @lpc32xx_udc_probe._entry_ptr.50, ptr @lpc32xx_udc_probe._entry_ptr.54, ptr @udc_handle_dma_ep._entry, ptr @udc_handle_dma_ep._entry.111, ptr @udc_handle_dma_ep._entry.114, ptr @udc_handle_dma_ep._entry.117, ptr @udc_handle_dma_ep._entry.120, ptr @udc_handle_dma_ep._entry.123, ptr @udc_handle_dma_ep._entry_ptr, ptr @udc_handle_dma_ep._entry_ptr.113, ptr @udc_handle_dma_ep._entry_ptr.116, ptr @udc_handle_dma_ep._entry_ptr.119, ptr @udc_handle_dma_ep._entry_ptr.122, ptr @udc_handle_dma_ep._entry_ptr.125, ptr @udc_handle_ep0_setup._entry, ptr @udc_handle_ep0_setup._entry_ptr, ptr @lpc32xx_udc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lpc32xx_usbd_dmamask, ptr @lpc32xx_usbddata, ptr @lpc32xx_udc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @lpc32xx_udc_probe.__key.17, ptr @.str.18, ptr @lpc32xx_udc_probe.__key.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @lpc32xx_udc_probe.__key.46, ptr @.str.47, ptr @.str.49, ptr @driver_name, ptr @.str.51, ptr @.str.53, ptr @lpc32xx_udc_ops, ptr @.str.55, ptr @.str.56, ptr @lpc32xx_ep_ops, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @controller_template, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @debug_filename, ptr @udc_fops, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @epnames, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @lpc32xx_udc_of_match], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_usbd_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_usbddata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_template to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_start._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_udc_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_udc_configure._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_udc_configure._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_ep0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_handle_dma_ep._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_filename to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epnames to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_udc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_udc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @lpc32xx_udc_driver, ptr noundef nonnull @lpc32xx_udc_probe, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_udc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc32xx_udc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #11
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !308
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @controller_template, i32 noundef 2744, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %udc3 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 0, i32 2
  %1 = ptrtoint ptr %udc3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %udc3, align 4
  %udc3.1 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 1, i32 2
  %2 = ptrtoint ptr %udc3.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %udc3.1, align 4
  %udc3.2 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 2, i32 2
  %3 = ptrtoint ptr %udc3.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %udc3.2, align 4
  %udc3.3 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 3, i32 2
  %4 = ptrtoint ptr %udc3.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %udc3.3, align 4
  %udc3.4 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 4, i32 2
  %5 = ptrtoint ptr %udc3.4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %udc3.4, align 4
  %udc3.5 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 5, i32 2
  %6 = ptrtoint ptr %udc3.5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %udc3.5, align 4
  %udc3.6 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 6, i32 2
  %7 = ptrtoint ptr %udc3.6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %udc3.6, align 4
  %udc3.7 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 7, i32 2
  %8 = ptrtoint ptr %udc3.7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %udc3.7, align 4
  %udc3.8 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 8, i32 2
  %9 = ptrtoint ptr %udc3.8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %udc3.8, align 4
  %udc3.9 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 9, i32 2
  %10 = ptrtoint ptr %udc3.9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %udc3.9, align 4
  %udc3.10 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 10, i32 2
  %11 = ptrtoint ptr %udc3.10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %udc3.10, align 4
  %udc3.11 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 11, i32 2
  %12 = ptrtoint ptr %udc3.11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %udc3.11, align 4
  %udc3.12 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 12, i32 2
  %13 = ptrtoint ptr %udc3.12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %udc3.12, align 4
  %udc3.13 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 13, i32 2
  %14 = ptrtoint ptr %udc3.13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %udc3.13, align 4
  %udc3.14 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 14, i32 2
  %15 = ptrtoint ptr %udc3.14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %udc3.14, align 4
  %udc3.15 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 24, i32 15, i32 2
  %16 = ptrtoint ptr %udc3.15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %udc3.15, align 4
  %ep4 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 24
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ep4, ptr %ep0, align 4
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %call, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %parent, align 8
  %pdev9 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pdev, ptr %pdev9, align 4
  %dev11 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %dev11, align 8
  %enabled = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 25
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enabled, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %for.body.preheader.if.end18_crit_edge, label %if.then14

for.body.preheader.if.end18_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %for.body.preheader
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %24 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.of_parse_phandle.exit_crit_edge

if.then14.of_parse_phandle.exit_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then14.of_parse_phandle.exit_crit_edge
  %retval.0.i339 = phi ptr [ %26, %if.end.i ], [ null, %if.then14.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %if.end18

if.end18:                                         ; preds = %of_parse_phandle.exit, %for.body.preheader.if.end18_crit_edge
  %isp1301_node.0 = phi ptr [ %retval.0.i339, %of_parse_phandle.exit ], [ null, %for.body.preheader.if.end18_crit_edge ]
  %call19 = call ptr @isp1301_get_client(ptr noundef %isp1301_node.0) #11
  %isp1301_i2c_client = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 5
  %27 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call19, ptr %isp1301_i2c_client, align 8
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %do.end

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end18
  %28 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev11, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call19, i32 0, i32 1
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr, align 2
  %conv = zext i16 %31 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %conv) #14
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %32 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @lpc32xx_usbd_dmamask, ptr %dma_mask, align 8
  %call28 = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %board = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 6
  %33 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @lpc32xx_usbddata, ptr %board, align 4
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lpc32xx_udc_probe.__key, i16 noundef signext 3) #11
  %call40 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %arrayidx41 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 8, i32 0
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call40, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp44 = icmp slt i32 %call40, 0
  br i1 %cmp44, label %if.end31.cleanup_crit_edge, label %for.cond36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond36:                                       ; preds = %if.end31
  %call40.1 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #11
  %arrayidx41.1 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call40.1, ptr %arrayidx41.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %cmp44.1 = icmp slt i32 %call40.1, 0
  br i1 %cmp44.1, label %for.cond36.cleanup_crit_edge, label %for.cond36.1

for.cond36.cleanup_crit_edge:                     ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond36.1:                                     ; preds = %for.cond36
  %call40.2 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #11
  %arrayidx41.2 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call40.2, ptr %arrayidx41.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.2)
  %cmp44.2 = icmp slt i32 %call40.2, 0
  br i1 %cmp44.2, label %for.cond36.1.cleanup_crit_edge, label %for.cond36.2

for.cond36.1.cleanup_crit_edge:                   ; preds = %for.cond36.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond36.2:                                     ; preds = %for.cond36.1
  %call40.3 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #11
  %arrayidx41.3 = getelementptr %struct.lpc32xx_udc, ptr %call, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call40.3, ptr %arrayidx41.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.3)
  %cmp44.3 = icmp slt i32 %call40.3, 0
  br i1 %cmp44.3, label %for.cond36.2.cleanup_crit_edge, label %for.cond36.3

for.cond36.2.cleanup_crit_edge:                   ; preds = %for.cond36.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond36.3:                                     ; preds = %for.cond36.2
  %call53 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 7
  %38 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call53, ptr %udp_baseaddr, align 8
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end59, label %if.end63

do.end59:                                         ; preds = %for.cond36.3
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8) #14
  %41 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udp_baseaddr, align 8
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup

if.end63:                                         ; preds = %for.cond36.3
  %call65 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #11
  %usb_slv_clk = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 9
  %44 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call65, ptr %usb_slv_clk, align 4
  %cmp.i340 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.12) #14
  %47 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_slv_clk, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end63
  %call77 = call fastcc i32 @clk_prepare_enable(ptr noundef %call65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end85:                                         ; preds = %if.end75
  %pullup = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 19
  %52 = ptrtoint ptr %pullup to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pullup, align 8
  %poweron = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 20
  %53 = ptrtoint ptr %poweron to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %poweron, align 4
  %pullup_job = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 22
  call void @__init_work(ptr noundef %pullup_job, i32 noundef 0) #11
  %54 = ptrtoint ptr %pullup_job to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %pullup_job, align 4
  %lockdep_map = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 22, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @lpc32xx_udc_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry90 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 22, i32 1
  %55 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 22, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry90, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 22, i32 2
  %57 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pullup_work, ptr %func, align 4
  %power_job = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 23
  call void @__init_work(ptr noundef %power_job, i32 noundef 0) #11
  %58 = ptrtoint ptr %power_job to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %power_job, align 8
  %lockdep_map100 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 23, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map100, ptr noundef nonnull @.str.20, ptr noundef nonnull @lpc32xx_udc_probe.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry102 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 23, i32 1
  %59 = ptrtoint ptr %entry102 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry102, ptr %entry102, align 4
  %prev.i341 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 23, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i341 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry102, ptr %prev.i341, align 4
  %func104 = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 23, i32 2
  %61 = ptrtoint ptr %func104 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @power_work, ptr %func104, align 4
  %clocked = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 26
  %62 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %clocked, align 1
  call fastcc void @isp1301_udc_configure(ptr noundef nonnull %call)
  %call.i342 = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 128, ptr noundef nonnull %dma_handle, i32 noundef 3265, i32 noundef 0) #11
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 10
  %63 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i342, ptr %udca_v_base, align 8
  %tobool110.not = icmp eq ptr %call.i342, null
  br i1 %tobool110.not, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22) #14
  br label %i2c_fail

if.end116:                                        ; preds = %if.end85
  %66 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_handle, align 4
  %udca_p_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 11
  %68 = ptrtoint ptr %udca_p_base to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %udca_p_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_udc_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_udc_probe, %do.end129)) #11
          to label %if.then123 [label %do.end129], !srcloc !309

if.then123:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev11, align 8
  %71 = ptrtoint ptr %udca_p_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %udca_p_base, align 4
  %73 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udca_v_base, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_udc_probe.__UNIQUE_ID_ddebug303, ptr noundef %70, ptr noundef nonnull @.str.25, i32 noundef 128, i32 noundef %72, ptr noundef %74) #11
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %if.end116
  %75 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev11, align 8
  %call131 = call ptr @dma_pool_create(ptr noundef nonnull @.str.26, ptr noundef %76, i32 noundef 52, i32 noundef 4, i32 noundef 0) #11
  %dd_cache = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 12
  %77 = ptrtoint ptr %dd_cache to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call131, ptr %dd_cache, align 8
  %tobool133.not = icmp eq ptr %call131, null
  br i1 %tobool133.not, label %do.end137, label %if.end139

do.end137:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.28) #14
  br label %dma_alloc_fail

if.end139:                                        ; preds = %do.end129
  call fastcc void @udc_disable(ptr noundef nonnull %call)
  call fastcc void @udc_reinit(ptr noundef nonnull %call)
  %80 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx41, align 4
  %call.i343 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %81, ptr noundef nonnull @lpc32xx_usb_lp_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %cmp143 = icmp slt i32 %call.i343, 0
  br i1 %cmp143, label %if.end139.irq_req_fail.sink.split_crit_edge, label %if.end152

if.end139.irq_req_fail.sink.split_crit_edge:      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_req_fail.sink.split

if.end152:                                        ; preds = %if.end139
  %82 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx41.1, align 4
  %call.i344 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %83, ptr noundef nonnull @lpc32xx_usb_hp_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %cmp156 = icmp slt i32 %call.i344, 0
  br i1 %cmp156, label %if.end152.irq_req_fail.sink.split_crit_edge, label %if.end165

if.end152.irq_req_fail.sink.split_crit_edge:      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_req_fail.sink.split

if.end165:                                        ; preds = %if.end152
  %84 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx41.2, align 4
  %call.i345 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %85, ptr noundef nonnull @lpc32xx_usb_devdma_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %cmp169 = icmp slt i32 %call.i345, 0
  br i1 %cmp169, label %if.end165.irq_req_fail.sink.split_crit_edge, label %if.end178

if.end165.irq_req_fail.sink.split_crit_edge:      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_req_fail.sink.split

if.end178:                                        ; preds = %if.end165
  %86 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx41.3, align 4
  %call181 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %87, ptr noundef null, ptr noundef nonnull @lpc32xx_usb_vbus_irq, i32 noundef 8192, ptr noundef nonnull @.str.42, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.end178.irq_req_fail.sink.split_crit_edge, label %do.body192

if.end178.irq_req_fail.sink.split_crit_edge:      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_req_fail.sink.split

do.body192:                                       ; preds = %if.end178
  %ep_disable_wait_queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 30
  call void @__init_waitqueue_head(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull @.str.47, ptr noundef nonnull @lpc32xx_udc_probe.__key.46) #11
  %enabled_ep_cnt = getelementptr inbounds %struct.lpc32xx_udc, ptr %call, i32 0, i32 29
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %88 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 0, ptr %enabled_ep_cnt, align 4
  %call196 = call i32 @usb_add_gadget_udc(ptr noundef %dev1, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %do.body192.irq_req_fail_crit_edge, label %if.end200

do.body192.irq_req_fail_crit_edge:                ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_req_fail

if.end200:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %89 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call, ptr %driver_data.i, align 4
  %call201 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #11
  %call.i346 = call ptr @debugfs_create_file(ptr noundef nonnull @debug_filename, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %call, ptr noundef nonnull @udc_fops) #11
  call fastcc void @udc_clk_set(ptr noundef nonnull %call, i32 noundef 0)
  %90 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.49, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.51) #14
  br label %cleanup

irq_req_fail.sink.split:                          ; preds = %if.end178.irq_req_fail.sink.split_crit_edge, %if.end165.irq_req_fail.sink.split_crit_edge, %if.end152.irq_req_fail.sink.split_crit_edge, %if.end139.irq_req_fail.sink.split_crit_edge
  %arrayidx41.3.sink = phi ptr [ %arrayidx41, %if.end139.irq_req_fail.sink.split_crit_edge ], [ %arrayidx41.1, %if.end152.irq_req_fail.sink.split_crit_edge ], [ %arrayidx41.2, %if.end165.irq_req_fail.sink.split_crit_edge ], [ %arrayidx41.3, %if.end178.irq_req_fail.sink.split_crit_edge ]
  %.str.44.sink = phi ptr [ @.str.32, %if.end139.irq_req_fail.sink.split_crit_edge ], [ @.str.36, %if.end152.irq_req_fail.sink.split_crit_edge ], [ @.str.40, %if.end165.irq_req_fail.sink.split_crit_edge ], [ @.str.44, %if.end178.irq_req_fail.sink.split_crit_edge ]
  %retval2.0.ph = phi i32 [ %call.i343, %if.end139.irq_req_fail.sink.split_crit_edge ], [ %call.i344, %if.end152.irq_req_fail.sink.split_crit_edge ], [ %call.i345, %if.end165.irq_req_fail.sink.split_crit_edge ], [ %call181, %if.end178.irq_req_fail.sink.split_crit_edge ]
  %92 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev11, align 8
  %94 = ptrtoint ptr %arrayidx41.3.sink to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx41.3.sink, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull %.str.44.sink, i32 noundef %95) #14
  br label %irq_req_fail

irq_req_fail:                                     ; preds = %irq_req_fail.sink.split, %do.body192.irq_req_fail_crit_edge
  %retval2.0 = phi i32 [ %call196, %do.body192.irq_req_fail_crit_edge ], [ %retval2.0.ph, %irq_req_fail.sink.split ]
  %96 = ptrtoint ptr %dd_cache to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dd_cache, align 8
  call void @dma_pool_destroy(ptr noundef %97) #11
  br label %dma_alloc_fail

dma_alloc_fail:                                   ; preds = %irq_req_fail, %do.end137
  %retval2.1 = phi i32 [ %retval2.0, %irq_req_fail ], [ -12, %do.end137 ]
  %98 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %udca_v_base, align 8
  %100 = ptrtoint ptr %udca_p_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %udca_p_base, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 128, ptr noundef %99, i32 noundef %101, i32 noundef 0) #11
  br label %i2c_fail

i2c_fail:                                         ; preds = %dma_alloc_fail, %do.end114
  %retval2.2 = phi i32 [ %retval2.1, %dma_alloc_fail ], [ -12, %do.end114 ]
  %102 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usb_slv_clk, align 4
  call void @clk_disable(ptr noundef %103) #11
  call void @clk_unprepare(ptr noundef %103) #11
  %104 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.53, ptr noundef nonnull @driver_name, i32 noundef %retval2.2) #14
  br label %cleanup

cleanup:                                          ; preds = %i2c_fail, %if.end200, %do.end83, %do.end71, %do.end59, %for.cond36.2.cleanup_crit_edge, %for.cond36.1.cleanup_crit_edge, %for.cond36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %do.end59 ], [ %49, %do.end71 ], [ %call77, %do.end83 ], [ %retval2.2, %i2c_fail ], [ 0, %if.end200 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end18.cleanup_crit_edge ], [ %call28, %do.end.cleanup_crit_edge ], [ %call40, %if.end31.cleanup_crit_edge ], [ %call40.1, %for.cond36.cleanup_crit_edge ], [ %call40.2, %for.cond36.1.cleanup_crit_edge ], [ %call40.3, %for.cond36.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isp1301_get_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pullup_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pullup.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %isp1301_i2c_client1.i = getelementptr i8, ptr %work, i32 -76
  %2 = ptrtoint ptr %isp1301_i2c_client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1301_i2c_client1.i, align 8
  %..i = select i1 %tobool.not.i, i8 7, i8 6
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %..i, i8 noundef zeroext 1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @power_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %atx.i = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %atx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %atx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %entry.isp1301_set_powerstate.exit_crit_edge, label %if.end.i

entry.isp1301_set_powerstate.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %isp1301_set_powerstate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %poweron = getelementptr i8, ptr %work, i32 -52
  %2 = ptrtoint ptr %poweron to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poweron, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 0
  %isp1301_i2c_client3.i = getelementptr i8, ptr %work, i32 -120
  %4 = ptrtoint ptr %isp1301_i2c_client3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp1301_i2c_client3.i, align 8
  %..i = select i1 %cmp1.not.i, i8 18, i8 19
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %..i, i8 noundef zeroext 1) #11
  br label %isp1301_set_powerstate.exit

isp1301_set_powerstate.exit:                      ; preds = %if.end.i, %entry.isp1301_set_powerstate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1301_udc_configure(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1301_i2c_client = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 5
  %0 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1301_i2c_client, align 8
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 0) #11
  %2 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1301_i2c_client, align 8
  %call2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1155, i32 %call)
  %cmp = icmp eq i32 %call, 1155
  call void @__sanitizer_cov_trace_const_cmp4(i32 41156, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 41156
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %atx = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 21
  %4 = ptrtoint ptr %atx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %atx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp1301_i2c_client, align 8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 5, i8 noundef zeroext 64) #11
  %7 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp1301_i2c_client, align 8
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 5, i8 noundef zeroext -1) #11
  %9 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp1301_i2c_client, align 8
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 4, i8 noundef zeroext 5) #11
  %11 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp1301_i2c_client, align 8
  %call11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 19, i8 noundef zeroext -1) #11
  %atx12 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 21
  %13 = ptrtoint ptr %atx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %atx12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp13.not = icmp eq i32 %14, 1
  %spec.select = select i1 %cmp13.not, i8 4, i8 6
  %15 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isp1301_i2c_client, align 8
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 18, i8 noundef zeroext %spec.select) #11
  %board = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 6
  %17 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %board, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp19.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp1301_i2c_client, align 8
  %. = select i1 %cmp19.not, i8 7, i8 6
  %call25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext %., i8 noundef zeroext 32) #11
  %23 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isp1301_i2c_client, align 8
  %call28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 7, i8 noundef zeroext -1) #11
  %25 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp1301_i2c_client, align 8
  %call30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 6, i8 noundef zeroext 12) #11
  %27 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %isp1301_i2c_client, align 8
  %call32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 6, i8 noundef zeroext 64) #11
  tail call void @msleep(i32 noundef 1) #11
  %29 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %isp1301_i2c_client, align 8
  %call34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 7, i8 noundef zeroext 64) #11
  %31 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %isp1301_i2c_client, align 8
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 11, i8 noundef zeroext -1) #11
  %33 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %isp1301_i2c_client, align 8
  %call38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 13, i8 noundef zeroext -1) #11
  %35 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp1301_i2c_client, align 8
  %call40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 15, i8 noundef zeroext -1) #11
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 3
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.95, i32 noundef %call) #14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.98, i32 noundef %call2) #14
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %isp1301_i2c_client, align 8
  %call50 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %44, i8 noundef zeroext 20) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.101, i32 noundef %call50) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_disable(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 14157056, i32 noundef 256)
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 16647424, i32 noundef 256)
  %enabled_devints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 13
  %0 = ptrtoint ptr %enabled_devints.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled_devints.i, align 4
  %and.i = and i32 %1, -1024
  store i32 %and.i, ptr %enabled_devints.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %enabled_devints.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled_devints.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %5 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !311
  %enabled_hwepints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 14
  %realized_eps.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 16
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl.i = shl nuw i32 1, %i.069
  %neg.i = xor i32 %shl.i, -1
  %7 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled_hwepints.i, align 8
  %and.i54 = and i32 %8, %neg.i
  store i32 %and.i54, ptr %enabled_hwepints.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled_hwepints.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %12 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %11) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %15 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %16, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %14) #11, !srcloc !311
  %shl.i60 = shl nuw nsw i32 %i.069, 16
  %or.i = or i32 %shl.i60, 4195584
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef %or.i, i32 noundef 2097408) #11
  %17 = ptrtoint ptr %realized_eps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %realized_eps.i, align 8
  %and.i63 = and i32 %18, %neg.i
  store i32 %and.i63, ptr %realized_eps.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %realized_eps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %realized_eps.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %22 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %23, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %21) #11, !srcloc !311
  %24 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udca_v_base, align 8
  %arrayidx = getelementptr i32, ptr %25, i32 %i.069
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %28, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %14) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr = getelementptr i8, ptr %30, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr6 = getelementptr i8, ptr %32, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr12 = getelementptr i8, ptr %34, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr18 = getelementptr i8, ptr %36, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #11, !srcloc !311
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body19, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr23 = getelementptr i8, ptr %38, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr28 = getelementptr i8, ptr %40, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #11, !srcloc !311
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_reinit(ptr noundef %udc) unnamed_addr #2 align 64 {
for.body.peel.next:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ep_list, ptr %prev.i, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 3
  %2 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0, align 4
  %ep_list2 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ep_list2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ep_list2, ptr %ep_list2, align 4
  %prev.i21 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ep_list2, ptr %prev.i21, align 4
  %arrayidx.peel = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0
  %maxpacket.peel = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 5
  %6 = ptrtoint ptr %maxpacket.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxpacket.peel, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.peel, i32 noundef %7) #11
  %queue.peel = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 1
  %8 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i23.peel = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i23.peel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue.peel, ptr %prev.i23.peel, align 4
  %req_pending.peel = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 8
  %10 = ptrtoint ptr %req_pending.peel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %req_pending.peel, align 1
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %for.body.peel.next
  %i.024 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.024
  %ep_list6 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list6, ptr noundef %12, ptr noundef %ep_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ep_list6, ptr %prev.i, align 4
  %14 = ptrtoint ptr %ep_list6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep_list, ptr %ep_list6, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ep_list6, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %maxpacket = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.024, i32 5
  %17 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxpacket, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx, i32 noundef %18) #11
  %queue = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.024, i32 1
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i23 = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.024, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue, ptr %prev.i23, align 4
  %req_pending = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.024, i32 8
  %21 = ptrtoint ptr %req_pending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %req_pending, align 1
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end.if.then_crit_edge, !llvm.loop !322

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ep0state = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 28
  %22 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ep0state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_usb_lp_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #11, !srcloc !311
  %enabled_devints = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 13
  %7 = ptrtoint ptr %enabled_devints to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled_devints, align 4
  %and5 = and i32 %8, %4
  %and6 = and i32 %and5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %13, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %15, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 392704) #11, !srcloc !311
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.while.cond10.i.i_crit_edge, %do.body.i.i
  %to.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %while.cond10.i.i.while.cond10.i.i_crit_edge ]
  %16 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %17, i32 512
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.i.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i)
  %cmp19.i.i = icmp ne i32 %to.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp19.i.i, i1 false
  %dec.i.i = add nsw i32 %to.0.i.i, -1
  br i1 %or.cond.i.i, label %while.cond10.i.i.while.cond10.i.i_crit_edge, label %while.end.i.i

while.cond10.i.i.while.cond10.i.i_crit_edge:      ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i, label %udc_protocol_cmd_w.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

udc_protocol_cmd_w.exit.i:                        ; preds = %while.end.i.i
  %call.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef 16646656) #11
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %udc_protocol_cmd_w.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_enable(ptr noundef %_udc) #11
  %speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %20 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %speed.i.i, align 8
  %req_pending.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 1, i32 8
  %21 = ptrtoint ptr %req_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %req_pending.i.i, align 1
  %req_pending.1.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 2, i32 8
  %22 = ptrtoint ptr %req_pending.1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %req_pending.1.i.i, align 1
  %req_pending.2.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 3, i32 8
  %23 = ptrtoint ptr %req_pending.2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %req_pending.2.i.i, align 1
  %req_pending.3.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 4, i32 8
  %24 = ptrtoint ptr %req_pending.3.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %req_pending.3.i.i, align 1
  %req_pending.4.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 5, i32 8
  %25 = ptrtoint ptr %req_pending.4.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %req_pending.4.i.i, align 1
  %req_pending.5.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 6, i32 8
  %26 = ptrtoint ptr %req_pending.5.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %req_pending.5.i.i, align 1
  %req_pending.6.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 7, i32 8
  %27 = ptrtoint ptr %req_pending.6.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %req_pending.6.i.i, align 1
  %req_pending.7.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 8, i32 8
  %28 = ptrtoint ptr %req_pending.7.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %req_pending.7.i.i, align 1
  %req_pending.8.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 9, i32 8
  %29 = ptrtoint ptr %req_pending.8.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %req_pending.8.i.i, align 1
  %req_pending.9.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 10, i32 8
  %30 = ptrtoint ptr %req_pending.9.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %req_pending.9.i.i, align 1
  %req_pending.10.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 11, i32 8
  %31 = ptrtoint ptr %req_pending.10.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %req_pending.10.i.i, align 1
  %req_pending.11.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 12, i32 8
  %32 = ptrtoint ptr %req_pending.11.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %req_pending.11.i.i, align 1
  %req_pending.12.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 13, i32 8
  %33 = ptrtoint ptr %req_pending.12.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %req_pending.12.i.i, align 1
  %req_pending.13.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 14, i32 8
  %34 = ptrtoint ptr %req_pending.13.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %req_pending.13.i.i, align 1
  %req_pending.14.i.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 15, i32 8
  %35 = ptrtoint ptr %req_pending.14.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %req_pending.14.i.i, align 1
  br label %if.end

if.else.i:                                        ; preds = %udc_protocol_cmd_w.exit.i
  %and1.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %board.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 6
  %36 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board.i.i, align 4
  %conn_chgb.i.i = getelementptr inbounds %struct.lpc32xx_usbd_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %conn_chgb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %conn_chgb.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, null
  br i1 %cmp.not.i.i, label %if.then3.i.if.end_crit_edge, label %if.then.i.i

if.then3.i.if.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %and4.i = and i32 %call.i, 1
  tail call void %39(i32 noundef %and4.i) #11
  br label %if.end

if.else5.i:                                       ; preds = %if.else.i
  %and6.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else5.i.if.end_crit_edge, label %if.then8.i

if.else5.i.if.end_crit_edge:                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8.i:                                       ; preds = %if.else5.i
  %and9.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else21.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then8.i
  %vbus.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 17
  %40 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i = icmp eq i8 %41, 0
  br i1 %cmp.i, label %if.then13.i, label %if.else14.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stop_activity(ptr noundef %_udc) #11
  br label %if.end

if.else14.i:                                      ; preds = %if.then11.i
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp15.not.i = icmp eq i32 %43, 0
  br i1 %cmp15.not.i, label %if.else14.i.if.end_crit_edge, label %land.lhs.true.i

if.else14.i.if.end_crit_edge:                     ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else14.i
  %driver.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 1
  %44 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver.i, align 8
  %tobool17.not.i = icmp eq ptr %45, null
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then18.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then18.i:                                      ; preds = %land.lhs.true.i
  %poweron.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 20
  %46 = ptrtoint ptr %poweron.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %poweron.i, align 4
  %pullup_job.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %pullup_job.i) #11
  %board.i62.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 6
  %48 = ptrtoint ptr %board.i62.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %board.i62.i, align 4
  %susp_chgb.i.i = getelementptr inbounds %struct.lpc32xx_usbd_cfg, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %susp_chgb.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %susp_chgb.i.i, align 4
  %cmp.not.i63.i = icmp eq ptr %51, null
  br i1 %cmp.not.i63.i, label %if.then18.i.uda_resm_susp_event.exit.i_crit_edge, label %if.then.i64.i

if.then18.i.uda_resm_susp_event.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uda_resm_susp_event.exit.i

if.then.i64.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %51(i32 noundef 1) #11
  br label %uda_resm_susp_event.exit.i

uda_resm_susp_event.exit.i:                       ; preds = %if.then.i64.i, %if.then18.i.uda_resm_susp_event.exit.i_crit_edge
  %52 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 27
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %52, align 2
  br label %if.end

if.else21.i:                                      ; preds = %if.then8.i
  %speed23.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %54 = ptrtoint ptr %speed23.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp24.not.i = icmp eq i32 %55, 0
  br i1 %cmp24.not.i, label %if.else21.i.if.end_crit_edge, label %land.lhs.true26.i

if.else21.i.if.end_crit_edge:                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true26.i:                                ; preds = %if.else21.i
  %driver27.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 1
  %56 = ptrtoint ptr %driver27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver27.i, align 8
  %tobool28.not.i = icmp eq ptr %57, null
  br i1 %tobool28.not.i, label %land.lhs.true26.i.if.end_crit_edge, label %land.lhs.true29.i

land.lhs.true26.i.if.end_crit_edge:               ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true29.i:                                ; preds = %land.lhs.true26.i
  %vbus30.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 17
  %58 = ptrtoint ptr %vbus30.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vbus30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool32.not.i = icmp eq i8 %59, 0
  br i1 %tobool32.not.i, label %land.lhs.true29.i.if.end_crit_edge, label %if.then33.i

land.lhs.true29.i.if.end_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then33.i:                                      ; preds = %land.lhs.true29.i
  %board.i65.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 6
  %60 = ptrtoint ptr %board.i65.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %board.i65.i, align 4
  %susp_chgb.i66.i = getelementptr inbounds %struct.lpc32xx_usbd_cfg, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %susp_chgb.i66.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %susp_chgb.i66.i, align 4
  %cmp.not.i67.i = icmp eq ptr %63, null
  br i1 %cmp.not.i67.i, label %if.then33.i.uda_resm_susp_event.exit69.i_crit_edge, label %if.then.i68.i

if.then33.i.uda_resm_susp_event.exit69.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uda_resm_susp_event.exit69.i

if.then.i68.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %63(i32 noundef 0) #11
  br label %uda_resm_susp_event.exit69.i

uda_resm_susp_event.exit69.i:                     ; preds = %if.then.i68.i, %if.then33.i.uda_resm_susp_event.exit69.i_crit_edge
  %64 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 27
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %64, align 2
  %poweron34.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 20
  %66 = ptrtoint ptr %poweron34.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %poweron34.i, align 4
  %pullup_job35.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i70.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %pullup_job35.i) #11
  br label %if.end

if.end:                                           ; preds = %uda_resm_susp_event.exit69.i, %land.lhs.true29.i.if.end_crit_edge, %land.lhs.true26.i.if.end_crit_edge, %if.else21.i.if.end_crit_edge, %uda_resm_susp_event.exit.i, %land.lhs.true.i.if.end_crit_edge, %if.else14.i.if.end_crit_edge, %if.then13.i, %if.else5.i.if.end_crit_edge, %if.then.i.i, %if.then3.i.if.end_crit_edge, %if.then.i, %entry.if.end_crit_edge
  %and7 = and i32 %and5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end22_crit_edge, label %if.then9

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then9:                                         ; preds = %if.end
  %68 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i = getelementptr i8, ptr %69, i32 512
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i = getelementptr i8, ptr %72, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i = getelementptr i8, ptr %74, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 391936) #11, !srcloc !311
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.cond10.i.while.cond10.i_crit_edge, %do.body.i
  %to.0.i = phi i32 [ 10000, %do.body.i ], [ %dec.i, %while.cond10.i.while.cond10.i_crit_edge ]
  %75 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i = getelementptr i8, ptr %76, i32 512
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %78 = and i32 %77, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp18.i = icmp eq i32 %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i)
  %cmp19.i = icmp ne i32 %to.0.i, 0
  %or.cond.i = select i1 %cmp18.i, i1 %cmp19.i, i1 false
  %dec.i = add nsw i32 %to.0.i, -1
  br i1 %or.cond.i, label %while.cond10.i.while.cond10.i_crit_edge, label %while.end.i

while.cond10.i.while.cond10.i_crit_edge:          ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i

while.end.i:                                      ; preds = %while.cond10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i, label %udc_protocol_cmd_w.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

udc_protocol_cmd_w.exit:                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef 16450048)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_usb_lp_irq.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_usb_lp_irq, %if.end22)) #11
          to label %if.then18 [label %if.end22], !srcloc !309

if.then18:                                        ; preds = %udc_protocol_cmd_w.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 3
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_usb_lp_irq.__UNIQUE_ID_ddebug302, ptr noundef %80, ptr noundef nonnull @.str.104, i32 noundef %call10) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %udc_protocol_cmd_w.exit, %if.end.if.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_usb_hp_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  tail call void @arm_heavy_mb() #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #11, !srcloc !311
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !324
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 33554432) #11, !srcloc !311
  %8 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %while.end.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %12, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %14, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i.i, i32 344320) #11, !srcloc !311
  br label %while.cond10.i.i.i.i

while.cond10.i.i.i.i:                             ; preds = %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge, %do.body.i.i.i.i
  %to.0.i.i.i.i = phi i32 [ 10000, %do.body.i.i.i.i ], [ %dec.i.i.i.i, %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i.i = getelementptr i8, ptr %16, i32 512
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.i.i.i.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i.i)
  %cmp19.i.i.i.i = icmp ne i32 %to.0.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %cmp18.i.i.i.i, i1 %cmp19.i.i.i.i, i1 false
  %dec.i.i.i.i = add nsw i32 %to.0.i.i.i.i, -1
  br i1 %or.cond.i.i.i.i, label %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge, label %while.end.i.i.i.i

while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge: ; preds = %while.cond10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.cond10.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i.i, label %udc_clearep_getsts.exit.i, label %while.end.i.i.i.i.do.body.i.i.i.i_crit_edge

while.end.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

udc_clearep_getsts.exit.i:                        ; preds = %while.end.i.i.i.i
  %ep.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24
  %call.i.i.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef 4260352) #11
  %totalints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 10
  %19 = ptrtoint ptr %totalints.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %totalints.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %totalints.i, align 4
  %and.i = and i32 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %udc_clearep_getsts.exit.i
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %_udc, i32 noundef 4261120, i32 noundef 256) #11
  %queue.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %21 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not12.i.i = icmp eq ptr %22, %queue.i.i
  br i1 %cmp.i.not12.i.i, label %if.then.i.nuke.exit.i_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.nuke.exit.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %23 = phi ptr [ %25, %while.body.i.i.while.body.i.i_crit_edge ], [ %22, %if.then.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 -56
  tail call fastcc void @done(ptr noundef %ep.i, ptr noundef %add.ptr.i.i, i32 noundef -103) #11
  %24 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %queue.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.i.nuke.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.nuke.exit.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %while.body.i.i.nuke.exit.i_crit_edge, %if.then.i.nuke.exit.i_crit_edge
  %ep0state.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 28
  %26 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ep0state.i, align 8
  br label %if.end

if.end.i:                                         ; preds = %udc_clearep_getsts.exit.i
  %and1.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  %ep0state4.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 28
  %27 = ptrtoint ptr %ep0state4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep0state4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  %queue.i20.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %29 = ptrtoint ptr %queue.i20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue.i20.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %30, %queue.i20.i
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  br i1 %cmp.i.not.i21.i, label %if.then5.i.if.end_crit_edge, label %if.else.i.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i.i:                                      ; preds = %if.then5.i
  %add.ptr.i22.i = getelementptr i8, ptr %30, i32 -56
  %length.i.i = getelementptr i8, ptr %30, i32 -52
  %31 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i.i, align 4
  %actual.i.i = getelementptr i8, ptr %30, i32 -4
  %33 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i.i = icmp eq i32 %32, %34
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_write_hwep(ptr noundef %_udc, i32 noundef 1, ptr noundef null, i32 noundef 0) #11
  br label %cleanup.sink.split.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %sub.i.i = sub i32 %32, %34
  %maxpacket.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 0, i32 7
  %35 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  %36 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %bf.cast.i.i) #11
  %37 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i22.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %38, i32 %34
  tail call fastcc void @udc_write_hwep(ptr noundef %_udc, i32 noundef 1, ptr noundef %add.ptr19.i.i, i32 noundef %36) #11
  %39 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual.i.i, align 4
  %add.i.i = add i32 %40, %36
  store i32 %add.i.i, ptr %actual.i.i, align 4
  %41 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load24.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr25.i.i = lshr i56 %bf.load24.i.i, 40
  %bf.cast26.i.i = trunc i56 %bf.lshr25.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %bf.cast26.i.i)
  %cmp27.not.i.i = icmp ult i32 %sub.i.i, %bf.cast26.i.i
  br i1 %cmp27.not.i.i, label %if.end29.i.i, label %if.else5.i.i.if.end_crit_edge

if.else5.i.i.if.end_crit_edge:                    ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end29.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %ep0state4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ep0state4.i, align 8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end29.i.i, %if.then4.i.i
  tail call fastcc void @done(ptr noundef %ep.i, ptr noundef %add.ptr.i22.i, i32 noundef 0) #11
  br label %if.end

if.else.i:                                        ; preds = %if.then3.i
  br i1 %cmp.i.not.i21.i, label %if.else.i.nuke.exit28.i_crit_edge, label %if.else.i.while.body.i27.i_crit_edge

if.else.i.while.body.i27.i_crit_edge:             ; preds = %if.else.i
  br label %while.body.i27.i

if.else.i.nuke.exit28.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit28.i

while.body.i27.i:                                 ; preds = %while.body.i27.i.while.body.i27.i_crit_edge, %if.else.i.while.body.i27.i_crit_edge
  %43 = phi ptr [ %45, %while.body.i27.i.while.body.i27.i_crit_edge ], [ %30, %if.else.i.while.body.i27.i_crit_edge ]
  %add.ptr.i25.i = getelementptr i8, ptr %43, i32 -56
  tail call fastcc void @done(ptr noundef %ep.i, ptr noundef %add.ptr.i25.i, i32 noundef -103) #11
  %44 = ptrtoint ptr %queue.i20.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queue.i20.i, align 4
  %cmp.i.not.i26.i = icmp eq ptr %45, %queue.i20.i
  br i1 %cmp.i.not.i26.i, label %while.body.i27.i.nuke.exit28.i_crit_edge, label %while.body.i27.i.while.body.i27.i_crit_edge

while.body.i27.i.while.body.i27.i_crit_edge:      ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i27.i

while.body.i27.i.nuke.exit28.i_crit_edge:         ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit28.i

nuke.exit28.i:                                    ; preds = %while.body.i27.i.nuke.exit28.i_crit_edge, %if.else.i.nuke.exit28.i_crit_edge
  %46 = ptrtoint ptr %ep0state4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ep0state4.i, align 8
  br label %if.end

if.end:                                           ; preds = %nuke.exit28.i, %cleanup.sink.split.i.i, %if.else5.i.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %nuke.exit.i, %if.then.if.end_crit_edge
  %and8 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i40 = getelementptr i8, ptr %48, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i40, i32 16777216) #11, !srcloc !311
  %49 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i.i41 = getelementptr i8, ptr %50, i32 512
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i41) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i.i.i44

do.body.i.i.i.i44:                                ; preds = %while.end.i.i.i.i52.do.body.i.i.i.i44_crit_edge, %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i.i42 = getelementptr i8, ptr %53, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i42, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i.i43 = getelementptr i8, ptr %55, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i.i43, i32 344064) #11, !srcloc !311
  br label %while.cond10.i.i.i.i51

while.cond10.i.i.i.i51:                           ; preds = %while.cond10.i.i.i.i51.while.cond10.i.i.i.i51_crit_edge, %do.body.i.i.i.i44
  %to.0.i.i.i.i45 = phi i32 [ 10000, %do.body.i.i.i.i44 ], [ %dec.i.i.i.i50, %while.cond10.i.i.i.i51.while.cond10.i.i.i.i51_crit_edge ]
  %56 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i.i46 = getelementptr i8, ptr %57, i32 512
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i.i46) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %59 = and i32 %58, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp18.i.i.i.i47 = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i.i45)
  %cmp19.i.i.i.i48 = icmp ne i32 %to.0.i.i.i.i45, 0
  %or.cond.i.i.i.i49 = select i1 %cmp18.i.i.i.i47, i1 %cmp19.i.i.i.i48, i1 false
  %dec.i.i.i.i50 = add nsw i32 %to.0.i.i.i.i45, -1
  br i1 %or.cond.i.i.i.i49, label %while.cond10.i.i.i.i51.while.cond10.i.i.i.i51_crit_edge, label %while.end.i.i.i.i52

while.cond10.i.i.i.i51.while.cond10.i.i.i.i51_crit_edge: ; preds = %while.cond10.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i.i51

while.end.i.i.i.i52:                              ; preds = %while.cond10.i.i.i.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i.i48, label %udc_clearep_getsts.exit.i59, label %while.end.i.i.i.i52.do.body.i.i.i.i44_crit_edge

while.end.i.i.i.i52.do.body.i.i.i.i44_crit_edge:  ; preds = %while.end.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i44

udc_clearep_getsts.exit.i59:                      ; preds = %while.end.i.i.i.i52
  %ep.i53 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24
  %call.i.i.i54 = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef 4194816) #11
  %totalints.i55 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 10
  %60 = ptrtoint ptr %totalints.i55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %totalints.i55, align 4
  %inc.i56 = add i32 %61, 1
  store i32 %inc.i56, ptr %totalints.i55, align 4
  %and.i57 = and i32 %call.i.i.i54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %if.end.i70, label %if.then.i62

if.then.i62:                                      ; preds = %udc_clearep_getsts.exit.i59
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %_udc, i32 noundef 4195584, i32 noundef 256) #11
  %queue.i.i60 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %62 = ptrtoint ptr %queue.i.i60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %queue.i.i60, align 4
  %cmp.i.not12.i.i61 = icmp eq ptr %63, %queue.i.i60
  br i1 %cmp.i.not12.i.i61, label %if.then.i62.nuke.exit.i67_crit_edge, label %if.then.i62.while.body.i.i65_crit_edge

if.then.i62.while.body.i.i65_crit_edge:           ; preds = %if.then.i62
  br label %while.body.i.i65

if.then.i62.nuke.exit.i67_crit_edge:              ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit.i67

while.body.i.i65:                                 ; preds = %while.body.i.i65.while.body.i.i65_crit_edge, %if.then.i62.while.body.i.i65_crit_edge
  %64 = phi ptr [ %66, %while.body.i.i65.while.body.i.i65_crit_edge ], [ %63, %if.then.i62.while.body.i.i65_crit_edge ]
  %add.ptr.i.i63 = getelementptr i8, ptr %64, i32 -56
  tail call fastcc void @done(ptr noundef %ep.i53, ptr noundef %add.ptr.i.i63, i32 noundef -103) #11
  %65 = ptrtoint ptr %queue.i.i60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %queue.i.i60, align 4
  %cmp.i.not.i.i64 = icmp eq ptr %66, %queue.i.i60
  br i1 %cmp.i.not.i.i64, label %while.body.i.i65.nuke.exit.i67_crit_edge, label %while.body.i.i65.while.body.i.i65_crit_edge

while.body.i.i65.while.body.i.i65_crit_edge:      ; preds = %while.body.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i65

while.body.i.i65.nuke.exit.i67_crit_edge:         ; preds = %while.body.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit.i67

nuke.exit.i67:                                    ; preds = %while.body.i.i65.nuke.exit.i67_crit_edge, %if.then.i62.nuke.exit.i67_crit_edge
  %ep0state.i66 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 28
  %67 = ptrtoint ptr %ep0state.i66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ep0state.i66, align 8
  br label %if.end12

if.end.i70:                                       ; preds = %udc_clearep_getsts.exit.i59
  %and1.i68 = and i32 %call.i.i.i54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i68)
  %tobool2.not.i69 = icmp eq i32 %and1.i68, 0
  br i1 %tobool2.not.i69, label %if.end4.i, label %if.end.i70.if.end12_crit_edge

if.end.i70.if.end12_crit_edge:                    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end4.i:                                        ; preds = %if.end.i70
  %and5.i = and i32 %call.i.i.i54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then7.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  %queue.i33.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %68 = ptrtoint ptr %queue.i33.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %queue.i33.i, align 4
  %cmp.i.not12.i34.i = icmp eq ptr %69, %queue.i33.i
  br i1 %cmp.i.not12.i34.i, label %if.then7.i.nuke.exit38.i_crit_edge, label %if.then7.i.while.body.i37.i_crit_edge

if.then7.i.while.body.i37.i_crit_edge:            ; preds = %if.then7.i
  br label %while.body.i37.i

if.then7.i.nuke.exit38.i_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit38.i

while.body.i37.i:                                 ; preds = %while.body.i37.i.while.body.i37.i_crit_edge, %if.then7.i.while.body.i37.i_crit_edge
  %70 = phi ptr [ %72, %while.body.i37.i.while.body.i37.i_crit_edge ], [ %69, %if.then7.i.while.body.i37.i_crit_edge ]
  %add.ptr.i35.i = getelementptr i8, ptr %70, i32 -56
  tail call fastcc void @done(ptr noundef %ep.i53, ptr noundef %add.ptr.i35.i, i32 noundef 0) #11
  %71 = ptrtoint ptr %queue.i33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %queue.i33.i, align 4
  %cmp.i.not.i36.i = icmp eq ptr %72, %queue.i33.i
  br i1 %cmp.i.not.i36.i, label %while.body.i37.i.nuke.exit38.i_crit_edge, label %while.body.i37.i.while.body.i37.i_crit_edge

while.body.i37.i.while.body.i37.i_crit_edge:      ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i37.i

while.body.i37.i.nuke.exit38.i_crit_edge:         ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit38.i

nuke.exit38.i:                                    ; preds = %while.body.i37.i.nuke.exit38.i_crit_edge, %if.then7.i.nuke.exit38.i_crit_edge
  %ep0state8.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 28
  %73 = ptrtoint ptr %ep0state8.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %ep0state8.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %nuke.exit38.i, %if.end4.i.if.end9.i_crit_edge
  %and10.i = and i32 %call.i.i.i54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end12_crit_edge, label %if.then12.i

if.end9.i.if.end12_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then12.i:                                      ; preds = %if.end9.i
  %ep0state13.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 28
  %74 = ptrtoint ptr %ep0state13.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ep0state13.i, align 8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %75, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_handle_ep0_setup(ptr noundef %_udc) #11
  br label %if.end12

sw.bb14.i:                                        ; preds = %if.then12.i
  %queue.i39.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %77 = ptrtoint ptr %queue.i39.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %queue.i39.i, align 4
  %cmp.i.not.i40.i = icmp eq ptr %78, %queue.i39.i
  br i1 %cmp.i.not.i40.i, label %sw.bb14.i.if.end12_crit_edge, label %if.else.i.i71

sw.bb14.i.if.end12_crit_edge:                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.else.i.i71:                                    ; preds = %sw.bb14.i
  %add.ptr.i41.i = getelementptr i8, ptr %78, i32 -56
  %tobool2.not.i.i = icmp eq ptr %add.ptr.i41.i, null
  br i1 %tobool2.not.i.i, label %if.else.i.i71.if.end12_crit_edge, label %if.then3.i.i

if.else.i.i71.if.end12_crit_edge:                 ; preds = %if.else.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3.i.i:                                     ; preds = %if.else.i.i71
  %length.i.i72 = getelementptr i8, ptr %78, i32 -52
  %79 = ptrtoint ptr %length.i.i72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length.i.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i73 = icmp eq i32 %80, 0
  br i1 %cmp.i.i73, label %if.then3.i.i.cleanup.sink.split.i.i81_crit_edge, label %if.end6.i.i

if.then3.i.i.cleanup.sink.split.i.i81_crit_edge:  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i81

if.end6.i.i:                                      ; preds = %if.then3.i.i
  %actual.i.i74 = getelementptr i8, ptr %78, i32 -4
  %81 = ptrtoint ptr %actual.i.i74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %actual.i.i74, align 4
  %sub.i.i75 = sub i32 %80, %82
  %maxpacket.i.i76 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 0, i32 7
  %83 = ptrtoint ptr %maxpacket.i.i76 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 7)
  %bf.load.i.i77 = load i56, ptr %maxpacket.i.i76, align 2
  %bf.lshr.i.i78 = lshr i56 %bf.load.i.i77, 40
  %bf.cast.i.i79 = trunc i56 %bf.lshr.i.i78 to i32
  %84 = tail call i32 @llvm.umin.i32(i32 %sub.i.i75, i32 %bf.cast.i.i79) #11
  %85 = ptrtoint ptr %add.ptr.i41.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i41.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %86, i32 %82
  tail call void @llvm.prefetch.p0(ptr %add.ptr22.i.i, i32 1, i32 3, i32 1) #11
  %call28.i.i = tail call fastcc i32 @udc_read_hwep(ptr noundef %_udc, ptr noundef %add.ptr22.i.i, i32 noundef %84) #11
  %87 = ptrtoint ptr %actual.i.i74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual.i.i74, align 4
  %add.i.i80 = add i32 %88, %84
  store i32 %add.i.i80, ptr %actual.i.i74, align 4
  %89 = ptrtoint ptr %maxpacket.i.i76 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 7)
  %bf.load33.i.i = load i56, ptr %maxpacket.i.i76, align 2
  %bf.lshr34.i.i = lshr i56 %bf.load33.i.i, 40
  %bf.cast35.i.i = trunc i56 %bf.lshr34.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.i.i, i32 %bf.cast35.i.i)
  %cmp36.i.i = icmp ult i32 %call28.i.i, %bf.cast35.i.i
  br i1 %cmp36.i.i, label %if.end6.i.i.cleanup.sink.split.i.i81_crit_edge, label %if.end6.i.i.if.end12_crit_edge

if.end6.i.i.if.end12_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end6.i.i.cleanup.sink.split.i.i81_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i81

cleanup.sink.split.i.i81:                         ; preds = %if.end6.i.i.cleanup.sink.split.i.i81_crit_edge, %if.then3.i.i.cleanup.sink.split.i.i81_crit_edge
  tail call fastcc void @done(ptr noundef %ep.i53, ptr noundef nonnull %add.ptr.i41.i, i32 noundef 0) #11
  %90 = ptrtoint ptr %ep0state13.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %ep0state13.i, align 8
  br label %if.end12

sw.default.i:                                     ; preds = %if.then12.i
  %queue.i42.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 0, i32 1
  %91 = ptrtoint ptr %queue.i42.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %queue.i42.i, align 4
  %cmp.i.not12.i43.i = icmp eq ptr %92, %queue.i42.i
  br i1 %cmp.i.not12.i43.i, label %sw.default.i.nuke.exit47.i_crit_edge, label %sw.default.i.while.body.i46.i_crit_edge

sw.default.i.while.body.i46.i_crit_edge:          ; preds = %sw.default.i
  br label %while.body.i46.i

sw.default.i.nuke.exit47.i_crit_edge:             ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit47.i

while.body.i46.i:                                 ; preds = %while.body.i46.i.while.body.i46.i_crit_edge, %sw.default.i.while.body.i46.i_crit_edge
  %93 = phi ptr [ %95, %while.body.i46.i.while.body.i46.i_crit_edge ], [ %92, %sw.default.i.while.body.i46.i_crit_edge ]
  %add.ptr.i44.i = getelementptr i8, ptr %93, i32 -56
  tail call fastcc void @done(ptr noundef %ep.i53, ptr noundef %add.ptr.i44.i, i32 noundef -103) #11
  %94 = ptrtoint ptr %queue.i42.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %queue.i42.i, align 4
  %cmp.i.not.i45.i = icmp eq ptr %95, %queue.i42.i
  br i1 %cmp.i.not.i45.i, label %while.body.i46.i.nuke.exit47.i_crit_edge, label %while.body.i46.i.while.body.i46.i_crit_edge

while.body.i46.i.while.body.i46.i_crit_edge:      ; preds = %while.body.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i46.i

while.body.i46.i.nuke.exit47.i_crit_edge:         ; preds = %while.body.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit47.i

nuke.exit47.i:                                    ; preds = %while.body.i46.i.nuke.exit47.i_crit_edge, %sw.default.i.nuke.exit47.i_crit_edge
  %96 = ptrtoint ptr %ep0state13.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %ep0state13.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %nuke.exit47.i, %cleanup.sink.split.i.i81, %if.end6.i.i.if.end12_crit_edge, %if.else.i.i71.if.end12_crit_edge, %sw.bb14.i.if.end12_crit_edge, %sw.bb.i, %if.end9.i.if.end12_crit_edge, %if.end.i70.if.end12_crit_edge, %nuke.exit.i67, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %tobool14.not = icmp ult i32 %5, 4
  br i1 %tobool14.not, label %if.end12.if.end22_crit_edge, label %for.cond.preheader

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end12
  %enabled_hwepints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 14
  %udca_v_base.i115 = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0123 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %hwep_num = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123, i32 4
  %97 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hwep_num, align 4
  %shl = shl nuw i32 1, %98
  %and16 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123
  %99 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hwep_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i82 = icmp eq i32 %100, 0
  br i1 %cmp.i82, label %if.then18.for.inc_crit_edge, label %if.end.i86

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i86:                                       ; preds = %if.then18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i = shl nuw i32 1, %100
  %101 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %102 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i83 = getelementptr i8, ptr %103, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 %101) #11, !srcloc !311
  %104 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %enabled_hwepints.i, align 8
  %106 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hwep_num, align 4
  %shl.i = shl nuw i32 1, %107
  %and.i84 = and i32 %shl.i, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %if.end.i86.for.inc_crit_edge, label %if.end4.i89

if.end.i86.for.inc_crit_edge:                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end4.i89:                                      ; preds = %if.end.i86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %108 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %109 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i87 = getelementptr i8, ptr %110, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i87, i32 %108) #11, !srcloc !311
  %shl.i3.i.i = shl i32 %107, 16
  %or.i.i.i = or i32 %shl.i3.i.i, 4195584
  %111 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i.i88 = getelementptr i8, ptr %112, i32 512
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i88) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  br label %do.body.i.i.i.i92

do.body.i.i.i.i92:                                ; preds = %while.end.i.i.i.i100.do.body.i.i.i.i92_crit_edge, %if.end4.i89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i.i90 = getelementptr i8, ptr %116, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i90, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %117 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i.i91 = getelementptr i8, ptr %118, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i.i91, i32 %114) #11, !srcloc !311
  br label %while.cond10.i.i.i.i99

while.cond10.i.i.i.i99:                           ; preds = %while.cond10.i.i.i.i99.while.cond10.i.i.i.i99_crit_edge, %do.body.i.i.i.i92
  %to.0.i.i.i.i93 = phi i32 [ 10000, %do.body.i.i.i.i92 ], [ %dec.i.i.i.i98, %while.cond10.i.i.i.i99.while.cond10.i.i.i.i99_crit_edge ]
  %119 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i.i94 = getelementptr i8, ptr %120, i32 512
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i.i94) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %122 = and i32 %121, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp18.i.i.i.i95 = icmp eq i32 %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i.i93)
  %cmp19.i.i.i.i96 = icmp ne i32 %to.0.i.i.i.i93, 0
  %or.cond.i.i.i.i97 = select i1 %cmp18.i.i.i.i95, i1 %cmp19.i.i.i.i96, i1 false
  %dec.i.i.i.i98 = add nsw i32 %to.0.i.i.i.i93, -1
  br i1 %or.cond.i.i.i.i97, label %while.cond10.i.i.i.i99.while.cond10.i.i.i.i99_crit_edge, label %while.end.i.i.i.i100

while.cond10.i.i.i.i99.while.cond10.i.i.i.i99_crit_edge: ; preds = %while.cond10.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i.i99

while.end.i.i.i.i100:                             ; preds = %while.cond10.i.i.i.i99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i.i96, label %udc_clearep_getsts.exit.i102, label %while.end.i.i.i.i100.do.body.i.i.i.i92_crit_edge

while.end.i.i.i.i100.do.body.i.i.i.i92_crit_edge: ; preds = %while.end.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i92

udc_clearep_getsts.exit.i102:                     ; preds = %while.end.i.i.i.i100
  %or2.i.i.i = or i32 %shl.i3.i.i, 4194816
  %call.i.i.i101 = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef %or2.i.i.i) #11
  %and6.i = and i32 %call.i.i.i101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i103, label %udc_clearep_getsts.exit.i102.for.inc_crit_edge

udc_clearep_getsts.exit.i102.for.inc_crit_edge:   ; preds = %udc_clearep_getsts.exit.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9.i103:                                     ; preds = %udc_clearep_getsts.exit.i102
  %is_in.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123, i32 7
  %123 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %is_in.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool10.not.i = icmp eq i8 %124, 0
  br i1 %tobool10.not.i, label %if.end9.i103.for.inc_crit_edge, label %if.then11.i

if.end9.i103.for.inc_crit_edge:                   ; preds = %if.end9.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11.i:                                      ; preds = %if.end9.i103
  tail call fastcc void @udc_send_in_zlp(ptr noundef %_udc, ptr noundef %arrayidx) #11
  %125 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hwep_num, align 4
  %shl.i51.i = shl nuw i32 1, %126
  %neg.i.i = xor i32 %shl.i51.i, -1
  %127 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %enabled_hwepints.i, align 8
  %and.i.i = and i32 %128, %neg.i.i
  store i32 %and.i.i, ptr %enabled_hwepints.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %129 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %enabled_hwepints.i, align 8
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #11
  %132 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %133, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %131) #11, !srcloc !311
  %queue.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123, i32 1
  %134 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %queue.i, align 4
  %add.ptr.i = getelementptr i8, ptr %135, i32 -56
  %tobool14.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool14.not.i, label %if.then11.i.for.inc_crit_edge, label %if.then15.i

if.then11.i.for.inc_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then15.i:                                      ; preds = %if.then11.i
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef 0) #11
  %136 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %137, %queue.i
  br i1 %cmp.i.not.i, label %if.else27.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then15.i
  %138 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_in.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool21.not.i = icmp eq i8 %139, 0
  %140 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hwep_num, align 4
  %req_pending.i105 = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123, i32 8
  %142 = ptrtoint ptr %req_pending.i105 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %req_pending.i105, align 1
  %dd_desc_ptr.i = getelementptr i8, ptr %137, i32 8
  %143 = ptrtoint ptr %dd_desc_ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dd_desc_ptr.i, align 4
  %this_dma.i = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %this_dma.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %this_dma.i, align 4
  %147 = ptrtoint ptr %udca_v_base.i115 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %udca_v_base.i115, align 8
  %arrayidx.i = getelementptr i32, ptr %148, i32 %141
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %146, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %shl.i.i107 = shl nuw i32 1, %141
  %150 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i107) #11
  %151 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i109 = getelementptr i8, ptr %152, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %150) #11
  br i1 %tobool21.not.i, label %if.then19.i.for.inc_crit_edge, label %if.then22.i

if.then19.i.for.inc_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then22.i:                                      ; preds = %if.then19.i
  %length.i = getelementptr i8, ptr %137, i32 -52
  %153 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %length.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 7
  %155 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %rem.i = urem i32 %154, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i120 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i120, label %if.then22.i.for.inc_crit_edge, label %if.then.i121

if.then22.i.for.inc_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i121:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %send_zlp.i = getelementptr i8, ptr %137, i32 13
  br label %for.inc.sink.split

if.else27.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_pending.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.0123, i32 8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else27.i, %if.then.i121
  %req_pending.i.sink = phi ptr [ %req_pending.i, %if.else27.i ], [ %send_zlp.i, %if.then.i121 ]
  %156 = ptrtoint ptr %req_pending.i.sink to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %req_pending.i.sink, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then22.i.for.inc_crit_edge, %if.then19.i.for.inc_crit_edge, %if.then11.i.for.inc_crit_edge, %if.end9.i103.for.inc_crit_edge, %udc_clearep_getsts.exit.i102.for.inc_crit_edge, %if.end.i86.for.inc_crit_edge, %if.then18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_usb_devdma_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 672
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %3 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr6 = getelementptr i8, ptr %4, i32 644
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  %6 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr13 = getelementptr i8, ptr %7, i32 684
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  %9 = and i32 %8, %5
  %10 = or i32 %9, %2
  %11 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr20 = getelementptr i8, ptr %12, i32 696
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  %14 = or i32 %10, %13
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %enabled_hwepints.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 14
  %udca_v_base.i247.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %hwep_num = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 4
  %16 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwep_num, align 4
  %shl = shl nuw i32 1, %17
  %and25 = and i32 %shl, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040
  %totalints.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 10
  %18 = ptrtoint ptr %totalints.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %totalints.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %totalints.i, align 4
  %queue.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 1
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -56
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %udc1.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %22 = ptrtoint ptr %udc1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udc1.i, align 4
  %dev.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #14
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %dd_desc_ptr.i = getelementptr i8, ptr %21, i32 8
  %26 = ptrtoint ptr %dd_desc_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dd_desc_ptr.i, align 4
  %dd_status.i = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dd_status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dd_status.i, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %udc7.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %30 = ptrtoint ptr %udc7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udc7.i, align 4
  %dev8.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev8.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end6.i, %if.end.i.if.end9.i_crit_edge
  %34 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %shl.i.i = shl nuw i32 1, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %37 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %36) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hwep_num, align 4
  %shl.i = shl nuw i32 1, %40
  %41 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %42 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i = getelementptr i8, ptr %43, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %41) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwep_num, align 4
  %shl19.i = shl nuw i32 1, %45
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl19.i) #11
  %47 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr21.i = getelementptr i8, ptr %48, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %46) #11, !srcloc !311
  %49 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr23.i = getelementptr i8, ptr %50, i32 696
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #11, !srcloc !324
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  %53 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwep_num, align 4
  %shl27.i = shl nuw i32 1, %54
  %and28.i = and i32 %shl27.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end43.i, label %do.body31.i

do.body31.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hwep_num, align 4
  %shl35.i = shl nuw i32 1, %56
  %57 = tail call i32 @llvm.bswap.i32(i32 %shl35.i) #11
  %58 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr37.i = getelementptr i8, ptr %59, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %57) #11, !srcloc !311
  %udc41.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %60 = ptrtoint ptr %udc41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udc41.i, align 4
  %dev42.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev42.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.110) #14
  %req_pending.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %64 = ptrtoint ptr %req_pending.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %req_pending.i, align 1
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef -103) #11
  br label %for.inc

if.end43.i:                                       ; preds = %if.end9.i
  %65 = ptrtoint ptr %dd_status.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dd_status.i, align 4
  %and45.i = and i32 %66, 30
  %67 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %and45.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb52.i
    i32 4, label %if.end43.i.sw.epilog.i_crit_edge
    i32 6, label %if.end43.i.sw.epilog.i_crit_edge44
  ]

if.end43.i.sw.epilog.i_crit_edge44:               ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end43.i.sw.epilog.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_pending46.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %68 = ptrtoint ptr %req_pending46.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %req_pending46.i, align 1
  %udc50.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %69 = ptrtoint ptr %udc50.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %udc50.i, align 4
  %dev51.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev51.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.110, i32 noundef %66) #14
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef -103) #11
  br label %for.inc

sw.bb52.i:                                        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_pending53.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %73 = ptrtoint ptr %req_pending53.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %req_pending53.i, align 1
  %udc57.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %74 = ptrtoint ptr %udc57.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %udc57.i, align 4
  %dev58.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev58.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.110, i32 noundef %66) #14
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef -103) #11
  br label %for.inc

sw.default.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_pending60.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %78 = ptrtoint ptr %req_pending60.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %req_pending60.i, align 1
  %udc64.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 2
  %79 = ptrtoint ptr %udc64.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udc64.i, align 4
  %dev65.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %dev65.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev65.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.110, i32 noundef %66) #14
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef -103) #11
  br label %for.inc

sw.epilog.i:                                      ; preds = %if.end43.i.sw.epilog.i_crit_edge, %if.end43.i.sw.epilog.i_crit_edge44
  %eptype.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 9
  %83 = ptrtoint ptr %eptype.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %eptype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i = icmp eq i32 %84, 1
  br i1 %cmp.i, label %if.then66.i, label %if.else75.i

if.then66.i:                                      ; preds = %sw.epilog.i
  %is_in.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 7
  %85 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_in.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool67.not.i = icmp eq i8 %86, 0
  br i1 %tobool67.not.i, label %if.else.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr i8, ptr %21, i32 -52
  %87 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length.i, align 4
  %actual.i = getelementptr i8, ptr %21, i32 -4
  %89 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %actual.i, align 4
  br label %if.end79.i

if.else.i:                                        ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #13
  %iso_status.i = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %27, i32 0, i32 6
  %90 = ptrtoint ptr %iso_status.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iso_status.i, align 4
  %and71.i = and i32 %91, 65535
  %actual73.i = getelementptr i8, ptr %21, i32 -4
  %92 = ptrtoint ptr %actual73.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and71.i, ptr %actual73.i, align 4
  br label %if.end79.i

if.else75.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %66, 16
  %actual78.i = getelementptr i8, ptr %21, i32 -4
  %93 = ptrtoint ptr %actual78.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %actual78.i, align 4
  %add.i = add i32 %94, %shr.i
  store i32 %add.i, ptr %actual78.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else75.i, %if.else.i, %if.then68.i
  %send_zlp.i = getelementptr i8, ptr %21, i32 13
  %95 = ptrtoint ptr %send_zlp.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %send_zlp.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool80.not.i = icmp eq i8 %96, 0
  br i1 %tobool80.not.i, label %if.end79.i.if.end94.i_crit_edge, label %if.then81.i

if.end79.i.if.end94.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94.i

if.then81.i:                                      ; preds = %if.end79.i
  %97 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i.i = shl nuw i32 1, %98
  %99 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i.i) #11
  %100 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %101, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %99) #11, !srcloc !311
  %shl.i3.i.i = shl i32 %98, 16
  %or.i.i.i = or i32 %shl.i3.i.i, 4195584
  %102 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %103, i32 512
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %while.end.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then81.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %106 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %107, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %109, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i.i, i32 %105) #11, !srcloc !311
  br label %while.cond10.i.i.i.i

while.cond10.i.i.i.i:                             ; preds = %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge, %do.body.i.i.i.i
  %to.0.i.i.i.i = phi i32 [ 10000, %do.body.i.i.i.i ], [ %dec.i.i.i.i, %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge ]
  %110 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i.i = getelementptr i8, ptr %111, i32 512
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %113 = and i32 %112, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp18.i.i.i.i = icmp eq i32 %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i.i)
  %cmp19.i.i.i.i = icmp ne i32 %to.0.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %cmp18.i.i.i.i, i1 %cmp19.i.i.i.i, i1 false
  %dec.i.i.i.i = add nsw i32 %to.0.i.i.i.i, -1
  br i1 %or.cond.i.i.i.i, label %while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge, label %while.end.i.i.i.i

while.cond10.i.i.i.i.while.cond10.i.i.i.i_crit_edge: ; preds = %while.cond10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.cond10.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i.i, label %udc_clearep_getsts.exit.i, label %while.end.i.i.i.i.do.body.i.i.i.i_crit_edge

while.end.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

udc_clearep_getsts.exit.i:                        ; preds = %while.end.i.i.i.i
  %or2.i.i.i = or i32 %shl.i3.i.i, 4194816
  %call.i.i.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef %or2.i.i.i) #11
  %and84.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.else92.i, label %if.then86.i

if.then86.i:                                      ; preds = %udc_clearep_getsts.exit.i
  %114 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i176.i = shl nuw i32 1, %115
  %116 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i176.i) #11
  %117 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i178.i = getelementptr i8, ptr %118, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i178.i, i32 %116) #11, !srcloc !311
  %shl.i3.i179.i = shl i32 %115, 16
  %or.i.i180.i = or i32 %shl.i3.i179.i, 4195584
  %119 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i181.i = getelementptr i8, ptr %120, i32 512
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i181.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i.i180.i) #11
  br label %do.body.i.i.i184.i

do.body.i.i.i184.i:                               ; preds = %while.end.i.i.i192.i.do.body.i.i.i184.i_crit_edge, %if.then86.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %123 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i182.i = getelementptr i8, ptr %124, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i182.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %125 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i183.i = getelementptr i8, ptr %126, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i183.i, i32 %122) #11, !srcloc !311
  br label %while.cond10.i.i.i191.i

while.cond10.i.i.i191.i:                          ; preds = %while.cond10.i.i.i191.i.while.cond10.i.i.i191.i_crit_edge, %do.body.i.i.i184.i
  %to.0.i.i.i185.i = phi i32 [ 10000, %do.body.i.i.i184.i ], [ %dec.i.i.i190.i, %while.cond10.i.i.i191.i.while.cond10.i.i.i191.i_crit_edge ]
  %127 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i186.i = getelementptr i8, ptr %128, i32 512
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i186.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %130 = and i32 %129, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp18.i.i.i187.i = icmp eq i32 %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i185.i)
  %cmp19.i.i.i188.i = icmp ne i32 %to.0.i.i.i185.i, 0
  %or.cond.i.i.i189.i = select i1 %cmp18.i.i.i187.i, i1 %cmp19.i.i.i188.i, i1 false
  %dec.i.i.i190.i = add nsw i32 %to.0.i.i.i185.i, -1
  br i1 %or.cond.i.i.i189.i, label %while.cond10.i.i.i191.i.while.cond10.i.i.i191.i_crit_edge, label %while.end.i.i.i192.i

while.cond10.i.i.i191.i.while.cond10.i.i.i191.i_crit_edge: ; preds = %while.cond10.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i191.i

while.end.i.i.i192.i:                             ; preds = %while.cond10.i.i.i191.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i188.i, label %udc_clearep_getsts.exit195.i, label %while.end.i.i.i192.i.do.body.i.i.i184.i_crit_edge

while.end.i.i.i192.i.do.body.i.i.i184.i_crit_edge: ; preds = %while.end.i.i.i192.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i184.i

udc_clearep_getsts.exit195.i:                     ; preds = %while.end.i.i.i192.i
  %or2.i.i193.i = or i32 %shl.i3.i179.i, 4194816
  %call.i.i194.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef %or2.i.i193.i) #11
  %131 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hwep_num, align 4
  %shl.i196.i = shl nuw i32 1, %132
  %133 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %enabled_hwepints.i.i, align 8
  %or.i.i = or i32 %134, %shl.i196.i
  store i32 %or.i.i, ptr %enabled_hwepints.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %135 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %enabled_hwepints.i.i, align 8
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #11
  %138 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i198.i = getelementptr i8, ptr %139, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 %137) #11, !srcloc !311
  %140 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i199.i = shl nuw i32 1, %141
  %142 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i199.i) #11
  %143 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i201.i = getelementptr i8, ptr %144, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.i, i32 %142) #11, !srcloc !311
  %shl.i3.i202.i = shl i32 %141, 16
  %or.i.i203.i = or i32 %shl.i3.i202.i, 4195584
  %145 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i204.i = getelementptr i8, ptr %146, i32 512
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i204.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %148 = tail call i32 @llvm.bswap.i32(i32 %or.i.i203.i) #11
  br label %do.body.i.i.i207.i

do.body.i.i.i207.i:                               ; preds = %while.end.i.i.i215.i.do.body.i.i.i207.i_crit_edge, %udc_clearep_getsts.exit195.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %149 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i205.i = getelementptr i8, ptr %150, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i205.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %151 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i206.i = getelementptr i8, ptr %152, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i206.i, i32 %148) #11, !srcloc !311
  br label %while.cond10.i.i.i214.i

while.cond10.i.i.i214.i:                          ; preds = %while.cond10.i.i.i214.i.while.cond10.i.i.i214.i_crit_edge, %do.body.i.i.i207.i
  %to.0.i.i.i208.i = phi i32 [ 10000, %do.body.i.i.i207.i ], [ %dec.i.i.i213.i, %while.cond10.i.i.i214.i.while.cond10.i.i.i214.i_crit_edge ]
  %153 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i209.i = getelementptr i8, ptr %154, i32 512
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i209.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %156 = and i32 %155, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp18.i.i.i210.i = icmp eq i32 %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i208.i)
  %cmp19.i.i.i211.i = icmp ne i32 %to.0.i.i.i208.i, 0
  %or.cond.i.i.i212.i = select i1 %cmp18.i.i.i210.i, i1 %cmp19.i.i.i211.i, i1 false
  %dec.i.i.i213.i = add nsw i32 %to.0.i.i.i208.i, -1
  br i1 %or.cond.i.i.i212.i, label %while.cond10.i.i.i214.i.while.cond10.i.i.i214.i_crit_edge, label %while.end.i.i.i215.i

while.cond10.i.i.i214.i.while.cond10.i.i.i214.i_crit_edge: ; preds = %while.cond10.i.i.i214.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i214.i

while.end.i.i.i215.i:                             ; preds = %while.cond10.i.i.i214.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i211.i, label %udc_clearep_getsts.exit218.i, label %while.end.i.i.i215.i.do.body.i.i.i207.i_crit_edge

while.end.i.i.i215.i.do.body.i.i.i207.i_crit_edge: ; preds = %while.end.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i207.i

udc_clearep_getsts.exit218.i:                     ; preds = %while.end.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #13
  %or2.i.i216.i = or i32 %shl.i3.i202.i, 4194816
  %call.i.i217.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef %or2.i.i216.i) #11
  br label %for.inc

if.else92.i:                                      ; preds = %udc_clearep_getsts.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_send_in_zlp(ptr noundef %_udc, ptr noundef %arrayidx) #11
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else92.i, %if.end79.i.if.end94.i_crit_edge
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i32 noundef 0) #11
  %157 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i219.i = shl nuw i32 1, %158
  %159 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i219.i) #11
  %160 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i221.i = getelementptr i8, ptr %161, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i221.i, i32 %159) #11, !srcloc !311
  %shl.i3.i222.i = shl i32 %158, 16
  %or.i.i223.i = or i32 %shl.i3.i222.i, 4195584
  %162 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i224.i = getelementptr i8, ptr %163, i32 512
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i224.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %165 = tail call i32 @llvm.bswap.i32(i32 %or.i.i223.i) #11
  br label %do.body.i.i.i227.i

do.body.i.i.i227.i:                               ; preds = %while.end.i.i.i235.i.do.body.i.i.i227.i_crit_edge, %if.end94.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %166 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i225.i = getelementptr i8, ptr %167, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i225.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %168 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i226.i = getelementptr i8, ptr %169, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i226.i, i32 %165) #11, !srcloc !311
  br label %while.cond10.i.i.i234.i

while.cond10.i.i.i234.i:                          ; preds = %while.cond10.i.i.i234.i.while.cond10.i.i.i234.i_crit_edge, %do.body.i.i.i227.i
  %to.0.i.i.i228.i = phi i32 [ 10000, %do.body.i.i.i227.i ], [ %dec.i.i.i233.i, %while.cond10.i.i.i234.i.while.cond10.i.i.i234.i_crit_edge ]
  %170 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i229.i = getelementptr i8, ptr %171, i32 512
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i229.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %173 = and i32 %172, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp18.i.i.i230.i = icmp eq i32 %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i228.i)
  %cmp19.i.i.i231.i = icmp ne i32 %to.0.i.i.i228.i, 0
  %or.cond.i.i.i232.i = select i1 %cmp18.i.i.i230.i, i1 %cmp19.i.i.i231.i, i1 false
  %dec.i.i.i233.i = add nsw i32 %to.0.i.i.i228.i, -1
  br i1 %or.cond.i.i.i232.i, label %while.cond10.i.i.i234.i.while.cond10.i.i.i234.i_crit_edge, label %while.end.i.i.i235.i

while.cond10.i.i.i234.i.while.cond10.i.i.i234.i_crit_edge: ; preds = %while.cond10.i.i.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i234.i

while.end.i.i.i235.i:                             ; preds = %while.cond10.i.i.i234.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i231.i, label %udc_clearep_getsts.exit238.i, label %while.end.i.i.i235.i.do.body.i.i.i227.i_crit_edge

while.end.i.i.i235.i.do.body.i.i.i227.i_crit_edge: ; preds = %while.end.i.i.i235.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i227.i

udc_clearep_getsts.exit238.i:                     ; preds = %while.end.i.i.i235.i
  %or2.i.i236.i = or i32 %shl.i3.i222.i, 4194816
  %call.i.i237.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %_udc, i32 noundef %or2.i.i236.i) #11
  %174 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %175, %queue.i
  br i1 %cmp.i.not.i, label %if.else108.i, label %if.then100.i

if.then100.i:                                     ; preds = %udc_clearep_getsts.exit238.i
  %is_in101.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 7
  %176 = ptrtoint ptr %is_in101.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %is_in101.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool102.not.i = icmp eq i8 %177, 0
  %178 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %hwep_num, align 4
  %req_pending.i243.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %180 = ptrtoint ptr %req_pending.i243.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %req_pending.i243.i, align 1
  %dd_desc_ptr.i245.i = getelementptr i8, ptr %175, i32 8
  %181 = ptrtoint ptr %dd_desc_ptr.i245.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dd_desc_ptr.i245.i, align 4
  %this_dma.i246.i = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %this_dma.i246.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %this_dma.i246.i, align 4
  %185 = ptrtoint ptr %udca_v_base.i247.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %udca_v_base.i247.i, align 8
  %arrayidx.i248.i = getelementptr i32, ptr %186, i32 %179
  %187 = ptrtoint ptr %arrayidx.i248.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %184, ptr %arrayidx.i248.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %shl.i.i249.i = shl nuw i32 1, %179
  %188 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i249.i) #11
  %189 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i251.i = getelementptr i8, ptr %190, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i251.i, i32 %188) #11
  br i1 %tobool102.not.i, label %if.then100.i.for.inc_crit_edge, label %if.then103.i

if.then100.i.for.inc_crit_edge:                   ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then103.i:                                     ; preds = %if.then100.i
  %length.i.i = getelementptr i8, ptr %175, i32 -52
  %191 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %length.i.i, align 4
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 7
  %193 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 7)
  %bf.load.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  %rem.i.i = urem i32 %192, %bf.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.then103.i.for.inc_crit_edge, label %if.then.i.i

if.then103.i.for.inc_crit_edge:                   ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #13
  %send_zlp.i.i = getelementptr i8, ptr %175, i32 13
  %194 = ptrtoint ptr %send_zlp.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %send_zlp.i.i, align 1
  br label %for.inc

if.else108.i:                                     ; preds = %udc_clearep_getsts.exit238.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_pending109.i = getelementptr %struct.lpc32xx_udc, ptr %_udc, i32 0, i32 24, i32 %i.040, i32 8
  %195 = ptrtoint ptr %req_pending109.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %req_pending109.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else108.i, %if.then.i.i, %if.then103.i.for.inc_crit_edge, %if.then100.i.for.inc_crit_edge, %udc_clearep_getsts.exit218.i, %sw.default.i, %sw.bb52.i, %sw.bb.i, %do.body31.i, %do.end.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_usb_vbus_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vbus_work(ptr noundef %_udc)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_clk_set(ptr nocapture noundef %udc, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp.not = icmp eq i32 %enable, 0
  %clocked3 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 26
  %0 = ptrtoint ptr %clocked3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clocked3, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %clocked3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %clocked3, align 1
  %usb_slv_clk = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 9
  %3 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_slv_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.end.i.if.end9.sink.split_crit_edge

if.end.i.if.end9.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.sink.split

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.else.if.end9_crit_edge, label %if.end6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %clocked3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %clocked3, align 1
  %usb_slv_clk8 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 9
  %6 = ptrtoint ptr %usb_slv_clk8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_slv_clk8, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.end6, %if.end.i.if.end9.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.end6 ], [ %4, %if.end.i.if.end9.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %if.end.i.if.end9_crit_edge, %if.end.if.end9_crit_edge, %if.then.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nop_release(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_get_frame(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clocked = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 26
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %udp_baseaddr.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 7
  %2 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %do.body1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %6, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %8, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 390400) #11, !srcloc !311
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.while.cond10.i.i_crit_edge, %do.body.i.i
  %to.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %while.cond10.i.i.while.cond10.i.i_crit_edge ]
  %9 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %10, i32 512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18.i.i = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i)
  %cmp19.i.i = icmp ne i32 %to.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp19.i.i, i1 false
  %dec.i.i = add nsw i32 %to.0.i.i, -1
  br i1 %or.cond.i.i, label %while.cond10.i.i.while.cond10.i.i_crit_edge, label %while.end.i.i

while.cond10.i.i.while.cond10.i.i_crit_edge:      ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i, label %udc_get_current_frame.exit, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

udc_get_current_frame.exit:                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %gadget, i32 noundef 16056832) #11
  %call1.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %gadget, i32 noundef 16056832) #11
  %conv3.i = shl i32 %call1.i, 8
  %or.i = or i32 %conv3.i, %call.i
  %conv7 = and i32 %or.i, 65535
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %udc_get_current_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv7, %udc_get_current_frame.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_wakeup(ptr nocapture noundef readnone %gadget) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_on) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp.not = icmp eq i32 %is_on, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_vbus_session(ptr noundef %gadget, i32 noundef %is_active) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %clocked3.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 26
  %2 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clocked3.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.then.udc_clk_set.exit_crit_edge

if.then.udc_clk_set.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %clocked3.i, align 1
  %usb_slv_clk.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 9
  %5 = ptrtoint ptr %usb_slv_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_slv_clk.i, align 4
  %call.i.i73 = tail call i32 @clk_prepare(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool.not.i.i = icmp eq i32 %call.i.i73, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.udc_clk_set.exit_crit_edge

if.end.i.udc_clk_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.udc_clk_set.exit_crit_edge, label %if.end9.sink.split.i

if.end.i.i.udc_clk_set.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end9.sink.split.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %udc_clk_set.exit

udc_clk_set.exit:                                 ; preds = %if.end9.sink.split.i, %if.end.i.i.udc_clk_set.exit_crit_edge, %if.end.i.udc_clk_set.exit_crit_edge, %if.then.udc_clk_set.exit_crit_edge
  tail call fastcc void @udc_enable(ptr noundef %gadget)
  %7 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %clocked3.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %udc_clk_set.exit.if.end50_crit_edge, label %if.end.i74

udc_clk_set.exit.if.end50_crit_edge:              ; preds = %udc_clk_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end.i74:                                       ; preds = %udc_clk_set.exit
  %enabled.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 25
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.end.i74.if.then3.i_crit_edge, label %lor.lhs.false.i

if.end.i74.if.then3.i_crit_edge:                  ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i74
  %vbus.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 17
  %11 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then3.i_crit_edge, label %lor.lhs.false.i.if.end4.i_crit_edge

lor.lhs.false.i.if.end4.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i74.if.then3.i_crit_edge
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %lor.lhs.false.i.if.end4.i_crit_edge
  %is_on.addr.0.i = phi i32 [ %is_active, %lor.lhs.false.i.if.end4.i_crit_edge ], [ 0, %if.then3.i ]
  %pullup.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 19
  %13 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %is_on.addr.0.i, i32 %14)
  %cmp.not.i = icmp eq i32 %is_on.addr.0.i, %14
  br i1 %cmp.not.i, label %if.end4.i.if.end50_crit_edge, label %isp1301_pullup_enable.exit.i

if.end4.i.if.end50_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

isp1301_pullup_enable.exit.i:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %is_on.addr.0.i, ptr %pullup.i, align 8
  %pullup_job.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %pullup_job.i.i) #11
  br label %if.end50

if.else:                                          ; preds = %entry
  tail call fastcc void @stop_activity(ptr noundef %gadget)
  %clocked.i75 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 26
  %17 = ptrtoint ptr %clocked.i75 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clocked.i75, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i76 = icmp eq i8 %18, 0
  br i1 %tobool.not.i76, label %if.else.pullup.exit91_crit_edge, label %if.end.i79

if.else.pullup.exit91_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit91

if.end.i79:                                       ; preds = %if.else
  %pullup.i85 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 19
  %19 = ptrtoint ptr %pullup.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pullup.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i86 = icmp eq i32 %20, 0
  br i1 %cmp.not.i86, label %if.end.i79.pullup.exit91_crit_edge, label %isp1301_pullup_enable.exit.i90

if.end.i79.pullup.exit91_crit_edge:               ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit91

isp1301_pullup_enable.exit.i90:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %pullup.i85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pullup.i85, align 8
  %pullup_job.i.i88 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i89 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %pullup_job.i.i88) #11
  br label %pullup.exit91

pullup.exit91:                                    ; preds = %isp1301_pullup_enable.exit.i90, %if.end.i79.pullup.exit91_crit_edge, %if.else.pullup.exit91_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %enabled_ep_cnt = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %23 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %pullup.exit91.do.body37_crit_edge, label %if.then9

pullup.exit91.do.body37_crit_edge:                ; preds = %pullup.exit91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then9:                                         ; preds = %pullup.exit91
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2463) #11
  %call.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %25 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %if.then9.do.body37_crit_edge, label %if.then20

if.then9.do.body37_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then20:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %27 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %ep_disable_wait_queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 30
  %call22102 = call i32 @prepare_to_wait_event(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i72103 = call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %28 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp25104 = icmp eq i32 %29, 0
  br i1 %cmp25104, label %if.then20.for.end_crit_edge, label %if.then20.if.end_crit_edge

if.then20.if.end_crit_edge:                       ; preds = %if.then20
  br label %if.end

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then20.if.end_crit_edge
  %call22105 = phi i32 [ %call22, %cleanup.if.end_crit_edge ], [ %call22102, %if.then20.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22105)
  %tobool28.not = icmp eq i32 %call22105, 0
  br i1 %tobool28.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %30 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %enabled_ep_cnt, align 4
  %cmp25 = icmp eq i32 %31, 0
  br i1 %cmp25, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @finish_wait(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.body37

do.body37:                                        ; preds = %__out, %if.then9.do.body37_crit_edge, %pullup.exit91.do.body37_crit_edge
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %32 = ptrtoint ptr %clocked.i75 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %clocked.i75, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not.i93 = icmp eq i8 %33, 0
  br i1 %tobool4.not.i93, label %do.body37.if.end50_crit_edge, label %if.end6.i

do.body37.if.end50_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end6.i:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %clocked.i75 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %clocked.i75, align 1
  %usb_slv_clk8.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 9
  %35 = ptrtoint ptr %usb_slv_clk8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_slv_clk8.i, align 4
  call void @clk_disable(ptr noundef %36) #11
  call void @clk_unprepare(ptr noundef %36) #11
  br label %if.end50

if.end50:                                         ; preds = %if.end6.i, %do.body37.if.end50_crit_edge, %isp1301_pullup_enable.exit.i, %if.end4.i.if.end50_crit_edge, %udc_clk_set.exit.if.end50_crit_edge
  %flags.0 = phi i32 [ %call3, %udc_clk_set.exit.if.end50_crit_edge ], [ %call3, %if.end4.i.if.end50_crit_edge ], [ %call3, %isp1301_pullup_enable.exit.i ], [ %call45, %do.body37.if.end50_crit_edge ], [ %call45, %if.end6.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clocked.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 26
  %0 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clocked.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.pullup.exit_crit_edge, label %if.end.i

entry.pullup.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

if.end.i:                                         ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 25
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then3.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %vbus.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 17
  %4 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then3.i_crit_edge, label %lor.lhs.false.i.if.end4.i_crit_edge

lor.lhs.false.i.if.end4.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %lor.lhs.false.i.if.end4.i_crit_edge
  %is_on.addr.0.i = phi i32 [ %is_on, %lor.lhs.false.i.if.end4.i_crit_edge ], [ 0, %if.then3.i ]
  %pullup.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 19
  %6 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %is_on.addr.0.i, i32 %7)
  %cmp.not.i = icmp eq i32 %is_on.addr.0.i, %7
  br i1 %cmp.not.i, label %if.end4.i.pullup.exit_crit_edge, label %isp1301_pullup_enable.exit.i

if.end4.i.pullup.exit_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

isp1301_pullup_enable.exit.i:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %is_on.addr.0.i, ptr %pullup.i, align 8
  %pullup_job.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %pullup_job.i.i) #11
  br label %pullup.exit

pullup.exit:                                      ; preds = %isp1301_pullup_enable.exit.i, %if.end4.i.pullup.exit_crit_edge, %entry.pullup.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false1

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.do.end_crit_edge, label %if.end

lor.lhs.false1.do.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false1.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.79) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %driver3 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 1
  %6 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver3, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 3
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.82) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %driver3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %driver3, align 8
  %dev12 = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 3
  %11 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev12, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %of_node15 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 27
  %15 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node15, align 8
  %enabled = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 25
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled, align 4
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %17 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.set = or i32 %bf.load, 262144
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %vbus = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 17
  %18 = ptrtoint ptr %vbus to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %vbus, align 4
  %last_vbus = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 18
  %19 = ptrtoint ptr %last_vbus to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %last_vbus, align 1
  tail call fastcc void @vbus_work(ptr noundef %gadget)
  %isp1301_i2c_client = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 5
  %20 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp1301_i2c_client, align 8
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 12, i8 noundef zeroext 3) #11
  %22 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isp1301_i2c_client, align 8
  %call20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 14, i8 noundef zeroext 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_stop(ptr noundef %gadget) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1301_i2c_client = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 5
  %0 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1301_i2c_client, align 8
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext -1) #11
  %2 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1301_i2c_client, align 8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 15, i8 noundef zeroext -1) #11
  %clocked = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 26
  %4 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  tail call fastcc void @stop_activity(ptr noundef %gadget)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %enabled_ep_cnt = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %6 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then.if.end26_crit_edge, label %if.then7

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then7:                                         ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2936) #11
  %call.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %8 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then7.if.end26_crit_edge, label %if.then13

if.then7.if.end26_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then13:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %ep_disable_wait_queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 30
  %call1555 = call i32 @prepare_to_wait_event(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i4856 = call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %11 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %enabled_ep_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1857 = icmp eq i32 %12, 0
  br i1 %cmp1857, label %if.then13.for.end_crit_edge, label %if.then13.if.end_crit_edge

if.then13.if.end_crit_edge:                       ; preds = %if.then13
  br label %if.end

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then13.if.end_crit_edge
  %call1558 = phi i32 [ %call15, %cleanup.if.end_crit_edge ], [ %call1555, %if.then13.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1558)
  %tobool20.not = icmp eq i32 %call1558, 0
  br i1 %tobool20.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i48 = call zeroext i1 @__kasan_check_read(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  %13 = ptrtoint ptr %enabled_ep_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %enabled_ep_cnt, align 4
  %cmp18 = icmp eq i32 %14, 0
  br i1 %cmp18, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  call void @finish_wait(ptr noundef %ep_disable_wait_queue, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end26

if.end26:                                         ; preds = %__out, %if.then7.if.end26_crit_edge, %if.then.if.end26_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #11
  %15 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  br i1 %tobool4.not.i, label %if.end26.udc_clk_set.exit_crit_edge, label %if.end6.i

if.end26.udc_clk_set.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end6.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %clocked, align 1
  %usb_slv_clk8.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 9
  %18 = ptrtoint ptr %usb_slv_clk8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_slv_clk8.i, align 4
  call void @clk_disable(ptr noundef %19) #11
  call void @clk_unprepare(ptr noundef %19) #11
  br label %udc_clk_set.exit

udc_clk_set.exit:                                 ; preds = %if.end6.i, %if.end26.udc_clk_set.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end29

if.end29:                                         ; preds = %udc_clk_set.exit, %entry.if.end29_crit_edge
  %enabled = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 25
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled, align 4
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %gadget, i32 0, i32 1
  %21 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udc_protocol_cmd_r(ptr nocapture noundef readonly %udc, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 805306368) #11, !srcloc !311
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %5 = tail call i32 @llvm.bswap.i32(i32 %cmd) #11
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i = getelementptr i8, ptr %9, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %5) #11, !srcloc !311
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.cond10.i.while.cond10.i_crit_edge, %do.body.i
  %to.0.i = phi i32 [ 10000, %do.body.i ], [ %dec.i, %while.cond10.i.while.cond10.i_crit_edge ]
  %10 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i = getelementptr i8, ptr %11, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i)
  %cmp19.i = icmp ne i32 %to.0.i, 0
  %or.cond.i = select i1 %cmp18.i, i1 %cmp19.i, i1 false
  %dec.i = add nsw i32 %to.0.i, -1
  br i1 %or.cond.i, label %while.cond10.i.while.cond10.i_crit_edge, label %while.end.i

while.cond10.i.while.cond10.i_crit_edge:          ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i

while.end.i:                                      ; preds = %while.cond10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i, label %while.end.i.while.cond_crit_edge, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

while.end.i.while.cond_crit_edge:                 ; preds = %while.end.i
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.end.i.while.cond_crit_edge
  %to.0 = phi i32 [ %dec, %while.cond.while.cond_crit_edge ], [ 1000, %while.end.i.while.cond_crit_edge ]
  %14 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr2 = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  %17 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %cmp = icmp ne i32 %to.0, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %dec = add nsw i32 %to.0, -1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %tobool4.not = icmp eq i32 %to.0, 0
  br i1 %tobool4.not, label %do.body5, label %while.end.if.end15_crit_edge

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.body5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_protocol_cmd_r.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_protocol_cmd_r, %if.end15)) #11
          to label %if.then12 [label %if.end15], !srcloc !309

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_protocol_cmd_r.__UNIQUE_ID_ddebug290, ptr noundef %19, ptr noundef nonnull @.str.74) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body5, %while.end.if.end15_crit_edge
  %20 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 532
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !324
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_enable(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @udc_disable(ptr noundef %udc)
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 16647424, i32 noundef 65792)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  tail call void @arm_heavy_mb() #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr6 = getelementptr i8, ptr %3, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -65536) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -16580608) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %udca_p_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 11
  %6 = ptrtoint ptr %udca_p_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udca_p_base, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr16 = getelementptr i8, ptr %10, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #11, !srcloc !311
  %maxpacket = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 0, i32 7
  %enabled_hwepints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 14
  %11 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  tail call fastcc void @udc_realize_hwep(ptr noundef %udc, i32 noundef 0, i32 noundef %bf.cast)
  %12 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enabled_hwepints.i, align 8
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %enabled_hwepints.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enabled_hwepints.i, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #11, !srcloc !311
  %19 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 512
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %23, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %25, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 327680) #11, !srcloc !311
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.while.cond10.i.i_crit_edge, %do.body.i.i
  %to.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %while.cond10.i.i.while.cond10.i.i_crit_edge ]
  %26 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %27, i32 512
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %29 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp18.i.i = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i)
  %cmp19.i.i = icmp ne i32 %to.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp19.i.i, i1 false
  %dec.i.i = add nsw i32 %to.0.i.i, -1
  br i1 %or.cond.i.i, label %while.cond10.i.i.while.cond10.i.i_crit_edge, label %while.end.i.i

while.cond10.i.i.while.cond10.i.i_crit_edge:      ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i, label %udc_select_hwep.exit, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

udc_select_hwep.exit:                             ; preds = %while.end.i.i
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 4195584, i32 noundef 256) #11
  tail call fastcc void @udc_clr_buffer_hwep(ptr noundef %udc, i32 noundef 0)
  %30 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %30, i32 7)
  %bf.load.1 = load i56, ptr %maxpacket, align 2
  %bf.lshr.1 = lshr i56 %bf.load.1, 40
  %bf.cast.1 = trunc i56 %bf.lshr.1 to i32
  tail call fastcc void @udc_realize_hwep(ptr noundef %udc, i32 noundef 1, i32 noundef %bf.cast.1)
  %31 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enabled_hwepints.i, align 8
  %or.i.1 = or i32 %32, 2
  store i32 %or.i.1, ptr %enabled_hwepints.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %enabled_hwepints.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %enabled_hwepints.i, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %37, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %35) #11, !srcloc !311
  %38 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.1 = getelementptr i8, ptr %39, i32 512
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i.1

do.body.i.i.1:                                    ; preds = %while.end.i.i.1.do.body.i.i.1_crit_edge, %udc_select_hwep.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.1 = getelementptr i8, ptr %42, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.1, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.1 = getelementptr i8, ptr %44, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.1, i32 327936) #11, !srcloc !311
  br label %while.cond10.i.i.1

while.cond10.i.i.1:                               ; preds = %while.cond10.i.i.1.while.cond10.i.i.1_crit_edge, %do.body.i.i.1
  %to.0.i.i.1 = phi i32 [ 10000, %do.body.i.i.1 ], [ %dec.i.i.1, %while.cond10.i.i.1.while.cond10.i.i.1_crit_edge ]
  %45 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.1 = getelementptr i8, ptr %46, i32 512
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.1) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %48 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp18.i.i.1 = icmp eq i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.1)
  %cmp19.i.i.1 = icmp ne i32 %to.0.i.i.1, 0
  %or.cond.i.i.1 = select i1 %cmp18.i.i.1, i1 %cmp19.i.i.1, i1 false
  %dec.i.i.1 = add nsw i32 %to.0.i.i.1, -1
  br i1 %or.cond.i.i.1, label %while.cond10.i.i.1.while.cond10.i.i.1_crit_edge, label %while.end.i.i.1

while.cond10.i.i.1.while.cond10.i.i.1_crit_edge:  ; preds = %while.cond10.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.1

while.end.i.i.1:                                  ; preds = %while.cond10.i.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.1, label %udc_select_hwep.exit.1, label %while.end.i.i.1.do.body.i.i.1_crit_edge

while.end.i.i.1.do.body.i.i.1_crit_edge:          ; preds = %while.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.1

udc_select_hwep.exit.1:                           ; preds = %while.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 4261120, i32 noundef 256) #11
  tail call fastcc void @udc_clr_buffer_hwep(ptr noundef %udc, i32 noundef 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i52 = getelementptr i8, ptr %50, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 235012096) #11, !srcloc !311
  %enabled_devints.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 13
  %51 = ptrtoint ptr %enabled_devints.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enabled_devints.i, align 4
  %or.i53 = or i32 %52, 526
  store i32 %or.i53, ptr %enabled_devints.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %enabled_devints.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enabled_devints.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  %56 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i55 = getelementptr i8, ptr %57, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %55) #11, !srcloc !311
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 13632768, i32 noundef 8388864) #11
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 13632768, i32 noundef 8388864) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr22 = getelementptr i8, ptr %59, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 83886080) #11, !srcloc !311
  %dev_status = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 15
  %60 = ptrtoint ptr %dev_status to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %dev_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 1
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %speed, align 8
  %suspended = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 27
  %5 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %suspended, align 2
  br label %for.body

for.body:                                         ; preds = %nuke.exit.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %nuke.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.023
  %queue.i = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.023, i32 1
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not12.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not12.i, label %for.body.nuke.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.nuke.exit_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %8 = phi ptr [ %10, %while.body.i.while.body.i_crit_edge ], [ %7, %for.body.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #11
  %9 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %for.body.nuke.exit_crit_edge
  %udc.i = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.023, i32 2
  %11 = ptrtoint ptr %udc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udc.i, align 4
  %hwep_num.i = getelementptr %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 %i.023, i32 4
  %13 = ptrtoint ptr %hwep_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwep_num.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %neg.i.i = xor i32 %shl.i.i, -1
  %enabled_hwepints.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %12, i32 0, i32 14
  %15 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enabled_hwepints.i.i, align 8
  %and.i.i = and i32 %16, %neg.i.i
  store i32 %and.i.i, ptr %enabled_hwepints.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enabled_hwepints.i.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %udp_baseaddr.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %12, i32 0, i32 7
  %20 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #11, !srcloc !311
  %22 = ptrtoint ptr %udc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udc.i, align 4
  %24 = ptrtoint ptr %hwep_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwep_num.i, align 4
  %shl.i11.i = shl i32 %25, 16
  %or.i.i = or i32 %shl.i11.i, 4195584
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %23, i32 noundef %or.i.i, i32 noundef 2097408) #11
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %nuke.exit.for.body_crit_edge

nuke.exit.for.body_crit_edge:                     ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %nuke.exit
  %tobool.not24 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp, i1 true, i1 %tobool.not24
  br i1 %tobool.not, label %for.end.if.end9_crit_edge, label %if.then6

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disconnect, align 4
  tail call void %27(ptr noundef %udc) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.end.if.end9_crit_edge
  %pullup.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 19
  %28 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %if.end9.isp1301_pullup_enable.exit_crit_edge, label %if.end.i

if.end9.isp1301_pullup_enable.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %isp1301_pullup_enable.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pullup.i, align 8
  %pullup_job.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %pullup_job.i) #11
  br label %isp1301_pullup_enable.exit

isp1301_pullup_enable.exit:                       ; preds = %if.end.i, %if.end9.isp1301_pullup_enable.exit_crit_edge
  tail call fastcc void @udc_disable(ptr noundef %udc)
  tail call fastcc void @udc_reinit(ptr noundef %udc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_protocol_cmd_data_w(ptr nocapture noundef readonly %udc, i32 noundef %cmd, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %3 = tail call i32 @llvm.bswap.i32(i32 %cmd) #11
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %7, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %3) #11, !srcloc !311
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.cond10.i.while.cond10.i_crit_edge, %do.body.i
  %to.0.i = phi i32 [ 10000, %do.body.i ], [ %dec.i, %while.cond10.i.while.cond10.i_crit_edge ]
  %8 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i)
  %cmp19.i = icmp ne i32 %to.0.i, 0
  %or.cond.i = select i1 %cmp18.i, i1 %cmp19.i, i1 false
  %dec.i = add nsw i32 %to.0.i, -1
  br i1 %or.cond.i, label %while.cond10.i.while.cond10.i_crit_edge, label %while.end.i

while.cond10.i.while.cond10.i_crit_edge:          ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i

while.end.i:                                      ; preds = %while.cond10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i, label %udc_protocol_cmd_w.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

udc_protocol_cmd_w.exit:                          ; preds = %while.end.i
  %12 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %15 = tail call i32 @llvm.bswap.i32(i32 %data) #11
  br label %do.body.i6

do.body.i6:                                       ; preds = %while.end.i14.do.body.i6_crit_edge, %udc_protocol_cmd_w.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr4.i4 = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i4, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr9.i5 = getelementptr i8, ptr %19, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i5, i32 %15) #11, !srcloc !311
  br label %while.cond10.i13

while.cond10.i13:                                 ; preds = %while.cond10.i13.while.cond10.i13_crit_edge, %do.body.i6
  %to.0.i7 = phi i32 [ 10000, %do.body.i6 ], [ %dec.i12, %while.cond10.i13.while.cond10.i13_crit_edge ]
  %20 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr14.i8 = getelementptr i8, ptr %21, i32 512
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i8) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18.i9 = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i7)
  %cmp19.i10 = icmp ne i32 %to.0.i7, 0
  %or.cond.i11 = select i1 %cmp18.i9, i1 %cmp19.i10, i1 false
  %dec.i12 = add nsw i32 %to.0.i7, -1
  br i1 %or.cond.i11, label %while.cond10.i13.while.cond10.i13_crit_edge, label %while.end.i14

while.cond10.i13.while.cond10.i13_crit_edge:      ; preds = %while.cond10.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i13

while.end.i14:                                    ; preds = %while.cond10.i13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i10, label %udc_protocol_cmd_w.exit15, label %while.end.i14.do.body.i6_crit_edge

while.end.i14.do.body.i6_crit_edge:               ; preds = %while.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i6

udc_protocol_cmd_w.exit15:                        ; preds = %while.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_realize_hwep(ptr nocapture noundef %udc, i32 noundef %hwep, i32 noundef %maxpacket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %hwep)
  %3 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #11, !srcloc !311
  %shl = shl nuw i32 1, %hwep
  %realized_eps = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 16
  %5 = ptrtoint ptr %realized_eps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %realized_eps, align 8
  %or = or i32 %6, %shl
  store i32 %or, ptr %realized_eps, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %realized_eps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %realized_eps, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %maxpacket)
  %13 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #11, !srcloc !311
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %to.0 = phi i32 [ 1000, %entry ], [ %dec, %while.cond.while.cond_crit_edge ]
  %15 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr18 = getelementptr i8, ptr %16, i32 512
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %cmp = icmp ne i32 %to.0, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %dec = add nsw i32 %to.0, -1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %tobool20.not = icmp eq i32 %to.0, 0
  br i1 %tobool20.not, label %do.body21, label %while.end.do.body32_crit_edge

while.end.do.body32_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.body21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_realize_hwep.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_realize_hwep, %do.body32)) #11
          to label %if.then28 [label %do.body32], !srcloc !309

if.then28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_realize_hwep.__UNIQUE_ID_ddebug291, ptr noundef %20, ptr noundef nonnull @.str.76) #11
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %do.body21, %while.end.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr36 = getelementptr i8, ptr %22, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 65536) #11, !srcloc !311
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_clr_buffer_hwep(ptr nocapture noundef readonly %udc, i32 noundef %hwep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i32 %hwep, 16
  %or.i = or i32 %shl.i, 1280
  %udp_baseaddr.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %7, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %3) #11, !srcloc !311
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.while.cond10.i.i_crit_edge, %do.body.i.i
  %to.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %while.cond10.i.i.while.cond10.i.i_crit_edge ]
  %8 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.i.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i)
  %cmp19.i.i = icmp ne i32 %to.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp19.i.i, i1 false
  %dec.i.i = add nsw i32 %to.0.i.i, -1
  br i1 %or.cond.i.i, label %while.cond10.i.i.while.cond10.i.i_crit_edge, label %while.end.i.i

while.cond10.i.i.while.cond10.i.i_crit_edge:      ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i, label %udc_select_hwep.exit, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

udc_select_hwep.exit:                             ; preds = %while.end.i.i
  %12 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %udc_select_hwep.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %16, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %18, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 389632) #11, !srcloc !311
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.cond10.i.while.cond10.i_crit_edge, %do.body.i
  %to.0.i = phi i32 [ 10000, %do.body.i ], [ %dec.i, %while.cond10.i.while.cond10.i_crit_edge ]
  %19 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %20, i32 512
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %22 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18.i = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i)
  %cmp19.i = icmp ne i32 %to.0.i, 0
  %or.cond.i = select i1 %cmp18.i, i1 %cmp19.i, i1 false
  %dec.i = add nsw i32 %to.0.i, -1
  br i1 %or.cond.i, label %while.cond10.i.while.cond10.i_crit_edge, label %while.end.i

while.cond10.i.while.cond10.i_crit_edge:          ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i

while.end.i:                                      ; preds = %while.cond10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i, label %udc_protocol_cmd_w.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

udc_protocol_cmd_w.exit:                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %queue = getelementptr inbounds %struct.lpc32xx_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.lpc32xx_request, ptr %req, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.lpc32xx_request, ptr %req, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp = icmp eq i32 %11, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %11, %list_del_init.exit.if.end_crit_edge ]
  %lep = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 6
  %13 = ptrtoint ptr %lep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %is_in = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 7
  %15 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_in, align 4, !range !335
  %17 = zext i8 %16 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %1, ptr noundef %req, i32 noundef %17) #11
  %dd_desc_ptr = getelementptr inbounds %struct.lpc32xx_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %dd_desc_ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dd_desc_ptr, align 4
  %dd_cache.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %dd_cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dd_cache.i, align 8
  %this_dma.i = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %this_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %this_dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef %19, i32 noundef %23) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %24 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %status.addr.0, label %do.body [
    i32 0, label %if.end11.if.end24_crit_edge
    i32 -108, label %if.end11.if.end24_crit_edge48
  ]

if.end11.if.end24_crit_edge48:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @done.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@done, %if.end24)) #11
          to label %if.then20 [label %if.end24], !srcloc !309

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udc1, align 4
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @done.__UNIQUE_ID_ddebug293, ptr noundef %28, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, ptr noundef %30, ptr noundef %req, i32 noundef %status.addr.0) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body, %if.end11.if.end24_crit_edge, %if.end11.if.end24_crit_edge48
  %req_pending = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 8
  %31 = ptrtoint ptr %req_pending to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %req_pending, align 1
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uda_disable_hwepint(ptr nocapture noundef %udc, i32 noundef %hwep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %hwep
  %neg = xor i32 %shl, -1
  %enabled_hwepints = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 14
  %0 = ptrtoint ptr %enabled_hwepints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled_hwepints, align 8
  %and = and i32 %1, %neg
  store i32 %and, ptr %enabled_hwepints, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %enabled_hwepints to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled_hwepints, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %5 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !311
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vbus_work(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 25
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then:                                          ; preds = %entry
  %isp1301_i2c_client = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 5
  %2 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1301_i2c_client, align 8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 64) #11
  tail call void @msleep(i32 noundef 100) #11
  %4 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp1301_i2c_client, align 8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 7, i8 noundef zeroext 64) #11
  %6 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp1301_i2c_client, align 8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 11, i8 noundef zeroext -1) #11
  %8 = ptrtoint ptr %isp1301_i2c_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp1301_i2c_client, align 8
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 8) #11
  %10 = trunc i32 %call7 to i8
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %13, align 4
  %last_vbus = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 18
  %15 = ptrtoint ptr %last_vbus to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_vbus, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %12)
  %cmp16.not = icmp eq i8 %16, %12
  br i1 %cmp16.not, label %if.then.if.end25_crit_edge, label %if.then18

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %last_vbus to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %12, ptr %last_vbus, align 1
  %conv22 = zext i8 %12 to i32
  %call23 = tail call i32 @lpc32xx_vbus_session(ptr noundef %udc, i32 noundef %conv22)
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_enable(ptr noundef %_ep, ptr noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool4.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %udc7 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %udc7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc7, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wMaxPacketSize.i, align 1
  %6 = and i16 %5, -249
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  %and.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp10 = icmp eq i16 %6, 0
  br i1 %cmp10, label %if.end.do.body_crit_edge, label %lor.lhs.false12

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false12:                                  ; preds = %if.end
  %maxpacket14 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 5
  %8 = ptrtoint ptr %maxpacket14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxpacket14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and.i)
  %cmp15 = icmp ult i32 %9, %and.i
  br i1 %cmp15, label %lor.lhs.false12.do.body_crit_edge, label %if.end26

lor.lhs.false12.do.body_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false12.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_enable, %cleanup)) #11
          to label %if.then24 [label %cleanup], !srcloc !309

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_enable.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.85) #11
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false12
  %hwep_num_base = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 3
  %12 = ptrtoint ptr %hwep_num_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwep_num_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27 = icmp eq i32 %13, 0
  br i1 %cmp27, label %do.body30, label %if.end49

do.body30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_enable, %cleanup)) #11
          to label %if.then44 [label %cleanup], !srcloc !309

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %dev45 = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_enable.__UNIQUE_ID_ddebug295, ptr noundef %15, ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end26
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 8
  %tobool50.not = icmp eq ptr %17, null
  br i1 %tobool50.not, label %if.end49.do.body55_crit_edge, label %lor.lhs.false51

if.end49.do.body55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

lor.lhs.false51:                                  ; preds = %if.end49
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp52 = icmp eq i32 %19, 0
  br i1 %cmp52, label %lor.lhs.false51.do.body55_crit_edge, label %if.end74

lor.lhs.false51.do.body55_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

do.body55:                                        ; preds = %lor.lhs.false51.do.body55_crit_edge, %if.end49.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_enable, %cleanup)) #11
          to label %if.then69 [label %cleanup], !srcloc !309

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %dev70 = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev70, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_enable.__UNIQUE_ID_ddebug296, ptr noundef %21, ptr noundef nonnull @.str.87) #11
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false51
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes, align 1
  %24 = and i8 %23, 3
  %and = zext i8 %24 to i32
  %25 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %and, label %if.end74.do.body128_crit_edge [
    i32 0, label %if.end74.cleanup_crit_edge
    i32 2, label %sw.bb103
  ]

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74.do.body128_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

sw.bb103:                                         ; preds = %if.end74
  %26 = add nsw i32 %and.i, -8
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 29)
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %27, label %do.body106 [
    i32 0, label %sw.bb103.do.body128_crit_edge
    i32 1, label %sw.bb103.do.body128_crit_edge295
    i32 3, label %sw.bb103.do.body128_crit_edge296
    i32 7, label %sw.bb103.do.body128_crit_edge297
  ]

sw.bb103.do.body128_crit_edge297:                 ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

sw.bb103.do.body128_crit_edge296:                 ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

sw.bb103.do.body128_crit_edge295:                 ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

sw.bb103.do.body128_crit_edge:                    ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

do.body106:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_enable, %cleanup)) #11
          to label %if.then120 [label %cleanup], !srcloc !309

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  %dev121 = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev121, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_enable.__UNIQUE_ID_ddebug298, ptr noundef %30, ptr noundef nonnull @.str.89, i32 noundef %and.i) #11
  br label %cleanup

do.body128:                                       ; preds = %sw.bb103.do.body128_crit_edge, %sw.bb103.do.body128_crit_edge295, %sw.bb103.do.body128_crit_edge296, %sw.bb103.do.body128_crit_edge297, %if.end74.do.body128_crit_edge
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 4
  %call133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress, align 1
  %is_in = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 7
  %.lobit = lshr i8 %32, 7
  %33 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.lobit, ptr %is_in, align 4
  %maxpacket145 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %34 = ptrtoint ptr %maxpacket145 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 7)
  %bf.load = load i56, ptr %maxpacket145, align 2
  %bf.value = zext i16 %7 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.clear, %bf.shl
  store i56 %bf.set, ptr %maxpacket145, align 2
  %35 = ptrtoint ptr %hwep_num_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwep_num_base, align 4
  %.lobit294 = lshr i8 %32, 7
  %37 = zext i8 %.lobit294 to i32
  %add.sink = add i32 %36, %37
  %38 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.sink, ptr %38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_enable, %do.end180)) #11
          to label %if.then167 [label %do.end180], !srcloc !309

if.then167:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %udc7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udc7, align 4
  %dev169 = getelementptr inbounds %struct.lpc32xx_udc, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev169, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %38, align 4
  %48 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_in, align 4, !range !335
  %50 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_enable.__UNIQUE_ID_ddebug299, ptr noundef %43, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.84, ptr noundef %45, i32 noundef %47, i32 noundef %and.i, i32 noundef %50) #11
  br label %do.end180

do.end180:                                        ; preds = %if.then167, %do.body128
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %38, align 4
  %53 = ptrtoint ptr %maxpacket145 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 7)
  %bf.load184 = load i56, ptr %maxpacket145, align 2
  %bf.lshr = lshr i56 %bf.load184, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  tail call fastcc void @udc_realize_hwep(ptr noundef %3, i32 noundef %52, i32 noundef %bf.cast)
  %54 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %38, align 4
  tail call fastcc void @udc_clr_buffer_hwep(ptr noundef %3, i32 noundef %55)
  %56 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %38, align 4
  tail call fastcc void @uda_disable_hwepint(ptr noundef %3, i32 noundef %57)
  %58 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %38, align 4
  %shl.i = shl i32 %59, 16
  %or.i = or i32 %shl.i, 4195584
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %3, i32 noundef %or.i, i32 noundef 256) #11
  %60 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %shl.i287 = shl nuw i32 1, %61
  %62 = tail call i32 @llvm.bswap.i32(i32 %shl.i287) #11
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %64, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %62) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %38, align 4
  %shl = shl nuw i32 1, %66
  %67 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %68 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr193 = getelementptr i8, ptr %69, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %67) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %38, align 4
  %shl198 = shl nuw i32 1, %71
  %72 = tail call i32 @llvm.bswap.i32(i32 %shl198)
  %73 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr200 = getelementptr i8, ptr %74, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %72) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void @arm_heavy_mb() #11
  %75 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %38, align 4
  %shl205 = shl nuw i32 1, %76
  %77 = tail call i32 @llvm.bswap.i32(i32 %shl205)
  %78 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr207 = getelementptr i8, ptr %79, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %77) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  %80 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %38, align 4
  %shl212 = shl nuw i32 1, %81
  %82 = tail call i32 @llvm.bswap.i32(i32 %shl212)
  %83 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr214 = getelementptr i8, ptr %84, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 %82) #11, !srcloc !311
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call133) #11
  %enabled_ep_cnt = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %enabled_ep_cnt, i32 1, i32 3, i32 1) #11
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled_ep_cnt, ptr %enabled_ep_cnt, i32 1, ptr elementtype(i32) %enabled_ep_cnt) #11, !srcloc !365
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %if.then120, %do.body106, %if.end74.cleanup_crit_edge, %if.then69, %do.body55, %if.then44, %do.body30, %if.then24, %do.body, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end180 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then24 ], [ -22, %if.then44 ], [ -108, %if.then69 ], [ -22, %if.end74.cleanup_crit_edge ], [ -22, %if.then120 ], [ -22, %do.body ], [ -22, %do.body30 ], [ -108, %do.body55 ], [ -22, %do.body106 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %hwep_num_base = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %hwep_num_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwep_num_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwep_num = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwep_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %queue.i = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 1
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not12.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not12.i, label %do.body3.nuke.exit_crit_edge, label %do.body3.while.body.i_crit_edge

do.body3.while.body.i_crit_edge:                  ; preds = %do.body3
  br label %while.body.i

do.body3.nuke.exit_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body3.while.body.i_crit_edge
  %8 = phi ptr [ %10, %while.body.i.while.body.i_crit_edge ], [ %7, %do.body3.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 -56
  tail call fastcc void @done(ptr noundef %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #11
  %9 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %do.body3.nuke.exit_crit_edge
  %11 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udc1, align 4
  %13 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwep_num, align 4
  %shl.i.i = shl nuw i32 1, %14
  %neg.i.i = xor i32 %shl.i.i, -1
  %enabled_hwepints.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %12, i32 0, i32 14
  %15 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enabled_hwepints.i.i, align 8
  %and.i.i = and i32 %16, %neg.i.i
  store i32 %and.i.i, ptr %enabled_hwepints.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %enabled_hwepints.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enabled_hwepints.i.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %udp_baseaddr.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %12, i32 0, i32 7
  %20 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #11, !srcloc !311
  %22 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udc1, align 4
  %24 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwep_num, align 4
  %shl.i11.i = shl i32 %25, 16
  %or.i.i = or i32 %shl.i11.i, 4195584
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %23, i32 noundef %or.i.i, i32 noundef 2097408) #11
  %26 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %shl.i = shl nuw i32 1, %27
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %30, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %28) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwep_num, align 4
  %shl = shl nuw i32 1, %32
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %34 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr14 = getelementptr i8, ptr %35, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %33) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hwep_num, align 4
  %shl19 = shl nuw i32 1, %37
  %38 = tail call i32 @llvm.bswap.i32(i32 %shl19)
  %39 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr21 = getelementptr i8, ptr %40, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %38) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hwep_num, align 4
  %shl26 = shl nuw i32 1, %42
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl26)
  %44 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr28 = getelementptr i8, ptr %45, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %43) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hwep_num, align 4
  %shl33 = shl nuw i32 1, %47
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl33)
  %49 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr35 = getelementptr i8, ptr %50, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %48) #11, !srcloc !311
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udca_v_base, align 8
  %53 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwep_num, align 4
  %arrayidx = getelementptr i32, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx, align 4
  %56 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i67 = shl nuw i32 1, %56
  %57 = tail call i32 @llvm.bswap.i32(i32 %shl.i67) #11
  %58 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %59, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %57) #11, !srcloc !311
  %60 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hwep_num, align 4
  %shl.i70 = shl nuw i32 1, %61
  %neg.i = xor i32 %shl.i70, -1
  %realized_eps.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 16
  %62 = ptrtoint ptr %realized_eps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %realized_eps.i, align 8
  %and.i = and i32 %63, %neg.i
  store i32 %and.i, ptr %realized_eps.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %realized_eps.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %realized_eps.i, align 8
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #11
  %67 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %68, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %66) #11, !srcloc !311
  %69 = ptrtoint ptr %hwep_num to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %hwep_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #11
  %enabled_ep_cnt = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled_ep_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %enabled_ep_cnt, i32 1, i32 3, i32 1) #11
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled_ep_cnt, ptr %enabled_ep_cnt, i32 1, ptr elementtype(i32) %enabled_ep_cnt) #11, !srcloc !370
  %ep_disable_wait_queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %ep_disable_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %nuke.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nuke.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lpc32xx_ep_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !371

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %queue = getelementptr inbounds %struct.lpc32xx_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.lpc32xx_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/lpc32xx_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1728, 0\0A.popsection", ""() #11, !srcloc !372
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %_req) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool4.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.cleanup120_crit_edge, label %lor.lhs.false5

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

lor.lhs.false5:                                   ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup120_crit_edge, label %lor.lhs.false7

lor.lhs.false5.cleanup120_crit_edge:              ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup120_crit_edge, label %lor.lhs.false9

lor.lhs.false7.cleanup120_crit_edge:              ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %queue = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false9.cleanup120_crit_edge

lor.lhs.false9.cleanup120_crit_edge:              ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.end:                                           ; preds = %lor.lhs.false9
  %udc11 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %6 = ptrtoint ptr %udc11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udc11, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end.cleanup120_crit_edge, label %if.end13

if.end.cleanup120_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.end13:                                         ; preds = %if.end
  %lep = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 6
  %10 = ptrtoint ptr %lep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.end13.do.body_crit_edge, label %if.then15

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then15:                                        ; preds = %if.end13
  %is_in = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 7
  %12 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_in, align 4, !range !335
  %14 = zext i8 %13 to i32
  %call18 = tail call i32 @usb_gadget_map_request(ptr noundef %7, ptr noundef nonnull %_req, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then15.cleanup120_crit_edge

if.then15.cleanup120_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.end21:                                         ; preds = %if.then15
  %call22 = tail call fastcc ptr @udc_dd_alloc(ptr noundef %7)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup120_crit_edge, label %if.end25

if.end21.cleanup120_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.end25:                                         ; preds = %if.end21
  %dd_desc_ptr = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 2
  %15 = ptrtoint ptr %dd_desc_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %dd_desc_ptr, align 4
  %dd_next_v = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 7
  %16 = ptrtoint ptr %dd_next_v to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dd_next_v, align 4
  %17 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call22, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 2
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma, align 4
  %dd_buffer_addr = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 2
  %20 = ptrtoint ptr %dd_buffer_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dd_buffer_addr, align 4
  %dd_status = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 3
  %21 = ptrtoint ptr %dd_status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dd_status, align 4
  %eptype = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 9
  %22 = ptrtoint ptr %eptype to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eptype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp27 = icmp eq i32 %23, 1
  br i1 %cmp27, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.end25
  %dd_setup = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 1
  %24 = ptrtoint ptr %dd_setup to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65552, ptr %dd_setup, align 4
  %this_dma = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 5
  %25 = ptrtoint ptr %this_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %this_dma, align 4
  %add = add i32 %26, 24
  %dd_iso_ps_mem_addr = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 4
  %27 = ptrtoint ptr %dd_iso_ps_mem_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %dd_iso_ps_mem_addr, align 4
  %28 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_in, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool31.not = icmp eq i8 %29, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  %iso_status = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 6
  %32 = ptrtoint ptr %iso_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %iso_status, align 4
  br label %do.body

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %iso_status34 = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 6
  %33 = ptrtoint ptr %iso_status34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %iso_status34, align 4
  br label %do.body

if.else37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %34 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %34, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %sh.diff = lshr i56 %bf.load, 35
  %tr.sh.diff = trunc i56 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, 65504
  %length40 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %35 = ptrtoint ptr %length40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length40, align 4
  %shl42 = shl i32 %36, 16
  %or = or i32 %shl, %shl42
  %dd_setup43 = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call22, i32 0, i32 1
  %37 = ptrtoint ptr %dd_setup43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %dd_setup43, align 4
  br label %do.body

do.body:                                          ; preds = %if.else37, %if.else, %if.then32, %if.end13.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_ep_queue.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc32xx_ep_queue, %do.body63)) #11
          to label %if.then52 [label %do.body63], !srcloc !309

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %udc11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udc11, align 4
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  %length54 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %44 = ptrtoint ptr %length54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length54, align 4
  %46 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_req, align 4
  %is_in56 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 7
  %48 = ptrtoint ptr %is_in56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_in56, align 4, !range !335
  %50 = zext i8 %49 to i32
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %51 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load59 = load i32, ptr %zero, align 4
  %bf.lshr60 = lshr i32 %bf.load59, 13
  %bf.clear = and i32 %bf.lshr60, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_ep_queue.__UNIQUE_ID_ddebug300, ptr noundef %41, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, ptr noundef %43, ptr noundef nonnull %_req, i32 noundef %45, ptr noundef %47, i32 noundef %50, i32 noundef %bf.clear) #11
  br label %do.body63

do.body63:                                        ; preds = %if.then52, %do.body
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %7, i32 0, i32 4
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %status73 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %52 = ptrtoint ptr %status73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -115, ptr %status73, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %53 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %actual, align 4
  %zero74 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %54 = ptrtoint ptr %zero74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load75 = load i32, ptr %zero74, align 4
  %send_zlp = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 4
  %55 = lshr i32 %bf.load75, 13
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = ptrtoint ptr %send_zlp to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %send_zlp, align 1
  %queue80 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 1
  %59 = ptrtoint ptr %queue80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %queue80, align 4
  %cmp.i187.not = icmp eq ptr %60, %queue80
  %prev.i = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %62, ptr noundef %queue80) #11
  br i1 %cmp.i187.not, label %if.then83, label %if.else113

if.then83:                                        ; preds = %do.body63
  br i1 %call.i.i, label %if.end.i.i, label %if.then83.list_add_tail.exit_crit_edge

if.then83.list_add_tail.exit_crit_edge:           ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %queue, ptr %prev.i, align 4
  %64 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %queue80, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %queue, ptr %62, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then83.list_add_tail.exit_crit_edge
  %hwep_num_base = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 3
  %67 = ptrtoint ptr %hwep_num_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hwep_num_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp86 = icmp eq i32 %68, 0
  %is_in89 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 7
  %69 = ptrtoint ptr %is_in89 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_in89, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool90.not = icmp eq i8 %70, 0
  br i1 %cmp86, label %if.then88, label %if.else97

if.then88:                                        ; preds = %list_add_tail.exit
  %ep0state94 = getelementptr inbounds %struct.lpc32xx_udc, ptr %7, i32 0, i32 28
  br i1 %tobool90.not, label %if.else93, label %if.then91

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %ep0state94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %ep0state94, align 8
  %call92 = tail call fastcc i32 @udc_ep0_in_req(ptr noundef %7)
  br label %if.end116

if.else93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %ep0state94 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %ep0state94, align 8
  %call95 = tail call fastcc i32 @udc_ep0_out_req(ptr noundef %7)
  br label %if.end116

if.else97:                                        ; preds = %list_add_tail.exit
  %req_pending106 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 8
  %73 = ptrtoint ptr %req_pending106 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %req_pending106, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool107.not = icmp eq i8 %74, 0
  br i1 %tobool90.not, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.else97
  br i1 %tobool107.not, label %if.then102, label %if.then100.if.end116_crit_edge

if.then100.if.end116_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_ep_in_req_dma(ptr noundef %7, ptr noundef nonnull %_ep)
  br label %if.end116

if.else105:                                       ; preds = %if.else97
  br i1 %tobool107.not, label %if.then108, label %if.else105.if.end116_crit_edge

if.else105.if.end116_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_ep_out_req_dma(ptr noundef %7, ptr noundef nonnull %_ep)
  br label %if.end116

if.else113:                                       ; preds = %do.body63
  br i1 %call.i.i, label %if.end.i.i192, label %if.else113.if.end116_crit_edge

if.else113.if.end116_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.end.i.i192:                                    ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %queue, ptr %prev.i, align 4
  %76 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %queue80, ptr %queue, align 4
  %prev3.i.i191 = getelementptr inbounds %struct.lpc32xx_request, ptr %_req, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev3.i.i191 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %62, ptr %prev3.i.i191, align 4
  %78 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %queue, ptr %62, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end.i.i192, %if.else113.if.end116_crit_edge, %if.then108, %if.else105.if.end116_crit_edge, %if.then102, %if.then100.if.end116_crit_edge, %if.else93, %if.then91
  %status.1 = phi i32 [ %call92, %if.then91 ], [ %call95, %if.else93 ], [ 0, %if.then100.if.end116_crit_edge ], [ 0, %if.then102 ], [ 0, %if.else105.if.end116_crit_edge ], [ 0, %if.then108 ], [ 0, %if.else113.if.end116_crit_edge ], [ 0, %if.end.i.i192 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call68) #11
  %79 = tail call i32 @llvm.smin.i32(i32 %status.1, i32 0)
  br label %cleanup120

cleanup120:                                       ; preds = %if.end116, %if.end21.cleanup120_crit_edge, %if.then15.cleanup120_crit_edge, %if.end.cleanup120_crit_edge, %lor.lhs.false9.cleanup120_crit_edge, %lor.lhs.false7.cleanup120_crit_edge, %lor.lhs.false5.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.1 = phi i32 [ %79, %if.end116 ], [ -22, %lor.lhs.false9.cleanup120_crit_edge ], [ -22, %lor.lhs.false7.cleanup120_crit_edge ], [ -22, %lor.lhs.false5.cleanup120_crit_edge ], [ -22, %entry.cleanup120_crit_edge ], [ -32, %if.end.cleanup120_crit_edge ], [ %call18, %if.then15.cleanup120_crit_edge ], [ -12, %if.end21.cleanup120_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwep_num_base = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %hwep_num_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwep_num_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %lor.lhs.false
  %udc = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc, align 4
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %3, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %queue = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.body1
  %.pn.in = phi ptr [ %queue, %do.body1 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp12.not = icmp eq ptr %.pn, %queue
  %cmp15 = icmp eq ptr %req.0, %_req
  %or.cond = or i1 %cmp12.not, %cmp15
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp15, label %if.end30, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end30, %for.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end30 ], [ -22, %for.end.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc, align 4
  %lock32 = getelementptr inbounds %struct.lpc32xx_udc, ptr %6, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock32, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwep_num = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwep_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_in = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 7
  %2 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_in, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %udc4 = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udc4, align 4
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %5, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp11 = icmp eq i32 %value, 1
  br i1 %cmp11, label %if.end3.if.end18_crit_edge, label %if.else

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %wedge = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 11
  %6 = ptrtoint ptr %wedge to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wedge, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end3.if.end18_crit_edge
  %.sink = phi i32 [ 256, %if.else ], [ 65792, %if.end3.if.end18_crit_edge ]
  %7 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwep_num, align 4
  %shl16 = shl i32 %8, 16
  %or17 = or i32 %shl16, 4195584
  tail call fastcc void @udc_protocol_cmd_data_w(ptr noundef %5, i32 noundef %or17, i32 noundef %.sink)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_ep_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %udc = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %wedge = getelementptr inbounds %struct.lpc32xx_ep, ptr %_ep, i32 0, i32 11
  %2 = ptrtoint ptr %wedge to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %wedge, align 4
  %call = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %_ep) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @udc_dd_alloc(ptr nocapture noundef readonly %udc) unnamed_addr #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !308
  %dd_cache = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 12
  %1 = ptrtoint ptr %dd_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dd_cache, align 8
  %call = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 2593, ptr noundef nonnull %dma) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma, align 4
  %this_dma = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %this_dma to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %this_dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udc_ep0_in_req(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24
  %queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %length = getelementptr i8, ptr %1, i32 -52
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %actual = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udc_write_hwep(ptr noundef %udc, i32 noundef 1, ptr noundef null, i32 noundef 0) #11
  br label %cleanup.sink.split

if.else5:                                         ; preds = %if.else
  %sub = sub i32 %3, %5
  %maxpacket = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bf.cast)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 %5
  tail call fastcc void @udc_write_hwep(ptr noundef %udc, i32 noundef 1, ptr noundef %add.ptr19, i32 noundef %7)
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  %add = add i32 %11, %7
  store i32 %add, ptr %actual, align 4
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load24 = load i56, ptr %maxpacket, align 2
  %bf.lshr25 = lshr i56 %bf.load24, 40
  %bf.cast26 = trunc i56 %bf.lshr25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast26)
  %cmp27.not = icmp ult i32 %sub, %bf.cast26
  br i1 %cmp27.not, label %if.end29, label %if.else5.cleanup_crit_edge

if.else5.cleanup_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  %ep0state = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 28
  %13 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep0state, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29, %if.then4
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else5.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udc_ep0_out_req(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24
  %queue = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.else
  %length = getelementptr i8, ptr %1, i32 -52
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3.cleanup.sink.split_crit_edge, label %if.end6

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.then3
  %actual = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %sub = sub i32 %3, %5
  %maxpacket = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bf.cast)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 %5
  tail call void @llvm.prefetch.p0(ptr %add.ptr22, i32 1, i32 3, i32 1)
  %call28 = tail call fastcc i32 @udc_read_hwep(ptr noundef %udc, ptr noundef %add.ptr22, i32 noundef %7)
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  %add = add i32 %11, %7
  store i32 %add, ptr %actual, align 4
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load33 = load i56, ptr %maxpacket, align 2
  %bf.lshr34 = lshr i56 %bf.load33, 40
  %bf.cast35 = trunc i56 %bf.lshr34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %bf.cast35)
  %cmp36 = icmp ult i32 %call28, %bf.cast35
  br i1 %cmp36, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  tail call fastcc void @done(ptr noundef %ep, ptr noundef nonnull %add.ptr, i32 noundef 0)
  %ep0state38 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 28
  %13 = ptrtoint ptr %ep0state38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep0state38, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_ep_in_req_dma(ptr nocapture noundef readonly %udc, ptr nocapture noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwep_num = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwep_num, align 4
  %req_pending = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 8
  %2 = ptrtoint ptr %req_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %req_pending, align 1
  %queue = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %dd_desc_ptr = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %dd_desc_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dd_desc_ptr, align 4
  %this_dma = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %this_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this_dma, align 4
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 10
  %9 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udca_v_base, align 8
  %arrayidx = getelementptr i32, ptr %10, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  %shl.i = shl nuw i32 1, %1
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %13 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !311
  %length = getelementptr i8, ptr %4, i32 -52
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %17 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %16, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %send_zlp = getelementptr i8, ptr %4, i32 13
  %18 = ptrtoint ptr %send_zlp to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %send_zlp, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_ep_out_req_dma(ptr nocapture noundef readonly %udc, ptr nocapture noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwep_num = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwep_num, align 4
  %req_pending = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 8
  %2 = ptrtoint ptr %req_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %req_pending, align 1
  %queue = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %dd_desc_ptr = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %dd_desc_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dd_desc_ptr, align 4
  %this_dma = getelementptr inbounds %struct.lpc32xx_usbd_dd_gad, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %this_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this_dma, align 4
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 10
  %9 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udca_v_base, align 8
  %arrayidx = getelementptr i32, ptr %10, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  %shl.i = shl nuw i32 1, %1
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %udp_baseaddr.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %13 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !311
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_write_hwep(ptr nocapture noundef readonly %udc, i32 noundef %hwep, ptr noundef %data, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp.not = icmp ne i32 %bytes, 0
  %cmp1 = icmp eq ptr %data, null
  %or.cond = and i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %and = shl i32 %hwep, 25
  %shl = and i32 %and, 1006632960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  tail call void @arm_heavy_mb() #11
  %0 = or i32 %shl, 33554432
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %1 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %bytes)
  %4 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #11, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp7 = icmp eq i32 %bytes, 0
  br i1 %cmp7, label %do.body9, label %if.else

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr13 = getelementptr i8, ptr %7, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #11, !srcloc !311
  br label %do.body15

if.else:                                          ; preds = %do.body
  %8 = ptrtoint ptr %data to i32
  %and.i = and i32 %8, 3
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.else.for.body17.i.preheader_crit_edge
    i32 3, label %if.else.for.body17.i.preheader_crit_edge33
    i32 2, label %sw.bb44.i
  ]

if.else.for.body17.i.preheader_crit_edge33:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i.preheader

if.else.for.body17.i.preheader_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i.preheader

for.body17.i.preheader:                           ; preds = %if.else.for.body17.i.preheader_crit_edge, %if.else.for.body17.i.preheader_crit_edge33
  br label %for.body17.i

sw.bb.i:                                          ; preds = %if.else
  %and1.i = and i32 %bytes, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp151.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp151.not.i, label %sw.bb.i.for.end.i_crit_edge, label %sw.bb.i.do.body.i_crit_edge

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  br label %do.body.i

sw.bb.i.for.end.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb.i.do.body.i_crit_edge
  %p32.0153.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %data, %sw.bb.i.do.body.i_crit_edge ]
  %n.0152.i = phi i32 [ %add.i, %do.body.i.do.body.i_crit_edge ], [ 0, %sw.bb.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %incdec.ptr.i = getelementptr i32, ptr %p32.0153.i, i32 1
  %10 = ptrtoint ptr %p32.0153.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p32.0153.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %13 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !311
  %add.i = add nuw i32 %n.0152.i, 4
  %cmp.i = icmp ult i32 %add.i, %and1.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %sw.bb.i.for.end.i_crit_edge
  %sub.i = and i32 %bytes, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.end.i.do.body15_crit_edge, label %for.body4.i

for.end.i.do.body15_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

for.body4.i:                                      ; preds = %for.end.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %and1.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %exitcond159.not.i = icmp eq i32 %sub.i, 1
  br i1 %exitcond159.not.i, label %for.body4.i.do.body8.i_crit_edge, label %for.body4.i.1

for.body4.i.do.body8.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8.i

for.body4.i.1:                                    ; preds = %for.body4.i
  %add5.i.1 = or i32 %and1.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %data, i32 %add5.i.1
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %18 to i32
  %shl.i.1 = shl nuw nsw i32 %conv.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %exitcond159.not.i.1 = icmp eq i32 %sub.i, 2
  br i1 %exitcond159.not.i.1, label %for.body4.i.1.do.body8.i_crit_edge, label %for.body4.i.2

for.body4.i.1.do.body8.i_crit_edge:               ; preds = %for.body4.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8.i

for.body4.i.2:                                    ; preds = %for.body4.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %add5.i.2 = or i32 %and1.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %data, i32 %add5.i.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %20 to i32
  %shl.i.2 = shl nuw nsw i32 %conv.i.2, 16
  %or.i.2 = or i32 %shl.i.2, %or.i.1
  br label %do.body8.i

do.body8.i:                                       ; preds = %for.body4.i.2, %for.body4.i.1.do.body8.i_crit_edge, %for.body4.i.do.body8.i_crit_edge
  %or.i.lcssa = phi i32 [ %conv.i, %for.body4.i.do.body8.i_crit_edge ], [ %or.i.1, %for.body4.i.1.do.body8.i_crit_edge ], [ %or.i.2, %for.body4.i.2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.lcssa) #11
  %22 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr12.i = getelementptr i8, ptr %23, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %21) #11, !srcloc !311
  br label %do.body15

for.body17.i:                                     ; preds = %do.body36.i.for.body17.i_crit_edge, %for.body17.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %do.body36.i.for.body17.i_crit_edge ], [ %bytes, %for.body17.i.preheader ]
  %n.2149.i = phi i32 [ %add42.i, %do.body36.i.for.body17.i_crit_edge ], [ 0, %for.body17.i.preheader ]
  %smin.i = tail call i32 @llvm.smin.i32(i32 %indvars.iv.i, i32 4) #11
  %smax.i = tail call i32 @llvm.smax.i32(i32 %smin.i, i32 1) #11
  %sub18.i = sub i32 %bytes, %n.2149.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp24144.i = icmp sgt i32 %sub18.i, 0
  br i1 %cmp24144.i, label %for.body26.i, label %for.body17.i.do.body36.i_crit_edge

for.body17.i.do.body36.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

for.body26.i:                                     ; preds = %for.body17.i
  %arrayidx28.i = getelementptr i8, ptr %data, i32 %n.2149.i
  %24 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smin.i)
  %exitcond158.not.i = icmp slt i32 %smin.i, 2
  br i1 %exitcond158.not.i, label %for.body26.i.do.body36.i_crit_edge, label %for.body26.i.1

for.body26.i.do.body36.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

for.body26.i.1:                                   ; preds = %for.body26.i
  %add27.i.1 = or i32 %n.2149.i, 1
  %arrayidx28.i.1 = getelementptr i8, ptr %data, i32 %add27.i.1
  %26 = ptrtoint ptr %arrayidx28.i.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28.i.1, align 1
  %conv29.i.1 = zext i8 %27 to i32
  %shl31.i.1 = shl nuw nsw i32 %conv29.i.1, 8
  %or32.i.1 = or i32 %shl31.i.1, %conv29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i)
  %exitcond158.not.i.1 = icmp eq i32 %smax.i, 2
  br i1 %exitcond158.not.i.1, label %for.body26.i.1.do.body36.i_crit_edge, label %for.body26.i.2

for.body26.i.1.do.body36.i_crit_edge:             ; preds = %for.body26.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

for.body26.i.2:                                   ; preds = %for.body26.i.1
  %add27.i.2 = or i32 %n.2149.i, 2
  %arrayidx28.i.2 = getelementptr i8, ptr %data, i32 %add27.i.2
  %28 = ptrtoint ptr %arrayidx28.i.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28.i.2, align 1
  %conv29.i.2 = zext i8 %29 to i32
  %shl31.i.2 = shl nuw nsw i32 %conv29.i.2, 16
  %or32.i.2 = or i32 %shl31.i.2, %or32.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax.i)
  %exitcond158.not.i.2 = icmp eq i32 %smax.i, 3
  br i1 %exitcond158.not.i.2, label %for.body26.i.2.do.body36.i_crit_edge, label %for.body26.i.3

for.body26.i.2.do.body36.i_crit_edge:             ; preds = %for.body26.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

for.body26.i.3:                                   ; preds = %for.body26.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %add27.i.3 = or i32 %n.2149.i, 3
  %arrayidx28.i.3 = getelementptr i8, ptr %data, i32 %add27.i.3
  %30 = ptrtoint ptr %arrayidx28.i.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28.i.3, align 1
  %conv29.i.3 = zext i8 %31 to i32
  %shl31.i.3 = shl nuw i32 %conv29.i.3, 24
  %or32.i.3 = or i32 %shl31.i.3, %or32.i.2
  br label %do.body36.i

do.body36.i:                                      ; preds = %for.body26.i.3, %for.body26.i.2.do.body36.i_crit_edge, %for.body26.i.1.do.body36.i_crit_edge, %for.body26.i.do.body36.i_crit_edge, %for.body17.i.do.body36.i_crit_edge
  %tmp.1.lcssa.i = phi i32 [ 0, %for.body17.i.do.body36.i_crit_edge ], [ %conv29.i, %for.body26.i.do.body36.i_crit_edge ], [ %or32.i.1, %for.body26.i.1.do.body36.i_crit_edge ], [ %or32.i.2, %for.body26.i.2.do.body36.i_crit_edge ], [ %or32.i.3, %for.body26.i.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %tmp.1.lcssa.i) #11
  %33 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr40.i = getelementptr i8, ptr %34, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %32) #11, !srcloc !311
  %add42.i = add i32 %n.2149.i, 4
  %cmp15.i = icmp ult i32 %add42.i, %bytes
  %indvars.iv.next.i = add i32 %indvars.iv.i, -4
  br i1 %cmp15.i, label %do.body36.i.for.body17.i_crit_edge, label %do.body36.i.do.body15_crit_edge

do.body36.i.do.body15_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.body36.i.for.body17.i_crit_edge:               ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i

sw.bb44.i:                                        ; preds = %if.else
  %and45.i = and i32 %bytes, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp47138.not.i = icmp eq i32 %and45.i, 0
  br i1 %cmp47138.not.i, label %sw.bb44.i.for.end65.i_crit_edge, label %sw.bb44.i.for.body49.i_crit_edge

sw.bb44.i.for.body49.i_crit_edge:                 ; preds = %sw.bb44.i
  br label %for.body49.i

sw.bb44.i.for.end65.i_crit_edge:                  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65.i

for.body49.i:                                     ; preds = %for.body49.i.for.body49.i_crit_edge, %sw.bb44.i.for.body49.i_crit_edge
  %p16.0140.i = phi ptr [ %incdec.ptr53.i, %for.body49.i.for.body49.i_crit_edge ], [ %data, %sw.bb44.i.for.body49.i_crit_edge ]
  %n.3139.i = phi i32 [ %add64.i, %for.body49.i.for.body49.i_crit_edge ], [ 0, %sw.bb44.i.for.body49.i_crit_edge ]
  %incdec.ptr50.i = getelementptr i16, ptr %p16.0140.i, i32 1
  %35 = ptrtoint ptr %p16.0140.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %p16.0140.i, align 2
  %conv51.i = zext i16 %36 to i32
  %incdec.ptr53.i = getelementptr i16, ptr %p16.0140.i, i32 2
  %37 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr50.i, align 2
  %conv54.i = zext i16 %38 to i32
  %shl56.i = shl nuw i32 %conv54.i, 16
  %or57.i = or i32 %shl56.i, %conv51.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %39 = tail call i32 @llvm.bswap.i32(i32 %or57.i) #11
  %40 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr62.i = getelementptr i8, ptr %41, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %39) #11, !srcloc !311
  %add64.i = add nuw i32 %n.3139.i, 4
  %cmp47.i = icmp ult i32 %add64.i, %and45.i
  br i1 %cmp47.i, label %for.body49.i.for.body49.i_crit_edge, label %for.body49.i.for.end65.i_crit_edge

for.body49.i.for.end65.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65.i

for.body49.i.for.body49.i_crit_edge:              ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49.i

for.end65.i:                                      ; preds = %for.body49.i.for.end65.i_crit_edge, %sw.bb44.i.for.end65.i_crit_edge
  %sub66.i = and i32 %bytes, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66.i)
  %tobool67.not.i = icmp eq i32 %sub66.i, 0
  br i1 %tobool67.not.i, label %for.end65.i.do.body15_crit_edge, label %for.body72.i

for.end65.i.do.body15_crit_edge:                  ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

for.body72.i:                                     ; preds = %for.end65.i
  %arrayidx74.i = getelementptr i8, ptr %data, i32 %and45.i
  %42 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub66.i)
  %exitcond.not.i = icmp eq i32 %sub66.i, 1
  br i1 %exitcond.not.i, label %for.body72.i.do.body82.i_crit_edge, label %for.body72.i.1

for.body72.i.do.body82.i_crit_edge:               ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82.i

for.body72.i.1:                                   ; preds = %for.body72.i
  %add73.i.1 = or i32 %and45.i, 1
  %arrayidx74.i.1 = getelementptr i8, ptr %data, i32 %add73.i.1
  %44 = ptrtoint ptr %arrayidx74.i.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx74.i.1, align 1
  %conv75.i.1 = zext i8 %45 to i32
  %shl77.i.1 = shl nuw nsw i32 %conv75.i.1, 8
  %or78.i.1 = or i32 %shl77.i.1, %conv75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub66.i)
  %exitcond.not.i.1 = icmp eq i32 %sub66.i, 2
  br i1 %exitcond.not.i.1, label %for.body72.i.1.do.body82.i_crit_edge, label %for.body72.i.2

for.body72.i.1.do.body82.i_crit_edge:             ; preds = %for.body72.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82.i

for.body72.i.2:                                   ; preds = %for.body72.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %add73.i.2 = or i32 %and45.i, 2
  %arrayidx74.i.2 = getelementptr i8, ptr %data, i32 %add73.i.2
  %46 = ptrtoint ptr %arrayidx74.i.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx74.i.2, align 1
  %conv75.i.2 = zext i8 %47 to i32
  %shl77.i.2 = shl nuw nsw i32 %conv75.i.2, 16
  %or78.i.2 = or i32 %shl77.i.2, %or78.i.1
  br label %do.body82.i

do.body82.i:                                      ; preds = %for.body72.i.2, %for.body72.i.1.do.body82.i_crit_edge, %for.body72.i.do.body82.i_crit_edge
  %or78.i.lcssa = phi i32 [ %conv75.i, %for.body72.i.do.body82.i_crit_edge ], [ %or78.i.1, %for.body72.i.1.do.body82.i_crit_edge ], [ %or78.i.2, %for.body72.i.2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %or78.i.lcssa) #11
  %49 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr86.i = getelementptr i8, ptr %50, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 %48) #11, !srcloc !311
  br label %do.body15

entry.unreachabledefault.i:                       ; preds = %if.else
  unreachable

do.body15:                                        ; preds = %do.body82.i, %for.end65.i.do.body15_crit_edge, %do.body36.i.do.body15_crit_edge, %do.body8.i, %for.end.i.do.body15_crit_edge, %do.body9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  tail call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr21 = getelementptr i8, ptr %52, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %shl) #11, !srcloc !311
  %shl.i.i = shl i32 %hwep, 16
  %or.i.i = or i32 %shl.i.i, 1280
  %53 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 512
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i.do.body.i.i.i_crit_edge, %do.body15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %58, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i.i = getelementptr i8, ptr %60, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %56) #11, !srcloc !311
  br label %while.cond10.i.i.i

while.cond10.i.i.i:                               ; preds = %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge, %do.body.i.i.i
  %to.0.i.i.i = phi i32 [ 10000, %do.body.i.i.i ], [ %dec.i.i.i, %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge ]
  %61 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i.i = getelementptr i8, ptr %62, i32 512
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %64 = and i32 %63, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp18.i.i.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i)
  %cmp19.i.i.i = icmp ne i32 %to.0.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp18.i.i.i, i1 %cmp19.i.i.i, i1 false
  %dec.i.i.i = add nsw i32 %to.0.i.i.i, -1
  br i1 %or.cond.i.i.i, label %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge, label %while.end.i.i.i

while.cond10.i.i.i.while.cond10.i.i.i_crit_edge:  ; preds = %while.cond10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond10.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i, label %udc_select_hwep.exit.i, label %while.end.i.i.i.do.body.i.i.i_crit_edge

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

udc_select_hwep.exit.i:                           ; preds = %while.end.i.i.i
  %65 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 512
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %udc_select_hwep.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %69, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %71, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 391680) #11, !srcloc !311
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.while.cond10.i.i_crit_edge, %do.body.i.i
  %to.0.i.i = phi i32 [ 10000, %do.body.i.i ], [ %dec.i.i, %while.cond10.i.i.while.cond10.i.i_crit_edge ]
  %72 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %73, i32 512
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %75 = and i32 %74, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp18.i.i = icmp eq i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i)
  %cmp19.i.i = icmp ne i32 %to.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp19.i.i, i1 false
  %dec.i.i = add nsw i32 %to.0.i.i, -1
  br i1 %or.cond.i.i, label %while.cond10.i.i.while.cond10.i.i_crit_edge, label %while.end.i.i

while.cond10.i.i.while.cond10.i.i_crit_edge:      ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i, label %while.end.i.i.cleanup_crit_edge, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

while.end.i.i.cleanup_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udc_read_hwep(ptr nocapture noundef readonly %udc, ptr noundef %data, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  tail call void @arm_heavy_mb() #11
  %udp_baseaddr = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #11, !srcloc !311
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %to.0 = phi i32 [ 1000, %entry ], [ %dec, %while.cond.while.cond_crit_edge ]
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !324
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  %and5 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp = icmp eq i32 %and5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %cmp6 = icmp ne i32 %to.0, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  %dec = add nsw i32 %to.0, -1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0)
  %tobool.not = icmp eq i32 %to.0, 0
  br i1 %tobool.not, label %do.body7, label %while.end.if.end17_crit_edge

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.body7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_read_hwep.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_read_hwep, %if.end17)) #11
          to label %if.then14 [label %if.end17], !srcloc !309

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_read_hwep.__UNIQUE_ID_ddebug292, ptr noundef %7, ptr noundef nonnull @.str.94) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body7, %while.end.if.end17_crit_edge
  %and18 = and i32 %5, 1023
  %8 = tail call i32 @llvm.umin.i32(i32 %and18, i32 %bytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.not = icmp eq i32 %8, 0
  %cmp23.not = icmp eq ptr %data, null
  %or.cond1 = or i1 %cmp23.not, %cmp22.not
  br i1 %or.cond1, label %if.end17.do.body26_crit_edge, label %if.then24

if.end17.do.body26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

if.then24:                                        ; preds = %if.end17
  %9 = ptrtoint ptr %data to i32
  %and.i = and i32 %9, 3
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.then24.for.body22.i.preheader_crit_edge
    i32 3, label %if.then24.for.body22.i.preheader_crit_edge13
    i32 2, label %sw.bb51.i
  ]

if.then24.for.body22.i.preheader_crit_edge13:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i.preheader

if.then24.for.body22.i.preheader_crit_edge:       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i.preheader

for.body22.i.preheader:                           ; preds = %if.then24.for.body22.i.preheader_crit_edge, %if.then24.for.body22.i.preheader_crit_edge13
  br label %for.body22.i

sw.bb.i:                                          ; preds = %if.then24
  %and1.i = and i32 %8, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp157.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp157.not.i, label %sw.bb.i.for.end.i_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  br label %for.body.i

sw.bb.i.for.end.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.i.for.body.i_crit_edge
  %n.0159.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.i.for.body.i_crit_edge ]
  %p32.0158.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %data, %sw.bb.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 536
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !324
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  %incdec.ptr.i = getelementptr i32, ptr %p32.0158.i, i32 1
  %15 = ptrtoint ptr %p32.0158.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %p32.0158.i, align 4
  %add.i = add nuw nsw i32 %n.0159.i, 4
  %cmp.i = icmp ult i32 %add.i, %and1.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.i.for.end.i_crit_edge
  %sub.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.end.i.do.body26_crit_edge, label %for.body13.preheader.i

for.end.i.do.body26_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body13.preheader.i:                           ; preds = %for.end.i
  %16 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr7.i = getelementptr i8, ptr %17, i32 536
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !324
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  %conv.i = trunc i32 %19 to i8
  %arrayidx.i = getelementptr i8, ptr %data, i32 %and1.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %exitcond165.not.i = icmp eq i32 %sub.i, 1
  br i1 %exitcond165.not.i, label %for.body13.preheader.i.do.body26_crit_edge, label %for.body13.i.1

for.body13.preheader.i.do.body26_crit_edge:       ; preds = %for.body13.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body13.i.1:                                   ; preds = %for.body13.preheader.i
  %shr.i.1 = lshr i32 %19, 8
  %conv.i.1 = trunc i32 %shr.i.1 to i8
  %add15.i.1 = or i32 %and1.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %data, i32 %add15.i.1
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i.1, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %exitcond165.not.i.1 = icmp eq i32 %sub.i, 2
  br i1 %exitcond165.not.i.1, label %for.body13.i.1.do.body26_crit_edge, label %for.body13.i.2

for.body13.i.1.do.body26_crit_edge:               ; preds = %for.body13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body13.i.2:                                   ; preds = %for.body13.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.2 = lshr i32 %19, 16
  %conv.i.2 = trunc i32 %shr.i.2 to i8
  %add15.i.2 = or i32 %and1.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %data, i32 %add15.i.2
  %22 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.2, ptr %arrayidx.i.2, align 1
  br label %do.body26

for.body22.i:                                     ; preds = %for.inc48.i.for.body22.i_crit_edge, %for.body22.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc48.i.for.body22.i_crit_edge ], [ %8, %for.body22.i.preheader ]
  %n.2155.i = phi i32 [ %add49.i, %for.inc48.i.for.body22.i_crit_edge ], [ 0, %for.body22.i.preheader ]
  %smin.i = tail call i32 @llvm.smin.i32(i32 %indvars.iv.i, i32 4) #11
  %smax.i = tail call i32 @llvm.smax.i32(i32 %smin.i, i32 1) #11
  %23 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr26.i = getelementptr i8, ptr %24, i32 536
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #11, !srcloc !324
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %n.2155.i)
  %cmp36152.i = icmp ugt i32 %8, %n.2155.i
  br i1 %cmp36152.i, label %for.body38.i, label %for.body22.i.for.inc48.i_crit_edge

for.body22.i.for.inc48.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48.i

for.body38.i:                                     ; preds = %for.body22.i
  %conv42.i = trunc i32 %26 to i8
  %arrayidx44.i = getelementptr i8, ptr %data, i32 %n.2155.i
  %27 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv42.i, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smin.i)
  %exitcond164.not.i = icmp slt i32 %smin.i, 2
  br i1 %exitcond164.not.i, label %for.body38.i.for.inc48.i_crit_edge, label %for.body38.i.1

for.body38.i.for.inc48.i_crit_edge:               ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48.i

for.body38.i.1:                                   ; preds = %for.body38.i
  %shr40.i.1 = lshr i32 %26, 8
  %conv42.i.1 = trunc i32 %shr40.i.1 to i8
  %add43.i.1 = or i32 %n.2155.i, 1
  %arrayidx44.i.1 = getelementptr i8, ptr %data, i32 %add43.i.1
  %28 = ptrtoint ptr %arrayidx44.i.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv42.i.1, ptr %arrayidx44.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i)
  %exitcond164.not.i.1 = icmp eq i32 %smax.i, 2
  br i1 %exitcond164.not.i.1, label %for.body38.i.1.for.inc48.i_crit_edge, label %for.body38.i.2

for.body38.i.1.for.inc48.i_crit_edge:             ; preds = %for.body38.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48.i

for.body38.i.2:                                   ; preds = %for.body38.i.1
  %shr40.i.2 = lshr i32 %26, 16
  %conv42.i.2 = trunc i32 %shr40.i.2 to i8
  %add43.i.2 = or i32 %n.2155.i, 2
  %arrayidx44.i.2 = getelementptr i8, ptr %data, i32 %add43.i.2
  %29 = ptrtoint ptr %arrayidx44.i.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42.i.2, ptr %arrayidx44.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax.i)
  %exitcond164.not.i.2 = icmp eq i32 %smax.i, 3
  br i1 %exitcond164.not.i.2, label %for.body38.i.2.for.inc48.i_crit_edge, label %for.body38.i.3

for.body38.i.2.for.inc48.i_crit_edge:             ; preds = %for.body38.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48.i

for.body38.i.3:                                   ; preds = %for.body38.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %shr40.i.3 = lshr i32 %26, 24
  %conv42.i.3 = trunc i32 %shr40.i.3 to i8
  %add43.i.3 = or i32 %n.2155.i, 3
  %arrayidx44.i.3 = getelementptr i8, ptr %data, i32 %add43.i.3
  %30 = ptrtoint ptr %arrayidx44.i.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv42.i.3, ptr %arrayidx44.i.3, align 1
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %for.body38.i.3, %for.body38.i.2.for.inc48.i_crit_edge, %for.body38.i.1.for.inc48.i_crit_edge, %for.body38.i.for.inc48.i_crit_edge, %for.body22.i.for.inc48.i_crit_edge
  %add49.i = add nuw nsw i32 %n.2155.i, 4
  %cmp20.i = icmp ult i32 %add49.i, %8
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -4
  br i1 %cmp20.i, label %for.inc48.i.for.body22.i_crit_edge, label %for.inc48.i.do.body26_crit_edge

for.inc48.i.do.body26_crit_edge:                  ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.inc48.i.for.body22.i_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i

sw.bb51.i:                                        ; preds = %if.then24
  %and52.i = and i32 %8, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %cmp54147.not.i = icmp eq i32 %and52.i, 0
  br i1 %cmp54147.not.i, label %sw.bb51.i.for.end73.i_crit_edge, label %sw.bb51.i.for.body56.i_crit_edge

sw.bb51.i.for.body56.i_crit_edge:                 ; preds = %sw.bb51.i
  br label %for.body56.i

sw.bb51.i.for.end73.i_crit_edge:                  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end73.i

for.body56.i:                                     ; preds = %for.body56.i.for.body56.i_crit_edge, %sw.bb51.i.for.body56.i_crit_edge
  %n.3149.i = phi i32 [ %add72.i, %for.body56.i.for.body56.i_crit_edge ], [ 0, %sw.bb51.i.for.body56.i_crit_edge ]
  %p16.0148.i = phi ptr [ %incdec.ptr70.i, %for.body56.i.for.body56.i_crit_edge ], [ %data, %sw.bb51.i.for.body56.i_crit_edge ]
  %31 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr60.i = getelementptr i8, ptr %32, i32 536
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #11, !srcloc !324
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  %conv65.i = trunc i32 %34 to i16
  %incdec.ptr66.i = getelementptr i16, ptr %p16.0148.i, i32 1
  %35 = ptrtoint ptr %p16.0148.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv65.i, ptr %p16.0148.i, align 2
  %shr67.i = lshr i32 %34, 16
  %conv69.i = trunc i32 %shr67.i to i16
  %incdec.ptr70.i = getelementptr i16, ptr %p16.0148.i, i32 2
  %36 = ptrtoint ptr %incdec.ptr66.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv69.i, ptr %incdec.ptr66.i, align 2
  %add72.i = add nuw nsw i32 %n.3149.i, 4
  %cmp54.i = icmp ult i32 %add72.i, %and52.i
  br i1 %cmp54.i, label %for.body56.i.for.body56.i_crit_edge, label %for.body56.i.for.end73.i_crit_edge

for.body56.i.for.end73.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end73.i

for.body56.i.for.body56.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body56.i

for.end73.i:                                      ; preds = %for.body56.i.for.end73.i_crit_edge, %sw.bb51.i.for.end73.i_crit_edge
  %sub74.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74.i)
  %tobool75.not.i = icmp eq i32 %sub74.i, 0
  br i1 %tobool75.not.i, label %for.end73.i.do.body26_crit_edge, label %for.body87.preheader.i

for.end73.i.do.body26_crit_edge:                  ; preds = %for.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body87.preheader.i:                           ; preds = %for.end73.i
  %37 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr80.i = getelementptr i8, ptr %38, i32 536
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #11, !srcloc !324
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  %conv91.i = trunc i32 %40 to i8
  %arrayidx93.i = getelementptr i8, ptr %data, i32 %and52.i
  %41 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv91.i, ptr %arrayidx93.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub74.i)
  %exitcond.not.i = icmp eq i32 %sub74.i, 1
  br i1 %exitcond.not.i, label %for.body87.preheader.i.do.body26_crit_edge, label %for.body87.i.1

for.body87.preheader.i.do.body26_crit_edge:       ; preds = %for.body87.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body87.i.1:                                   ; preds = %for.body87.preheader.i
  %shr89.i.1 = lshr i32 %40, 8
  %conv91.i.1 = trunc i32 %shr89.i.1 to i8
  %add92.i.1 = or i32 %and52.i, 1
  %arrayidx93.i.1 = getelementptr i8, ptr %data, i32 %add92.i.1
  %42 = ptrtoint ptr %arrayidx93.i.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv91.i.1, ptr %arrayidx93.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub74.i)
  %exitcond.not.i.1 = icmp eq i32 %sub74.i, 2
  br i1 %exitcond.not.i.1, label %for.body87.i.1.do.body26_crit_edge, label %for.body87.i.2

for.body87.i.1.do.body26_crit_edge:               ; preds = %for.body87.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.body87.i.2:                                   ; preds = %for.body87.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %shr89.i.2 = lshr i32 %40, 16
  %conv91.i.2 = trunc i32 %shr89.i.2 to i8
  %add92.i.2 = or i32 %and52.i, 2
  %arrayidx93.i.2 = getelementptr i8, ptr %data, i32 %add92.i.2
  %43 = ptrtoint ptr %arrayidx93.i.2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv91.i.2, ptr %arrayidx93.i.2, align 1
  br label %do.body26

entry.unreachabledefault.i:                       ; preds = %if.then24
  unreachable

do.body26:                                        ; preds = %for.body87.i.2, %for.body87.i.1.do.body26_crit_edge, %for.body87.preheader.i.do.body26_crit_edge, %for.end73.i.do.body26_crit_edge, %for.inc48.i.do.body26_crit_edge, %for.body13.i.2, %for.body13.i.1.do.body26_crit_edge, %for.body13.preheader.i.do.body26_crit_edge, %for.end.i.do.body26_crit_edge, %if.end17.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr32 = getelementptr i8, ptr %45, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #11, !srcloc !311
  tail call fastcc void @udc_clr_buffer_hwep(ptr noundef %udc, i32 noundef 0)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpc32xx_usbd_conn_chg(i32 noundef %conn) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpc32xx_usbd_susp_chg(i32 noundef %susp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpc32xx_rmwkup_chg(i32 noundef %remote_wakup_enable) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_handle_ep0_setup(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %ep0buff.i = alloca i32, align 4
  %ctrlpkt = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrlpkt) #11
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlpkt, i32 0, i32 1
  %queue.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 1
  %1 = ptrtoint ptr %ctrlpkt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ctrlpkt, align 8
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not12.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not12.i, label %entry.nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nuke.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -56
  tail call fastcc void @done(ptr noundef %ep1, ptr noundef %add.ptr.i, i32 noundef -71) #11
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %entry.nuke.exit_crit_edge
  %call = call fastcc i32 @udc_read_hwep(ptr noundef %udc, ptr noundef nonnull %ctrlpkt, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #13
  %udc2 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 2
  %7 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udc2, align 4
  %dev = getelementptr inbounds %struct.lpc32xx_udc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %nuke.exit
  %11 = ptrtoint ptr %ctrlpkt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrlpkt, align 8
  %conv = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv, 8
  %is_in9 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 24, i32 0, i32 7
  %14 = ptrtoint ptr %is_in9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_in9, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %conv11 = zext i8 %16 to i32
  %17 = shl nuw nsw i32 %conv11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cond174 = icmp eq i8 %16, 0
  br i1 %cond174, label %sw.bb66, label %sw.epilog69

sw.bb66:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep0buff.i) #11
  %is_selfpowered.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 17
  %18 = ptrtoint ptr %is_selfpowered.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %is_selfpowered.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 1
  %19 = ptrtoint ptr %ep0buff.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.clear.i, ptr %ep0buff.i, align 4
  %dev_status.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 15
  %20 = ptrtoint ptr %dev_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_status.i, align 4
  %and1.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %sw.bb66.sw.epilog.i_crit_edge, label %if.then.i

sw.bb66.sw.epilog.i_crit_edge:                    ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %bf.clear.i, 2
  %22 = ptrtoint ptr %ep0buff.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i, ptr %ep0buff.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then.i, %sw.bb66.sw.epilog.i_crit_edge
  call fastcc void @udc_write_hwep(ptr noundef %udc, i32 noundef 1, ptr noundef nonnull %ep0buff.i, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep0buff.i) #11
  br label %cleanup

sw.epilog69:                                      ; preds = %if.end
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 1
  %23 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver, align 8
  %tobool70.not = icmp eq ptr %24, null
  br i1 %tobool70.not, label %sw.epilog69.if.end113_crit_edge, label %if.then77, !prof !391

sw.epilog69.if.end113_crit_edge:                  ; preds = %sw.epilog69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then77:                                        ; preds = %sw.epilog69
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  %25 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %setup, align 4
  %call79 = call i32 %28(ptr noundef %udc, ptr noundef nonnull %ctrlpkt) #11
  call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp90 = icmp slt i32 %call79, 0
  br i1 %cmp90, label %do.body93, label %if.then77.if.end113_crit_edge

if.then77.if.end113_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.body93:                                        ; preds = %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_handle_ep0_setup.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_handle_ep0_setup, %do.end111)) #11
          to label %if.then105 [label %do.end111], !srcloc !309

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  %dev106 = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 3
  %29 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev106, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_handle_ep0_setup.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.108, i32 noundef %13, i32 noundef %17, i32 noundef %call79) #11
  br label %do.end111

do.end111:                                        ; preds = %if.then105, %do.body93
  %ep0state = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 28
  %31 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ep0state, align 8
  call fastcc void @udc_protocol_cmd_data_w(ptr noundef %udc, i32 noundef 4261120, i32 noundef 65792) #11
  br label %cleanup

if.end113:                                        ; preds = %if.then77.if.end113_crit_edge, %sw.epilog69.if.end113_crit_edge
  %32 = ptrtoint ptr %is_in9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_in9, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool115.not = icmp eq i8 %33, 0
  br i1 %tobool115.not, label %if.then116, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @udc_write_hwep(ptr noundef %udc, i32 noundef 1, ptr noundef null, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %if.end113.cleanup_crit_edge, %do.end111, %sw.epilog.i, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrlpkt) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_send_in_zlp(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwep_num = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwep_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %shl.i.i = shl nuw i32 1, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %udp_baseaddr.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %udc, i32 0, i32 7
  %3 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #11, !srcloc !311
  %shl.i3.i = shl i32 %1, 16
  %or.i.i = or i32 %shl.i3.i, 4195584
  %5 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i.do.body.i.i.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %10, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 268435456) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr9.i.i.i = getelementptr i8, ptr %12, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %8) #11, !srcloc !311
  br label %while.cond10.i.i.i

while.cond10.i.i.i:                               ; preds = %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge, %do.body.i.i.i
  %to.0.i.i.i = phi i32 [ 10000, %do.body.i.i.i ], [ %dec.i.i.i, %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %udp_baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr.i.i, align 8
  %add.ptr14.i.i.i = getelementptr i8, ptr %14, i32 512
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18.i.i.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.0.i.i.i)
  %cmp19.i.i.i = icmp ne i32 %to.0.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp18.i.i.i, i1 %cmp19.i.i.i, i1 false
  %dec.i.i.i = add nsw i32 %to.0.i.i.i, -1
  br i1 %or.cond.i.i.i, label %while.cond10.i.i.i.while.cond10.i.i.i_crit_edge, label %while.end.i.i.i

while.cond10.i.i.i.while.cond10.i.i.i_crit_edge:  ; preds = %while.cond10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond10.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !332
  br i1 %cmp19.i.i.i, label %udc_clearep_getsts.exit, label %while.end.i.i.i.do.body.i.i.i_crit_edge

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

udc_clearep_getsts.exit:                          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or2.i.i = or i32 %shl.i3.i, 4194816
  %call.i.i = tail call fastcc i32 @udc_protocol_cmd_r(ptr noundef %udc, i32 noundef %or2.i.i) #11
  %17 = ptrtoint ptr %hwep_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwep_num, align 4
  tail call fastcc void @udc_write_hwep(ptr noundef %udc, i32 noundef %18, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @udc_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.51) #11
  %lock = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %vbus = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vbus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.129, ptr @.str.128
  %enabled = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  %cond11 = select i1 %tobool.not, ptr @.str.131, ptr @.str.130
  %spec.select = select i1 %tobool6.not, ptr @.str.132, ptr %cond11
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %7 = and i32 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.134, ptr @.str.133
  %suspended = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspended, align 2, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  %cond17 = select i1 %tobool15.not, ptr @.str.136, ptr @.str.135
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 8
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %entry.cond.end23_crit_edge, label %cond.true19

entry.cond.end23_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end23

cond.true19:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver21 = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %driver21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver21, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %entry.cond.end23_crit_edge
  %cond24 = phi ptr [ %13, %cond.true19 ], [ @.str.137, %entry.cond.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.127, ptr noundef nonnull %cond, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond14, ptr noundef nonnull %cond17, ptr noundef %cond24) #11
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %cond.end23.if.end_crit_edge, label %land.lhs.true

cond.end23.if.end_crit_edge:                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end23
  %16 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vbus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %ep31 = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 24
  tail call fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep31)
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn66 = load ptr, ptr %ep_list, align 4
  %cmp38.not67 = icmp eq ptr %.pn66, %ep_list
  br i1 %cmp38.not67, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn66, %if.then.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn68, i32 -12
  tail call fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep.0)
  %19 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp38.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp38.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %cond.end23.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138) #11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %2, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %is_in = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 7
  %3 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_in, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.141, ptr @.str.140
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.139, ptr noundef %1, i32 noundef %bf.cast, ptr noundef nonnull %cond) #11
  %eptype = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 9
  %5 = ptrtoint ptr %eptype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eptype, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @epnames, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.142, ptr noundef %8) #11
  %totalints = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 10
  %9 = ptrtoint ptr %totalints to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %totalints, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, i32 noundef %10) #11
  %queue = getelementptr inbounds %struct.lpc32xx_ep, ptr %ep, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %12, %queue
  br i1 %cmp.i.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn34 = load ptr, ptr %queue, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %queue
  br i1 %cmp.not35, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144) #11
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn34, %for.cond.preheader.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn36, i32 -56
  %actual = getelementptr i8, ptr %.pn36, i32 -4
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  %length10 = getelementptr i8, ptr %.pn36, i32 -52
  %16 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length10, align 4
  %18 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req.0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.145, ptr noundef %req.0, i32 noundef %15, i32 noundef %17, ptr noundef %19) #11
  %20 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #11
  %driver = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clocked3.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clocked3.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not.i = icmp eq i8 %5, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.end.udc_clk_set.exit_crit_edge

if.end.udc_clk_set.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %clocked3.i, align 1
  %usb_slv_clk.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %usb_slv_clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_slv_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.udc_clk_set.exit_crit_edge

if.end.i.udc_clk_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.udc_clk_set.exit_crit_edge, label %if.end9.sink.split.i

if.end.i.i.udc_clk_set.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end9.sink.split.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %udc_clk_set.exit

udc_clk_set.exit:                                 ; preds = %if.end9.sink.split.i, %if.end.i.i.udc_clk_set.exit_crit_edge, %if.end.i.udc_clk_set.exit_crit_edge, %if.end.udc_clk_set.exit_crit_edge
  tail call fastcc void @udc_disable(ptr noundef %1)
  %9 = ptrtoint ptr %clocked3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clocked3.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %udc_clk_set.exit.pullup.exit_crit_edge, label %if.end.i14

udc_clk_set.exit.pullup.exit_crit_edge:           ; preds = %udc_clk_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

if.end.i14:                                       ; preds = %udc_clk_set.exit
  %pullup.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end.i14.pullup.exit_crit_edge, label %isp1301_pullup_enable.exit.i

if.end.i14.pullup.exit_crit_edge:                 ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

isp1301_pullup_enable.exit.i:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pullup.i, align 8
  %pullup_job.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %pullup_job.i.i) #11
  br label %pullup.exit

pullup.exit:                                      ; preds = %isp1301_pullup_enable.exit.i, %if.end.i14.pullup.exit_crit_edge, %udc_clk_set.exit.pullup.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #11
  %call.i = tail call ptr @debugfs_lookup(ptr noundef nonnull @debug_filename, ptr noundef null) #11
  tail call void @debugfs_remove(ptr noundef %call.i) #11
  %dd_cache = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %dd_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd_cache, align 8
  tail call void @dma_pool_destroy(ptr noundef %16) #11
  %udca_v_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %udca_v_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udca_v_base, align 8
  %udca_p_base = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %udca_p_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %udca_p_base, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 128, ptr noundef %18, i32 noundef %20, i32 noundef 0) #11
  %usb_slv_clk = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_slv_clk, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %pullup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pullup.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_udc_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clocked.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clocked.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.pullup.exit_crit_edge, label %if.end.i

entry.pullup.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

if.end.i:                                         ; preds = %entry
  %pullup.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i.pullup.exit_crit_edge, label %isp1301_pullup_enable.exit.i

if.end.i.pullup.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pullup.exit

isp1301_pullup_enable.exit.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pullup.i, align 8
  %pullup_job.i.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %pullup_job.i.i) #11
  br label %pullup.exit

pullup.exit:                                      ; preds = %isp1301_pullup_enable.exit.i, %if.end.i.pullup.exit_crit_edge, %entry.pullup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_udc_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clocked = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %poweron = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %poweron to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %poweron, align 4
  %atx.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %atx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %atx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  br i1 %cmp.i, label %if.then.isp1301_set_powerstate.exit_crit_edge, label %if.end.i

if.then.isp1301_set_powerstate.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %isp1301_set_powerstate.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %isp1301_i2c_client3.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %isp1301_i2c_client3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp1301_i2c_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 18, i8 noundef zeroext 1) #11
  br label %isp1301_set_powerstate.exit

isp1301_set_powerstate.exit:                      ; preds = %if.end.i, %if.then.isp1301_set_powerstate.exit_crit_edge
  %9 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %isp1301_set_powerstate.exit.udc_clk_set.exit_crit_edge, label %if.end6.i

isp1301_set_powerstate.exit.udc_clk_set.exit_crit_edge: ; preds = %isp1301_set_powerstate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end6.i:                                        ; preds = %isp1301_set_powerstate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %clocked, align 1
  %usb_slv_clk8.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %usb_slv_clk8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_slv_clk8.i, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  br label %udc_clk_set.exit

udc_clk_set.exit:                                 ; preds = %if.end6.i, %isp1301_set_powerstate.exit.udc_clk_set.exit_crit_edge
  %14 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %clocked, align 1
  %usb_slv_clk = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_slv_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #11
  tail call void @clk_unprepare(ptr noundef %16) #11
  br label %if.end

if.end:                                           ; preds = %udc_clk_set.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_udc_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clocked = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %usb_slv_clk = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_slv_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clocked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end.i6, label %clk_prepare_enable.exit.udc_clk_set.exit_crit_edge

clk_prepare_enable.exit.udc_clk_set.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i6:                                        ; preds = %clk_prepare_enable.exit
  %8 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %clocked, align 1
  %9 = ptrtoint ptr %usb_slv_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_slv_clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i6.udc_clk_set.exit_crit_edge

if.end.i6.udc_clk_set.exit_crit_edge:             ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end.i.i:                                       ; preds = %if.end.i6
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.udc_clk_set.exit_crit_edge, label %if.end9.sink.split.i

if.end.i.i.udc_clk_set.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udc_clk_set.exit

if.end9.sink.split.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %10) #11
  br label %udc_clk_set.exit

udc_clk_set.exit:                                 ; preds = %if.end9.sink.split.i, %if.end.i.i.udc_clk_set.exit_crit_edge, %if.end.i6.udc_clk_set.exit_crit_edge, %clk_prepare_enable.exit.udc_clk_set.exit_crit_edge
  %poweron = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %poweron to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %poweron, align 4
  %atx.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %atx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %atx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %udc_clk_set.exit.if.end_crit_edge, label %if.end.i7

udc_clk_set.exit.if.end_crit_edge:                ; preds = %udc_clk_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i7:                                        ; preds = %udc_clk_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  %isp1301_i2c_client3.i = getelementptr inbounds %struct.lpc32xx_udc, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %isp1301_i2c_client3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp1301_i2c_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 19, i8 noundef zeroext 1) #11
  br label %if.end

if.end:                                           ; preds = %if.end.i7, %udc_clk_set.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !211, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @__initcall__kmod_lpc32xx_udc__304_3264_lpc32xx_udc_driver_init6, !1, !"__initcall__kmod_lpc32xx_udc__304_3264_lpc32xx_udc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3264, i32 1}
!2 = !{ptr @__exitcall_lpc32xx_udc_driver_exit, !1, !"__exitcall_lpc32xx_udc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3266, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3267, i32 1}
!7 = !{ptr @__UNIQUE_ID_author307, !8, !"__UNIQUE_ID_author307", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3268, i32 1}
!9 = !{ptr @__UNIQUE_ID_file308, !10, !"__UNIQUE_ID_file308", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3269, i32 1}
!11 = !{ptr @__UNIQUE_ID_license309, !10, !"__UNIQUE_ID_license309", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias310, !13, !"__UNIQUE_ID_alias310", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3270, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3011, i32 7}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3021, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lpc32xx_udc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpc32xx_udc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lpc32xx_udc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3040, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3051, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lpc32xx_udc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpc32xx_udc_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3058, i32 3}
!34 = !{ptr @lpc32xx_udc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lpc32xx_udc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3065, i32 3}
!38 = !{ptr @lpc32xx_udc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lpc32xx_udc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @lpc32xx_udc_probe.__key.17, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3071, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lpc32xx_udc_probe.__key.19, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3073, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3085, i32 3}
!48 = !{ptr @lpc32xx_udc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lpc32xx_udc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3090, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lpc32xx_udc_probe.__UNIQUE_ID_ddebug303, !51, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3094, i32 34}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3098, i32 3}
!58 = !{ptr @lpc32xx_udc_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lpc32xx_udc_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3110, i32 30}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3112, i32 3}
!64 = !{ptr @lpc32xx_udc_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @lpc32xx_udc_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3117, i32 30}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3119, i32 3}
!70 = !{ptr @lpc32xx_udc_probe._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lpc32xx_udc_probe._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3125, i32 34}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3127, i32 3}
!76 = !{ptr @lpc32xx_udc_probe._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lpc32xx_udc_probe._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3136, i32 9}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3138, i32 3}
!82 = !{ptr @lpc32xx_udc_probe._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lpc32xx_udc_probe._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @lpc32xx_udc_probe.__key.46, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3144, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3158, i32 2}
!89 = !{ptr @lpc32xx_udc_probe._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lpc32xx_udc_probe._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3169, i32 2}
!94 = !{ptr @lpc32xx_udc_probe._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @lpc32xx_udc_probe._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2509, i32 17}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2515, i32 12}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2528, i32 12}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2541, i32 12}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2554, i32 12}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2567, i32 12}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2580, i32 12}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2593, i32 12}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2606, i32 12}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2619, i32 12}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2632, i32 12}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2645, i32 12}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2658, i32 12}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2671, i32 12}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2684, i32 12}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2697, i32 12}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2710, i32 12}
!130 = !{ptr @controller_template, !131, !"controller_template", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2504, i32 33}
!132 = !{ptr @lpc32xx_udc_ops, !133, !"lpc32xx_udc_ops", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2489, i32 36}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 745, i32 3}
!136 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @udc_protocol_cmd_r.__UNIQUE_ID_ddebug290, !135, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 837, i32 3}
!140 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @udc_realize_hwep.__UNIQUE_ID_ddebug291, !139, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1415, i32 3}
!144 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @done.__UNIQUE_ID_ddebug293, !143, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2887, i32 3}
!148 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lpc32xx_start._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @lpc32xx_start._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2892, i32 3}
!153 = !{ptr @lpc32xx_start._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @lpc32xx_start._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @lpc32xx_ep_ops, !156, !"lpc32xx_ep_ops", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1905, i32 32}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1618, i32 3}
!159 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug294, !158, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1624, i32 3}
!163 = !{ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug295, !162, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1630, i32 3}
!166 = !{ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug296, !165, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1641, i32 4}
!169 = distinct !{null, !168, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1656, i32 4}
!172 = !{ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug298, !171, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1678, i32 2}
!175 = !{ptr @lpc32xx_ep_enable.__UNIQUE_ID_ddebug299, !174, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1789, i32 2}
!178 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @lpc32xx_ep_queue.__UNIQUE_ID_ddebug300, !177, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1217, i32 3}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @udc_read_hwep.__UNIQUE_ID_ddebug292, !181, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!184 = !{ptr @lpc32xx_usbd_dmamask, !185, !"lpc32xx_usbd_dmamask", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2985, i32 12}
!186 = !{ptr @lpc32xx_usbddata, !187, !"lpc32xx_usbddata", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2977, i32 32}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 615, i32 2}
!190 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @isp1301_udc_configure._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @isp1301_udc_configure._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 616, i32 2}
!195 = !{ptr @isp1301_udc_configure._entry.97, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @isp1301_udc_configure._entry_ptr.99, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 617, i32 2}
!199 = !{ptr @isp1301_udc_configure._entry.100, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @isp1301_udc_configure._entry_ptr.102, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2754, i32 3}
!203 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @lpc32xx_usb_lp_irq.__UNIQUE_ID_ddebug302, !202, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2195, i32 3}
!207 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @udc_handle_ep0_setup._entry, !206, !"_entry", i1 false, i1 false}
!210 = !{ptr @udc_handle_ep0_setup._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2298, i32 4}
!213 = !{ptr @udc_handle_ep0_setup.__UNIQUE_ID_ddebug301, !212, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1991, i32 3}
!216 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @udc_handle_dma_ep._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @udc_handle_dma_ep._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 1998, i32 3}
!221 = !{ptr @udc_handle_dma_ep._entry.111, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @udc_handle_dma_ep._entry_ptr.113, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2010, i32 3}
!225 = !{ptr @udc_handle_dma_ep._entry.114, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @udc_handle_dma_ep._entry_ptr.116, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2026, i32 3}
!229 = !{ptr @udc_handle_dma_ep._entry.117, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @udc_handle_dma_ep._entry_ptr.119, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2035, i32 3}
!233 = !{ptr @udc_handle_dma_ep._entry.120, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @udc_handle_dma_ep._entry_ptr.122, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 2049, i32 3}
!237 = !{ptr @udc_handle_dma_ep._entry.123, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @udc_handle_dma_ep._entry_ptr.125, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @debug_filename, !240, !"debug_filename", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 471, i32 19}
!241 = !{ptr @udc_fops, !242, !"udc_fops", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 526, i32 1}
!243 = !{ptr @.str.126, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 503, i32 16}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 507, i32 16}
!247 = !{ptr @.str.128, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 508, i32 18}
!249 = !{ptr @.str.129, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 508, i32 30}
!251 = !{ptr @.str.130, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 509, i32 34}
!253 = !{ptr @.str.131, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 509, i32 45}
!255 = !{ptr @.str.132, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 510, i32 6}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 511, i32 35}
!259 = !{ptr @.str.134, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 511, i32 44}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 512, i32 23}
!263 = !{ptr @.str.136, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 512, i32 39}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 513, i32 47}
!267 = !{ptr @.str.138, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 477, i32 16}
!269 = !{ptr @.str.139, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 478, i32 16}
!271 = !{ptr @.str.140, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 480, i32 16}
!273 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 480, i32 23}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 481, i32 16}
!277 = !{ptr @.str.143, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 482, i32 16}
!279 = !{ptr @.str.144, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 485, i32 17}
!281 = !{ptr @.str.145, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 490, i32 18}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 470, i32 27}
!285 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 470, i32 34}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 470, i32 41}
!289 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 470, i32 49}
!291 = !{ptr @epnames, !292, !"epnames", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 470, i32 14}
!293 = !{ptr @driver_name, !294, !"driver_name", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 462, i32 19}
!295 = !{ptr @lpc32xx_udc_driver, !296, !"lpc32xx_udc_driver", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3253, i32 31}
!297 = !{ptr @lpc32xx_udc_of_match, !298, !"lpc32xx_udc_of_match", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/lpc32xx_udc.c", i32 3246, i32 34}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"auto-init"}
!309 = !{i64 2148803004, i64 2148803009, i64 2148803022, i64 2148803066, i64 2148803100, i64 2148803121}
!310 = !{i64 2155840269}
!311 = !{i64 6337152}
!312 = !{i64 2155841930}
!313 = !{i64 2155842610}
!314 = !{i64 2155849774}
!315 = !{i64 2155843910}
!316 = !{i64 2155853893}
!317 = !{i64 2155854362}
!318 = !{i64 2155854831}
!319 = !{i64 2155855300}
!320 = !{i64 2155855762}
!321 = !{i64 2155856203}
!322 = distinct !{!322, !323}
!323 = !{!"llvm.loop.peeled.count", i32 1}
!324 = !{i64 6337570}
!325 = !{i64 2155951971}
!326 = !{i64 2155952244}
!327 = !{i64 2155832973}
!328 = !{i64 2155833247}
!329 = !{i64 2155833711}
!330 = !{i64 2155834474}
!331 = !{i64 2155834758}
!332 = !{i64 2155834600}
!333 = !{i64 2155955036}
!334 = !{i64 2155955814}
!335 = !{i8 0, i8 2}
!336 = !{i64 2155956583}
!337 = !{i64 2155957157}
!338 = !{i64 2155957731}
!339 = !{i64 2155958305}
!340 = !{i64 2155926067}
!341 = !{i64 2155926580}
!342 = !{i64 2155927391}
!343 = !{i64 2155927667}
!344 = !{i64 2155841409}
!345 = !{i64 2155835225}
!346 = !{i64 2155836048}
!347 = !{i64 2155839137}
!348 = !{i64 2155856708}
!349 = !{i64 2155857175}
!350 = !{i64 2155857635}
!351 = !{i64 2155858103}
!352 = !{i64 2155840939}
!353 = !{i64 2155839583}
!354 = !{i64 2155858701}
!355 = !{i64 2155844397}
!356 = !{i64 2155844862}
!357 = !{i64 2155845328}
!358 = !{i64 2155845825}
!359 = !{i64 2155846606}
!360 = !{i64 2155849296}
!361 = !{i64 2155901401}
!362 = !{i64 2155901906}
!363 = !{i64 2155902411}
!364 = !{i64 2155902916}
!365 = !{i64 2148321189, i64 2148321215, i64 2148321244, i64 2148321278, i64 2148321309, i64 2148321332}
!366 = !{i64 2155883168}
!367 = !{i64 2155883673}
!368 = !{i64 2155884178}
!369 = !{i64 2155884683}
!370 = !{i64 2148323654, i64 2148323680, i64 2148323709, i64 2148323743, i64 2148323774, i64 2148323797}
!371 = !{!"branch_weights", i32 2000, i32 1}
!372 = !{i64 2155904749, i64 2155905251, i64 2155904786, i64 2155904842, i64 2155904876, i64 2155904900, i64 2155904941, i64 2155904962, i64 2155904990, i64 2155905024}
!373 = !{i64 2155843260}
!374 = !{i64 2155868347}
!375 = !{i64 2155868804}
!376 = !{i64 2155869257}
!377 = !{i64 2155866068}
!378 = !{i64 2155866526}
!379 = !{i64 2155866975}
!380 = !{i64 2155867424}
!381 = !{i64 2155867873}
!382 = !{i64 2155869717}
!383 = !{i64 2155862131}
!384 = !{i64 2155862900}
!385 = !{i64 2155859562}
!386 = !{i64 2155860136}
!387 = !{i64 2155860710}
!388 = !{i64 2155861284}
!389 = !{i64 2155861858}
!390 = !{i64 2155865565}
!391 = !{!"branch_weights", i32 1, i32 2000}
