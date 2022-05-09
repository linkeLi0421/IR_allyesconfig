; ModuleID = '/llk/IR_all_yes/drivers/staging/emxx_udc/emxx_udc.c_pt.bc'
source_filename = "../drivers/staging/emxx_udc/emxx_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nbu2ss_udc = type { %struct.usb_gadget, ptr, ptr, ptr, %struct.spinlock, ptr, i32, i32, %struct.usb_ctrlrequest, %struct.nbu2ss_req, [64 x i8], [14 x %struct.nbu2ss_ep], i8, i32, i32, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.nbu2ss_req = type { %struct.usb_request, %struct.list_head, i32, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.nbu2ss_ep = type { %struct.usb_ep, %struct.list_head, ptr, ptr, i8, i8, i8, i8, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.72 = type { ptr, %struct.usb_ep_caps }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x %struct.ep_regs], [3552 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, [232 x i8], [15 x %struct.ep_dcr], [3584 x i8] }
%struct.ep_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ep_dcr = type { i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%union.usb_reg_access = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__initcall__kmod_emxx_udc__252_3219_udc_driver_init6 = internal global ptr @udc_driver_init, section ".initcall6.init", align 4
@udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nbu2ss_drv_probe, ptr @nbu2ss_drv_remove, ptr @nbu2ss_drv_shutdown, ptr @nbu2ss_drv_suspend, ptr @nbu2ss_drv_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udc_driver_exit = internal global ptr @udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [37 x i8] c"emxx_udc.description=EMXX UDC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [48 x i8] c"emxx_udc.author=Renesas Electronics Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [48 x i8] c"emxx_udc.file=drivers/staging/emxx_udc/emxx_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [21 x i8] c"emxx_udc.license=GPL\00", section ".modinfo", align 1
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emxx_udc\00", [23 x i8] zeroinitializer }, align 32
@udc_controller = internal global { %struct.nbu2ss_udc, [560 x i8] } zeroinitializer, align 32
@nbu2ss_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"request_irq(USB_UDC_IRQ_1) failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbu2ss_drv_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/emxx_udc/emxx_udc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nbu2ss_drv_probe._entry_ptr = internal global ptr @nbu2ss_drv_probe._entry, section ".printk_index", align 4
@vbus_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nbu2ss_drv_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 3118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request_irq(vbus_irq) failed\0A\00", [34 x i8] zeroinitializer }, align 32
@nbu2ss_drv_probe._entry_ptr.7 = internal global ptr @nbu2ss_drv_probe._entry.5, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_nbu2ss_ep0_out_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 771, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" *** Overrun Error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_nbu2ss_ep0_out_transfer\00", [39 x i8] zeroinitializer }, align 32
@_nbu2ss_ep0_out_transfer._entry_ptr = internal global ptr @_nbu2ss_ep0_out_transfer._entry, section ".printk_index", align 4
@_nbu2ss_epn_out_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" Overrun Error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_nbu2ss_epn_out_transfer\00", [39 x i8] zeroinitializer }, align 32
@_nbu2ss_epn_out_transfer._entry_ptr = internal global ptr @_nbu2ss_epn_out_transfer._entry, section ".printk_index", align 4
@_nbu2ss_epn_out_transfer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 975, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" actual = %d, length = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@_nbu2ss_epn_out_transfer._entry_ptr.14 = internal global ptr @_nbu2ss_epn_out_transfer._entry.12, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@_nbu2ss_ep0_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1756, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Not Decode Interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_nbu2ss_ep0_int\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_nbu2ss_ep0_int._entry_ptr = internal global ptr @_nbu2ss_ep0_int._entry, section ".printk_index", align 4
@_nbu2ss_ep0_int._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 1757, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EP0_STATUS = 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@_nbu2ss_ep0_int._entry_ptr.22 = internal global ptr @_nbu2ss_ep0_int._entry.20, section ".printk_index", align 4
@std_req_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" Error GET_STATUS\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"std_req_get_status\00", [45 x i8] zeroinitializer }, align 32
@std_req_get_status._entry_ptr = internal global ptr @std_req_get_status._entry, section ".printk_index", align 4
@_nbu2ss_set_test_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1323, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SET FEATURE : test mode = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_nbu2ss_set_test_mode\00", [42 x i8] zeroinitializer }, align 32
@_nbu2ss_set_test_mode._entry_ptr = internal global ptr @_nbu2ss_set_test_mode._entry, section ".printk_index", align 4
@nbu2ss_drv_contest_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@nbu2ss_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @nbu2ss_gad_get_frame, ptr @nbu2ss_gad_wakeup, ptr @nbu2ss_gad_set_selfpowered, ptr @nbu2ss_gad_vbus_session, ptr @nbu2ss_gad_vbus_draw, ptr @nbu2ss_gad_pullup, ptr @nbu2ss_gad_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@ep_info = internal constant { [14 x %struct.anon.72], [48 x i8] } { [14 x %struct.anon.72] [%struct.anon.72 { ptr @.str.29, %struct.usb_ep_caps { i8 -116, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.30, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.31, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.32, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.33, %struct.usb_ep_caps { i8 76, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.34, %struct.usb_ep_caps { i8 76, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.35, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.36, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.37, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.38, %struct.usb_ep_caps { i8 76, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.39, %struct.usb_ep_caps { i8 76, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.40, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.41, %struct.usb_ep_caps { i8 44, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.42, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }], [48 x i8] zeroinitializer }, align 32
@nbu2ss_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @nbu2ss_ep_enable, ptr @nbu2ss_ep_disable, ptr null, ptr @nbu2ss_ep_alloc_request, ptr @nbu2ss_ep_free_request, ptr @nbu2ss_ep_queue, ptr @nbu2ss_ep_dequeue, ptr @nbu2ss_ep_set_halt, ptr @nbu2ss_ep_set_wedge, ptr @nbu2ss_ep_fifo_status, ptr @nbu2ss_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep1-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep2-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep3in-int\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep4-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep5-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep6-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep7-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep8in-int\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep9-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epa-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epb-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epc-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epdin-int\00", [22 x i8] zeroinitializer }, align 32
@nbu2ss_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 2423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013 *** %s, bad param\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbu2ss_ep_enable\00", [47 x i8] zeroinitializer }, align 32
@nbu2ss_ep_enable._entry_ptr = internal global ptr @nbu2ss_ep_enable._entry, section ".printk_index", align 4
@nbu2ss_ep_enable._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 2429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013 *** %s, ep == NULL !!\0A\00", [38 x i8] zeroinitializer }, align 32
@nbu2ss_ep_enable._entry_ptr.47 = internal global ptr @nbu2ss_ep_enable._entry.45, section ".printk_index", align 4
@nbu2ss_ep_enable._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 2436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013 *** %s, bat bmAttributes\0A\00", [35 x i8] zeroinitializer }, align 32
@nbu2ss_ep_enable._entry_ptr.50 = internal global ptr @nbu2ss_ep_enable._entry.48, section ".printk_index", align 4
@nbu2ss_ep_enable._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 2445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" *** %s, udc !!\0A\00", [47 x i8] zeroinitializer }, align 32
@nbu2ss_ep_enable._entry_ptr.53 = internal global ptr @nbu2ss_ep_enable._entry.51, section ".printk_index", align 4
@nbu2ss_ep_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.54, ptr @.str.2, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nbu2ss_ep_disable\00", [46 x i8] zeroinitializer }, align 32
@nbu2ss_ep_disable._entry_ptr = internal global ptr @nbu2ss_ep_disable._entry, section ".printk_index", align 4
@nbu2ss_ep_disable._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 2486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013udc: *** %s, ep == NULL !!\0A\00", [34 x i8] zeroinitializer }, align 32
@nbu2ss_ep_disable._entry_ptr.57 = internal global ptr @nbu2ss_ep_disable._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nbu2ss_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013udc: %s --- _ep == NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nbu2ss_ep_queue\00", [16 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr = internal global ptr @nbu2ss_ep_queue._entry, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 2549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013udc: %s --- _req == NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.62 = internal global ptr @nbu2ss_ep_queue._entry.60, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 2559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013udc: %s --- !_req->complete\0A\00", [33 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.65 = internal global ptr @nbu2ss_ep_queue._entry.63, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 2562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013udc:%s --- !_req->buf\0A\00", [39 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.68 = internal global ptr @nbu2ss_ep_queue._entry.66, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 2565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s --- !list_empty(&req->queue)\0A\00", [61 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.71 = internal global ptr @nbu2ss_ep_queue._entry.69, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.2, i32 2574, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't ep_queue (VBUS OFF)\0A\00", [37 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.74 = internal global ptr @nbu2ss_ep_queue._entry.72, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.2, i32 2580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, bogus device state %p\0A\00", [37 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.77 = internal global ptr @nbu2ss_ep_queue._entry.75, section ".printk_index", align 4
@nbu2ss_ep_queue._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.2, i32 2619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" *** %s, result = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nbu2ss_ep_queue._entry_ptr.80 = internal global ptr @nbu2ss_ep_queue._entry.78, section ".printk_index", align 4
@nbu2ss_ep_dequeue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 2, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emxx_udc\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nbu2ss_ep_dequeue\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s no queue(EINVAL)\0A\00", [43 x i8] zeroinitializer }, align 32
@nbu2ss_ep_set_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s, bad param\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nbu2ss_ep_set_halt\00", [45 x i8] zeroinitializer }, align 32
@nbu2ss_ep_set_halt._entry_ptr = internal global ptr @nbu2ss_ep_set_halt._entry, section ".printk_index", align 4
@nbu2ss_ep_set_halt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 2693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" *** %s, bad udc\0A\00", [46 x i8] zeroinitializer }, align 32
@nbu2ss_ep_set_halt._entry_ptr.88 = internal global ptr @nbu2ss_ep_set_halt._entry.86, section ".printk_index", align 4
@nbu2ss_ep_fifo_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.89, ptr @.str.2, i32 2733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nbu2ss_ep_fifo_status\00", [42 x i8] zeroinitializer }, align 32
@nbu2ss_ep_fifo_status._entry_ptr = internal global ptr @nbu2ss_ep_fifo_status._entry, section ".printk_index", align 4
@nbu2ss_ep_fifo_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 2741, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, bad udc\0A\00", [19 x i8] zeroinitializer }, align 32
@nbu2ss_ep_fifo_status._entry_ptr.92 = internal global ptr @nbu2ss_ep_fifo_status._entry.90, section ".printk_index", align 4
@nbu2ss_ep_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 2775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013udc: %s, bad param\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbu2ss_ep_fifo_flush\00", [43 x i8] zeroinitializer }, align 32
@nbu2ss_ep_fifo_flush._entry_ptr = internal global ptr @nbu2ss_ep_fifo_flush._entry, section ".printk_index", align 4
@nbu2ss_ep_fifo_flush._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.94, ptr @.str.2, i32 2783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nbu2ss_ep_fifo_flush._entry_ptr.96 = internal global ptr @nbu2ss_ep_fifo_flush._entry.95, section ".printk_index", align 4
@nbu2ss_gad_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.97, ptr @.str.2, i32 2824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbu2ss_gad_get_frame\00", [43 x i8] zeroinitializer }, align 32
@nbu2ss_gad_get_frame._entry_ptr = internal global ptr @nbu2ss_gad_get_frame._entry, section ".printk_index", align 4
@nbu2ss_gad_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.98, ptr @.str.2, i32 2845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nbu2ss_gad_wakeup\00", [46 x i8] zeroinitializer }, align 32
@nbu2ss_gad_wakeup._entry_ptr = internal global ptr @nbu2ss_gad_wakeup._entry, section ".printk_index", align 4
@nbu2ss_gad_wakeup._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 2853, ptr @.str.101, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VBUS LEVEL = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nbu2ss_gad_wakeup._entry_ptr.102 = internal global ptr @nbu2ss_gad_wakeup._entry.99, section ".printk_index", align 4
@nbu2ss_gad_set_selfpowered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.103, ptr @.str.2, i32 2879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nbu2ss_gad_set_selfpowered\00", [37 x i8] zeroinitializer }, align 32
@nbu2ss_gad_set_selfpowered._entry_ptr = internal global ptr @nbu2ss_gad_set_selfpowered._entry, section ".printk_index", align 4
@nbu2ss_gad_vbus_draw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.104, ptr @.str.2, i32 2905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbu2ss_gad_vbus_draw\00", [43 x i8] zeroinitializer }, align 32
@nbu2ss_gad_vbus_draw._entry_ptr = internal global ptr @nbu2ss_gad_vbus_draw._entry, section ".printk_index", align 4
@nbu2ss_gad_pullup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.105, ptr @.str.2, i32 2925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nbu2ss_gad_pullup\00", [46 x i8] zeroinitializer }, align 32
@nbu2ss_gad_pullup._entry_ptr = internal global ptr @nbu2ss_gad_pullup._entry, section ".printk_index", align 4
@nbu2ss_gad_pullup._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 2932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s, Not Regist Driver\0A\00", [39 x i8] zeroinitializer }, align 32
@nbu2ss_gad_pullup._entry_ptr.108 = internal global ptr @nbu2ss_gad_pullup._entry.106, section ".printk_index", align 4
@_nbu2ss_check_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 2224, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" ----- VBUS OFF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_nbu2ss_check_vbus\00", [45 x i8] zeroinitializer }, align 32
@_nbu2ss_check_vbus._entry_ptr = internal global ptr @_nbu2ss_check_vbus._entry, section ".printk_index", align 4
@_nbu2ss_check_vbus._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 2250, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" ----- VBUS ON\0A\00", [16 x i8] zeroinitializer }, align 32
@_nbu2ss_check_vbus._entry_ptr.113 = internal global ptr @_nbu2ss_check_vbus._entry.111, section ".printk_index", align 4
@_nbu2ss_enable_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 2172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"*** Reset Cancel failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_nbu2ss_enable_controller\00", [38 x i8] zeroinitializer }, align 32
@_nbu2ss_enable_controller._entry_ptr = internal global ptr @_nbu2ss_enable_controller._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"udc_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 3208, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 40, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"udc_controller\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 61, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 3100, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"vbus_irq\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 38, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 3118, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 771, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 973, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 974, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 326, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1756, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1757, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1524, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1323, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 3040, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"nbu2ss_gadget_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2953, i32 36 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 3062, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [8 x i8] c"ep_info\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2966, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"nbu2ss_ep_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2797, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2973, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2975, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2977, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2979, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2981, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2983, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2985, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2987, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2989, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2991, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2993, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2995, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2997, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2999, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2423, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2429, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2436, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2445, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2480, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2486, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2546, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2549, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2559, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2562, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2565, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2574, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2579, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2618, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2670, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2685, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2693, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2733, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2741, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2775, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2783, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2824, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2845, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2853, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2879, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2905, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2925, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2932, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2224, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2250, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.494 = private constant [39 x i8] c"../drivers/staging/emxx_udc/emxx_udc.c\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2172, i32 4 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_udc_driver_exit, ptr @__initcall__kmod_emxx_udc__252_3219_udc_driver_init6, ptr @_nbu2ss_check_vbus._entry, ptr @_nbu2ss_check_vbus._entry.111, ptr @_nbu2ss_check_vbus._entry_ptr, ptr @_nbu2ss_check_vbus._entry_ptr.113, ptr @_nbu2ss_enable_controller._entry, ptr @_nbu2ss_enable_controller._entry_ptr, ptr @_nbu2ss_ep0_int._entry, ptr @_nbu2ss_ep0_int._entry.20, ptr @_nbu2ss_ep0_int._entry_ptr, ptr @_nbu2ss_ep0_int._entry_ptr.22, ptr @_nbu2ss_ep0_out_transfer._entry, ptr @_nbu2ss_ep0_out_transfer._entry_ptr, ptr @_nbu2ss_epn_out_transfer._entry, ptr @_nbu2ss_epn_out_transfer._entry.12, ptr @_nbu2ss_epn_out_transfer._entry_ptr, ptr @_nbu2ss_epn_out_transfer._entry_ptr.14, ptr @_nbu2ss_set_test_mode._entry, ptr @_nbu2ss_set_test_mode._entry_ptr, ptr @nbu2ss_drv_probe._entry, ptr @nbu2ss_drv_probe._entry.5, ptr @nbu2ss_drv_probe._entry_ptr, ptr @nbu2ss_drv_probe._entry_ptr.7, ptr @nbu2ss_ep_disable._entry, ptr @nbu2ss_ep_disable._entry.55, ptr @nbu2ss_ep_disable._entry_ptr, ptr @nbu2ss_ep_disable._entry_ptr.57, ptr @nbu2ss_ep_enable._entry, ptr @nbu2ss_ep_enable._entry.45, ptr @nbu2ss_ep_enable._entry.48, ptr @nbu2ss_ep_enable._entry.51, ptr @nbu2ss_ep_enable._entry_ptr, ptr @nbu2ss_ep_enable._entry_ptr.47, ptr @nbu2ss_ep_enable._entry_ptr.50, ptr @nbu2ss_ep_enable._entry_ptr.53, ptr @nbu2ss_ep_fifo_flush._entry, ptr @nbu2ss_ep_fifo_flush._entry.95, ptr @nbu2ss_ep_fifo_flush._entry_ptr, ptr @nbu2ss_ep_fifo_flush._entry_ptr.96, ptr @nbu2ss_ep_fifo_status._entry, ptr @nbu2ss_ep_fifo_status._entry.90, ptr @nbu2ss_ep_fifo_status._entry_ptr, ptr @nbu2ss_ep_fifo_status._entry_ptr.92, ptr @nbu2ss_ep_queue._entry, ptr @nbu2ss_ep_queue._entry.60, ptr @nbu2ss_ep_queue._entry.63, ptr @nbu2ss_ep_queue._entry.66, ptr @nbu2ss_ep_queue._entry.69, ptr @nbu2ss_ep_queue._entry.72, ptr @nbu2ss_ep_queue._entry.75, ptr @nbu2ss_ep_queue._entry.78, ptr @nbu2ss_ep_queue._entry_ptr, ptr @nbu2ss_ep_queue._entry_ptr.62, ptr @nbu2ss_ep_queue._entry_ptr.65, ptr @nbu2ss_ep_queue._entry_ptr.68, ptr @nbu2ss_ep_queue._entry_ptr.71, ptr @nbu2ss_ep_queue._entry_ptr.74, ptr @nbu2ss_ep_queue._entry_ptr.77, ptr @nbu2ss_ep_queue._entry_ptr.80, ptr @nbu2ss_ep_set_halt._entry, ptr @nbu2ss_ep_set_halt._entry.86, ptr @nbu2ss_ep_set_halt._entry_ptr, ptr @nbu2ss_ep_set_halt._entry_ptr.88, ptr @nbu2ss_gad_get_frame._entry, ptr @nbu2ss_gad_get_frame._entry_ptr, ptr @nbu2ss_gad_pullup._entry, ptr @nbu2ss_gad_pullup._entry.106, ptr @nbu2ss_gad_pullup._entry_ptr, ptr @nbu2ss_gad_pullup._entry_ptr.108, ptr @nbu2ss_gad_set_selfpowered._entry, ptr @nbu2ss_gad_set_selfpowered._entry_ptr, ptr @nbu2ss_gad_vbus_draw._entry, ptr @nbu2ss_gad_vbus_draw._entry_ptr, ptr @nbu2ss_gad_wakeup._entry, ptr @nbu2ss_gad_wakeup._entry.99, ptr @nbu2ss_gad_wakeup._entry_ptr, ptr @nbu2ss_gad_wakeup._entry_ptr.102, ptr @std_req_get_status._entry, ptr @std_req_get_status._entry_ptr, ptr @udc_driver_exit, ptr @udc_driver, ptr @driver_name, ptr @udc_controller, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vbus_irq, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @nbu2ss_drv_contest_init.__key, ptr @.str.27, ptr @nbu2ss_gadget_ops, ptr @.str.28, ptr @ep_info, ptr @nbu2ss_ep_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_controller to i32), i32 2288, i32 2848, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbus_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_drv_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_ep0_out_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_epn_out_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_epn_out_transfer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_ep0_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_ep0_int._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_req_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_set_test_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_drv_contest_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_enable._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_enable._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_enable._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_disable._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_queue._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_set_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_set_halt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_fifo_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_fifo_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_ep_fifo_flush._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_wakeup._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_set_selfpowered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_vbus_draw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_pullup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbu2ss_gad_pullup._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_check_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_check_vbus._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_nbu2ss_enable_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }]
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
define internal i32 @nbu2ss_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @udc_controller, i32 0, i32 2288)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @udc_controller, ptr %driver_data.i.i, align 4
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef nonnull @_nbu2ss_udc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @driver_name, ptr noundef nonnull @udc_controller) #9
  store ptr %call, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 15), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 0
  br i1 %cmp7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 3), align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 4), ptr noundef nonnull @.str.27, ptr noundef nonnull @nbu2ss_drv_contest_init.__key, i16 noundef signext 3) #9
  store ptr %dev, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 3), align 8
  %bf.load.i = load i32, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 17), align 4
  %bf.set.i = or i32 %bf.load.i, 262144
  store i32 %bf.set.i, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 17), align 4
  store i32 0, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 7), align 8
  store ptr %pdev, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 13), align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %4 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %coherent_dma_mask.i, align 8
  store volatile ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4), align 8
  store ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4, i32 1), align 4
  store ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 3), align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end10
  %i.03.i.i = phi i32 [ 0, %if.end10 ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.03.i.i
  %udc6.i.i = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.03.i.i, i32 2
  %5 = ptrtoint ptr %udc6.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @udc_controller, ptr %udc6.i.i, align 8
  %desc.i.i = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.03.i.i, i32 3
  %6 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc.i.i, align 4
  %7 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx5.i.i, align 4
  %arrayidx8.i.i = getelementptr [14 x %struct.anon.72], ptr @ep_info, i32 0, i32 %i.03.i.i
  %8 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8.i.i, align 4
  %name10.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx5.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %name10.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name10.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx5.i.i, i32 0, i32 4
  %caps13.i.i = getelementptr [14 x %struct.anon.72], ptr @ep_info, i32 0, i32 %i.03.i.i, i32 1
  %11 = ptrtoint ptr %caps13.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps13.i.i, align 4
  %13 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %caps.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx5.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nbu2ss_ep_ops, ptr %ops.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i.i)
  %cmp16.i.i = icmp eq i32 %i.03.i.i, 0
  %cond.i.i = select i1 %cmp16.i.i, i32 64, i32 1024
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx5.i.i, i32 noundef %cond.i.i) #9
  %ep_list18.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx5.i.i, i32 0, i32 3
  %15 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list18.i.i, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4)) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add_tail.exit.i.i_crit_edge

for.body.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %ep_list18.i.i, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4, i32 1), align 4
  %16 = ptrtoint ptr %ep_list18.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 4), ptr %ep_list18.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx5.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ep_list18.i.i, ptr %15, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add_tail.exit.i.i_crit_edge
  %queue.i.i = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.03.i.i, i32 1
  %19 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 8
  %prev.i.i.i = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.03.i.i, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue.i.i, ptr %prev.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %list_add_tail.exit.i.i
  %call.i.i1.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3)) #9
  br i1 %call.i.i1.i.i, label %if.end.i.i2.i.i, label %for.end.i.i.nbu2ss_drv_contest_init.exit_crit_edge

for.end.i.i.nbu2ss_drv_contest_init.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbu2ss_drv_contest_init.exit

if.end.i.i2.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3, i32 1), align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3), align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %21, align 4
  br label %nbu2ss_drv_contest_init.exit

nbu2ss_drv_contest_init.exit:                     ; preds = %if.end.i.i2.i.i, %for.end.i.i.nbu2ss_drv_contest_init.exit_crit_edge
  store volatile ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3), align 8
  store ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 0, i32 0, i32 3, i32 1), align 4
  store ptr @nbu2ss_gadget_ops, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 2), align 8
  store ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11), ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 5), align 8
  store ptr @driver_name, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 10), align 4
  tail call void @device_initialize(ptr noundef getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 11)) #9
  %call14.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 11), ptr noundef nonnull @.str.28) #9
  store ptr %dev, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 11, i32 1), align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %25 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_mask.i, align 8
  store ptr %26, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 0, i32 11, i32 18), align 8
  %call15 = tail call i32 @gpiod_to_irq(ptr noundef null) #9
  store i32 %call15, ptr @vbus_irq, align 4
  %call16 = tail call i32 @irq_set_irq_type(i32 noundef %call15, i32 noundef 3) #9
  %27 = load i32, ptr @vbus_irq, align 4
  %call.i49 = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef nonnull @_nbu2ss_vbus_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull @udc_controller) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp18.not = icmp eq i32 %call.i49, 0
  br i1 %cmp18.not, label %nbu2ss_drv_contest_init.exit.cleanup_crit_edge, label %do.end22

nbu2ss_drv_contest_init.exit.cleanup_crit_edge:   ; preds = %nbu2ss_drv_contest_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end22:                                         ; preds = %nbu2ss_drv_contest_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 3), align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %nbu2ss_drv_contest_init.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call.i, %do.end ], [ %call.i49, %do.end22 ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %nbu2ss_drv_contest_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_drv_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %virt_buf = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.09, i32 8
  %0 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr getelementptr inbounds (%struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 3), align 8
  %phys_buf = getelementptr %struct.nbu2ss_udc, ptr @udc_controller, i32 0, i32 11, i32 %i.09, i32 9
  %3 = ptrtoint ptr %phys_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_buf, align 8
  tail call void @dma_free_attrs(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %4, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load i32, ptr @vbus_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull @udc_controller) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbu2ss_drv_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc_enabled.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %udc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %udc_enabled.i, align 4
  %3 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i = and i8 %bf.load.i, -3
  %4 = ptrtoint ptr %udc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear3.i, ptr %udc_enabled.i, align 4
  %p_regs.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i.i = getelementptr inbounds %struct.fc_regs, ptr %6, i32 0, i32 22
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %7, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i.i, i32 %or.i.i.i) #9, !srcloc !250
  %8 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR2.i.i = getelementptr inbounds %struct.fc_regs, ptr %9, i32 0, i32 22
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %10, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i.i, i32 %and.i.i.i) #9, !srcloc !250
  %11 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i = getelementptr inbounds %struct.fc_regs, ptr %12, i32 0, i32 22
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i) #9, !srcloc !249
  %or.i.i = or i32 %13, 4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i, i32 %or.i.i) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_drv_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus_active, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end20_crit_edge, label %if.then2

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %devstate = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %devstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %devstate, align 8
  %bf.clear7 = and i8 %bf.load, -97
  %bf.set8 = or i8 %bf.clear7, 32
  %5 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set8, ptr %vbus_active, align 4
  %6 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %if.then2.if.end19_crit_edge, label %if.then14

if.then2.if.end19_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear17 = and i8 %bf.set8, -73
  %7 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.clear17, ptr %vbus_active, align 4
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_regs.i, align 8
  %EPCTR.i = getelementptr inbounds %struct.fc_regs, ptr %9, i32 0, i32 22
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i) #9, !srcloc !249
  %or.i.i = or i32 %10, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i, i32 %or.i.i) #9, !srcloc !250
  %11 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_regs.i, align 8
  %EPCTR2.i = getelementptr inbounds %struct.fc_regs, ptr %12, i32 0, i32 22
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i) #9, !srcloc !249
  %and.i.i = and i32 %13, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i, i32 %and.i.i) #9, !srcloc !250
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then2.if.end19_crit_edge
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %speed.i, align 8
  %ep1.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 11
  tail call fastcc void @_nbu2ss_nuke(ptr noundef nonnull %1, ptr noundef %ep1.i, i32 noundef -108) #9
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn21.i = load ptr, ptr %ep_list.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, %ep_list.i
  br i1 %cmp.not22.i, label %if.end19.if.end20_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.if.end20_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn21.i, %if.end19.for.body.i_crit_edge ]
  %ep.0.i = getelementptr i8, ptr %.pn23.i, i32 -12
  tail call fastcc void @_nbu2ss_nuke(ptr noundef nonnull %1, ptr noundef %ep.0.i, i32 noundef -108) #9
  %16 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp.not.i, label %for.body.i.if.end20_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end20_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %for.body.i.if.end20_crit_edge, %if.end19.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %17 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %vbus_active, align 4
  %18 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %if.then.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i = and i8 %bf.load.i, -3
  %19 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear3.i, ptr %vbus_active, align 4
  %p_regs.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i.i = getelementptr inbounds %struct.fc_regs, ptr %21, i32 0, i32 22
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %22, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i.i, i32 %or.i.i.i) #9, !srcloc !250
  %23 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR2.i.i = getelementptr inbounds %struct.fc_regs, ptr %24, i32 0, i32 22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %25, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i.i, i32 %and.i.i.i) #9, !srcloc !250
  %26 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i30 = getelementptr inbounds %struct.fc_regs, ptr %27, i32 0, i32 22
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i30) #9, !srcloc !249
  %or.i.i31 = or i32 %28, 4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i30, i32 %or.i.i31) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_drv_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus_active, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %vbus_active, align 4
  %devstate = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %devstate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %devstate, align 8
  %call4 = tail call fastcc i32 @_nbu2ss_enable_controller(ptr noundef nonnull %1)
  %4 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %vbus_active, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then3.if.end6_crit_edge, label %if.end.i

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %if.then3
  %driver.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_regs.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !249
  %or.i = and i32 %10, -13
  %and.i = or i32 %or.i, 4
  %11 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %and.i) #9, !srcloc !250
  br label %if.end6

if.end6:                                          ; preds = %if.then3.i, %if.end.i.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %linux_suspended = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %linux_suspended to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load7 = load i8, ptr %linux_suspended, align 4
  %bf.clear8 = and i8 %bf.load7, -33
  store i8 %bf.clear8, ptr %linux_suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_nbu2ss_udc_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  %status_data.i.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %USB_INT_STA = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_STA, i32 -127) #9, !srcloc !250
  %USB_INT_ENA = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_ENA, i32 0) #9, !srcloc !250
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call189 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp290 = icmp eq i32 %call189, 0
  br i1 %cmp290, label %if.end.if.end8.thread_crit_edge, label %if.end8.lr.ph

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.thread

if.end8.lr.ph:                                    ; preds = %if.end
  %USB_INT_STA6 = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 8
  %devstate.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 7
  %remote_wakeup.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 12
  %speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %ep1.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11
  %ep_list.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 4
  %ep0state.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 6
  %driver.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 1
  %parent.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 11, i32 1
  %queue.i129.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 0, i32 1
  %complete.i134.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 7
  %ep0_req.i137.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9
  %ctrl.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 8
  %incdec.ptr.i.i.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 8, i32 3
  %bRequest.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 8, i32 1
  %wValue.i125.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 8, i32 2
  %curr_config.i.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 14
  %ep0_buf.i112.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 10
  %length3.i.i114.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 1
  %dma.i.i115.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 2
  %zero.i.i116.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 6
  %status.i.i120.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 11
  %context.i.i121.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 8
  %actual.i.i122.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 9, i32 0, i32 12
  %is_selfpowered.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 17
  %dev.i.i.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 3
  br label %if.end8

if.end8.thread:                                   ; preds = %if.end37.if.end8.thread_crit_edge, %if.end.if.end8.thread_crit_edge
  %suspend_flag.0.lcssa = phi i8 [ 0, %if.end.if.end8.thread_crit_edge ], [ %spec.select, %if.end37.if.end8.thread_crit_edge ]
  %USB_INT_STA4 = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_STA4, i32 -127) #9, !srcloc !250
  %USB_INT_ENA5 = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_ENA5, i32 0) #9, !srcloc !250
  br label %for.end38

if.end8:                                          ; preds = %if.end37.if.end8_crit_edge, %if.end8.lr.ph
  %suspend_flag.091 = phi i8 [ 0, %if.end8.lr.ph ], [ %spec.select, %if.end37.if.end8_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_INT_STA6) #9, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %if.end8.for.end38_crit_edge, label %if.end11

if.end8.for.end38_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

if.end11:                                         ; preds = %if.end8
  %and = and i32 %2, 126
  %neg = xor i32 %and, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_STA6, i32 %neg) #9, !srcloc !250
  %and13 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %3 = ptrtoint ptr %devstate.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %devstate.i, align 8
  %4 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %remote_wakeup.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -5
  store i8 %bf.clear.i, ptr %remote_wakeup.i, align 4
  %5 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %speed.i.i, align 8
  tail call fastcc void @_nbu2ss_nuke(ptr noundef %_udc, ptr noundef %ep1.i.i, i32 noundef -108) #9
  %6 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn21.i.i = load ptr, ptr %ep_list.i.i, align 4
  %cmp.not22.i.i = icmp eq ptr %.pn21.i.i, %ep_list.i.i
  br i1 %cmp.not22.i.i, label %if.then14._nbu2ss_int_bus_reset.exit_crit_edge, label %if.then14.for.body.i.i_crit_edge

if.then14.for.body.i.i_crit_edge:                 ; preds = %if.then14
  br label %for.body.i.i

if.then14._nbu2ss_int_bus_reset.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_int_bus_reset.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then14.for.body.i.i_crit_edge
  %.pn23.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn21.i.i, %if.then14.for.body.i.i_crit_edge ]
  %ep.0.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -12
  tail call fastcc void @_nbu2ss_nuke(ptr noundef %_udc, ptr noundef %ep.0.i.i, i32 noundef -108) #9
  %7 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn23.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ep_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i._nbu2ss_int_bus_reset.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i._nbu2ss_int_bus_reset.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_int_bus_reset.exit

_nbu2ss_int_bus_reset.exit:                       ; preds = %for.body.i.i._nbu2ss_int_bus_reset.exit_crit_edge, %if.then14._nbu2ss_int_bus_reset.exit_crit_edge
  %8 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ep0state.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %_nbu2ss_int_bus_reset.exit, %if.end11.if.end15_crit_edge
  %and16 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  %9 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i69 = load i8, ptr %remote_wakeup.i, align 4
  %10 = and i8 %bf.load.i69, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  br i1 %cmp.not.i, label %if.then18.if.end19_crit_edge, label %if.then.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then.i:                                        ; preds = %if.then18
  %bf.clear3.i = and i8 %bf.load.i69, -9
  %11 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear3.i, ptr %remote_wakeup.i, align 4
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i.if.end19_crit_edge, label %land.lhs.true.i

if.then.i.if.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.i:                                  ; preds = %if.then.i
  %resume.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resume.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end19_crit_edge, label %if.then6.i

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %16 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver.i, align 8
  %resume8.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %resume8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resume8.i, align 4
  tail call void %19(ptr noundef %_udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then6.i, %land.lhs.true.i.if.end19_crit_edge, %if.then.i.if.end19_crit_edge, %if.then18.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %and20 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %spec.select = select i1 %tobool21.not, i8 %suspend_flag.091, i8 1
  %and24 = and i32 %2, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end19.if.end37_crit_edge, label %if.then26

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then26:                                        ; preds = %if.end19
  %shr = lshr i32 %2, 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then26
  %int_bit.088 = phi i32 [ %shr, %if.then26 ], [ %shr33, %for.inc.for.body_crit_edge ]
  %epnum.086 = phi i32 [ 0, %if.then26 ], [ %inc, %for.inc.for.body_crit_edge ]
  %and29 = and i32 %int_bit.088, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %for.body.if.end32_crit_edge, label %if.then31

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %epnum.086)
  %cmp.i = icmp eq i32 %epnum.086, 0
  br i1 %cmp.i, label %if.then.i70, label %if.else.i

if.then.i70:                                      ; preds = %if.then31
  %20 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_regs, align 8
  %EP0_STATUS.i.i = getelementptr inbounds %struct.fc_regs, ptr %21, i32 0, i32 11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_STATUS.i.i) #9, !srcloc !249
  %and.i.i = and i32 %22, 100607
  %23 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_regs, align 8
  %EP0_STATUS2.i.i = getelementptr inbounds %struct.fc_regs, ptr %24, i32 0, i32 11
  %neg.i.i = xor i32 %and.i.i, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_STATUS2.i.i, i32 %neg.i.i) #9, !srcloc !250
  %and3.i.i = and i32 %22, 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  %27 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef %and.i.i) #12
  br label %if.end32

if.end.i.i:                                       ; preds = %if.then.i70
  %29 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8.i.i = icmp eq i32 %30, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end.i.i.for.body.i.i72.preheader_crit_edge

if.end.i.i.for.body.i.i72.preheader_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i72.preheader

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p_regs, align 8
  %USB_STATUS.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %32, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_STATUS.i.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 3
  %34 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i.i.i, ptr %speed.i.i, align 8
  br label %for.body.i.i72.preheader

for.body.i.i72.preheader:                         ; preds = %if.then9.i.i, %if.end.i.i.for.body.i.i72.preheader_crit_edge
  br label %for.body.i.i72

for.body.i.i72:                                   ; preds = %sw.epilog.i.i.for.body.i.i72_crit_edge, %for.body.i.i72.preheader
  %nret.0161.i.i = phi i32 [ %nret.1.i.i, %sw.epilog.i.i.for.body.i.i72_crit_edge ], [ -1, %for.body.i.i72.preheader ]
  %status.0160.i.i = phi i32 [ %status.1.i.i, %sw.epilog.i.i.for.body.i.i72_crit_edge ], [ %and3.i.i, %for.body.i.i72.preheader ]
  %i.0159.i.i = phi i32 [ %inc.i.i, %sw.epilog.i.i.for.body.i.i72_crit_edge ], [ 0, %for.body.i.i72.preheader ]
  %35 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ep0state.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %for.body.i.i72.for.end.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb19.i.i
    i32 2, label %sw.bb26.i.i
    i32 3, label %sw.bb33.i.i
    i32 4, label %sw.bb42.i.i
  ]

for.body.i.i72.for.end.i.i_crit_edge:             ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i72
  %and15.i.i = and i32 %status.0160.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %if.then16.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then16.i.i:                                    ; preds = %sw.bb.i.i
  %38 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_regs, align 8
  %SETUP_DATA0.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %39, i32 0, i32 6
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SETUP_DATA0.i.i.i.i) #9, !srcloc !249
  %41 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ctrl.i.i.i, align 4
  %42 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_regs, align 8
  %SETUP_DATA1.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %43, i32 0, i32 7
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SETUP_DATA1.i.i.i.i) #9, !srcloc !249
  %45 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %incdec.ptr.i.i.i.i, align 4
  %46 = trunc i32 %44 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i.i.i = icmp eq i16 %46, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %ep0state.i, align 4
  %48 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr.i.i.i = load i8, ptr %ctrl.i.i.i, align 1
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.then16.i.i
  %49 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ctrl.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool.not.i96.i.i = icmp sgt i8 %50, -1
  br i1 %tobool.not.i96.i.i, label %if.else5.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ep0state.i, align 4
  br label %if.end7.i.i.i

if.else5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %ep0state.i, align 4
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else5.i.i.i, %if.then3.i.i.i, %if.then.i.i.i
  %53 = phi i8 [ %50, %if.then3.i.i.i ], [ %50, %if.else5.i.i.i ], [ %.pr.i.i.i, %if.then.i.i.i ]
  %54 = and i8 %53, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp11.i.i.i = icmp eq i8 %54, 0
  br i1 %cmp11.i.i.i, label %if.then13.i.i.i, label %if.end7.i.i.i.if.else36.i.i.i_crit_edge

if.end7.i.i.i.if.else36.i.i.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end7.i.i.i
  %55 = ptrtoint ptr %bRequest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bRequest.i.i.i, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %56, label %if.then13.i.i.i.if.else36.i.i.i_crit_edge [
    i8 0, label %sw.bb.i.i.i
    i8 1, label %sw.bb15.i.i.i
    i8 3, label %sw.bb17.i.i.i
    i8 5, label %sw.bb19.i.i.i
    i8 9, label %sw.bb21.i.i.i
  ]

if.then13.i.i.i.if.else36.i.i.i_crit_edge:        ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.then13.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_data.i.i.i.i)
  %58 = ptrtoint ptr %status_data.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %status_data.i.i.i.i, align 2
  %59 = ptrtoint ptr %wValue.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %wValue.i125.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.not.i.i.i.i = icmp eq i16 %60, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp11.not.i.i.i.i = icmp slt i8 %53, 0
  %or.cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i1 %cmp11.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb.i.i.i.std_req_get_status.exit.i.i.i_crit_edge

sw.bb.i.i.i.std_req_get_status.exit.i.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %std_req_get_status.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %and.i.i.i.i = and i8 %53, 31
  %61 = tail call i16 @llvm.bswap.i16(i16 %46) #9
  %62 = tail call i16 @llvm.umin.i16(i16 %61, i16 2) #9
  %cond.i.i.i.i = zext i16 %62 to i32
  %conv20.i.i.i.i = zext i8 %and.i.i.i.i to i32
  %63 = zext i32 %conv20.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %conv20.i.i.i.i, label %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i.i
    i32 2, label %sw.bb40.i.i.i.i
  ]

if.end.i.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end.i.i.i.i
  %64 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp23.i.i.i.i = icmp eq i16 %65, 0
  br i1 %cmp23.i.i.i.i, label %if.then25.i.i.i.i, label %sw.bb.i.i.i.i.do.end.i.i.i.i_crit_edge

sw.bb.i.i.i.i.do.end.i.i.i.i_crit_edge:           ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i.i

if.then25.i.i.i.i:                                ; preds = %sw.bb.i.i.i.i
  %66 = ptrtoint ptr %is_selfpowered.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load.i.i.i.i = load i32, ptr %is_selfpowered.i.i.i.i, align 4
  %67 = and i32 %bf.load.i.i.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i.i, label %if.then25.i.i.i.i.if.end29.i.i.i.i_crit_edge, label %if.then26.i.i.i.i

if.then25.i.i.i.i.if.end29.i.i.i.i_crit_edge:     ; preds = %if.then25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i.i.i

if.then26.i.i.i.i:                                ; preds = %if.then25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %status_data.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %status_data.i.i.i.i, align 2
  br label %if.end29.i.i.i.i

if.end29.i.i.i.i:                                 ; preds = %if.then26.i.i.i.i, %if.then25.i.i.i.i.if.end29.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load30.i.i.i.i = load i8, ptr %remote_wakeup.i, align 4
  %70 = and i8 %bf.load30.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool33.not.i.i.i.i = icmp eq i8 %70, 0
  br i1 %tobool33.not.i.i.i.i, label %if.end29.i.i.i.i.if.then63.i.i.i.i_crit_edge, label %if.then34.i.i.i.i

if.end29.i.i.i.i.if.then63.i.i.i.i_crit_edge:     ; preds = %if.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i.i.i

if.then34.i.i.i.i:                                ; preds = %if.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %status_data.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %status_data.i.i.i.i.0.status_data.i.i.i.i.0.status_data.i.i.i.0.status_data.i.i.i.0.status_data.i.i.0.status_data.i.i.0.status_data.i.0.status_data.i.0.status_data.0.status_data.0.status_data.0.78.i.i.i.i = load i16, ptr %status_data.i.i.i.i, align 2
  %72 = or i16 %status_data.i.i.i.i.0.status_data.i.i.i.i.0.status_data.i.i.i.0.status_data.i.i.i.0.status_data.i.i.0.status_data.i.i.0.status_data.i.0.status_data.i.0.status_data.0.status_data.0.status_data.0.78.i.i.i.i, 2
  store i16 %72, ptr %status_data.i.i.i.i, align 2
  br label %if.then63.i.i.i.i

sw.bb40.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %73 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #9
  %76 = and i16 %75, -144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp45.i.i.i.i = icmp eq i16 %76, 0
  br i1 %cmp45.i.i.i.i, label %if.then47.i.i.i.i, label %sw.bb40.i.i.i.i.do.end.i.i.i.i_crit_edge

sw.bb40.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %sw.bb40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i.i

if.then47.i.i.i.i:                                ; preds = %sw.bb40.i.i.i.i
  %conv52.i.i.i.i = trunc i16 %75 to i8
  %77 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %p_regs, align 8
  %and.i.i.i.i.i = and i8 %conv52.i.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i8 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_CONTROL.i.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %78, i32 0, i32 10
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i.i.i.i) #9, !srcloc !249
  br label %_nbu2ss_get_ep_stall.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then47.i.i.i.i
  %conv2.i.i.i.i.i = zext i8 %and.i.i.i.i.i to i32
  %sub.i.i.i.i.i = add nsw i32 %conv2.i.i.i.i.i, -1
  %arrayidx.i.i.i.i.i = getelementptr %struct.fc_regs, ptr %78, i32 0, i32 16, i32 %sub.i.i.i.i.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i.i) #9, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp7.i.i.i.i.i = icmp sgt i32 %80, -1
  br i1 %cmp7.i.i.i.i.i, label %if.else.i.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.else.i.i.i.i.i.do.end.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv52.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %conv52.i.i.i.i, -1
  %..i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 4, i32 8
  br label %_nbu2ss_get_ep_stall.exit.i.i.i.i

_nbu2ss_get_ep_stall.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %data.0.i.i.i.i.i = phi i32 [ %79, %if.then.i.i.i.i.i ], [ %80, %if.end.i.i.i.i.i ]
  %bit_data.0.i.i.i.i.i = phi i32 [ 4, %if.then.i.i.i.i.i ], [ %..i.i.i.i.i, %if.end.i.i.i.i.i ]
  %and16.i.i.i.i.i = and i32 %bit_data.0.i.i.i.i.i, %data.0.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i.i.i)
  %cmp17.i.not.i.i.i.i = icmp eq i32 %and16.i.i.i.i.i, 0
  br i1 %cmp17.i.not.i.i.i.i, label %_nbu2ss_get_ep_stall.exit.i.i.i.i.if.then63.i.i.i.i_crit_edge, label %if.then55.i.i.i.i

_nbu2ss_get_ep_stall.exit.i.i.i.i.if.then63.i.i.i.i_crit_edge: ; preds = %_nbu2ss_get_ep_stall.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i.i.i

if.then55.i.i.i.i:                                ; preds = %_nbu2ss_get_ep_stall.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %status_data.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %status_data.i.i.i.i, align 2
  br label %if.then63.i.i.i.i

if.then63.i.i.i.i:                                ; preds = %if.then55.i.i.i.i, %_nbu2ss_get_ep_stall.exit.i.i.i.i.if.then63.i.i.i.i_crit_edge, %if.then34.i.i.i.i, %if.end29.i.i.i.i.if.then63.i.i.i.i_crit_edge
  %result.0.ph.i.i.i.i = phi i32 [ 0, %if.end29.i.i.i.i.if.then63.i.i.i.i_crit_edge ], [ 0, %if.then34.i.i.i.i ], [ 0, %_nbu2ss_get_ep_stall.exit.i.i.i.i.if.then63.i.i.i.i_crit_edge ], [ 1, %if.then55.i.i.i.i ]
  %82 = call ptr @memcpy(ptr %ep0_buf.i112.i.i.i, ptr %status_data.i.i.i.i, i32 %cond.i.i.i.i)
  %83 = ptrtoint ptr %ep0_req.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %ep0_buf.i112.i.i.i, ptr %ep0_req.i137.i.i, align 4
  %84 = ptrtoint ptr %length3.i.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond.i.i.i.i, ptr %length3.i.i114.i.i.i, align 4
  %85 = ptrtoint ptr %dma.i.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %dma.i.i115.i.i.i, align 4
  %86 = ptrtoint ptr %zero.i.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load.i.i.i.i.i = load i32, ptr %zero.i.i116.i.i.i, align 4
  %bf.set.i.i.i.i.i = or i32 %bf.load.i.i.i.i.i, 8192
  store i32 %bf.set.i.i.i.i.i, ptr %zero.i.i116.i.i.i, align 4
  %87 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @_nbu2ss_ep0_complete, ptr %complete.i134.i.i, align 4
  %88 = ptrtoint ptr %status.i.i120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -115, ptr %status.i.i120.i.i.i, align 4
  %89 = ptrtoint ptr %context.i.i121.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %_udc, ptr %context.i.i121.i.i.i, align 4
  %90 = ptrtoint ptr %actual.i.i122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %actual.i.i122.i.i.i, align 4
  %call66.i.i.i.i = tail call fastcc i32 @_nbu2ss_ep0_in_transfer(ptr noundef %_udc, ptr noundef %ep0_req.i137.i.i) #9
  br label %std_req_get_status.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else.i.i.i.i.i.do.end.i.i.i.i_crit_edge, %sw.bb40.i.i.i.i.do.end.i.i.i.i_crit_edge, %sw.bb.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge
  %result.0.i.i.i.i = phi i32 [ -22, %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ -22, %sw.bb40.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ -22, %sw.bb.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ -1, %if.else.i.i.i.i.i.do.end.i.i.i.i_crit_edge ]
  %91 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.23) #12
  br label %std_req_get_status.exit.i.i.i

std_req_get_status.exit.i.i.i:                    ; preds = %do.end.i.i.i.i, %if.then63.i.i.i.i, %sw.bb.i.i.i.std_req_get_status.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ -22, %sw.bb.i.i.i.std_req_get_status.exit.i.i.i_crit_edge ], [ %result.0.i.i.i.i, %do.end.i.i.i.i ], [ %result.0.ph.i.i.i.i, %if.then63.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_data.i.i.i.i)
  br label %if.then25.i.i.i

sw.bb15.i.i.i:                                    ; preds = %if.then13.i.i.i
  %93 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp14.not.i.i.i.i.i = icmp sgt i8 %53, -1
  %or.cond.i.i.i.i.i = select i1 %cmp.i.i.i, i1 %cmp14.not.i.i.i.i.i, i1 false
  %and.i.i69.i.i.i = and i8 %53, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and.i.i69.i.i.i)
  %cond.i70.i.i.i = icmp eq i8 %and.i.i69.i.i.i, 2
  %or.cond158.i.i = select i1 %or.cond.i.i.i.i.i, i1 %cond.i70.i.i.i, i1 false
  br i1 %or.cond158.i.i, label %sw.bb19.i.i.i.i.i, label %sw.bb15.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb15.i.i.i.for.end.thread155.i.i_crit_edge:    ; preds = %sw.bb15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

sw.bb19.i.i.i.i.i:                                ; preds = %sw.bb15.i.i.i
  %96 = ptrtoint ptr %wValue.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %wValue.i125.i.i.i, align 2
  %98 = and i16 %95, -144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp22.i.i.i.i.i = icmp eq i16 %98, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp26.i.i.i.i.i = icmp eq i16 %97, 0
  %or.cond63.i.i.i.i.i = select i1 %cmp22.i.i.i.i.i, i1 %cmp26.i.i.i.i.i, i1 false
  br i1 %or.cond63.i.i.i.i.i, label %if.then28.i.i.i.i.i, label %sw.bb19.i.i.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb19.i.i.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %sw.bb19.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

if.then28.i.i.i.i.i:                              ; preds = %sw.bb19.i.i.i.i.i
  %conv31.i.i.i.i.i = trunc i16 %95 to i8
  %99 = zext i8 %conv31.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %conv31.i.i.i.i.i, label %if.end.i.i.i.i.i.i [
    i8 0, label %if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge
    i8 -128, label %if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge97
  ]

if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge97: ; preds = %if.then28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i.i.i.i

if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge: ; preds = %if.then28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i.i.i.i = and i8 %conv31.i.i.i.i.i, 127
  %sub.i.i.i.i.i.i = add nsw i8 %and.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv31.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp sgt i8 %conv31.i.i.i.i.i, -1
  %..i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 1536, i32 2048
  %100 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p_regs, align 8
  %idxprom.i.i.i.i.i.i = zext i8 %sub.i.i.i.i.i.i to i32
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.fc_regs, ptr %101, i32 0, i32 16, i32 %idxprom.i.i.i.i.i.i
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i.i.i) #9, !srcloc !249
  %or.i.i.i.i.i.i.i = or i32 %102, %..i.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i.i) #9, !srcloc !250
  br label %if.end34.i.i.i.i.i

if.end34.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i.i, %if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge, %if.then28.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge97
  tail call fastcc void @_nbu2ss_set_endpoint_stall(ptr noundef %_udc, i8 noundef zeroext %conv31.i.i.i.i.i, i1 noundef zeroext false) #9
  %103 = ptrtoint ptr %ep0_req.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %ep0_buf.i112.i.i.i, ptr %ep0_req.i137.i.i, align 4
  %104 = ptrtoint ptr %length3.i.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %length3.i.i114.i.i.i, align 4
  %105 = ptrtoint ptr %dma.i.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %dma.i.i115.i.i.i, align 4
  %106 = ptrtoint ptr %zero.i.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load.i64.i.i.i.i.i = load i32, ptr %zero.i.i116.i.i.i, align 4
  %bf.set.i65.i.i.i.i.i = or i32 %bf.load.i64.i.i.i.i.i, 8192
  store i32 %bf.set.i65.i.i.i.i.i, ptr %zero.i.i116.i.i.i, align 4
  %107 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @_nbu2ss_ep0_complete, ptr %complete.i134.i.i, align 4
  %108 = ptrtoint ptr %status.i.i120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -115, ptr %status.i.i120.i.i.i, align 4
  %109 = ptrtoint ptr %context.i.i121.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %_udc, ptr %context.i.i121.i.i.i, align 4
  %110 = ptrtoint ptr %actual.i.i122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %actual.i.i122.i.i.i, align 4
  br label %if.then25.i.i.i

sw.bb17.i.i.i:                                    ; preds = %if.then13.i.i.i
  %111 = ptrtoint ptr %wValue.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %wValue.i125.i.i.i, align 2
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #9
  %114 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp14.not.i.i77.i.i.i = icmp sgt i8 %53, -1
  %or.cond.i.i78.i.i.i = select i1 %cmp.i.i.i, i1 %cmp14.not.i.i77.i.i.i, i1 false
  br i1 %or.cond.i.i78.i.i.i, label %if.end.i.i80.i.i.i, label %sw.bb17.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb17.i.i.i.for.end.thread155.i.i_crit_edge:    ; preds = %sw.bb17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

if.end.i.i80.i.i.i:                               ; preds = %sw.bb17.i.i.i
  %and.i.i79.i.i.i = and i8 %53, 31
  %conv16.i.i.i.i.i = zext i8 %and.i.i79.i.i.i to i32
  %117 = zext i32 %conv16.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %conv16.i.i.i.i.i, label %if.end.i.i80.i.i.i.for.end.thread155.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i.i.i
    i32 2, label %sw.bb19.i.i84.i.i.i
  ]

if.end.i.i80.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %if.end.i.i80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

sw.bb.i.i.i.i.i:                                  ; preds = %if.end.i.i80.i.i.i
  %118 = zext i16 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %113, label %sw.bb.i.i.i.i.i.for.end.thread155.i.i_crit_edge [
    i16 1, label %sw.bb.i.i.i.i.i.i
    i16 2, label %sw.bb3.i.i.i.i.i.i
  ]

sw.bb.i.i.i.i.i.for.end.thread155.i.i_crit_edge:  ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

sw.bb.i.i.i.i.i.i:                                ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp.i.i.i.i.i.i = icmp eq i16 %115, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %sw.bb.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %sw.bb.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

if.then.i.i.i.i.i.i:                              ; preds = %sw.bb.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i.i.i.i.i.i = load i8, ptr %remote_wakeup.i, align 4
  %bf.set.i.i.i.i.i.i = or i8 %bf.load.i.i.i.i.i.i, 4
  store i8 %bf.set.i.i.i.i.i.i, ptr %remote_wakeup.i, align 4
  br label %if.then40.i.i.i.i.i

sw.bb3.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %116)
  %cmp7.i.i.i.i.i.i = icmp ult i16 %116, 1536
  br i1 %cmp7.i.i.i.i.i.i, label %sw.bb3.i.i.i.i.i.i.if.then40.i.i.i.i.i_crit_edge, label %sw.bb3.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb3.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %sw.bb3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

sw.bb3.i.i.i.i.i.i.if.then40.i.i.i.i.i_crit_edge: ; preds = %sw.bb3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i.i.i.i.i

sw.bb19.i.i84.i.i.i:                              ; preds = %if.end.i.i80.i.i.i
  %120 = and i16 %116, -144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp22.i.i81.i.i.i = icmp eq i16 %120, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp26.i.i82.i.i.i = icmp eq i16 %112, 0
  %or.cond63.i.i83.i.i.i = select i1 %cmp22.i.i81.i.i.i, i1 %cmp26.i.i82.i.i.i, i1 false
  br i1 %or.cond63.i.i83.i.i.i, label %if.then28.i.i87.i.i.i, label %sw.bb19.i.i84.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb19.i.i84.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %sw.bb19.i.i84.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

if.then28.i.i87.i.i.i:                            ; preds = %sw.bb19.i.i84.i.i.i
  %conv31.i.i85.i.i.i = trunc i16 %116 to i8
  %121 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %p_regs, align 8
  %123 = zext i8 %conv31.i.i85.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %conv31.i.i85.i.i.i, label %if.else7.i.i.i.i.i [
    i8 0, label %if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge
    i8 -128, label %if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge98
  ]

if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge98: ; preds = %if.then28.i.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i89.i.i.i

if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge: ; preds = %if.then28.i.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i89.i.i.i

if.then.i.i89.i.i.i:                              ; preds = %if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge, %if.then28.i.i87.i.i.i.if.then.i.i89.i.i.i_crit_edge98
  %EP0_CONTROL.i.i88.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %122, i32 0, i32 10
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i88.i.i.i) #9
  %or.i.i.i.i.i.i = or i32 %124, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i88.i.i.i, i32 %or.i.i.i.i.i.i) #9, !srcloc !250
  br label %if.then40.i.i.i.i.i

if.else7.i.i.i.i.i:                               ; preds = %if.then28.i.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i1.i.i.i.i = and i8 %conv31.i.i85.i.i.i, 15
  %conv10.i.i.i.i.i = zext i8 %and.i1.i.i.i.i to i32
  %sub.i.i90.i.i.i = add nsw i8 %and.i1.i.i.i.i, -1
  %halted.i.i.i.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 %conv10.i.i.i.i.i, i32 7
  %125 = ptrtoint ptr %halted.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i.i91.i.i.i = load i8, ptr %halted.i.i.i.i.i, align 1
  %bf.set.i.i92.i.i.i = or i8 %bf.load.i.i91.i.i.i, 64
  store i8 %bf.set.i.i92.i.i.i, ptr %halted.i.i.i.i.i, align 1
  %126 = and i16 %116, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool17.not.i.i.i.i.i = icmp eq i16 %126, 0
  %..i.i93.i.i.i = select i1 %tobool17.not.i.i.i.i.i, i32 20, i32 520
  %idxprom21.i.i.i.i.i = zext i8 %sub.i.i90.i.i.i to i32
  %arrayidx22.i.i.i.i.i = getelementptr %struct.fc_regs, ptr %122, i32 0, i32 16, i32 %idxprom21.i.i.i.i.i
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22.i.i.i.i.i) #9, !srcloc !249
  %or.i80.i.i.i.i.i = or i32 %127, %..i.i93.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22.i.i.i.i.i, i32 %or.i80.i.i.i.i.i) #9, !srcloc !250
  br label %if.then40.i.i.i.i.i

if.then40.i.i.i.i.i:                              ; preds = %if.else7.i.i.i.i.i, %if.then.i.i89.i.i.i, %sw.bb3.i.i.i.i.i.i.if.then40.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i
  %128 = ptrtoint ptr %ep0_req.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %ep0_buf.i112.i.i.i, ptr %ep0_req.i137.i.i, align 4
  %129 = ptrtoint ptr %length3.i.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %length3.i.i114.i.i.i, align 4
  %130 = ptrtoint ptr %dma.i.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %dma.i.i115.i.i.i, align 4
  %131 = ptrtoint ptr %zero.i.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load.i64.i.i99.i.i.i = load i32, ptr %zero.i.i116.i.i.i, align 4
  %bf.set.i65.i.i100.i.i.i = or i32 %bf.load.i64.i.i99.i.i.i, 8192
  store i32 %bf.set.i65.i.i100.i.i.i, ptr %zero.i.i116.i.i.i, align 4
  %132 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @_nbu2ss_ep0_complete, ptr %complete.i134.i.i, align 4
  %133 = ptrtoint ptr %status.i.i120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -115, ptr %status.i.i120.i.i.i, align 4
  %134 = ptrtoint ptr %context.i.i121.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %_udc, ptr %context.i.i121.i.i.i, align 4
  %135 = ptrtoint ptr %actual.i.i122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %actual.i.i122.i.i.i, align 4
  br label %if.then25.i.i.i

sw.bb19.i.i.i:                                    ; preds = %if.then13.i.i.i
  %136 = ptrtoint ptr %wValue.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %wValue.i125.i.i.i, align 2
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #9
  %conv.i.i.i.i = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.not.i107.i.i.i = icmp eq i8 %53, 0
  br i1 %cmp.not.i107.i.i.i, label %lor.lhs.false.i.i.i.i, label %sw.bb19.i.i.i.for.end.thread155.i.i_crit_edge

sw.bb19.i.i.i.for.end.thread155.i.i_crit_edge:    ; preds = %sw.bb19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %sw.bb19.i.i.i
  %139 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %cmp7.not.i.i.i.i = icmp eq i16 %140, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %138)
  %141 = icmp ult i16 %138, 128
  %142 = select i1 %cmp7.not.i.i.i.i, i1 %cmp.i.i.i, i1 false
  %or.cond152.i.i.i = select i1 %142, i1 %141, i1 false
  br i1 %or.cond152.i.i.i, label %if.end17.i.i.i.i, label %lor.lhs.false.i.i.i.i.for.end.thread155.i.i_crit_edge

lor.lhs.false.i.i.i.i.for.end.thread155.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

if.end17.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 16
  %143 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %p_regs, align 8
  %USB_ADDRESS.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %144, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_ADDRESS.i.i.i.i, i32 %shl.i.i.i.i) #9, !srcloc !250
  %145 = ptrtoint ptr %ep0_req.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %ep0_buf.i112.i.i.i, ptr %ep0_req.i137.i.i, align 4
  %146 = ptrtoint ptr %length3.i.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %length3.i.i114.i.i.i, align 4
  %147 = ptrtoint ptr %dma.i.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %dma.i.i115.i.i.i, align 4
  %148 = ptrtoint ptr %zero.i.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %bf.load.i.i117.i.i.i = load i32, ptr %zero.i.i116.i.i.i, align 4
  %bf.set.i.i118.i.i.i = or i32 %bf.load.i.i117.i.i.i, 8192
  store i32 %bf.set.i.i118.i.i.i, ptr %zero.i.i116.i.i.i, align 4
  %149 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @_nbu2ss_ep0_complete, ptr %complete.i134.i.i, align 4
  %150 = ptrtoint ptr %status.i.i120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -115, ptr %status.i.i120.i.i.i, align 4
  %151 = ptrtoint ptr %context.i.i121.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %_udc, ptr %context.i.i121.i.i.i, align 4
  %152 = ptrtoint ptr %actual.i.i122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %actual.i.i122.i.i.i, align 4
  br label %if.then25.i.i.i

sw.bb21.i.i.i:                                    ; preds = %if.then13.i.i.i
  %153 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %incdec.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %cmp.not.i128.i.i.i = icmp eq i16 %154, 0
  %brmerge.not.i.i.i = select i1 %cmp.not.i128.i.i.i, i1 %cmp.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp11.not.i131.i.i.i = icmp eq i8 %53, 0
  %or.cond153.i.i.i = select i1 %brmerge.not.i.i.i, i1 %cmp11.not.i131.i.i.i, i1 false
  br i1 %or.cond153.i.i.i, label %if.end.i132.i.i.i, label %sw.bb21.i.i.i.if.else36.i.i.i_crit_edge

sw.bb21.i.i.i.if.else36.i.i.i_crit_edge:          ; preds = %sw.bb21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36.i.i.i

if.end.i132.i.i.i:                                ; preds = %sw.bb21.i.i.i
  %155 = ptrtoint ptr %wValue.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %wValue.i125.i.i.i, align 2
  %157 = lshr i16 %156, 8
  %conv.i126.i.i.i = zext i16 %157 to i32
  %158 = ptrtoint ptr %curr_config.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv.i126.i.i.i, ptr %curr_config.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %156)
  %cmp13.not.i.i.i.i = icmp ult i16 %156, 256
  %159 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %p_regs, align 8
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9
  br i1 %cmp13.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then15.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.end.i132.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i.i.i = or i32 %161, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %or.i.i.i.i.i) #9, !srcloc !250
  br label %cleanup.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i132.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i133.i.i.i = and i32 %161, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %and.i.i133.i.i.i) #9, !srcloc !250
  br label %cleanup.sink.split.i.i.i.i

cleanup.sink.split.i.i.i.i:                       ; preds = %if.else.i.i.i.i, %if.then15.i.i.i.i
  %.sink.i.i.i.i = phi i32 [ 7, %if.then15.i.i.i.i ], [ 6, %if.else.i.i.i.i ]
  %162 = ptrtoint ptr %devstate.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %.sink.i.i.i.i, ptr %devstate.i, align 8
  br label %if.else36.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end17.i.i.i.i, %if.then40.i.i.i.i.i, %if.end34.i.i.i.i.i, %std_req_get_status.exit.i.i.i
  %nret.0.ph.i.i.i = phi i32 [ 0, %if.end17.i.i.i.i ], [ 0, %if.then40.i.i.i.i.i ], [ 0, %if.end34.i.i.i.i.i ], [ %retval.0.i.i.i.i, %std_req_get_status.exit.i.i.i ]
  %163 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ep0state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %164)
  %cmp27.i.i.i = icmp eq i32 %164, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nret.0.ph.i.i.i)
  %cmp30.i.i.i = icmp sgt i32 %nret.0.ph.i.i.i, -1
  %or.cond.i.i.i = and i1 %cmp30.i.i.i, %cmp27.i.i.i
  br i1 %or.cond.i.i.i, label %if.end40.thread149.i.i.i, label %if.then25.i.i.i.if.end40.i.i.i_crit_edge

if.then25.i.i.i.if.end40.i.i.i_crit_edge:         ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i.i

if.end40.thread149.i.i.i:                         ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %166, i32 0, i32 10
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i.i.i) #9, !srcloc !249
  %and.i136.i.i.i = and i32 %167, -659
  %data.0.i.i.i.i = or i32 %and.i136.i.i.i, 656
  %168 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL3.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %169, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL3.i.i.i.i, i32 %data.0.i.i.i.i) #9, !srcloc !250
  br label %if.end32

if.else36.i.i.i:                                  ; preds = %cleanup.sink.split.i.i.i.i, %sw.bb21.i.i.i.if.else36.i.i.i_crit_edge, %if.then13.i.i.i.if.else36.i.i.i_crit_edge, %if.end7.i.i.i.if.else36.i.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %170 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %driver.i, align 8
  %setup.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %setup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %setup.i.i.i, align 4
  %call38.i.i.i = tail call i32 %173(ptr noundef %_udc, ptr noundef %ctrl.i.i.i) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end40.i.i.i

if.end40.i.i.i:                                   ; preds = %if.else36.i.i.i, %if.then25.i.i.i.if.end40.i.i.i_crit_edge
  %nret.1.i.i.i = phi i32 [ %call38.i.i.i, %if.else36.i.i.i ], [ %nret.0.ph.i.i.i, %if.then25.i.i.i.if.end40.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nret.1.i.i.i)
  %cmp41.i.i.i = icmp slt i32 %nret.1.i.i.i, 0
  br i1 %cmp41.i.i.i, label %if.end40.i.i.i.for.end.thread155.i.i_crit_edge, label %if.end40.i.i.i.if.end32_crit_edge

if.end40.i.i.i.if.end32_crit_edge:                ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end40.i.i.i.for.end.thread155.i.i_crit_edge:   ; preds = %if.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread155.i.i

for.end.thread155.i.i:                            ; preds = %if.end40.i.i.i.for.end.thread155.i.i_crit_edge, %lor.lhs.false.i.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb19.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb19.i.i84.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb3.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb.i.i.i.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb.i.i.i.i.i.for.end.thread155.i.i_crit_edge, %if.end.i.i80.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb17.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb19.i.i.i.i.i.for.end.thread155.i.i_crit_edge, %sw.bb15.i.i.i.for.end.thread155.i.i_crit_edge
  %174 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %ep0state.i, align 4
  br label %if.then59.i.i

sw.bb19.i.i:                                      ; preds = %for.body.i.i72
  %and20.i.i = and i32 %status.0160.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %sw.bb19.i.i.sw.epilog.i.i_crit_edge, label %if.then22.i.i

sw.bb19.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then22.i.i:                                    ; preds = %sw.bb19.i.i
  %and23.i.i = and i32 %status.0160.i.i, -17
  %175 = ptrtoint ptr %queue.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %queue.i129.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %176, %queue.i129.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %176, i32 -56
  %spec.select.i97.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %add.ptr.i.i.i
  %tobool.not.i98.i.i = icmp eq ptr %spec.select.i97.i.i, null
  %req.0.i.i.i = select i1 %tobool.not.i98.i.i, ptr %ep0_req.i137.i.i, ptr %spec.select.i97.i.i
  %div_len.i.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req.0.i.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %div_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %div_len.i.i.i, align 4
  %actual.i.i.i = getelementptr inbounds %struct.usb_request, ptr %req.0.i.i.i, i32 0, i32 12
  %179 = ptrtoint ptr %actual.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %actual.i.i.i, align 4
  %add.i.i.i = add i32 %180, %178
  store i32 %add.i.i.i, ptr %actual.i.i.i, align 4
  store i32 0, ptr %div_len.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @_nbu2ss_ep0_in_transfer(ptr noundef %_udc, ptr noundef %req.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.then22.i.i.sw.epilog.i.i_crit_edge

if.then22.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then7.i.i.i:                                   ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 4, ptr %ep0state.i, align 4
  %182 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i.i101.i.i = getelementptr inbounds %struct.fc_regs, ptr %183, i32 0, i32 10
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i101.i.i) #9, !srcloc !249
  %and.i.i102.i.i = and i32 %184, -514
  %or.i.i.i.i = or i32 %and.i.i102.i.i, 512
  %185 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL2.i.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %186, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL2.i.i.i.i, i32 %or.i.i.i.i) #9, !srcloc !250
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %for.body.i.i72
  %and27.i.i = and i32 %status.0160.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %sw.bb26.i.i.sw.epilog.i.i_crit_edge, label %if.then29.i.i

sw.bb26.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then29.i.i:                                    ; preds = %sw.bb26.i.i
  %and30.i.i = and i32 %status.0160.i.i, -33
  %187 = ptrtoint ptr %queue.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %queue.i129.i.i, align 4
  %cmp.not.i104.i.i = icmp eq ptr %188, %queue.i129.i.i
  %add.ptr.i105.i.i = getelementptr i8, ptr %188, i32 -56
  %spec.select.i106.i.i = select i1 %cmp.not.i104.i.i, ptr null, ptr %add.ptr.i105.i.i
  %tobool.not.i107.i.i = icmp eq ptr %spec.select.i106.i.i, null
  %req.0.i109.i.i = select i1 %tobool.not.i107.i.i, ptr %ep0_req.i137.i.i, ptr %spec.select.i106.i.i
  %call.i110.i.i = tail call fastcc i32 @_nbu2ss_ep0_out_transfer(ptr noundef %_udc, ptr noundef %req.0.i109.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %cmp4.i.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.else.i117.i.i

if.then5.i.i.i:                                   ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 3, ptr %ep0state.i, align 4
  %190 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i.i113.i.i = getelementptr inbounds %struct.fc_regs, ptr %191, i32 0, i32 10
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i113.i.i) #9, !srcloc !249
  %and.i.i114.i.i = and i32 %192, -659
  %data.0.i.i115.i.i = or i32 %and.i.i114.i.i, 656
  %193 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL3.i.i116.i.i = getelementptr inbounds %struct.fc_regs, ptr %194, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL3.i.i116.i.i, i32 %data.0.i.i115.i.i) #9, !srcloc !250
  br label %sw.epilog.i.i

if.else.i117.i.i:                                 ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %cmp7.i.i.i = icmp slt i32 %call.i110.i.i, 0
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.else.i117.i.i.sw.epilog.i.i_crit_edge

if.else.i117.i.i.sw.epilog.i.i_crit_edge:         ; preds = %if.else.i117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then8.i.i.i:                                   ; preds = %if.else.i117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %196, i32 0, i32 10
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i.i) #9, !srcloc !249
  %or.i.i119.i.i = or i32 %197, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i.i, i32 %or.i.i119.i.i) #9, !srcloc !250
  %status.i.i.i = getelementptr inbounds %struct.usb_request, ptr %req.0.i109.i.i, i32 0, i32 11
  %198 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call.i110.i.i, ptr %status.i.i.i, align 4
  br label %sw.epilog.i.i

sw.bb33.i.i:                                      ; preds = %for.body.i.i72
  %199 = and i32 %status.0160.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %sw.bb33.i.i.sw.epilog.i.i_crit_edge, label %if.then38.i.i

sw.bb33.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then38.i.i:                                    ; preds = %sw.bb33.i.i
  %and39.i.i = and i32 %status.0160.i.i, -21
  %201 = ptrtoint ptr %queue.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile ptr, ptr %queue.i129.i.i, align 4
  %cmp.not.i121.i.i = icmp eq ptr %202, %queue.i129.i.i
  %add.ptr.i122.i.i = getelementptr i8, ptr %202, i32 -56
  %tobool.not1.i.i.i = icmp eq ptr %add.ptr.i122.i.i, null
  %tobool.not.i123.i.i = or i1 %cmp.not.i121.i.i, %tobool.not1.i.i.i
  br i1 %tobool.not.i123.i.i, label %if.then.i124.i.i, label %if.else.i126.i.i

if.then.i124.i.i:                                 ; preds = %if.then38.i.i
  %203 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %complete.i134.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %204, null
  br i1 %tobool5.not.i.i.i, label %if.then.i124.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge, label %if.then6.i.i.i

if.then.i124.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge: ; preds = %if.then.i124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep0_status_stage.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.then.i124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %204(ptr noundef %ep1.i.i, ptr noundef %ep0_req.i137.i.i) #9
  br label %_nbu2ss_ep0_status_stage.exit.i.i

if.else.i126.i.i:                                 ; preds = %if.then38.i.i
  %complete12.i.i.i = getelementptr i8, ptr %202, i32 -28
  %205 = ptrtoint ptr %complete12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %complete12.i.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %206, null
  br i1 %tobool13.not.i.i.i, label %if.else.i126.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge, label %if.then14.i.i.i

if.else.i126.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge: ; preds = %if.else.i126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep0_status_stage.exit.i.i

if.then14.i.i.i:                                  ; preds = %if.else.i126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %ep1.i.i, ptr noundef nonnull %add.ptr.i122.i.i, i32 noundef 0) #9
  br label %_nbu2ss_ep0_status_stage.exit.i.i

_nbu2ss_ep0_status_stage.exit.i.i:                ; preds = %if.then14.i.i.i, %if.else.i126.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge, %if.then6.i.i.i, %if.then.i124.i.i._nbu2ss_ep0_status_stage.exit.i.i_crit_edge
  %207 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %ep0state.i, align 4
  br label %sw.epilog.i.i

sw.bb42.i.i:                                      ; preds = %for.body.i.i72
  %208 = and i32 %status.0160.i.i, 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %sw.bb42.i.i.sw.epilog.i.i_crit_edge, label %if.then51.i.i

sw.bb42.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.then51.i.i:                                    ; preds = %sw.bb42.i.i
  %and52.i.i = and i32 %status.0160.i.i, -165
  %210 = ptrtoint ptr %queue.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile ptr, ptr %queue.i129.i.i, align 4
  %cmp.not.i130.i.i = icmp eq ptr %211, %queue.i129.i.i
  %add.ptr.i131.i.i = getelementptr i8, ptr %211, i32 -56
  %tobool.not1.i132.i.i = icmp eq ptr %add.ptr.i131.i.i, null
  %tobool.not.i133.i.i = or i1 %cmp.not.i130.i.i, %tobool.not1.i132.i.i
  br i1 %tobool.not.i133.i.i, label %if.then.i136.i.i, label %if.else.i141.i.i

if.then.i136.i.i:                                 ; preds = %if.then51.i.i
  %212 = ptrtoint ptr %complete.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %complete.i134.i.i, align 4
  %tobool5.not.i135.i.i = icmp eq ptr %213, null
  br i1 %tobool5.not.i135.i.i, label %if.then.i136.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge, label %if.then6.i138.i.i

if.then.i136.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge: ; preds = %if.then.i136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep0_status_stage.exit144.i.i

if.then6.i138.i.i:                                ; preds = %if.then.i136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %213(ptr noundef %ep1.i.i, ptr noundef %ep0_req.i137.i.i) #9
  br label %_nbu2ss_ep0_status_stage.exit144.i.i

if.else.i141.i.i:                                 ; preds = %if.then51.i.i
  %complete12.i139.i.i = getelementptr i8, ptr %211, i32 -28
  %214 = ptrtoint ptr %complete12.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %complete12.i139.i.i, align 4
  %tobool13.not.i140.i.i = icmp eq ptr %215, null
  br i1 %tobool13.not.i140.i.i, label %if.else.i141.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge, label %if.then14.i142.i.i

if.else.i141.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge: ; preds = %if.else.i141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep0_status_stage.exit144.i.i

if.then14.i142.i.i:                               ; preds = %if.else.i141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %ep1.i.i, ptr noundef nonnull %add.ptr.i131.i.i, i32 noundef 0) #9
  br label %_nbu2ss_ep0_status_stage.exit144.i.i

_nbu2ss_ep0_status_stage.exit144.i.i:             ; preds = %if.then14.i142.i.i, %if.else.i141.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge, %if.then6.i138.i.i, %if.then.i136.i.i._nbu2ss_ep0_status_stage.exit144.i.i_crit_edge
  %216 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %ep0state.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %_nbu2ss_ep0_status_stage.exit144.i.i, %sw.bb42.i.i.sw.epilog.i.i_crit_edge, %_nbu2ss_ep0_status_stage.exit.i.i, %sw.bb33.i.i.sw.epilog.i.i_crit_edge, %if.then8.i.i.i, %if.else.i117.i.i.sw.epilog.i.i_crit_edge, %if.then5.i.i.i, %sw.bb26.i.i.sw.epilog.i.i_crit_edge, %if.then7.i.i.i, %if.then22.i.i.sw.epilog.i.i_crit_edge, %sw.bb19.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %status.1.i.i = phi i32 [ %and52.i.i, %_nbu2ss_ep0_status_stage.exit144.i.i ], [ %and39.i.i, %_nbu2ss_ep0_status_stage.exit.i.i ], [ %status.0160.i.i, %sw.bb26.i.i.sw.epilog.i.i_crit_edge ], [ %status.0160.i.i, %sw.bb19.i.i.sw.epilog.i.i_crit_edge ], [ %status.0160.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ %status.0160.i.i, %sw.bb33.i.i.sw.epilog.i.i_crit_edge ], [ %status.0160.i.i, %sw.bb42.i.i.sw.epilog.i.i_crit_edge ], [ %and23.i.i, %if.then22.i.i.sw.epilog.i.i_crit_edge ], [ %and23.i.i, %if.then7.i.i.i ], [ %and30.i.i, %if.then5.i.i.i ], [ %and30.i.i, %if.else.i117.i.i.sw.epilog.i.i_crit_edge ], [ %and30.i.i, %if.then8.i.i.i ]
  %nret.1.i.i = phi i32 [ 0, %_nbu2ss_ep0_status_stage.exit144.i.i ], [ 0, %_nbu2ss_ep0_status_stage.exit.i.i ], [ %nret.0161.i.i, %sw.bb26.i.i.sw.epilog.i.i_crit_edge ], [ %nret.0161.i.i, %sw.bb19.i.i.sw.epilog.i.i_crit_edge ], [ %nret.0161.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ %nret.0161.i.i, %sw.bb33.i.i.sw.epilog.i.i_crit_edge ], [ %nret.0161.i.i, %sw.bb42.i.i.sw.epilog.i.i_crit_edge ], [ 0, %if.then22.i.i.sw.epilog.i.i_crit_edge ], [ 0, %if.then7.i.i.i ], [ 0, %if.then5.i.i.i ], [ 0, %if.else.i117.i.i.sw.epilog.i.i_crit_edge ], [ 0, %if.then8.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i.i)
  %cmp55.i.i = icmp eq i32 %status.1.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.0159.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  %or.cond.i.i = select i1 %cmp55.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %sw.epilog.i.i.for.end.i.i_crit_edge, label %sw.epilog.i.i.for.body.i.i72_crit_edge

sw.epilog.i.i.for.body.i.i72_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i72

sw.epilog.i.i.for.end.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %sw.epilog.i.i.for.end.i.i_crit_edge, %for.body.i.i72.for.end.i.i_crit_edge
  %nret.2.i.i = phi i32 [ %nret.1.i.i, %sw.epilog.i.i.for.end.i.i_crit_edge ], [ %nret.0161.i.i, %for.body.i.i72.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nret.2.i.i)
  %cmp58.i.i = icmp slt i32 %nret.2.i.i, 0
  br i1 %cmp58.i.i, label %for.end.i.i.if.then59.i.i_crit_edge, label %for.end.i.i.if.end32_crit_edge

for.end.i.i.if.end32_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.end.i.i.if.then59.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i.i

if.then59.i.i:                                    ; preds = %for.end.i.i.if.then59.i.i_crit_edge, %for.end.thread155.i.i
  %217 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i146.i.i = getelementptr inbounds %struct.fc_regs, ptr %218, i32 0, i32 10
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i146.i.i) #9
  %or.i.i148.i.i = or i32 %219, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i146.i.i, i32 %or.i.i148.i.i) #9, !srcloc !250
  br label %if.end32

if.else.i:                                        ; preds = %if.then31
  %arrayidx.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 %epnum.086
  %sub.i.i = add nsw i32 %epnum.086, -1
  %220 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %p_regs, align 8
  %EP_STATUS.i.i = getelementptr %struct.fc_regs, ptr %221, i32 0, i32 16, i32 %sub.i.i, i32 1
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_STATUS.i.i) #9, !srcloc !249
  %223 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %p_regs, align 8
  %EP_STATUS6.i.i = getelementptr %struct.fc_regs, ptr %224, i32 0, i32 16, i32 %sub.i.i, i32 1
  %neg.i4.i = xor i32 %222, -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_STATUS6.i.i, i32 %neg.i4.i) #9, !srcloc !250
  %queue.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 %epnum.086, i32 1
  %225 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.not.i.i73 = icmp eq ptr %226, %queue.i.i
  %add.ptr.i.i = getelementptr i8, ptr %226, i32 -56
  %tobool.not70.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i5.i = or i1 %cmp.not.i.i73, %tobool.not70.i.i
  br i1 %tobool.not.i5.i, label %if.else.i.if.end32_crit_edge, label %if.end.i7.i

if.else.i.if.end32_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i7.i:                                      ; preds = %if.else.i
  %and.i6.i = and i32 %222, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool9.not.i.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i7.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end.i7.i.if.end12.i.i_crit_edge:               ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end.i7.i
  %and11.i.i = and i32 %222, -524289
  %227 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %p_regs, align 8
  %epnum.i.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 %epnum.086, i32 4
  %229 = ptrtoint ptr %epnum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %epnum.i.i.i, align 4
  %conv.i.i.i = zext i8 %230 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %actual.i.i8.i = getelementptr i8, ptr %226, i32 -4
  %231 = ptrtoint ptr %actual.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %actual.i.i8.i, align 4
  %length.i.i.i = getelementptr i8, ptr %226, i32 -52
  %233 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %234)
  %cmp.i.i9.i = icmp eq i32 %232, %234
  br i1 %cmp.i.i9.i, label %if.then.i.i11.i, label %if.then10.i.i.if.end9.i.i.i_crit_edge

if.then10.i.i.if.end9.i.i.i_crit_edge:            ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i.i

if.then.i.i11.i:                                  ; preds = %if.then10.i.i
  %maxpacket.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 7
  %235 = ptrtoint ptr %maxpacket.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 7)
  %bf.load.i.i.i = load i56, ptr %maxpacket.i.i.i, align 2
  %bf.lshr.i.i.i = lshr i56 %bf.load.i.i.i, 40
  %bf.cast.i.i.i = trunc i56 %bf.lshr.i.i.i to i32
  %rem.i.i.i = urem i32 %232, %bf.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i10.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool.not.i.i10.i, label %if.then.i.i11.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i11.i.if.end9.i.i.i_crit_edge:          ; preds = %if.then.i.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i11.i
  %zero.i.i.i = getelementptr i8, ptr %226, i32 13
  %236 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %zero.i.i.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool7.not.i.i.i = icmp eq i8 %237, 0
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i13.i, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i.i

if.then8.i.i13.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div_len.i.i12.i = getelementptr i8, ptr %226, i32 8
  %238 = ptrtoint ptr %div_len.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %div_len.i.i12.i, align 4
  %dma_flag.i.i.i = getelementptr i8, ptr %226, i32 12
  %239 = ptrtoint ptr %dma_flag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %dma_flag.i.i.i, align 4
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %arrayidx.i.i, ptr noundef nonnull %add.ptr.i.i, i32 noundef 0) #9
  br label %if.end12.i.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %if.then.i.i11.i.if.end9.i.i.i_crit_edge, %if.then10.i.i.if.end9.i.i.i_crit_edge
  %EP_LEN_DCNT.i.i.i = getelementptr %struct.fc_regs, ptr %228, i32 0, i32 16, i32 %sub.i.i.i, i32 5
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_LEN_DCNT.i.i.i) #9, !srcloc !249
  %and.i.i14.i = lshr i32 %240, 16
  %shr.i.i.i = and i32 %and.i.i14.i, 511
  %arrayidx12.i.i.i = getelementptr %struct.fc_regs, ptr %228, i32 0, i32 28, i32 %sub.i.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0107.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1000
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end9.i.i.i
  %i.0107.i.i.i = phi i32 [ 0, %if.end9.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx12.i.i.i) #9, !srcloc !249
  %and14.i.i.i = lshr i32 %241, 16
  %shr15.i.i.i = and i32 %and14.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %shr15.i.i.i)
  %cmp16.i.i.i = icmp eq i32 %shr.i.i.i, %shr15.i.i.i
  br i1 %cmp16.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.cond.i.i.i.for.end.i.i.i_crit_edge
  %shr15.lcssa.i.i.i = phi i32 [ %shr.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ %shr15.i.i.i, %for.cond.i.i.i.for.end.i.i.i_crit_edge ]
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx12.i.i.i) #9, !srcloc !249
  %and.i.i.i15.i = and i32 %242, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12.i.i.i, i32 %and.i.i.i15.i) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr15.lcssa.i.i.i)
  %cmp23.not.i.i.i = icmp eq i32 %shr15.lcssa.i.i.i, 0
  br i1 %cmp23.not.i.i.i, label %for.end.i.i.i.if.end39.i.i.i_crit_edge, label %if.then25.i.i16.i

for.end.i.i.i.if.end39.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i.i

if.then25.i.i16.i:                                ; preds = %for.end.i.i.i
  %maxpacket27.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 7
  %243 = ptrtoint ptr %maxpacket27.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 7)
  %bf.load28.i.i.i = load i56, ptr %maxpacket27.i.i.i, align 2
  %bf.lshr29.i.i.i = lshr i56 %bf.load28.i.i.i, 40
  %bf.cast30.i.i.i = trunc i56 %bf.lshr29.i.i.i to i32
  %div_len31.i.i.i = getelementptr i8, ptr %226, i32 8
  %244 = ptrtoint ptr %div_len31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %div_len31.i.i.i, align 4
  %rem32.i.i.i = urem i32 %245, %bf.cast30.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32.i.i.i)
  %cmp33.i.i.i = icmp eq i32 %rem32.i.i.i, 0
  br i1 %cmp33.i.i.i, label %if.then35.i.i.i, label %if.then25.i.i16.i.if.end39.i.i.i_crit_edge

if.then25.i.i16.i.if.end39.i.i.i_crit_edge:       ; preds = %if.then25.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i.i

if.then35.i.i.i:                                  ; preds = %if.then25.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i.i = mul nuw nsw i32 %shr15.lcssa.i.i.i, %bf.cast30.i.i.i
  %sub37.i.i.i = sub i32 %245, %mul.i.i.i
  %246 = ptrtoint ptr %div_len31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %sub37.i.i.i, ptr %div_len31.i.i.i, align 4
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.then25.i.i16.i.if.end39.i.i.i_crit_edge, %for.end.i.i.i.if.end39.i.i.i_crit_edge
  %247 = ptrtoint ptr %actual.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %actual.i.i8.i, align 4
  %maxpacket43.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 7
  %249 = ptrtoint ptr %maxpacket43.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 7)
  %bf.load44.i.i.i = load i56, ptr %maxpacket43.i.i.i, align 2
  %bf.lshr45.i.i.i = lshr i56 %bf.load44.i.i.i, 40
  %bf.cast46.i.i.i = trunc i56 %bf.lshr45.i.i.i to i32
  %rem47.i.i.i = urem i32 %248, %bf.cast46.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem47.i.i.i)
  %cmp48.not.i.i.i = icmp eq i32 %rem47.i.i.i, 0
  br i1 %cmp48.not.i.i.i, label %if.end39.i.i.i.if.end60.i.i.i_crit_edge, label %if.then50.i.i.i

if.end39.i.i.i.if.end60.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i.i

if.then50.i.i.i:                                  ; preds = %if.end39.i.i.i
  %div_len53.i.i.i = getelementptr i8, ptr %226, i32 8
  %250 = ptrtoint ptr %div_len53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %div_len53.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %251)
  %cmp54.i.i.i = icmp eq i32 %248, %251
  br i1 %cmp54.i.i.i, label %if.then56.i.i.i, label %if.then50.i.i.i.if.end60.i.i.i_crit_edge

if.then50.i.i.i.if.end60.i.i.i_crit_edge:         ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i.i

if.then56.i.i.i:                                  ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %div_len53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %div_len53.i.i.i, align 4
  %dma_flag58.i.i.i = getelementptr i8, ptr %226, i32 12
  %253 = ptrtoint ptr %dma_flag58.i.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %dma_flag58.i.i.i, align 4
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i, i32 noundef 0) #9
  br label %if.end12.i.i

if.end60.i.i.i:                                   ; preds = %if.then50.i.i.i.if.end60.i.i.i_crit_edge, %if.end39.i.i.i.if.end60.i.i.i_crit_edge
  %div_len61.i.i.i = getelementptr i8, ptr %226, i32 8
  %254 = ptrtoint ptr %div_len61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %div_len61.i.i.i, align 4
  %add.i.i17.i = add i32 %255, %248
  %256 = ptrtoint ptr %actual.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %add.i.i17.i, ptr %actual.i.i8.i, align 4
  store i32 0, ptr %div_len61.i.i.i, align 4
  %dma_flag65.i.i.i = getelementptr i8, ptr %226, i32 12
  %257 = ptrtoint ptr %dma_flag65.i.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %dma_flag65.i.i.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @_nbu2ss_epn_out_transfer(ptr noundef %_udc, ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end60.i.i.i.if.end12.i.i_crit_edge

if.end60.i.i.i.if.end12.i.i_crit_edge:            ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then.i.i.i.i:                                  ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i, i32 noundef %call.i.i.i.i) #9
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then.i.i.i.i, %if.end60.i.i.i.if.end12.i.i_crit_edge, %if.then56.i.i.i, %if.then8.i.i13.i, %if.end.i7.i.if.end12.i.i_crit_edge
  %status.0.i.i = phi i32 [ %222, %if.end.i7.i.if.end12.i.i_crit_edge ], [ %and11.i.i, %if.then8.i.i13.i ], [ %and11.i.i, %if.then56.i.i.i ], [ %and11.i.i, %if.end60.i.i.i.if.end12.i.i_crit_edge ], [ %and11.i.i, %if.then.i.i.i.i ]
  %and13.i.i = and i32 %status.0.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %call.i.i18.i = tail call fastcc i32 @_nbu2ss_epn_out_transfer(ptr noundef %_udc, ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i18.i)
  %cmp.i53.i.i = icmp slt i32 %call.i.i18.i, 1
  br i1 %cmp.i53.i.i, label %if.then.i54.i.i, label %if.then15.i.i.if.end16.i.i_crit_edge

if.then15.i.i.if.end16.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then.i54.i.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i, i32 noundef %call.i.i18.i) #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then.i54.i.i, %if.then15.i.i.if.end16.i.i_crit_edge, %if.end12.i.i.if.end16.i.i_crit_edge
  %and17.i.i = and i32 %status.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end21.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %dma_flag.i55.i.i = getelementptr i8, ptr %226, i32 12
  %258 = ptrtoint ptr %dma_flag.i55.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %dma_flag.i55.i.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i56.i.i = icmp eq i8 %259, 0
  br i1 %tobool.not.i56.i.i, label %if.then19.i.i.if.end32_crit_edge, label %if.end.i.i.i

if.then19.i.i.if.end32_crit_edge:                 ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i.i.i:                                     ; preds = %if.then19.i.i
  %div_len.i57.i.i = getelementptr i8, ptr %226, i32 8
  %260 = ptrtoint ptr %div_len.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %div_len.i57.i.i, align 4
  %actual.i58.i.i = getelementptr i8, ptr %226, i32 -4
  %262 = ptrtoint ptr %actual.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %actual.i58.i.i, align 4
  %add.i59.i.i = add i32 %263, %261
  store i32 %add.i59.i.i, ptr %actual.i58.i.i, align 4
  store i32 0, ptr %div_len.i57.i.i, align 4
  %264 = ptrtoint ptr %dma_flag.i55.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %dma_flag.i55.i.i, align 4
  %mapped.i.i.i.i = getelementptr i8, ptr %226, i32 15
  %265 = ptrtoint ptr %mapped.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load.i.i.i19.i = load i8, ptr %mapped.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i19.i)
  %tobool8.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i19.i, -1
  %unaligned32.i.i.i.i = getelementptr i8, ptr %226, i32 14
  %266 = ptrtoint ptr %unaligned32.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %unaligned32.i.i.i.i, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool33.not.i.i.i20.i = icmp eq i8 %267, 0
  br i1 %tobool8.not.i.i.i.i, label %if.else31.i.i.i.i, label %if.then9.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end.i.i.i
  br i1 %tobool33.not.i.i.i20.i, label %if.else.i.i.i21.i, label %if.then9.i.i.i.i.if.end26.i.i.i.i_crit_edge

if.then9.i.i.i.i.if.end26.i.i.i.i_crit_edge:      ; preds = %if.then9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i.i

if.else.i.i.i21.i:                                ; preds = %if.then9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %268 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %parent.i.i.i.i, align 8
  %dma.i.i.i.i = getelementptr i8, ptr %226, i32 -48
  %270 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %dma.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr i8, ptr %226, i32 -52
  %272 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %length.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %269, i32 noundef %271, i32 noundef %273, i32 noundef 1, i32 noundef 0) #9
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.else.i.i.i21.i, %if.then9.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %dma28.i.i.i.i = getelementptr i8, ptr %226, i32 -48
  %274 = ptrtoint ptr %dma28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %dma28.i.i.i.i, align 4
  %275 = ptrtoint ptr %mapped.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %bf.load30.i.i.i22.i = load i8, ptr %mapped.i.i.i.i, align 1
  %bf.clear.i.i.i.i = and i8 %bf.load30.i.i.i22.i, 127
  store i8 %bf.clear.i.i.i.i, ptr %mapped.i.i.i.i, align 1
  br label %_nbu2ss_dma_unmap_single.exit.i.i.i

if.else31.i.i.i.i:                                ; preds = %if.end.i.i.i
  br i1 %tobool33.not.i.i.i20.i, label %if.then34.i.i.i23.i, label %if.else31.i.i.i.i._nbu2ss_dma_unmap_single.exit.i.i.i_crit_edge

if.else31.i.i.i.i._nbu2ss_dma_unmap_single.exit.i.i.i_crit_edge: ; preds = %if.else31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_dma_unmap_single.exit.i.i.i

if.then34.i.i.i23.i:                              ; preds = %if.else31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %276 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %parent.i.i.i.i, align 8
  %dma39.i.i.i.i = getelementptr i8, ptr %226, i32 -48
  %278 = ptrtoint ptr %dma39.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %dma39.i.i.i.i, align 4
  %length41.i.i.i.i = getelementptr i8, ptr %226, i32 -52
  %280 = ptrtoint ptr %length41.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %length41.i.i.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %277, i32 noundef %279, i32 noundef %281, i32 noundef 1) #9
  br label %_nbu2ss_dma_unmap_single.exit.i.i.i

_nbu2ss_dma_unmap_single.exit.i.i.i:              ; preds = %if.then34.i.i.i23.i, %if.else31.i.i.i.i._nbu2ss_dma_unmap_single.exit.i.i.i_crit_edge, %if.end26.i.i.i.i
  %282 = ptrtoint ptr %actual.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %actual.i58.i.i, align 4
  %length.i60.i.i = getelementptr i8, ptr %226, i32 -52
  %284 = ptrtoint ptr %length.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %length.i60.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %285)
  %cmp.not.i.i24.i = icmp eq i32 %283, %285
  br i1 %cmp.not.i.i24.i, label %if.else.i.i26.i, label %if.then5.i.i25.i

if.then5.i.i25.i:                                 ; preds = %_nbu2ss_dma_unmap_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i61.i.i = tail call fastcc i32 @_nbu2ss_epn_in_transfer(ptr noundef %_udc, ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i) #9
  br label %if.end32

if.else.i.i26.i:                                  ; preds = %_nbu2ss_dma_unmap_single.exit.i.i.i
  %maxpacket.i62.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 7
  %286 = ptrtoint ptr %maxpacket.i62.i.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 7)
  %bf.load.i63.i.i = load i56, ptr %maxpacket.i62.i.i, align 2
  %bf.lshr.i64.i.i = lshr i56 %bf.load.i63.i.i, 40
  %bf.cast.i65.i.i = trunc i56 %bf.lshr.i64.i.i to i32
  %rem.i66.i.i = urem i32 %283, %bf.cast.i65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i66.i.i)
  %cmp8.not.i.i.i = icmp eq i32 %rem.i66.i.i, 0
  br i1 %cmp8.not.i.i.i, label %if.else15.i.i.i, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.else.i.i26.i
  %and.i67.i.i = and i32 %283, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67.i.i)
  %cmp11.i.i27.i = icmp eq i32 %and.i67.i.i, 0
  br i1 %cmp11.i.i27.i, label %if.then13.i.i28.i, label %if.then9.i.i.i.if.end32_crit_edge

if.then9.i.i.i.if.end32_crit_edge:                ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then13.i.i28.i:                                ; preds = %if.then9.i.i.i
  %epnum.i68.i.i = getelementptr %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11, i32 %epnum.086, i32 4
  %287 = ptrtoint ptr %epnum.i68.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %epnum.i68.i.i, align 4
  %289 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %p_regs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %cmp1.i.i.i.i = icmp eq i8 %288, 0
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %if.else.i40.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.then13.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_CONTROL.i.i.i29.i = getelementptr inbounds %struct.fc_regs, ptr %290, i32 0, i32 10
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i.i29.i) #9, !srcloc !249
  %and.i.i.i.i30.i = and i32 %291, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i.i29.i, i32 %and.i.i.i.i30.i) #9, !srcloc !250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i.i29.i, i32 128) #9, !srcloc !250
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i.i29.i) #9, !srcloc !249
  %or.i.i.i.i31.i = or i32 %292, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i.i29.i, i32 %or.i.i.i.i31.i) #9, !srcloc !250
  br label %if.end32

if.else.i40.i.i.i:                                ; preds = %if.then13.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i69.i.i = zext i8 %288 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i69.i.i, -1
  %arrayidx.i.i.i.i = getelementptr %struct.fc_regs, ptr %290, i32 0, i32 16, i32 %sub.i.i.i.i
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i) #9, !srcloc !249
  %and.i41.i.i.i.i = and i32 %293, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i, i32 %and.i41.i.i.i.i) #9, !srcloc !250
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i) #9, !srcloc !249
  %or.i42.i.i.i.i = or i32 %294, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i, i32 %or.i42.i.i.i.i) #9, !srcloc !250
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i) #9, !srcloc !249
  %or.i43.i.i.i.i = or i32 %295, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i, i32 %or.i43.i.i.i.i) #9, !srcloc !250
  br label %if.end32

if.else15.i.i.i:                                  ; preds = %if.else.i.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_epn_in_int(ptr noundef %_udc, ptr noundef %arrayidx.i.i, ptr noundef %add.ptr.i.i) #9
  br label %if.end32

if.end21.i.i:                                     ; preds = %if.end16.i.i
  %and22.i.i = and i32 %status.0.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end21.i.i.if.end32_crit_edge, label %if.then24.i.i

if.end21.i.i.if.end32_crit_edge:                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_epn_in_int(ptr noundef %_udc, ptr noundef %arrayidx.i.i, ptr noundef nonnull %add.ptr.i.i) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then24.i.i, %if.end21.i.i.if.end32_crit_edge, %if.else15.i.i.i, %if.else.i40.i.i.i, %if.then2.i.i.i.i, %if.then9.i.i.i.if.end32_crit_edge, %if.then5.i.i25.i, %if.then19.i.i.if.end32_crit_edge, %if.else.i.if.end32_crit_edge, %if.then59.i.i, %for.end.i.i.if.end32_crit_edge, %if.end40.i.i.i.if.end32_crit_edge, %if.end40.thread149.i.i.i, %do.end.i.i, %for.body.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %int_bit.088)
  %cmp34 = icmp ult i32 %int_bit.088, 2
  br i1 %cmp34, label %if.end32.if.end37_crit_edge, label %for.inc

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.inc:                                          ; preds = %if.end32
  %shr33 = lshr i32 %int_bit.088, 1
  %inc = add nuw nsw i32 %epnum.086, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.if.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.end32.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %call1 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end37.if.end8.thread_crit_edge, label %if.end37.if.end8_crit_edge

if.end37.if.end8_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end37.if.end8.thread_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.thread

for.end38:                                        ; preds = %if.end8.for.end38_crit_edge, %if.end8.thread
  %suspend_flag.085 = phi i8 [ %suspend_flag.0.lcssa, %if.end8.thread ], [ %suspend_flag.091, %if.end8.for.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %suspend_flag.085)
  %tobool39.not = icmp eq i8 %suspend_flag.085, 0
  br i1 %tobool39.not, label %for.end38.if.end41_crit_edge, label %if.then40

for.end38.if.end41_crit_edge:                     ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %for.end38
  %usb_suspended.i74 = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 12
  %296 = ptrtoint ptr %usb_suspended.i74 to i32
  call void @__asan_load1_noabort(i32 %296)
  %bf.load.i75 = load i8, ptr %usb_suspended.i74, align 4
  %297 = and i8 %bf.load.i75, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %cmp.i76 = icmp eq i8 %297, 0
  br i1 %cmp.i76, label %if.then.i77, label %if.then40.if.end41_crit_edge

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then.i77:                                      ; preds = %if.then40
  %call.i = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i77.if.end41_crit_edge, label %if.end.i

if.then.i77.if.end41_crit_edge:                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end.i:                                         ; preds = %if.then.i77
  %298 = ptrtoint ptr %usb_suspended.i74 to i32
  call void @__asan_load1_noabort(i32 %298)
  %bf.load4.i = load i8, ptr %usb_suspended.i74, align 4
  %bf.set.i = or i8 %bf.load4.i, 8
  store i8 %bf.set.i, ptr %usb_suspended.i74, align 4
  %driver.i78 = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 1
  %299 = ptrtoint ptr %driver.i78 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %driver.i78, align 8
  %tobool.not.i79 = icmp eq ptr %300, null
  br i1 %tobool.not.i79, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i80

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i80:                                ; preds = %if.end.i
  %suspend.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %300, i32 0, i32 6
  %301 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %suspend.i, align 4
  %tobool7.not.i = icmp eq ptr %302, null
  br i1 %tobool7.not.i, label %land.lhs.true.i80.if.end12.i_crit_edge, label %if.then8.i

land.lhs.true.i80.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then8.i:                                       ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %303 = ptrtoint ptr %driver.i78 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %driver.i78, align 8
  %suspend10.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %304, i32 0, i32 6
  %305 = ptrtoint ptr %suspend10.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %suspend10.i, align 4
  tail call void %306(ptr noundef %_udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %land.lhs.true.i80.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %307 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %p_regs, align 8
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #9, !srcloc !249
  %or.i.i = or i32 %309, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %or.i.i) #9, !srcloc !250
  br label %if.end41

if.end41:                                         ; preds = %if.end12.i, %if.then.i77.if.end41_crit_edge, %if.then40.if.end41_crit_edge, %for.end38.if.end41_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_nbu2ss_vbus_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #9
  %call.i = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  %call25.i = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %while.body.preheader.i._nbu2ss_check_vbus.exit_crit_edge, label %do.end31.i

while.body.preheader.i._nbu2ss_check_vbus.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.then.i:                                        ; preds = %entry
  %linux_suspended.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 12
  %6 = ptrtoint ptr %linux_suspended.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %linux_suspended.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %linux_suspended.i, align 4
  %p_regs.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 15
  %7 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i.i = getelementptr inbounds %struct.fc_regs, ptr %8, i32 0, i32 22
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %9, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i.i, i32 %or.i.i.i) #9, !srcloc !250
  %10 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR2.i.i = getelementptr inbounds %struct.fc_regs, ptr %11, i32 0, i32 22
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %12, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i.i, i32 %and.i.i.i) #9, !srcloc !250
  %dev.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.109) #12
  %15 = ptrtoint ptr %linux_suspended.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load1.i = load i8, ptr %linux_suspended.i, align 4
  %16 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp3.not.i = icmp eq i8 %16, 0
  br i1 %cmp3.not.i, label %if.then.i._nbu2ss_check_vbus.exit_crit_edge, label %if.then4.i

if.then.i._nbu2ss_check_vbus.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.then4.i:                                       ; preds = %if.then.i
  %17 = and i8 %bf.load1.i, 8
  %18 = xor i8 %17, -65
  %spec.select.i = and i8 %18, %bf.load1.i
  %19 = ptrtoint ptr %linux_suspended.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i, ptr %linux_suspended.i, align 4
  %devstate.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 7
  %20 = ptrtoint ptr %devstate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %devstate.i, align 8
  %speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %21 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %speed.i.i, align 8
  %ep1.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 11
  tail call fastcc void @_nbu2ss_nuke(ptr noundef %_udc, ptr noundef %ep1.i.i, i32 noundef -108) #9
  %ep_list.i.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 4
  %22 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn21.i.i = load ptr, ptr %ep_list.i.i, align 4
  %cmp.not22.i.i = icmp eq ptr %.pn21.i.i, %ep_list.i.i
  br i1 %cmp.not22.i.i, label %if.then4.i._nbu2ss_quiesce.exit.i_crit_edge, label %if.then4.i.for.body.i.i_crit_edge

if.then4.i.for.body.i.i_crit_edge:                ; preds = %if.then4.i
  br label %for.body.i.i

if.then4.i._nbu2ss_quiesce.exit.i_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_quiesce.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then4.i.for.body.i.i_crit_edge
  %.pn23.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn21.i.i, %if.then4.i.for.body.i.i_crit_edge ]
  %ep.0.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -12
  tail call fastcc void @_nbu2ss_nuke(ptr noundef %_udc, ptr noundef %ep.0.i.i, i32 noundef -108) #9
  %23 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i = load ptr, ptr %.pn23.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ep_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i._nbu2ss_quiesce.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i._nbu2ss_quiesce.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_quiesce.exit.i

_nbu2ss_quiesce.exit.i:                           ; preds = %for.body.i.i._nbu2ss_quiesce.exit.i_crit_edge, %if.then4.i._nbu2ss_quiesce.exit.i_crit_edge
  %driver.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 1
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 8
  %tobool18.not.i = icmp eq ptr %25, null
  br i1 %tobool18.not.i, label %_nbu2ss_quiesce.exit.i.if.end22.i_crit_edge, label %if.then19.i

_nbu2ss_quiesce.exit.i.if.end22.i_crit_edge:      ; preds = %_nbu2ss_quiesce.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then19.i:                                      ; preds = %_nbu2ss_quiesce.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %26 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver.i, align 8
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disconnect.i, align 4
  tail call void %29(ptr noundef %_udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %_nbu2ss_quiesce.exit.i.if.end22.i_crit_edge
  %30 = ptrtoint ptr %linux_suspended.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %linux_suspended.i, align 4
  %31 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %if.end22.i._nbu2ss_check_vbus.exit_crit_edge, label %if.then.i.i

if.end22.i._nbu2ss_check_vbus.exit_crit_edge:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.then.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i.i = and i8 %bf.load.i.i, -3
  %32 = ptrtoint ptr %linux_suspended.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.clear3.i.i, ptr %linux_suspended.i, align 4
  %33 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %34, i32 0, i32 22
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i.i.i) #9, !srcloc !249
  %or.i.i.i.i = or i32 %35, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i.i.i, i32 %or.i.i.i.i) #9, !srcloc !250
  %36 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR2.i.i.i = getelementptr inbounds %struct.fc_regs, ptr %37, i32 0, i32 22
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i.i.i) #9, !srcloc !249
  %and.i.i.i.i = and i32 %38, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i.i.i, i32 %and.i.i.i.i) #9, !srcloc !250
  %39 = ptrtoint ptr %p_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p_regs.i.i, align 8
  %EPCTR.i97.i = getelementptr inbounds %struct.fc_regs, ptr %40, i32 0, i32 22
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i97.i) #9, !srcloc !249
  %or.i.i98.i = or i32 %41, 4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i97.i, i32 %or.i.i98.i) #9, !srcloc !250
  br label %_nbu2ss_check_vbus.exit

do.end31.i:                                       ; preds = %while.body.preheader.i
  %dev32.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 3
  %42 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev32.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.112) #12
  %linux_suspended33.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 12
  %44 = ptrtoint ptr %linux_suspended33.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load34.i = load i8, ptr %linux_suspended33.i, align 4
  %45 = and i8 %bf.load34.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not.i = icmp eq i8 %45, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %do.end31.i._nbu2ss_check_vbus.exit_crit_edge

do.end31.i._nbu2ss_check_vbus.exit_crit_edge:     ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.end40.i:                                       ; preds = %do.end31.i
  %46 = and i8 %bf.load34.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp46.i = icmp eq i8 %46, 0
  br i1 %cmp46.i, label %if.then47.i, label %if.else62.i

if.then47.i:                                      ; preds = %if.end40.i
  %bf.set51.i = or i8 %bf.load34.i, 64
  %47 = ptrtoint ptr %linux_suspended33.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.set51.i, ptr %linux_suspended33.i, align 4
  %devstate52.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 7
  %48 = ptrtoint ptr %devstate52.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %devstate52.i, align 8
  %call53.i = tail call fastcc i32 @_nbu2ss_enable_controller(ptr noundef %_udc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  %49 = ptrtoint ptr %linux_suspended33.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i4 = load i8, ptr %linux_suspended33.i, align 4
  br i1 %cmp54.i, label %if.then55.i, label %if.end60.i

if.then55.i:                                      ; preds = %if.then47.i
  %50 = and i8 %bf.load.i4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.then55.i._nbu2ss_disable_controller.exit_crit_edge, label %if.then.i11

if.then55.i._nbu2ss_disable_controller.exit_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_disable_controller.exit

if.then.i11:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i = and i8 %bf.load.i4, -3
  %51 = ptrtoint ptr %linux_suspended33.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.clear3.i, ptr %linux_suspended33.i, align 4
  %p_regs.i.i5 = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 15
  %52 = ptrtoint ptr %p_regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p_regs.i.i5, align 8
  %EPCTR.i.i6 = getelementptr inbounds %struct.fc_regs, ptr %53, i32 0, i32 22
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i.i6) #9, !srcloc !249
  %or.i.i.i7 = or i32 %54, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i.i6, i32 %or.i.i.i7) #9, !srcloc !250
  %55 = ptrtoint ptr %p_regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p_regs.i.i5, align 8
  %EPCTR2.i.i8 = getelementptr inbounds %struct.fc_regs, ptr %56, i32 0, i32 22
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2.i.i8) #9, !srcloc !249
  %and.i.i.i9 = and i32 %57, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2.i.i8, i32 %and.i.i.i9) #9, !srcloc !250
  %58 = ptrtoint ptr %p_regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_regs.i.i5, align 8
  %EPCTR.i = getelementptr inbounds %struct.fc_regs, ptr %59, i32 0, i32 22
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR.i) #9, !srcloc !249
  %or.i.i10 = or i32 %60, 4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR.i, i32 %or.i.i10) #9, !srcloc !250
  br label %_nbu2ss_disable_controller.exit

_nbu2ss_disable_controller.exit:                  ; preds = %if.then.i11, %if.then55.i._nbu2ss_disable_controller.exit_crit_edge
  %61 = ptrtoint ptr %linux_suspended33.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load57.i = load i8, ptr %linux_suspended33.i, align 4
  %bf.clear58.i = and i8 %bf.load57.i, -65
  store i8 %bf.clear58.i, ptr %linux_suspended33.i, align 4
  br label %_nbu2ss_check_vbus.exit

if.end60.i:                                       ; preds = %if.then47.i
  %62 = and i8 %bf.load.i4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i.i = icmp eq i8 %62, 0
  br i1 %cmp.i.i, label %if.end60.i._nbu2ss_check_vbus.exit_crit_edge, label %if.end.i.i

if.end60.i._nbu2ss_check_vbus.exit_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.end.i.i:                                       ; preds = %if.end60.i
  %driver.i.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 1
  %63 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %64, null
  br i1 %tobool2.not.i.i, label %if.end.i.i._nbu2ss_check_vbus.exit_crit_edge, label %if.then3.i.i

if.end.i.i._nbu2ss_check_vbus.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs.i100.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 15
  %65 = ptrtoint ptr %p_regs.i100.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p_regs.i100.i, align 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !249
  %or.i.i = and i32 %67, -13
  %and.i.i = or i32 %or.i.i, 4
  %68 = ptrtoint ptr %p_regs.i100.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %p_regs.i100.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %and.i.i) #9, !srcloc !250
  br label %_nbu2ss_check_vbus.exit

if.else62.i:                                      ; preds = %if.end40.i
  %devstate63.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 7
  %70 = ptrtoint ptr %devstate63.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devstate63.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp64.i = icmp eq i32 %71, 2
  br i1 %cmp64.i, label %if.end.i104.i, label %if.else62.i._nbu2ss_check_vbus.exit_crit_edge

if.else62.i._nbu2ss_check_vbus.exit_crit_edge:    ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.end.i104.i:                                    ; preds = %if.else62.i
  %driver.i105.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 1
  %72 = ptrtoint ptr %driver.i105.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver.i105.i, align 8
  %tobool2.not.i106.i = icmp eq ptr %73, null
  br i1 %tobool2.not.i106.i, label %if.end.i104.i._nbu2ss_check_vbus.exit_crit_edge, label %if.then3.i110.i

if.end.i104.i._nbu2ss_check_vbus.exit_crit_edge:  ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_check_vbus.exit

if.then3.i110.i:                                  ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs.i107.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %_udc, i32 0, i32 15
  %74 = ptrtoint ptr %p_regs.i107.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_regs.i107.i, align 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !249
  %or.i108.i = and i32 %76, -13
  %and.i109.i = or i32 %or.i108.i, 4
  %77 = ptrtoint ptr %p_regs.i107.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %p_regs.i107.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %and.i109.i) #9, !srcloc !250
  br label %_nbu2ss_check_vbus.exit

_nbu2ss_check_vbus.exit:                          ; preds = %if.then3.i110.i, %if.end.i104.i._nbu2ss_check_vbus.exit_crit_edge, %if.else62.i._nbu2ss_check_vbus.exit_crit_edge, %if.then3.i.i, %if.end.i.i._nbu2ss_check_vbus.exit_crit_edge, %if.end60.i._nbu2ss_check_vbus.exit_crit_edge, %_nbu2ss_disable_controller.exit, %do.end31.i._nbu2ss_check_vbus.exit_crit_edge, %if.then.i.i, %if.end22.i._nbu2ss_check_vbus.exit_crit_edge, %if.then.i._nbu2ss_check_vbus.exit_crit_edge, %while.body.preheader.i._nbu2ss_check_vbus.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_nuke(ptr nocapture noundef readonly %udc, ptr noundef %ep, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum.i, align 4
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %entry._nbu2ss_epn_exit.exit_crit_edge, label %lor.lhs.false.i

entry._nbu2ss_epn_exit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_exit.exit

lor.lhs.false.i:                                  ; preds = %entry
  %vbus_active.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %vbus_active.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i = icmp eq i8 %3, 0
  br i1 %cmp2.i, label %lor.lhs.false.i._nbu2ss_epn_exit.exit_crit_edge, label %if.end.i

lor.lhs.false.i._nbu2ss_epn_exit.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_exit.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add nsw i32 %conv.i, -1
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %4 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_regs.i, align 8
  %EP_PCKT_ADRS.i = getelementptr %struct.fc_regs, ptr %5, i32 0, i32 16, i32 %sub.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_PCKT_ADRS.i, i32 0) #9, !srcloc !250
  %6 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %epnum.i, align 4
  %conv7.i = zext i8 %7 to i32
  %shl.i = shl i32 256, %conv7.i
  %8 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_regs.i, align 8
  %USB_INT_ENA.i = getelementptr inbounds %struct.fc_regs, ptr %9, i32 0, i32 9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_INT_ENA.i) #9, !srcloc !249
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %10, %neg.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_ENA.i, i32 %and.i.i) #9, !srcloc !250
  %direct.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 5
  %11 = ptrtoint ptr %direct.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %direct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10.i = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_regs.i, align 8
  %arrayidx15.i = getelementptr %struct.fc_regs, ptr %14, i32 0, i32 16, i32 %sub.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx15.i) #9
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %15, 513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx15.i, i32 %or.i.i) #9, !srcloc !250
  %16 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_regs.i, align 8
  %arrayidx18.i = getelementptr %struct.fc_regs, ptr %17, i32 0, i32 16, i32 %sub.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx18.i) #9, !srcloc !249
  %and.i1.i = and i32 %18, 2080374783
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx18.i, i32 %and.i1.i) #9, !srcloc !250
  %19 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_regs.i, align 8
  %EP_INT_ENA.i = getelementptr %struct.fc_regs, ptr %20, i32 0, i32 16, i32 %sub.i, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_INT_ENA.i) #9, !srcloc !249
  %and.i2.i = and i32 %21, -8912897
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_INT_ENA.i, i32 %and.i2.i) #9, !srcloc !250
  br label %_nbu2ss_epn_exit.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i3.i = or i32 %15, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx15.i, i32 %or.i3.i) #9, !srcloc !250
  %22 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_regs.i, align 8
  %arrayidx29.i = getelementptr %struct.fc_regs, ptr %23, i32 0, i32 16, i32 %sub.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx29.i) #9, !srcloc !249
  %and.i4.i = and i32 %24, 2147418111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29.i, i32 %and.i4.i) #9, !srcloc !250
  %25 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_regs.i, align 8
  %EP_INT_ENA34.i = getelementptr %struct.fc_regs, ptr %26, i32 0, i32 16, i32 %sub.i, i32 2
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_INT_ENA34.i) #9, !srcloc !249
  %and.i5.i = and i32 %27, -137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_INT_ENA34.i, i32 %and.i5.i) #9, !srcloc !250
  br label %_nbu2ss_epn_exit.exit

_nbu2ss_epn_exit.exit:                            ; preds = %if.else.i, %if.then12.i, %lor.lhs.false.i._nbu2ss_epn_exit.exit_crit_edge, %entry._nbu2ss_epn_exit.exit_crit_edge
  %p_regs.i2 = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %28 = ptrtoint ptr %p_regs.i2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_regs.i2, align 8
  %vbus_active.i3 = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 12
  %30 = ptrtoint ptr %vbus_active.i3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i4 = load i8, ptr %vbus_active.i3, align 4
  %31 = and i8 %bf.load.i4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i5 = icmp eq i8 %31, 0
  br i1 %cmp.i5, label %_nbu2ss_epn_exit.exit._nbu2ss_ep_dma_exit.exit_crit_edge, label %if.end.i8

_nbu2ss_epn_exit.exit._nbu2ss_ep_dma_exit.exit_crit_edge: ; preds = %_nbu2ss_epn_exit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_dma_exit.exit

if.end.i8:                                        ; preds = %_nbu2ss_epn_exit.exit
  %USBSSCONF.i = getelementptr inbounds %struct.fc_regs, ptr %29, i32 0, i32 26
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USBSSCONF.i) #9, !srcloc !249
  %33 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %epnum.i, align 4
  %conv.i7 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1.i = icmp eq i8 %34, 0
  br i1 %cmp1.i, label %if.end.i8._nbu2ss_ep_dma_exit.exit_crit_edge, label %lor.lhs.false.i10

if.end.i8._nbu2ss_ep_dma_exit.exit_crit_edge:     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_dma_exit.exit

lor.lhs.false.i10:                                ; preds = %if.end.i8
  %shl.i9 = shl nuw i32 1, %conv.i7
  %and.i = and i32 %shl.i9, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %lor.lhs.false.i10._nbu2ss_ep_dma_exit.exit_crit_edge, label %if.end8.i

lor.lhs.false.i10._nbu2ss_ep_dma_exit.exit_crit_edge: ; preds = %lor.lhs.false.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_dma_exit.exit

if.end8.i:                                        ; preds = %lor.lhs.false.i10
  %sub.i11 = add nsw i32 %conv.i7, -1
  %35 = ptrtoint ptr %p_regs.i2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_regs.i2, align 8
  %arrayidx.i.i = getelementptr %struct.fc_regs, ptr %36, i32 0, i32 28, i32 %sub.i11
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %37, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %and.i.i.i) #9, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  %48 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %epnum.i, align 4
  %conv2.i.i = zext i8 %49 to i32
  %sub3.i.i = add nsw i32 %conv2.i.i, -1
  %EP_DMA_CTRL.i.i = getelementptr %struct.fc_regs, ptr %36, i32 0, i32 16, i32 %sub3.i.i, i32 3
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL.i.i) #9, !srcloc !249
  %and.i7.i.i = and i32 %50, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i.i, i32 %and.i7.i.i) #9, !srcloc !250
  %direct.i12 = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 5
  %51 = ptrtoint ptr %direct.i12 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %direct.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp12.i = icmp eq i8 %52, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i14

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.fc_regs, ptr %29, i32 0, i32 28, i32 %sub.i11
  %EP_DCR2.i = getelementptr %struct.fc_regs, ptr %29, i32 0, i32 28, i32 %sub.i11, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DCR2.i, i32 0) #9, !srcloc !250
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %and.i.i13 = and i32 %53, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %and.i.i13) #9, !srcloc !250
  %EP_DMA_CTRL.i = getelementptr %struct.fc_regs, ptr %29, i32 0, i32 16, i32 %sub.i11, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i, i32 0) #9, !srcloc !250
  br label %_nbu2ss_ep_dma_exit.exit

if.else.i14:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19.i = getelementptr %struct.fc_regs, ptr %29, i32 0, i32 16, i32 %sub.i11
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx19.i) #9, !srcloc !249
  %and.i41.i = and i32 %54, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19.i, i32 %and.i41.i) #9, !srcloc !250
  %EP_DMA_CTRL22.i = getelementptr %struct.fc_regs, ptr %29, i32 0, i32 16, i32 %sub.i11, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL22.i, i32 0) #9, !srcloc !250
  br label %_nbu2ss_ep_dma_exit.exit

_nbu2ss_ep_dma_exit.exit:                         ; preds = %if.else.i14, %if.then14.i, %lor.lhs.false.i10._nbu2ss_ep_dma_exit.exit_crit_edge, %if.end.i8._nbu2ss_ep_dma_exit.exit_crit_edge, %_nbu2ss_epn_exit.exit._nbu2ss_ep_dma_exit.exit_crit_edge
  %queue = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 1
  %55 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %queue, align 4
  %cmp.i15.not = icmp eq ptr %56, %queue
  br i1 %cmp.i15.not, label %_nbu2ss_ep_dma_exit.exit.cleanup_crit_edge, label %_nbu2ss_ep_dma_exit.exit.for.body_crit_edge

_nbu2ss_ep_dma_exit.exit.for.body_crit_edge:      ; preds = %_nbu2ss_ep_dma_exit.exit
  br label %for.body

_nbu2ss_ep_dma_exit.exit.cleanup_crit_edge:       ; preds = %_nbu2ss_ep_dma_exit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %_nbu2ss_ep_dma_exit.exit.for.body_crit_edge
  %.pn.in18 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %56, %_nbu2ss_ep_dma_exit.exit.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in18, i32 -56
  %57 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn.in18, align 4
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %ep, ptr noundef %req.0, i32 noundef %status)
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %_nbu2ss_ep_dma_exit.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_ep_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %queue = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %status)
  %cmp = icmp eq i32 %status, -104
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_fifo_flush(ptr noundef %1, ptr noundef %ep)
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp4 = icmp eq i32 %11, -115
  br i1 %cmp4, label %if.then6, label %if.end.if.end9_crit_edge, !prof !252

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %stalled = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 7
  %13 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %stalled, align 1
  %14 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_regs.i, align 8
  %direct.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 5
  %17 = ptrtoint ptr %direct.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %direct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %18)
  %cmp.i = icmp eq i8 %18, -128
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.then11.if.end8.i_crit_edge

if.then11.if.end8.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.cond.preheader.i:                             ; preds = %if.then11
  %epnum.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %limit_cnt.020.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %epnum.i, align 4
  %conv4.i = zext i8 %20 to i32
  %sub.i = add nsw i32 %conv4.i, -1
  %EP_STATUS.i = getelementptr %struct.fc_regs, ptr %16, i32 0, i32 16, i32 %sub.i, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_STATUS.i) #9, !srcloc !249
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %for.body.i.if.end8.i_crit_edge, label %if.end.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  %inc.i = add nuw nsw i32 %limit_cnt.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge, %if.then11.if.end8.i_crit_edge
  %epnum9.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %23 = ptrtoint ptr %epnum9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %epnum9.i, align 4
  %25 = ptrtoint ptr %direct.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %direct.i, align 1
  %or19.i = or i8 %26, %24
  %27 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_regs.i, align 8
  %29 = zext i8 %or19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %or19.i, label %if.else7.i.i [
    i8 0, label %if.end8.i.if.then.i.i_crit_edge
    i8 -128, label %if.end8.i.if.then.i.i_crit_edge59
  ]

if.end8.i.if.then.i.i_crit_edge59:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end8.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge59
  %EP0_CONTROL.i.i = getelementptr inbounds %struct.fc_regs, ptr %28, i32 0, i32 10
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i) #9
  %or.i.i.i = or i32 %30, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i, i32 %or.i.i.i) #9, !srcloc !250
  br label %if.end16

if.else7.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i8 %or19.i, 15
  %conv10.i.i = zext i8 %and.i.i to i32
  %sub.i.i = add nsw i8 %and.i.i, -1
  %halted.i.i = getelementptr %struct.nbu2ss_udc, ptr %1, i32 0, i32 11, i32 %conv10.i.i, i32 7
  %31 = ptrtoint ptr %halted.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %halted.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %halted.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or19.i)
  %tobool17.not.i.i = icmp sgt i8 %or19.i, -1
  %..i.i = select i1 %tobool17.not.i.i, i32 20, i32 520
  %idxprom21.i.i = zext i8 %sub.i.i to i32
  %arrayidx22.i.i = getelementptr %struct.fc_regs, ptr %28, i32 0, i32 16, i32 %idxprom21.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22.i.i) #9, !srcloc !249
  %or.i80.i.i = or i32 %32, %..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22.i.i, i32 %or.i80.i.i) #9, !srcloc !250
  br label %if.end16

if.else:                                          ; preds = %if.end9
  %queue12 = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 1
  %33 = ptrtoint ptr %queue12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %queue12, align 4
  %cmp.i52.not = icmp eq ptr %34, %queue12
  br i1 %cmp.i52.not, label %if.else.if.end16_crit_edge, label %if.then14

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.else
  %35 = ptrtoint ptr %queue12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %queue12, align 4
  %cmp.not.i = icmp eq ptr %36, %queue12
  %add.ptr.i = getelementptr i8, ptr %36, i32 -56
  %tobool.not30.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not30.i
  br i1 %tobool.not.i, label %if.then14.if.end16_crit_edge, label %if.end.i54

if.then14.if.end16_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.i54:                                       ; preds = %if.then14
  %epnum.i53 = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %37 = ptrtoint ptr %epnum.i53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %epnum.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp3.not.i = icmp eq i8 %38, 0
  br i1 %cmp3.not.i, label %if.end.i54.if.end13.i_crit_edge, label %if.then5.i

if.end.i54.if.end13.i_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i55 = zext i8 %38 to i32
  %39 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udc1, align 4
  %p_regs.i56 = getelementptr inbounds %struct.nbu2ss_udc, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %p_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_regs.i56, align 8
  %sub.i57 = add nsw i32 %conv.i55, -1
  %EP_LEN_DCNT.i = getelementptr %struct.fc_regs, ptr %42, i32 0, i32 16, i32 %sub.i57, i32 5
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_LEN_DCNT.i) #9, !srcloc !249
  %and.i58 = and i32 %43, 2047
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %44 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i58, i32 %bf.cast.i)
  %cmp9.i = icmp ult i32 %and.i58, %bf.cast.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.end.i54.if.end13.i_crit_edge
  %bflag.0.off0.i = phi i1 [ false, %if.end.i54.if.end13.i_crit_edge ], [ %cmp9.i, %if.then5.i ]
  %45 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udc1, align 4
  %call16.i = tail call fastcc i32 @_nbu2ss_start_transfer(ptr noundef %46, ptr noundef %ep, ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %bflag.0.off0.i) #9
  br label %if.end16

if.end16:                                         ; preds = %if.end13.i, %if.then14.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.else7.i.i, %if.then.i.i
  %direct = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 5
  %47 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp17 = icmp eq i8 %48, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end16
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %49 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp20.not = icmp eq i8 %50, 0
  br i1 %cmp20.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %51 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp24.not = icmp eq i32 %52, 0
  br i1 %cmp24.not, label %land.lhs.true22.if.end27_crit_edge, label %if.then26

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_dma_unmap_single(ptr noundef %1, ptr noundef %ep, ptr noundef %req, i8 noundef zeroext 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true22.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %53 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %complete, align 4
  tail call void %54(ptr noundef %ep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_fifo_flush(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus_active, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1 = icmp eq i8 %5, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_CONTROL = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9, !srcloc !249
  %or.i = or i32 %6, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %or.i) #9, !srcloc !250
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %5 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 28, i32 %sub.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %and.i.i = and i32 %7, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %and.i.i) #9, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %18 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %epnum, align 4
  %conv2.i = zext i8 %19 to i32
  %sub3.i = add nsw i32 %conv2.i, -1
  %EP_DMA_CTRL.i = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %sub3.i, i32 3
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL.i) #9, !srcloc !249
  %and.i7.i = and i32 %20, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i, i32 %and.i7.i) #9, !srcloc !250
  %21 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %epnum, align 4
  %conv5 = zext i8 %22 to i32
  %sub = add nsw i32 %conv5, -1
  %arrayidx = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %sub
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !249
  %or.i12 = or i32 %23, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %or.i12) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_dma_unmap_single(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, i8 noundef zeroext %direct) unnamed_addr #2 align 64 {
entry:
  %data.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.sroa.0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direct)
  %cmp = icmp eq i8 %direct, 0
  %0 = ptrtoint ptr %data.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.sroa.0, align 4
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %1 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %actual, align 4
  %rem = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %sub = and i32 %2, -4
  %add.ptr = getelementptr i8, ptr %4, i32 %sub
  %5 = call ptr @memcpy(ptr %data.sroa.0, ptr %add.ptr, i32 %rem)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %count.0 = phi i32 [ %rem, %if.then3 ], [ 0, %if.then.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ]
  %mapped = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  %unaligned32 = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 5
  %7 = ptrtoint ptr %unaligned32 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unaligned32, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool33.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.else31, label %if.then9

if.then9:                                         ; preds = %if.end7
  br i1 %tobool33.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  br i1 %cmp, label %if.then15, label %if.then11.if.end26_crit_edge

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %virt_buf = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 8
  %11 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_buf, align 4
  %actual19 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual19, align 4
  %and = and i32 %14, -4
  %15 = call ptr @memcpy(ptr %10, ptr %12, i32 %and)
  br label %if.end26

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %direct)
  %cmp24 = icmp eq i8 %direct, -128
  %cond = select i1 %cmp24, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %cond, i32 noundef 0) #9
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then15, %if.then11.if.end26_crit_edge
  %dma28 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %dma28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %dma28, align 4
  %23 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load30 = load i8, ptr %mapped, align 1
  %bf.clear = and i8 %bf.load30, 127
  store i8 %bf.clear, ptr %mapped, align 1
  br label %if.end47

if.else31:                                        ; preds = %if.end7
  br i1 %tobool33.not, label %if.then34, label %if.else31.if.end47_crit_edge

if.else31.if.end47_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  %parent37 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent37, align 8
  %dma39 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %dma39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma39, align 4
  %length41 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %length41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %direct)
  %cmp43 = icmp eq i8 %direct, -128
  %cond45 = select i1 %cmp43, i32 1, i32 2
  tail call void @dma_sync_single_for_cpu(ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %cond45) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %if.else31.if.end47_crit_edge, %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool48.not = icmp eq i32 %count.0, 0
  br i1 %tobool48.not, label %if.end47.if.end57_crit_edge, label %if.then49

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  %actual53 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %32 = ptrtoint ptr %actual53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual53, align 4
  %sub54 = sub i32 %33, %count.0
  %add.ptr55 = getelementptr i8, ptr %31, i32 %sub54
  %34 = call ptr @memcpy(ptr %add.ptr55, ptr %data.sroa.0, i32 %count.0)
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.end47.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.sroa.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_set_endpoint_stall(ptr noundef %udc, i8 noundef zeroext %ep_adrs, i1 noundef zeroext %bstall) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %conv = zext i8 %ep_adrs to i32
  %2 = zext i8 %ep_adrs to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %ep_adrs, label %if.else7 [
    i8 0, label %entry.if.then_crit_edge
    i8 -128, label %entry.if.then_crit_edge83
  ]

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge83
  %EP0_CONTROL = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9
  br i1 %bstall, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %3, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %or.i) #9, !srcloc !250
  br label %if.end57

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %3, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %and.i) #9, !srcloc !250
  br label %if.end57

if.else7:                                         ; preds = %entry
  %and = and i8 %ep_adrs, 15
  %conv10 = zext i8 %and to i32
  %sub = add nsw i8 %and, -1
  %arrayidx = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10
  br i1 %bstall, label %if.then14, label %if.else23

if.then14:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  %halted = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 7
  %4 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %halted, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %halted, align 1
  %and16 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %. = select i1 %tobool17.not, i32 20, i32 520
  %idxprom21 = zext i8 %sub to i32
  %arrayidx22 = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %idxprom21
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22) #9, !srcloc !249
  %or.i80 = or i32 %5, %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22, i32 %or.i80) #9, !srcloc !250
  br label %if.end57

if.else23:                                        ; preds = %if.else7
  %and25 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %idxprom34 = zext i8 %sub to i32
  %arrayidx35 = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %idxprom34
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx35) #9
  br i1 %tobool26.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  %and.i81 = and i32 %6, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 %and.i81) #9, !srcloc !250
  br label %if.end42

if.else32:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  %and37 = and i32 %6, -21
  %or = or i32 %and37, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 %or) #9, !srcloc !250
  br label %if.end42

if.end42:                                         ; preds = %if.else32, %if.then27
  %stalled = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 7
  %7 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load43 = load i8, ptr %stalled, align 1
  %bf.clear44 = and i8 %bf.load43, -33
  store i8 %bf.clear44, ptr %stalled, align 1
  %8 = and i8 %bf.load43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool49.not = icmp eq i8 %8, 0
  br i1 %tobool49.not, label %if.end42.if.end57_crit_edge, label %if.then50

if.end42.if.end57_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then50:                                        ; preds = %if.end42
  %bf.clear53 = and i8 %bf.load43, -97
  %9 = ptrtoint ptr %stalled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear53, ptr %stalled, align 1
  %queue.i = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 1
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.not.i = icmp eq ptr %11, %queue.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -56
  %tobool.not30.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not30.i
  br i1 %tobool.not.i, label %if.then50.if.end57_crit_edge, label %if.end.i

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end.i:                                         ; preds = %if.then50
  %epnum.i = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 4
  %12 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %epnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp3.not.i = icmp eq i8 %13, 0
  br i1 %cmp3.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then5.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %13 to i32
  %udc.i = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 2
  %14 = ptrtoint ptr %udc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udc.i, align 4
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_regs.i, align 8
  %sub.i = add nsw i32 %conv.i, -1
  %EP_LEN_DCNT.i = getelementptr %struct.fc_regs, ptr %17, i32 0, i32 16, i32 %sub.i, i32 5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_LEN_DCNT.i) #9, !srcloc !249
  %and.i82 = and i32 %18, 2047
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 7
  %19 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i82, i32 %bf.cast.i)
  %cmp9.i = icmp ult i32 %and.i82, %bf.cast.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.end.i.if.end13.i_crit_edge
  %bflag.0.off0.i = phi i1 [ false, %if.end.i.if.end13.i_crit_edge ], [ %cmp9.i, %if.then5.i ]
  %udc14.i = getelementptr %struct.nbu2ss_udc, ptr %udc, i32 0, i32 11, i32 %conv10, i32 2
  %20 = ptrtoint ptr %udc14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udc14.i, align 4
  %call16.i = tail call fastcc i32 @_nbu2ss_start_transfer(ptr noundef %21, ptr noundef %arrayidx, ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %bflag.0.off0.i) #9
  br label %if.end57

if.end57:                                         ; preds = %if.end13.i, %if.then50.if.end57_crit_edge, %if.end42.if.end57_crit_edge, %if.then14, %if.else, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_start_transfer(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, i1 noundef zeroext %bflag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_flag = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %dma_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dma_flag, align 4
  %div_len = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %div_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %div_len, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %zero = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %zero, align 1
  br label %if.end15

if.else:                                          ; preds = %entry
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %5 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %5, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %3, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %zero8 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %zero8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load9 = load i32, ptr %zero8, align 4
  %zero11 = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %7 = lshr i32 %bf.load9, 13
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %zero11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %zero11, align 1
  br label %if.end15

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %zero14 = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %zero14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %zero14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then6, %if.then
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %12 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp16 = icmp eq i8 %13, 0
  br i1 %cmp16, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.end15
  %ep0state = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 6
  %14 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ep0state, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %15, label %if.then18.if.end35_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb21
  ]

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

sw.bb:                                            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @_nbu2ss_ep0_in_transfer(ptr noundef %udc, ptr noundef %req)
  br label %if.end35

sw.bb19:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call fastcc i32 @_nbu2ss_ep0_out_transfer(ptr noundef %udc, ptr noundef %req)
  br label %if.end35

sw.bb21:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %17 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_regs.i, align 8
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %18, i32 0, i32 10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %and.i = and i32 %19, -659
  %data.0.i = or i32 %and.i, 656
  %20 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_regs.i, align 8
  %EP0_CONTROL3.i = getelementptr inbounds %struct.fc_regs, ptr %21, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL3.i, i32 %data.0.i) #9, !srcloc !250
  br label %if.end35

if.else23:                                        ; preds = %if.end15
  %direct = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 5
  %22 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp25 = icmp eq i8 %23, 0
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.else23
  br i1 %bflag, label %if.then27.if.end35_crit_edge, label %if.then29

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call fastcc i32 @_nbu2ss_epn_out_transfer(ptr noundef %udc, ptr noundef %ep, ptr noundef %req)
  br label %if.end35

if.else32:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call fastcc i32 @_nbu2ss_epn_in_transfer(ptr noundef %udc, ptr noundef %ep, ptr noundef %req)
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then29, %if.then27.if.end35_crit_edge, %sw.bb21, %sw.bb19, %sw.bb, %if.then18.if.end35_crit_edge
  %nret.0 = phi i32 [ -22, %if.then18.if.end35_crit_edge ], [ 0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call, %sw.bb ], [ -22, %if.then27.if.end35_crit_edge ], [ %call30, %if.then29 ], [ %call33, %if.else32 ]
  ret i32 %nret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_ep0_in_transfer(ptr nocapture noundef readonly %udc, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %temp_32.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %rem = and i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %zero = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zero, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then7

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %zero, align 1
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %7 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_regs.i, align 8
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %8, i32 0, i32 10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %and.i = and i32 %9, -147
  %data.0.i = or i32 %and.i, 144
  %10 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_regs.i, align 8
  %EP0_CONTROL3.i = getelementptr inbounds %struct.fc_regs, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL3.i, i32 %data.0.i) #9, !srcloc !250
  br label %cleanup

if.end10:                                         ; preds = %entry
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %12 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL = getelementptr inbounds %struct.fc_regs, ptr %13, i32 0, i32 10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9, !srcloc !249
  %or = and i32 %14, -19
  %and = or i32 %or, 16
  %15 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL13 = getelementptr inbounds %struct.fc_regs, ptr %16, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL13, i32 %and) #9, !srcloc !250
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %19 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual, align 4
  %sub = sub i32 %18, %20
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 64
  %div18.i = lshr i32 %sub, 2
  %i_word_length.0.i = select i1 %cmp.i, i32 16, i32 %div18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_word_length.0.i)
  %cmp29.not.i = icmp eq i32 %i_word_length.0.i, 0
  br i1 %cmp29.not.i, label %if.end10.EP0_in_PIO.exit_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.EP0_in_PIO.exit_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %EP0_in_PIO.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %p_buf_32.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %if.end10.for.body.i_crit_edge ]
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_regs, align 8
  %EP0_WRITE.i = getelementptr inbounds %struct.fc_regs, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %p_buf_32.012.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_buf_32.012.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_WRITE.i, i32 %26) #9, !srcloc !250
  %incdec.ptr.i = getelementptr %union.usb_reg_access, ptr %p_buf_32.012.i, i32 1
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i_word_length.0.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = shl nuw i32 %i_word_length.0.i, 2
  br label %EP0_in_PIO.exit

EP0_in_PIO.exit:                                  ; preds = %for.end.loopexit.i, %if.end10.EP0_in_PIO.exit_crit_edge
  %i_write_length.0.lcssa.i = phi i32 [ 0, %if.end10.EP0_in_PIO.exit_crit_edge ], [ %27, %for.end.loopexit.i ]
  %div_len = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %28 = ptrtoint ptr %div_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i_write_length.0.lcssa.i, ptr %div_len, align 4
  %sub22 = sub i32 %sub, %i_write_length.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %i_write_length.0.lcssa.i)
  %cmp23 = icmp eq i32 %sub, %i_write_length.0.lcssa.i
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %EP0_in_PIO.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i70 = getelementptr inbounds %struct.fc_regs, ptr %30, i32 0, i32 10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i70) #9, !srcloc !249
  %and.i71 = and i32 %31, -147
  %data.0.i72 = or i32 %and.i71, 144
  %32 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL3.i73 = getelementptr inbounds %struct.fc_regs, ptr %33, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL3.i73, i32 %data.0.i72) #9, !srcloc !250
  br label %cleanup

if.end26:                                         ; preds = %EP0_in_PIO.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub22)
  %cmp27 = icmp ult i32 %sub22, 4
  br i1 %cmp27, label %land.lhs.true, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i_write_length.0.lcssa.i)
  %cmp28.not = icmp eq i32 %i_write_length.0.lcssa.i, 64
  br i1 %cmp28.not, label %land.lhs.true.cleanup_crit_edge, label %ep0_in_overbytes.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ep0_in_overbytes.exit:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_32.sroa.0.i)
  %34 = ptrtoint ptr %temp_32.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %temp_32.sroa.0.i, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %i_write_length.0.lcssa.i
  %35 = call ptr @memcpy(ptr %temp_32.sroa.0.i, ptr %add.ptr30, i32 %sub22)
  %temp_32.sroa.0.i.0.temp_32.sroa.0.i.0.temp_32.sroa.0.0.temp_32.sroa.0.0.19.i = load i32, ptr %temp_32.sroa.0.i, align 4
  %36 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i.i = getelementptr inbounds %struct.fc_regs, ptr %37, i32 0, i32 10
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %38, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i, i32 %and.i.i.i) #9, !srcloc !250
  %EP0_WRITE.i.i = getelementptr inbounds %struct.fc_regs, ptr %37, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_WRITE.i.i, i32 %temp_32.sroa.0.i.0.temp_32.sroa.0.i.0.temp_32.sroa.0.0.temp_32.sroa.0.0.19.i) #9, !srcloc !250
  %shl.i.i = shl nuw nsw i32 %sub22, 5
  %and.i.i = and i32 %shl.i.i, 96
  %or.i.i = or i32 %and.i.i, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i, i32 %or.i.i) #9, !srcloc !250
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %39, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i, i32 %or.i.i.i) #9, !srcloc !250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_32.sroa.0.i)
  %40 = ptrtoint ptr %div_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %div_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %ep0_in_overbytes.exit, %land.lhs.true.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then24, %if.then7, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ %sub, %if.then24 ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %sub, %ep0_in_overbytes.exit ], [ 64, %land.lhs.true.cleanup_crit_edge ], [ %i_write_length.0.lcssa.i, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_ep0_out_transfer(ptr nocapture noundef readonly %udc, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %temp_32.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %EP0_LENGTH = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_LENGTH) #9, !srcloc !249
  %and = and i32 %2, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %5 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual, align 4
  %sub = sub i32 %4, %6
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %6
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %tobool.not.i = icmp ult i32 %9, 4
  br i1 %tobool.not.i, label %if.then.ep0_out_pio.exit_crit_edge, label %for.body.lr.ph.i

if.then.ep0_out_pio.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep0_out_pio.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %div7.i = lshr i32 %9, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf32.010.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_regs, align 8
  %EP0_READ.i = getelementptr inbounds %struct.fc_regs, ptr %11, i32 0, i32 14
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_READ.i) #9, !srcloc !249
  %13 = ptrtoint ptr %buf32.010.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buf32.010.i, align 4
  %incdec.ptr.i = getelementptr %union.usb_reg_access, ptr %buf32.010.i, i32 1
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div7.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = and i32 %9, 124
  br label %ep0_out_pio.exit

ep0_out_pio.exit:                                 ; preds = %for.end.i, %if.then.ep0_out_pio.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %for.end.i ], [ 0, %if.then.ep0_out_pio.exit_crit_edge ]
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  %add = add i32 %15, %retval.0.i
  store i32 %add, ptr %actual, align 4
  %sub12 = sub nsw i32 %and, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %retval.0.i)
  %cmp13.not = icmp ne i32 %and, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub12)
  %cmp14 = icmp ult i32 %sub12, 4
  %or.cond = and i1 %cmp13.not, %cmp14
  br i1 %or.cond, label %if.then15, label %ep0_out_pio.exit.if.end29_crit_edge

ep0_out_pio.exit.if.end29_crit_edge:              ; preds = %ep0_out_pio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then15:                                        ; preds = %ep0_out_pio.exit
  %sub17 = sub i32 %sub, %retval.0.i
  %16 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %sub12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_32.sroa.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.then15.ep0_out_overbytes.exit_crit_edge, label %for.body.preheader.i

if.then15.ep0_out_overbytes.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep0_out_overbytes.exit

for.body.preheader.i:                             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i
  %17 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_regs, align 8
  %EP0_READ.i117 = getelementptr inbounds %struct.fc_regs, ptr %18, i32 0, i32 14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_READ.i117) #9, !srcloc !249
  %20 = ptrtoint ptr %temp_32.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %temp_32.sroa.0.i, align 4
  %21 = call ptr @memcpy(ptr %add.ptr16, ptr %temp_32.sroa.0.i, i32 %16)
  br label %ep0_out_overbytes.exit

ep0_out_overbytes.exit:                           ; preds = %for.body.preheader.i, %if.then15.ep0_out_overbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_32.sroa.0.i)
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  %add27 = add i32 %23, %16
  store i32 %add27, ptr %actual, align 4
  br label %if.end29

if.end29:                                         ; preds = %ep0_out_overbytes.exit, %ep0_out_pio.exit.if.end29_crit_edge, %entry.if.end29_crit_edge
  %result.0 = phi i32 [ %16, %ep0_out_overbytes.exit ], [ %retval.0.i, %ep0_out_pio.exit.if.end29_crit_edge ], [ 0, %entry.if.end29_crit_edge ]
  %actual31 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %24 = ptrtoint ptr %actual31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual31, align 4
  %length33 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %length33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp34 = icmp eq i32 %25, %27
  %rem = and i32 %25, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp38 = icmp eq i32 %rem, 0
  br i1 %cmp34, label %if.then35, label %if.end45

if.then35:                                        ; preds = %if.end29
  br i1 %cmp38, label %if.then39, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  %zero = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %28 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %zero, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.then39.cleanup_crit_edge, label %if.then40

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %zero, align 1
  %31 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %32, i32 0, i32 10
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %and.i = and i32 %33, -2
  %34 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL2.i = getelementptr inbounds %struct.fc_regs, ptr %35, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL2.i, i32 %and.i) #9, !srcloc !250
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  br i1 %cmp38, label %if.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp56 = icmp ugt i32 %25, %27
  br i1 %cmp56, label %do.end, label %if.end58

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 3
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  br i1 %cmp.not, label %if.then60, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %if.end58
  %38 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL = getelementptr inbounds %struct.fc_regs, ptr %39, i32 0, i32 10
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9, !srcloc !249
  %and63 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then60.cleanup_crit_edge, label %if.then65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL67 = getelementptr inbounds %struct.fc_regs, ptr %42, i32 0, i32 10
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL67) #9, !srcloc !249
  %and.i119 = and i32 %43, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL67, i32 %and.i119) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.then60.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end, %if.end45.cleanup_crit_edge, %if.then40, %if.then39.cleanup_crit_edge, %if.then35.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then40 ], [ -75, %do.end ], [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %result.0, %if.end58.cleanup_crit_edge ], [ 1, %if.then65 ], [ 1, %if.then60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_epn_out_transfer(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %temp_32.i.i = alloca %union.usb_reg_access, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %2 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_regs, align 8
  %sub = add nsw i32 %conv, -1
  %EP_LEN_DCNT = getelementptr %struct.fc_regs, ptr %3, i32 0, i32 16, i32 %sub, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_LEN_DCNT) #9, !srcloc !249
  %and = and i32 %4, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %5 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then6.if.end53_crit_edge, label %if.end.i

if.then6.if.end53_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end.i:                                         ; preds = %if.then6
  %conv.i = zext i8 %6 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual.i, align 4
  %sub6.i = sub i32 %8, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %sub6.i, i32 %and) #9
  %ep_type.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp10.not.i = icmp eq i8 %13, 3
  br i1 %cmp10.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp16.i = icmp ugt i32 %11, 3
  %or.cond.i = select i1 %cmp13.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %if.then18.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %dma_flag.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %dma_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dma_flag.i.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.i._nbu2ss_epn_out_data.exit_crit_edge

if.then18.i._nbu2ss_epn_out_data.exit_crit_edge:  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_out_data.exit

if.end.i.i:                                       ; preds = %if.then18.i
  %18 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_regs, align 8
  %20 = ptrtoint ptr %dma_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %dma_flag.i.i, align 4
  %add.i.i = add i32 %15, %10
  %arrayidx.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i
  %EP_TADR.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_TADR.i.i, i32 %add.i.i) #9, !srcloc !250
  %EP_PCKT_ADRS.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_PCKT_ADRS.i.i) #9, !srcloc !249
  %and.i.i = and i32 %21, 2047
  %div.i.i.lhs.trunc = trunc i32 %11 to i16
  %div.i.i.rhs.trunc = trunc i32 %and.i.i to i16
  %div.i.i.lhs.trunc.frozen = freeze i16 %div.i.i.lhs.trunc
  %div.i.i.rhs.trunc.frozen = freeze i16 %div.i.i.rhs.trunc
  %div.i.i114 = udiv i16 %div.i.i.lhs.trunc.frozen, %div.i.i.rhs.trunc.frozen
  %div.i.i.zext = zext i16 %div.i.i114 to i32
  %22 = mul i16 %div.i.i114, %div.i.i.rhs.trunc.frozen
  %rem.i.i115.decomposed = sub i16 %div.i.i.lhs.trunc.frozen, %22
  %23 = and i16 %rem.i.i115.decomposed, 2044
  %and5.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %div.i.i114)
  %cmp.i.i = icmp ugt i16 %div.i.i114, 256
  br i1 %cmp.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp7.not.i.i = icmp eq i16 %23, 0
  br i1 %cmp7.not.i.i, label %if.else.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.else.i.i.if.end13.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %11)
  %cmp9.not.i.i = icmp ugt i32 %and.i.i, %11
  %inc.i.i = add nuw nsw i32 %div.i.i.zext, 1
  %phi.bo.i.i = shl nuw nsw i32 %and5.i.i, 16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then8.i.i, %if.else.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %lmpkt.0.i.i = phi i32 [ 0, %if.else.i.i.if.end13.i.i_crit_edge ], [ 0, %if.end.i.i.if.end13.i.i_crit_edge ], [ %phi.bo.i.i, %if.then8.i.i ]
  %dmacnt.0.i.i = phi i32 [ %div.i.i.zext, %if.else.i.i.if.end13.i.i_crit_edge ], [ 256, %if.end.i.i.if.end13.i.i_crit_edge ], [ %inc.i.i, %if.then8.i.i ]
  %burst.1.i.i = phi i1 [ false, %if.else.i.i.if.end13.i.i_crit_edge ], [ false, %if.end.i.i.if.end13.i.i_crit_edge ], [ %cmp9.not.i.i, %if.then8.i.i ]
  %or.i.i = or i32 %lmpkt.0.i.i, %and.i.i
  %EP_DCR2.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DCR2.i.i, i32 %or.i.i) #9, !srcloc !250
  %and16.i.i = shl nuw nsw i32 %dmacnt.0.i.i, 16
  %shl17.i.i = and i32 %and16.i.i, 16711680
  %or19.i.i = or i32 %shl17.i.i, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %or19.i.i) #9, !srcloc !250
  %EP_LEN_DCNT.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 5
  br i1 %burst.1.i.i, label %if.then23.i.i, label %if.else28.i.i

if.then23.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_LEN_DCNT.i.i, i32 0) #9, !srcloc !250
  %EP_DMA_CTRL.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 3
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL.i.i) #9, !srcloc !249
  %and.i.i.i = and i32 %24, -513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i.i, i32 %and.i.i.i) #9, !srcloc !250
  br label %if.end36.i.i

if.else28.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_LEN_DCNT.i.i, i32 %and16.i.i) #9, !srcloc !250
  %EP_DMA_CTRL35.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 3
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL35.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %25, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL35.i.i, i32 %or.i.i.i) #9, !srcloc !250
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else28.i.i, %if.then23.i.i
  %EP_DMA_CTRL39.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 3
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL39.i.i) #9, !srcloc !249
  %or.i80.i.i = or i32 %26, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL39.i.i, i32 %or.i80.i.i) #9, !srcloc !250
  %and40.i.i = and i32 %11, 2044
  %div_len.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %27 = ptrtoint ptr %div_len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and40.i.i, ptr %div_len.i.i, align 4
  br label %_nbu2ss_epn_out_data.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %29 = tail call i32 @llvm.umin.i32(i32 %11, i32 %bf.cast.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_32.i.i) #9
  %30 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_regs, align 8
  %dma_flag.i48.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %32 = ptrtoint ptr %dma_flag.i48.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dma_flag.i48.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i49.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i49.i, label %if.end.i51.i, label %if.else.i._nbu2ss_epn_out_pio.exit.i_crit_edge

if.else.i._nbu2ss_epn_out_pio.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_out_pio.exit.i

if.end.i51.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i50.i = icmp eq i32 %29, 0
  br i1 %cmp.i50.i, label %if.end.i51.i._nbu2ss_epn_out_pio.exit.i_crit_edge, label %if.end2.i.i

if.end.i51.i._nbu2ss_epn_out_pio.exit.i_crit_edge: ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_out_pio.exit.i

if.end2.i.i:                                      ; preds = %if.end.i51.i
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp5.not.i.i = icmp ult i32 %29, 4
  br i1 %cmp5.not.i.i, label %if.end2.i.i.for.body23.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end2.i.i.for.body23.preheader.i.i_crit_edge:   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end2.i.i
  %div79.i.i = lshr i32 %29, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %p_buf_32.082.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.081.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i53.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %epnum, align 4
  %conv.i.i = zext i8 %37 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %EP_READ.i.i = getelementptr %struct.fc_regs, ptr %31, i32 0, i32 16, i32 %sub.i.i, i32 6
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_READ.i.i) #9, !srcloc !249
  %39 = ptrtoint ptr %p_buf_32.082.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %p_buf_32.082.i.i, align 4
  %incdec.ptr.i.i = getelementptr %union.usb_reg_access, ptr %p_buf_32.082.i.i, i32 1
  %inc.i53.i = add nuw nsw i32 %i.081.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i53.i, %div79.i.i
  br i1 %exitcond.not.i.i, label %if.end8.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  %mul.i.i = and i32 %29, 2044
  %sub9.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %mul.i.i)
  %cmp10.not.i.i = icmp eq i32 %29, %mul.i.i
  br i1 %cmp10.not.i.i, label %if.end8.i.i.if.end30.i.i_crit_edge, label %if.end8.i.i.for.body23.preheader.i.i_crit_edge

if.end8.i.i.for.body23.preheader.i.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.preheader.i.i

if.end8.i.i.if.end30.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

for.body23.preheader.i.i:                         ; preds = %if.end8.i.i.for.body23.preheader.i.i_crit_edge, %if.end2.i.i.for.body23.preheader.i.i_crit_edge
  %sub9.i61.i = phi i32 [ %sub9.i.i, %if.end8.i.i.for.body23.preheader.i.i_crit_edge ], [ %29, %if.end2.i.i.for.body23.preheader.i.i_crit_edge ]
  %p_buf_32.1.i60.i = phi ptr [ %incdec.ptr.i.i, %if.end8.i.i.for.body23.preheader.i.i_crit_edge ], [ %add.ptr.i.i, %if.end2.i.i.for.body23.preheader.i.i_crit_edge ]
  %40 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %epnum, align 4
  %conv15.i.i = zext i8 %41 to i32
  %sub16.i.i = add nsw i32 %conv15.i.i, -1
  %EP_READ18.i.i = getelementptr %struct.fc_regs, ptr %31, i32 0, i32 16, i32 %sub16.i.i, i32 6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_READ18.i.i) #9, !srcloc !249
  %43 = ptrtoint ptr %temp_32.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %temp_32.i.i, align 4
  br label %for.body23.i.i

for.body23.i.i:                                   ; preds = %for.body23.i.i.for.body23.i.i_crit_edge, %for.body23.preheader.i.i
  %i.184.i.i = phi i32 [ %inc28.i.i, %for.body23.i.i.for.body23.i.i_crit_edge ], [ 0, %for.body23.preheader.i.i ]
  %arrayidx24.i.i = getelementptr [4 x i8], ptr %temp_32.i.i, i32 0, i32 %i.184.i.i
  %44 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx24.i.i, align 1
  %arrayidx26.i.i = getelementptr [4 x i8], ptr %p_buf_32.1.i60.i, i32 0, i32 %i.184.i.i
  %46 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx26.i.i, align 1
  %inc28.i.i = add nuw i32 %i.184.i.i, 1
  %exitcond85.not.i.i = icmp eq i32 %inc28.i.i, %sub9.i61.i
  br i1 %exitcond85.not.i.i, label %for.body23.i.i.if.end30.i.i_crit_edge, label %for.body23.i.i.for.body23.i.i_crit_edge

for.body23.i.i.for.body23.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i.i

for.body23.i.i.if.end30.i.i_crit_edge:            ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %for.body23.i.i.if.end30.i.i_crit_edge, %if.end8.i.i.if.end30.i.i_crit_edge
  %47 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual.i, align 4
  %add33.i.i = add i32 %48, %29
  store i32 %add33.i.i, ptr %actual.i, align 4
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i.i, i32 %50)
  %cmp38.i.i = icmp eq i32 %add33.i.i, %50
  br i1 %cmp38.i.i, label %if.end30.i.i.if.then45.i.i_crit_edge, label %lor.lhs.false.i.i

if.end30.i.i.if.then45.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i.i

lor.lhs.false.i.i:                                ; preds = %if.end30.i.i
  %51 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 7)
  %bf.load.i.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  %rem.i54.i = urem i32 %add33.i.i, %bf.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i54.i)
  %cmp43.not.i.i = icmp eq i32 %rem.i54.i, 0
  br i1 %cmp43.not.i.i, label %lor.lhs.false.i.i._nbu2ss_epn_out_pio.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then45.i.i_crit_edge

lor.lhs.false.i.i.if.then45.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i.i

lor.lhs.false.i.i._nbu2ss_epn_out_pio.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_out_pio.exit.i

if.then45.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then45.i.i_crit_edge, %if.end30.i.i.if.then45.i.i_crit_edge
  br label %_nbu2ss_epn_out_pio.exit.i

_nbu2ss_epn_out_pio.exit.i:                       ; preds = %if.then45.i.i, %lor.lhs.false.i.i._nbu2ss_epn_out_pio.exit.i_crit_edge, %if.end.i51.i._nbu2ss_epn_out_pio.exit.i_crit_edge, %if.else.i._nbu2ss_epn_out_pio.exit.i_crit_edge
  %retval.0.i55.i = phi i32 [ 1, %if.else.i._nbu2ss_epn_out_pio.exit.i_crit_edge ], [ 0, %if.end.i51.i._nbu2ss_epn_out_pio.exit.i_crit_edge ], [ 0, %if.then45.i.i ], [ %29, %lor.lhs.false.i.i._nbu2ss_epn_out_pio.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_32.i.i) #9
  br label %_nbu2ss_epn_out_data.exit

_nbu2ss_epn_out_data.exit:                        ; preds = %_nbu2ss_epn_out_pio.exit.i, %if.end36.i.i, %if.then18.i._nbu2ss_epn_out_data.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i55.i, %_nbu2ss_epn_out_pio.exit.i ], [ %and40.i.i, %if.end36.i.i ], [ 1, %if.then18.i._nbu2ss_epn_out_data.exit_crit_edge ]
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %52 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %52, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %bf.cast)
  %cmp9 = icmp ult i32 %and, %bf.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %retval.0.i)
  %cmp12 = icmp eq i32 %and, %retval.0.i
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %if.end34

if.then14:                                        ; preds = %_nbu2ss_epn_out_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual.i, align 4
  %add = add i32 %54, %and
  store i32 %add, ptr %actual.i, align 4
  br label %if.then37

if.else:                                          ; preds = %if.end
  %actual19 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %55 = ptrtoint ptr %actual19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual19, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp21 = icmp eq i32 %56, %58
  br i1 %cmp21, label %if.else.if.then37_crit_edge, label %lor.lhs.false

if.else.if.then37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.else
  %maxpacket26 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %59 = ptrtoint ptr %maxpacket26 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 7)
  %bf.load27 = load i56, ptr %maxpacket26, align 2
  %bf.lshr28 = lshr i56 %bf.load27, 40
  %bf.cast29 = trunc i56 %bf.lshr28 to i32
  %rem = urem i32 %56, %bf.cast29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp30.not = icmp eq i32 %rem, 0
  br i1 %cmp30.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end34:                                         ; preds = %_nbu2ss_epn_out_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp35 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp35, label %if.end34.if.then37_crit_edge, label %if.end34.if.end53_crit_edge

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %if.else.if.then37_crit_edge, %if.then14
  %actual39 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %60 = ptrtoint ptr %actual39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %actual39, align 4
  %maxpacket41 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %62 = ptrtoint ptr %maxpacket41 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 7)
  %bf.load42 = load i56, ptr %maxpacket41, align 2
  %bf.lshr43 = lshr i56 %bf.load42, 40
  %bf.cast44 = trunc i56 %bf.lshr43 to i32
  %rem45 = urem i32 %61, %bf.cast44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45)
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then48, label %if.then37.if.end53_crit_edge

if.then37.if.end53_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then48:                                        ; preds = %if.then37
  %zero = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %63 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %zero, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not = icmp eq i8 %64, 0
  br i1 %tobool.not, label %if.then48.if.end53_crit_edge, label %if.then49

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then49:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %zero, align 1
  br label %cleanup

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.then37.if.end53_crit_edge, %if.end34.if.end53_crit_edge, %lor.lhs.false.if.end53_crit_edge, %if.then6.if.end53_crit_edge
  %result.0108 = phi i32 [ 0, %if.then37.if.end53_crit_edge ], [ 0, %if.then48.if.end53_crit_edge ], [ %retval.0.i, %if.end34.if.end53_crit_edge ], [ 1, %lor.lhs.false.if.end53_crit_edge ], [ -22, %if.then6.if.end53_crit_edge ]
  %actual55 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %66 = ptrtoint ptr %actual55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual55, align 4
  %length57 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %68 = ptrtoint ptr %length57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp58 = icmp ugt i32 %67, %69
  br i1 %cmp58, label %do.end, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 3
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.10) #12
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 8
  %74 = ptrtoint ptr %actual55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %actual55, align 4
  %76 = ptrtoint ptr %length57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.13, i32 noundef %75, i32 noundef %77) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end53.cleanup_crit_edge, %if.then49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then49 ], [ -22, %entry.cleanup_crit_edge ], [ -75, %do.end ], [ %result.0108, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_epn_in_transfer(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %temp_32.i.i = alloca %union.usb_reg_access, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %2 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_regs, align 8
  %EP_STATUS = getelementptr %struct.fc_regs, ptr %3, i32 0, i32 16, i32 %sub, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_STATUS) #9, !srcloc !249
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %5 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %if.end17

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and12 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.end17.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.then7
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp22.not = icmp eq i32 %8, %6
  br i1 %cmp22.not, label %if.then31, label %if.end17.if.then24_crit_edge

if.end17.if.then24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.end17.thread:                                  ; preds = %if.else
  %length55 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp22.not56 = icmp eq i32 %10, %6
  br i1 %cmp22.not56, label %if.end17.thread.cleanup_crit_edge, label %if.end17.thread.if.then24_crit_edge

if.end17.thread.if.then24_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.end17.thread.cleanup_crit_edge:                ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end17.thread.if.then24_crit_edge, %if.end17.if.then24_crit_edge
  %11 = phi i32 [ %10, %if.end17.thread.if.then24_crit_edge ], [ %8, %if.end17.if.then24_crit_edge ]
  %sub21 = sub i32 %11, %6
  %12 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.then24.cleanup_crit_edge, label %if.end.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then24
  %conv.i = zext i8 %13 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %ep_type.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 6
  %14 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp5.not.i = icmp eq i8 %15, 3
  br i1 %cmp5.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub21)
  %cmp11.i = icmp ugt i32 %sub21, 3
  %or.cond.i = and i1 %cmp11.i, %cmp8.not.i
  br i1 %or.cond.i, label %if.then13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_regs, align 8
  %dma_flag.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %dma_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_flag.i.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then13.i.cleanup_crit_edge

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then13.i
  br i1 %cmp5, label %if.then2.i.i, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_dma_map_single(ptr noundef %udc, ptr noundef %ep, ptr noundef %req, i8 noundef zeroext -128) #9
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  %22 = ptrtoint ptr %dma_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dma_flag.i.i, align 4
  %EP_PCKT_ADRS.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_PCKT_ADRS.i.i) #9, !srcloc !249
  %and.i.i = and i32 %23, 2047
  %mul.i.i = shl nuw nsw i32 %and.i.i, 8
  %24 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %sub21) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %24)
  %cmp9.i.i = icmp ult i32 %and.i.i, %24
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else17.i.i

if.then10.i.i:                                    ; preds = %if.end3.i.i
  %.frozen = freeze i32 %24
  %and.i.i.frozen = freeze i32 %and.i.i
  %div.i.i = udiv i32 %.frozen, %and.i.i.frozen
  %25 = mul i32 %div.i.i, %and.i.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen, %25
  %and11.i.i = and i32 %rem.i.i.decomposed, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %cmp12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %cmp12.not.i.i, label %if.else14.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i = add nuw nsw i32 %div.i.i, 1
  br label %if.end19.i.i

if.else14.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i.i = and i32 %23, 2044
  br label %if.end19.i.i

if.else17.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and18.i.i = and i32 %24, 524284
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.else17.i.i, %if.else14.i.i, %if.then13.i.i
  %lmpkt.0.i.i = phi i32 [ %and11.i.i, %if.then13.i.i ], [ %and15.i.i, %if.else14.i.i ], [ %and18.i.i, %if.else17.i.i ]
  %dmacnt.0.i.i = phi i32 [ %inc.i.i, %if.then13.i.i ], [ %div.i.i, %if.else14.i.i ], [ 1, %if.else17.i.i ]
  %shl.i.i = shl i32 %lmpkt.0.i.i, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %arrayidx20.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i
  %EP_DCR2.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DCR2.i.i, i32 %or.i.i) #9, !srcloc !250
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma.i, align 4
  %28 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual, align 4
  %add.i.i = add i32 %29, %27
  %EP_TADR.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 28, i32 %sub.i, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_TADR.i.i, i32 %add.i.i) #9, !srcloc !250
  %and26.i.i = shl i32 %dmacnt.0.i.i, 16
  %shl27.i.i = and i32 %and26.i.i, 16711680
  %or28.i.i = or i32 %shl27.i.i, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.i.i, i32 %or28.i.i) #9, !srcloc !250
  %EP_LEN_DCNT.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_LEN_DCNT.i.i, i32 %and26.i.i) #9, !srcloc !250
  %EP_DMA_CTRL.i.i = getelementptr %struct.fc_regs, ptr %19, i32 0, i32 16, i32 %sub.i, i32 3
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_DMA_CTRL.i.i) #9, !srcloc !249
  %or.i.i.i = or i32 %30, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i.i, i32 %or.i.i.i) #9, !srcloc !250
  %and36.i.i = and i32 %24, 524284
  %div_len.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %31 = ptrtoint ptr %div_len.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and36.i.i, ptr %div_len.i.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %32 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %bf.cast.i, i32 %sub21) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_32.i.i) #9
  %34 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_regs, align 8
  %dma_flag.i34.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %36 = ptrtoint ptr %dma_flag.i34.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dma_flag.i34.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i35.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i35.i, label %if.end.i36.i, label %if.else.i._nbu2ss_epn_in_pio.exit.i_crit_edge

if.else.i._nbu2ss_epn_in_pio.exit.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_epn_in_pio.exit.i

if.end.i36.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not.i.i, label %if.end8.i.thread.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i36.i
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp4.not.i.i = icmp ult i32 %33, 4
  br i1 %cmp4.not.i.i, label %if.then1.i.i.if.end8.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then1.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then1.i.i
  %div57.i.i = lshr i32 %33, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %p_buf_32.060.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.059.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i38.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %epnum, align 4
  %conv.i.i = zext i8 %41 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %EP_WRITE.i.i = getelementptr %struct.fc_regs, ptr %35, i32 0, i32 16, i32 %sub.i.i, i32 7
  %42 = ptrtoint ptr %p_buf_32.060.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %p_buf_32.060.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_WRITE.i.i, i32 %43) #9, !srcloc !250
  %incdec.ptr.i.i = getelementptr %union.usb_reg_access, ptr %p_buf_32.060.i.i, i32 1
  %inc.i38.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i38.i, %div57.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i39.i = and i32 %33, 65532
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.end.i.i, %if.then1.i.i.if.end8.i.i_crit_edge
  %p_buf_32.1.i.i = phi ptr [ %incdec.ptr.i.i, %for.end.i.i ], [ %add.ptr.i.i, %if.then1.i.i.if.end8.i.i_crit_edge ]
  %result.0.i.i = phi i32 [ %mul.i39.i, %for.end.i.i ], [ 0, %if.then1.i.i.if.end8.i.i_crit_edge ]
  %44 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load.i.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %result.0.i.i, i32 %bf.cast.i.i)
  %cmp10.not.i.i = icmp eq i32 %result.0.i.i, %bf.cast.i.i
  br i1 %cmp10.not.i.i, label %if.end8.i.i.if.end26.i.i_crit_edge, label %if.then12.i.i

if.end8.i.i.if.end26.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.end8.i.thread.i:                               ; preds = %if.end.i36.i
  %cmp10.not.i48.i = icmp ult i56 %bf.load.i, 1099511627776
  br i1 %cmp10.not.i48.i, label %if.end8.i.thread.i.if.end26.i.i_crit_edge, label %if.then12.i.thread.i

if.end8.i.thread.i.if.end26.i.i_crit_edge:        ; preds = %if.end8.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then12.i.thread.i:                             ; preds = %if.end8.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %temp_32.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %temp_32.i.i, align 4
  br label %for.end23.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %sub13.i.i = sub nsw i32 %33, %result.0.i.i
  %46 = ptrtoint ptr %temp_32.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %temp_32.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %result.0.i.i)
  %cmp1561.not.i.i = icmp eq i32 %33, %result.0.i.i
  br i1 %cmp1561.not.i.i, label %if.then12.i.i.for.end23.i.i_crit_edge, label %if.then12.i.i.for.body17.i.i_crit_edge

if.then12.i.i.for.body17.i.i_crit_edge:           ; preds = %if.then12.i.i
  br label %for.body17.i.i

if.then12.i.i.for.end23.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end23.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %if.then12.i.i.for.body17.i.i_crit_edge
  %i.162.i.i = phi i32 [ %inc22.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ], [ 0, %if.then12.i.i.for.body17.i.i_crit_edge ]
  %arrayidx18.i.i = getelementptr [4 x i8], ptr %p_buf_32.1.i.i, i32 0, i32 %i.162.i.i
  %47 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx18.i.i, align 1
  %arrayidx20.i40.i = getelementptr [4 x i8], ptr %temp_32.i.i, i32 0, i32 %i.162.i.i
  %49 = ptrtoint ptr %arrayidx20.i40.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx20.i40.i, align 1
  %inc22.i.i = add nuw i32 %i.162.i.i, 1
  %exitcond63.not.i.i = icmp eq i32 %inc22.i.i, %sub13.i.i
  br i1 %exitcond63.not.i.i, label %for.body17.i.i.for.end23.i.i_crit_edge, label %for.body17.i.i.for.body17.i.i_crit_edge

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i

for.body17.i.i.for.end23.i.i_crit_edge:           ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end23.i.i

for.end23.i.i:                                    ; preds = %for.body17.i.i.for.end23.i.i_crit_edge, %if.then12.i.i.for.end23.i.i_crit_edge, %if.then12.i.thread.i
  %sub13.i55.i = phi i32 [ 0, %if.then12.i.thread.i ], [ %sub13.i.i, %if.then12.i.i.for.end23.i.i_crit_edge ], [ %sub13.i.i, %for.body17.i.i.for.end23.i.i_crit_edge ]
  %50 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %epnum, align 4
  %conv25.i.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %temp_32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %temp_32.i.i, align 4
  tail call fastcc void @_nbu2ss_ep_in_end(ptr noundef %udc, i32 noundef %conv25.i.i, i32 noundef %53, i32 noundef %sub13.i55.i) #9
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %for.end23.i.i, %if.end8.i.thread.i.if.end26.i.i_crit_edge, %if.end8.i.i.if.end26.i.i_crit_edge
  %result.1.i.i = phi i32 [ %33, %for.end23.i.i ], [ %result.0.i.i, %if.end8.i.i.if.end26.i.i_crit_edge ], [ 0, %if.end8.i.thread.i.if.end26.i.i_crit_edge ]
  %div_len.i41.i = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %54 = ptrtoint ptr %div_len.i41.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %result.1.i.i, ptr %div_len.i41.i, align 4
  br label %_nbu2ss_epn_in_pio.exit.i

_nbu2ss_epn_in_pio.exit.i:                        ; preds = %if.end26.i.i, %if.else.i._nbu2ss_epn_in_pio.exit.i_crit_edge
  %retval.0.i42.i = phi i32 [ %result.1.i.i, %if.end26.i.i ], [ 1, %if.else.i._nbu2ss_epn_in_pio.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_32.i.i) #9
  br label %cleanup

if.then31:                                        ; preds = %if.end17
  %55 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %epnum, align 4
  %57 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %p_regs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp1.i = icmp eq i8 %56, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i54

if.then2.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %58, i32 0, i32 10
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %and.i.i51 = and i32 %59, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 %and.i.i51) #9, !srcloc !250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 128) #9, !srcloc !250
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %or.i.i52 = or i32 %60, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 %or.i.i52) #9, !srcloc !250
  br label %cleanup

if.else.i54:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %conv33 = zext i8 %56 to i32
  %sub.i53 = add nsw i32 %conv33, -1
  %arrayidx.i = getelementptr %struct.fc_regs, ptr %58, i32 0, i32 16, i32 %sub.i53
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %and.i41.i = and i32 %61, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %and.i41.i) #9, !srcloc !250
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %or.i42.i = or i32 %62, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or.i42.i) #9, !srcloc !250
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %or.i43.i = or i32 %63, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or.i43.i) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.else.i54, %if.then2.i, %_nbu2ss_epn_in_pio.exit.i, %if.end19.i.i, %if.then13.i.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end17.thread.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ %retval.0.i42.i, %_nbu2ss_epn_in_pio.exit.i ], [ %and36.i.i, %if.end19.i.i ], [ 1, %if.then13.i.cleanup_crit_edge ], [ 0, %if.then2.i ], [ 0, %if.else.i54 ], [ 0, %if.end17.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_ep_in_end(ptr nocapture noundef readonly %udc, i32 noundef %epnum, i32 noundef %data32, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length)
  %cmp = icmp ugt i32 %length, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %epnum)
  %cmp1 = icmp eq i32 %epnum, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %EP0_CONTROL = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9, !srcloc !249
  %and.i = and i32 %2, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %and.i) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.then2.if.end4_crit_edge, label %if.then3

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_WRITE = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_WRITE, i32 %data32) #9, !srcloc !250
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then2.if.end4_crit_edge
  %shl = shl nuw nsw i32 %length, 5
  %and = and i32 %shl, 96
  %or = or i32 %and, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %or) #9, !srcloc !250
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL) #9, !srcloc !249
  %or.i = or i32 %3, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL, i32 %or.i) #9, !srcloc !250
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub = add i32 %epnum, -1
  %arrayidx = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %sub
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !249
  %and.i41 = and i32 %4, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %and.i41) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool7.not = icmp eq i32 %length, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %EP_WRITE = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %sub, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_WRITE, i32 %data32) #9, !srcloc !250
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge
  %shl12 = shl nuw nsw i32 %length, 5
  %and13 = and i32 %shl12, 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !249
  %or14 = or i32 %and13, %5
  %or.i42 = or i32 %or14, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %or.i42) #9, !srcloc !250
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !249
  %or.i43 = or i32 %6, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %or.i43) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_dma_map_single(ptr nocapture noundef readonly %udc, ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, i8 noundef zeroext %direct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %unaligned = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 5
  %2 = ptrtoint ptr %unaligned to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unaligned, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %phys_buf = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 9
  %4 = ptrtoint ptr %phys_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_buf, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !252

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %if.end

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %direct)
  %cmp7 = icmp eq i8 %direct, -128
  %cond = select i1 %cmp7, i32 1, i32 2
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %9, i32 noundef %11) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %9 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %11, i32 noundef %cond, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.if.end_crit_edge, %if.then2
  %storemerge = phi i32 [ %5, %if.then2 ], [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.if.end_crit_edge ]
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %dma, align 4
  %mapped = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %mapped, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mapped, align 1
  br label %if.end31

if.else11:                                        ; preds = %entry
  br i1 %tobool.not, label %if.then14, label %if.else11.if.end26_crit_edge

if.else11.if.end26_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %parent17 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %parent17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent17, align 8
  %length21 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %direct)
  %cmp23 = icmp eq i8 %direct, -128
  %cond25 = select i1 %cmp23, i32 1, i32 2
  tail call void @dma_sync_single_for_device(ptr noundef %21, i32 noundef %1, i32 noundef %23, i32 noundef %cond25) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %if.else11.if.end26_crit_edge
  %mapped27 = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 6
  %24 = ptrtoint ptr %mapped27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load28 = load i8, ptr %mapped27, align 1
  %bf.clear29 = and i8 %bf.load28, 127
  store i8 %bf.clear29, ptr %mapped27, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_nbu2ss_ep0_complete(ptr noundef readnone %_ep, ptr noundef readonly %_req) #2 align 64 {
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
  %context = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ctrl = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl, align 1
  %4 = and i8 %3, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %bRequest = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp5 = icmp eq i8 %6, 3
  %and10 = and i8 %3, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10)
  %cmp13 = icmp eq i8 %and10, 0
  %or.cond35 = select i1 %cmp5, i1 %cmp13, i1 false
  br i1 %or.cond35, label %land.lhs.true, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then3
  %wValue = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp16 = icmp eq i16 %8, 512
  br i1 %cmp16, label %if.then18, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  %wIndex19 = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %wIndex19 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wIndex19, align 1
  %11 = and i16 %10, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp.i = icmp ugt i16 %11, 5
  br i1 %cmp.i, label %if.then18.cleanup_crit_edge, label %do.end.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = zext i16 %11 to i32
  %dev.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.25, i32 noundef %12) #12
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_regs.i, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !249
  %and.i = and i32 %17, -327681
  %shl.i = shl nuw nsw i32 %12, 16
  %or.i = or i32 %and.i, %shl.i
  %18 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %or.i) #9, !srcloc !250
  %20 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_regs.i, align 8
  %TEST_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TEST_CONTROL.i) #9, !srcloc !249
  %or.i.i = or i32 %22, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TEST_CONTROL.i, i32 %or.i.i) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_nbu2ss_epn_in_int(ptr nocapture noundef readonly %udc, ptr noundef %ep, ptr noundef %req) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %dma_flag = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %dma_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_flag, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div_len = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %div_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_len, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %actual, align 4
  store i32 0, ptr %div_len, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.not = icmp eq i32 %add, %9
  br i1 %cmp.not, label %if.else, label %if.end22

if.else:                                          ; preds = %if.end
  %zero = getelementptr inbounds %struct.nbu2ss_req, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %zero, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.else.if.then25_crit_edge, label %land.lhs.true

if.else.if.then25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true:                                    ; preds = %if.else
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %add, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then12:                                        ; preds = %land.lhs.true
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %ep, i32 0, i32 4
  %13 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %epnum, align 4
  %conv = zext i8 %14 to i32
  %sub = add nsw i32 %conv, -1
  %EP_STATUS = getelementptr %struct.fc_regs, ptr %1, i32 0, i32 16, i32 %sub, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_STATUS) #9, !srcloc !249
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  %16 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %zero, align 1
  %17 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %epnum, align 4
  %19 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_regs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.i = icmp eq i8 %18, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %20, i32 0, i32 10
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %and.i.i = and i32 %21, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 %and.i.i) #9, !srcloc !250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 128) #9, !srcloc !250
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %or.i.i = or i32 %22, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 %or.i.i) #9, !srcloc !250
  br label %cleanup

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %conv19 = zext i8 %18 to i32
  %sub.i = add nsw i32 %conv19, -1
  %arrayidx.i = getelementptr %struct.fc_regs, ptr %20, i32 0, i32 16, i32 %sub.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %and.i41.i = and i32 %23, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %and.i41.i) #9, !srcloc !250
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %or.i42.i = or i32 %24, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or.i42.i) #9, !srcloc !250
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !249
  %or.i43.i = or i32 %25, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or.i43.i) #9, !srcloc !250
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call = tail call fastcc i32 @_nbu2ss_epn_in_transfer(ptr noundef %udc, ptr noundef %ep, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp23 = icmp slt i32 %call, 1
  br i1 %cmp23, label %if.end22.if.then25_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %if.end22.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge, %if.else.if.then25_crit_edge
  %result.048 = phi i32 [ %call, %if.end22.if.then25_crit_edge ], [ 0, %land.lhs.true.if.then25_crit_edge ], [ 0, %if.else.if.then25_crit_edge ]
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef %ep, ptr noundef %req, i32 noundef %result.048)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.else.i, %if.then2.i, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc3 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc3, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %2 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmAttributes.i, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp ult i8 %4, 2
  br i1 %switch, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %vbus_active, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp27 = icmp eq i8 %6, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %driver = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 8
  %tobool31.not = icmp eq ptr %8, null
  br i1 %tobool31.not, label %if.end30.do.end38_crit_edge, label %lor.lhs.false32

if.end30.do.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

lor.lhs.false32:                                  ; preds = %if.end30
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp33 = icmp eq i32 %10, 0
  br i1 %cmp33, label %lor.lhs.false32.do.end38_crit_edge, label %do.body42

lor.lhs.false32.do.end38_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end38:                                         ; preds = %lor.lhs.false32.do.end38_crit_edge, %if.end30.do.end38_crit_edge
  %dev = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.44) #12
  br label %cleanup

do.body42:                                        ; preds = %lor.lhs.false32
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc52 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 3
  %13 = ptrtoint ptr %desc52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %desc, ptr %desc52, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i, align 1
  %16 = and i8 %15, 15
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %17 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %epnum, align 4
  %18 = load i8, ptr %bEndpointAddress.i, align 1
  %19 = and i8 %18, -128
  %direct = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %20 = ptrtoint ptr %direct to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %direct, align 1
  %ep_type57 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 6
  %21 = ptrtoint ptr %ep_type57 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %4, ptr %ep_type57, align 2
  %wedged = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 7
  %22 = ptrtoint ptr %wedged to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load58 = load i8, ptr %wedged, align 1
  %bf.clear64 = and i8 %bf.load58, 31
  store i8 %bf.clear64, ptr %wedged, align 1
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %26 = zext i16 %25 to i56
  %27 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load68 = load i56, ptr %maxpacket, align 2
  %bf.shl = shl nuw i56 %26, 40
  %bf.clear69 = and i56 %bf.load68, 1099511627775
  %bf.set70 = or i56 %bf.shl, %bf.clear69
  store i56 %bf.set70, ptr %maxpacket, align 2
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_regs.i, align 8
  %USBSSCONF.i = getelementptr inbounds %struct.fc_regs, ptr %29, i32 0, i32 26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USBSSCONF.i) #9, !srcloc !249
  %31 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum, align 4
  %conv.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i = icmp eq i8 %32, 0
  br i1 %cmp.i, label %do.body42._nbu2ss_ep_init.exit_crit_edge, label %lor.lhs.false.i

do.body42._nbu2ss_ep_init.exit_crit_edge:         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_init.exit

lor.lhs.false.i:                                  ; preds = %do.body42
  %shl.i = shl nuw i32 1, %conv.i
  %and.i103 = and i32 %shl.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %cmp4.i = icmp eq i32 %and.i103, 0
  br i1 %cmp4.i, label %lor.lhs.false.i._nbu2ss_ep_dma_init.exit_crit_edge, label %if.end.i

lor.lhs.false.i._nbu2ss_ep_dma_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_dma_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add nsw i32 %conv.i, -1
  %33 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp9.i = icmp eq i8 %34, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load.i = load i56, ptr %maxpacket, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %36 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_regs.i, align 8
  %EP_DCR2.i = getelementptr %struct.fc_regs, ptr %37, i32 0, i32 28, i32 %sub.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DCR2.i, i32 %bf.cast.i) #9, !srcloc !250
  %38 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_regs.i, align 8
  %arrayidx16.i = getelementptr %struct.fc_regs, ptr %39, i32 0, i32 28, i32 %sub.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx16.i) #9, !srcloc !249
  %or.i.i = or i32 %40, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 %or.i.i) #9, !srcloc !250
  %41 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_regs.i, align 8
  %EP_DMA_CTRL.i = getelementptr %struct.fc_regs, ptr %42, i32 0, i32 16, i32 %sub.i, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL.i, i32 2305) #9, !srcloc !250
  br label %_nbu2ss_ep_dma_init.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_regs.i, align 8
  %arrayidx21.i = getelementptr %struct.fc_regs, ptr %44, i32 0, i32 16, i32 %sub.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx21.i) #9, !srcloc !249
  %or.i45.i = or i32 %45, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21.i, i32 %or.i45.i) #9, !srcloc !250
  %46 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_regs.i, align 8
  %EP_DMA_CTRL25.i = getelementptr %struct.fc_regs, ptr %47, i32 0, i32 16, i32 %sub.i, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_DMA_CTRL25.i, i32 513) #9, !srcloc !250
  br label %_nbu2ss_ep_dma_init.exit

_nbu2ss_ep_dma_init.exit:                         ; preds = %if.else.i, %if.then11.i, %lor.lhs.false.i._nbu2ss_ep_dma_init.exit_crit_edge
  %48 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.i105 = icmp eq i8 %.pr, 0
  br i1 %cmp.i105, label %_nbu2ss_ep_dma_init.exit._nbu2ss_ep_init.exit_crit_edge, label %_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge

_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge:  ; preds = %_nbu2ss_ep_dma_init.exit
  br label %for.body.i.i

_nbu2ss_ep_dma_init.exit._nbu2ss_ep_init.exit_crit_edge: ; preds = %_nbu2ss_ep_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_ep_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge
  %use_ram_size.025.i.i = phi i32 [ %use_ram_size.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge ]
  %last_ram_adr.024.i.i = phi i32 [ %54, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge ]
  %num.023.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %_nbu2ss_ep_dma_init.exit.for.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_regs.i, align 8
  %arrayidx.i.i = getelementptr %struct.fc_regs, ptr %50, i32 0, i32 16, i32 %num.023.i.i
  %EP_PCKT_ADRS.i.i = getelementptr %struct.fc_regs, ptr %50, i32 0, i32 16, i32 %num.023.i.i, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_PCKT_ADRS.i.i) #9, !srcloc !249
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #9, !srcloc !249
  %and.i.i = and i32 %52, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = lshr i32 %51, 2
  %div22.i.i = and i32 %and3.i.i, 511
  %53 = lshr i32 %51, 1
  %mul.i.i = and i32 %53, 1022
  %div.pn.i.i = select i1 %cmp2.i.i, i32 %div22.i.i, i32 %mul.i.i
  %use_ram_size.1.i.i = add i32 %div.pn.i.i, %use_ram_size.025.i.i
  %shr.i.i = lshr i32 %51, 16
  %54 = tail call i32 @llvm.umax.i32(i32 %shr.i.i, i32 %last_ram_adr.024.i.i) #9
  %inc.i.i = add nuw nsw i32 %num.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %_nbu2ss_get_begin_ram_address.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

_nbu2ss_get_begin_ram_address.exit.i:             ; preds = %for.body.i.i
  %conv.i106 = zext i8 %.pr to i32
  %sub.i108 = add nsw i32 %conv.i106, -1
  %add11.i.i = add i32 %use_ram_size.1.i.i, %54
  %shl.i109 = shl i32 %add11.i.i, 16
  %55 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %55, i32 7)
  %bf.load.i111 = load i56, ptr %maxpacket, align 2
  %bf.lshr.i112 = lshr i56 %bf.load.i111, 40
  %bf.cast.i113 = trunc i56 %bf.lshr.i112 to i32
  %or.i = or i32 %shl.i109, %bf.cast.i113
  %56 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p_regs.i, align 8
  %EP_PCKT_ADRS.i = getelementptr %struct.fc_regs, ptr %57, i32 0, i32 16, i32 %sub.i108, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_PCKT_ADRS.i, i32 %or.i) #9, !srcloc !250
  %58 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %epnum, align 4
  %conv6.i = zext i8 %59 to i32
  %shl7.i = shl i32 256, %conv6.i
  %60 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_regs.i, align 8
  %USB_INT_ENA.i = getelementptr inbounds %struct.fc_regs, ptr %61, i32 0, i32 9
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_INT_ENA.i) #9, !srcloc !249
  %or.i.i114 = or i32 %62, %shl7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_ENA.i, i32 %or.i.i114) #9, !srcloc !250
  %63 = ptrtoint ptr %ep_type57 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ep_type57, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %switch.selectcmp.i = icmp eq i8 %64, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1090519040, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %switch.selectcmp2.i = icmp eq i8 %64, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 33554432, i32 %switch.select.i
  %65 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p_regs.i, align 8
  %arrayidx14.i = getelementptr %struct.fc_regs, ptr %66, i32 0, i32 16, i32 %sub.i108
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx14.i) #9, !srcloc !249
  %or.i4.i = or i32 %switch.select3.i, %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx14.i, i32 %or.i4.i) #9, !srcloc !250
  %68 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %epnum, align 4
  %70 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %direct, align 1
  %or181.i = or i8 %71, %69
  %72 = zext i8 %or181.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %or181.i, label %if.end.i.i [
    i8 0, label %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge
    i8 -128, label %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge118
  ]

_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge118: ; preds = %_nbu2ss_get_begin_ram_address.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_endpoint_toggle_reset.exit.i

_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge: ; preds = %_nbu2ss_get_begin_ram_address.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_endpoint_toggle_reset.exit.i

if.end.i.i:                                       ; preds = %_nbu2ss_get_begin_ram_address.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i5.i = and i8 %or181.i, 127
  %sub.i.i = add nsw i8 %and.i5.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or181.i)
  %tobool.not.i.i = icmp sgt i8 %or181.i, -1
  %..i.i = select i1 %tobool.not.i.i, i32 1536, i32 2048
  %73 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p_regs.i, align 8
  %idxprom.i.i = zext i8 %sub.i.i to i32
  %arrayidx.i7.i = getelementptr %struct.fc_regs, ptr %74, i32 0, i32 16, i32 %idxprom.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i7.i) #9, !srcloc !249
  %or.i.i.i = or i32 %75, %..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i7.i, i32 %or.i.i.i) #9, !srcloc !250
  %76 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %76)
  %.pr.i = load i8, ptr %direct, align 1
  br label %_nbu2ss_endpoint_toggle_reset.exit.i

_nbu2ss_endpoint_toggle_reset.exit.i:             ; preds = %if.end.i.i, %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge, %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge118
  %77 = phi i8 [ %71, %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge ], [ %71, %_nbu2ss_get_begin_ram_address.exit.i._nbu2ss_endpoint_toggle_reset.exit.i_crit_edge118 ], [ %.pr.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp22.i = icmp eq i8 %77, 0
  %78 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %p_regs.i, align 8
  %arrayidx27.i = getelementptr %struct.fc_regs, ptr %79, i32 0, i32 16, i32 %sub.i108
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx27.i) #9
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i116

if.then24.i:                                      ; preds = %_nbu2ss_endpoint_toggle_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i8.i = or i32 %80, -2080374272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx27.i, i32 %or.i8.i) #9, !srcloc !250
  %81 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %p_regs.i, align 8
  %arrayidx31.i = getelementptr %struct.fc_regs, ptr %82, i32 0, i32 16, i32 %sub.i108
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx31.i) #9, !srcloc !249
  %and.i9.i = and i32 %83, -22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx31.i, i32 %and.i9.i) #9, !srcloc !250
  %84 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p_regs.i, align 8
  %EP_INT_ENA.i = getelementptr %struct.fc_regs, ptr %85, i32 0, i32 16, i32 %sub.i108, i32 2
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_INT_ENA.i) #9, !srcloc !249
  %or.i10.i = or i32 %86, 8912896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_INT_ENA.i, i32 %or.i10.i) #9, !srcloc !250
  br label %_nbu2ss_ep_init.exit

if.else.i116:                                     ; preds = %_nbu2ss_endpoint_toggle_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i11.i = or i32 %80, -2147417600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx27.i, i32 %or.i11.i) #9, !srcloc !250
  %87 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %p_regs.i, align 8
  %arrayidx42.i = getelementptr %struct.fc_regs, ptr %88, i32 0, i32 16, i32 %sub.i108
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx42.i) #9, !srcloc !249
  %and.i12.i = and i32 %89, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42.i, i32 %and.i12.i) #9, !srcloc !250
  %90 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p_regs.i, align 8
  %EP_INT_ENA47.i = getelementptr %struct.fc_regs, ptr %91, i32 0, i32 16, i32 %sub.i108, i32 2
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_INT_ENA47.i) #9, !srcloc !249
  %or.i13.i = or i32 %92, 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP_INT_ENA47.i, i32 %or.i13.i) #9, !srcloc !250
  br label %_nbu2ss_ep_init.exit

_nbu2ss_ep_init.exit:                             ; preds = %if.else.i116, %if.then24.i, %_nbu2ss_ep_dma_init.exit._nbu2ss_ep_init.exit_crit_edge, %do.body42._nbu2ss_ep_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call47) #9
  br label %cleanup

cleanup:                                          ; preds = %_nbu2ss_ep_init.exit, %do.end38, %if.end25.cleanup_crit_edge, %do.end22, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end22 ], [ -108, %do.end38 ], [ 0, %_nbu2ss_ep_init.exit ], [ -22, %do.end8 ], [ -22, %do.end ], [ -108, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc2 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus_active, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %do.body15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @_nbu2ss_nuke(ptr noundef nonnull %1, ptr noundef nonnull %_ep, i32 noundef -115)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.body15 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -108, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nbu2ss_ep_alloc_request(ptr nocapture noundef readnone %ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !252

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
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 8
  %queue = getelementptr inbounds %struct.nbu2ss_req, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.nbu2ss_req, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbu2ss_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
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
define internal i32 @nbu2ss_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  br i1 %tobool1.not, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %do.end28, label %lor.lhs.false15, !prof !253

lor.lhs.false15:                                  ; preds = %if.end12
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %lor.lhs.false15.do.end37_crit_edge, label %lor.rhs, !prof !253

lor.lhs.false15.do.end37_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

lor.rhs:                                          ; preds = %lor.lhs.false15
  %queue = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %if.end51, label %lor.rhs.if.end31_crit_edge, !prof !252

lor.rhs.if.end31_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59) #12
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %lor.rhs.if.end31_crit_edge
  %6 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %_req, align 4
  %tobool33.not = icmp eq ptr %.pr, null
  br i1 %tobool33.not, label %if.end31.do.end37_crit_edge, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end31.do.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end37:                                         ; preds = %if.end31.do.end37_crit_edge, %lor.lhs.false15.do.end37_crit_edge
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end31.if.end40_crit_edge
  %queue41 = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 1
  %7 = ptrtoint ptr %queue41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue41, align 4
  %cmp.i242.not = icmp eq ptr %8, %queue41
  br i1 %cmp.i242.not, label %if.end40.cleanup_crit_edge, label %do.end47

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end51:                                         ; preds = %lor.rhs
  %udc55 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %9 = ptrtoint ptr %udc55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udc55, align 4
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %vbus_active, align 4
  %12 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %do.end59, label %if.end60

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.73) #12
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %driver = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver, align 8
  %tobool61.not = icmp eq ptr %16, null
  br i1 %tobool61.not, label %do.end73, label %do.body78, !prof !253

do.end73:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %dev74 = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.59, ptr noundef null) #12
  br label %cleanup

do.body78:                                        ; preds = %if.end60
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 4
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %19 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_req, align 4
  %21 = ptrtoint ptr %20 to i32
  %and = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool89.not = icmp eq i32 %and, 0
  %22 = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 5
  br i1 %tobool89.not, label %if.end92.thread, label %if.then95

if.end92.thread:                                  ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %22, align 2
  br label %if.end116

if.then95:                                        ; preds = %do.body78
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %22, align 2
  %virt_buf = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 8
  %25 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_buf, align 4
  %tobool96.not = icmp eq ptr %26, null
  br i1 %tobool96.not, label %if.then97, label %if.then95.if.end101_crit_edge

if.then95.if.end101_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then97:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %dev98 = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 3
  %27 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev98, align 8
  %phys_buf = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 9
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %28, i32 noundef 4096, ptr noundef %phys_buf, i32 noundef 2593, i32 noundef 0) #9
  %29 = ptrtoint ptr %virt_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %virt_buf, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.then95.if.end101_crit_edge
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %30 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp103.not = icmp eq i8 %31, 0
  br i1 %cmp103.not, label %if.end101.if.end116_crit_edge, label %if.then105

if.end101.if.end116_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then105:                                       ; preds = %if.end101
  %direct = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %32 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %33)
  %cmp107 = icmp eq i8 %33, -128
  br i1 %cmp107, label %if.then109, label %if.then105.if.end116_crit_edge

if.then105.if.end116_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then109:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_buf, align 4
  %36 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_req, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %40 = call ptr @memcpy(ptr %35, ptr %37, i32 %39)
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %if.then105.if.end116_crit_edge, %if.end101.if.end116_crit_edge, %if.end92.thread
  %epnum117 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %41 = ptrtoint ptr %epnum117 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %epnum117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp119.not = icmp eq i8 %42, 0
  br i1 %cmp119.not, label %if.end116.if.end130_crit_edge, label %land.lhs.true

if.end116.if.end130_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true:                                    ; preds = %if.end116
  %direct121 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %43 = ptrtoint ptr %direct121 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %direct121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp123 = icmp eq i8 %44, 0
  br i1 %cmp123, label %land.lhs.true125, label %land.lhs.true.if.end130_crit_edge

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true125:                                 ; preds = %land.lhs.true
  %dma = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 2
  %45 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp127.not = icmp eq i32 %46, 0
  br i1 %cmp127.not, label %land.lhs.true125.if.end130_crit_edge, label %if.then129

land.lhs.true125.if.end130_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then129:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_dma_map_single(ptr noundef %10, ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i8 noundef zeroext 0)
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %land.lhs.true125.if.end130_crit_edge, %land.lhs.true.if.end130_crit_edge, %if.end116.if.end130_crit_edge
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %48 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %actual, align 4
  %queue131 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 1
  %49 = ptrtoint ptr %queue131 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %queue131, align 4
  %cmp.i244.not = icmp eq ptr %50, %queue131
  %prev.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %52, ptr noundef %queue131) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end130.list_add_tail.exit_crit_edge

if.end130.list_add_tail.exit_crit_edge:           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %queue, ptr %prev.i, align 4
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %queue131, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %queue, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end130.list_add_tail.exit_crit_edge
  br i1 %cmp.i244.not, label %land.lhs.true138, label %list_add_tail.exit.if.end180_crit_edge

list_add_tail.exit.if.end180_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true138:                                 ; preds = %list_add_tail.exit
  %stalled = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 7
  %57 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load139 = load i8, ptr %stalled, align 1
  %58 = and i8 %bf.load139, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool143.not = icmp eq i8 %58, 0
  br i1 %tobool143.not, label %if.then144, label %land.lhs.true138.if.end180_crit_edge

land.lhs.true138.if.end180_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then144:                                       ; preds = %land.lhs.true138
  %call145 = tail call fastcc i32 @_nbu2ss_start_transfer(ptr noundef %10, ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %do.end151, label %if.else154

do.end151:                                        ; preds = %if.then144
  %dev152 = getelementptr inbounds %struct.nbu2ss_udc, ptr %10, i32 0, i32 3
  %59 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev152, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.59, i32 noundef %call145) #12
  %call.i.i246 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i246, label %if.end.i.i247, label %do.end151.list_del.exit_crit_edge

do.end151.list_del.exit_crit_edge:                ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i247:                                    ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i247, %do.end151.list_del.exit_crit_edge
  %67 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i248 = getelementptr inbounds %struct.nbu2ss_req, ptr %_req, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i248 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i248, align 4
  br label %if.end180

if.else154:                                       ; preds = %if.then144
  %69 = ptrtoint ptr %epnum117 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %epnum117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp157.not = icmp eq i8 %70, 0
  br i1 %cmp157.not, label %if.else154.if.end180_crit_edge, label %land.lhs.true159

if.else154.if.end180_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true159:                                 ; preds = %if.else154
  %direct160 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %71 = ptrtoint ptr %direct160 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %direct160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp162 = icmp eq i8 %72, 0
  br i1 %cmp162, label %if.then164, label %land.lhs.true159.if.end180_crit_edge

land.lhs.true159.if.end180_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then164:                                       ; preds = %land.lhs.true159
  %length166 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %73 = ptrtoint ptr %length166 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp167 = icmp ult i32 %74, 4
  br i1 %cmp167, label %land.lhs.true169, label %if.then164.if.end180_crit_edge

if.then164.if.end180_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true169:                                 ; preds = %if.then164
  %75 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp174 = icmp eq i32 %74, %76
  br i1 %cmp174, label %if.then176, label %land.lhs.true169.if.end180_crit_edge

land.lhs.true169.if.end180_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then176:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef %call145)
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %land.lhs.true169.if.end180_crit_edge, %if.then164.if.end180_crit_edge, %land.lhs.true159.if.end180_crit_edge, %if.else154.if.end180_crit_edge, %list_del.exit, %land.lhs.true138.if.end180_crit_edge, %list_add_tail.exit.if.end180_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %do.end73, %do.end59, %do.end47, %if.end40.cleanup_crit_edge, %do.end8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -108, %do.end59 ], [ -108, %do.end73 ], [ 0, %if.end180 ], [ -22, %do.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end47 ], [ -22, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
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
  %udc2 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body6
  %.pn.in = phi ptr [ %queue, %do.body6 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp16.not = icmp eq ptr %.pn, %queue
  br i1 %cmp16.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp19 = icmp eq ptr %req.0, %_req
  br i1 %cmp19, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_nbu2ss_ep_done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbu2ss_ep_dequeue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nbu2ss_ep_dequeue, %if.then37)) #9
          to label %cleanup [label %if.then37], !srcloc !254

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nbu2ss_ep_dequeue.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %for.end, %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then37 ], [ -22, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc2 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 1056)
  %2 = load ptr, ptr inttoptr (i32 1056 to ptr), align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85) #12
  br label %cleanup

do.body11:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp22 = icmp eq i32 %value, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %3 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %epnum, align 4
  %direct = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %5 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %direct, align 1
  %or62 = or i8 %6, %4
  tail call fastcc void @_nbu2ss_set_endpoint_stall(ptr noundef nonnull %1, i8 noundef zeroext %or62, i1 noundef zeroext false)
  %stalled = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 7
  %7 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %stalled, align 1
  %bf.clear40 = and i8 %bf.load, 95
  store i8 %bf.clear40, ptr %stalled, align 1
  br label %if.end42

if.else:                                          ; preds = %do.body11
  %queue = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  br i1 %cmp.i.not, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_regs.i, align 8
  %direct.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 5
  %12 = ptrtoint ptr %direct.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %direct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %13)
  %cmp.i64 = icmp eq i8 %13, -128
  br i1 %cmp.i64, label %for.cond.preheader.i, label %if.then28.if.end8.i_crit_edge

if.then28.if.end8.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.cond.preheader.i:                             ; preds = %if.then28
  %epnum.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %limit_cnt.020.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %epnum.i, align 4
  %conv4.i = zext i8 %15 to i32
  %sub.i = add nsw i32 %conv4.i, -1
  %EP_STATUS.i = getelementptr %struct.fc_regs, ptr %11, i32 0, i32 16, i32 %sub.i, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_STATUS.i) #9, !srcloc !249
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %for.body.i.if.end8.i_crit_edge, label %if.end.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %inc.i = add nuw nsw i32 %limit_cnt.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge, %if.then28.if.end8.i_crit_edge
  %epnum9.i = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %18 = ptrtoint ptr %epnum9.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %epnum9.i, align 4
  %20 = ptrtoint ptr %direct.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %direct.i, align 1
  %or19.i = or i8 %21, %19
  %22 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_regs.i, align 8
  %24 = zext i8 %or19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %or19.i, label %if.else7.i.i [
    i8 0, label %if.end8.i.if.then.i.i_crit_edge
    i8 -128, label %if.end8.i.if.then.i.i_crit_edge65
  ]

if.end8.i.if.then.i.i_crit_edge65:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end8.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge65
  %EP0_CONTROL.i.i = getelementptr inbounds %struct.fc_regs, ptr %23, i32 0, i32 10
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i.i) #9
  %or.i.i.i = or i32 %25, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i.i, i32 %or.i.i.i) #9, !srcloc !250
  br label %if.end42

if.else7.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i8 %or19.i, 15
  %conv10.i.i = zext i8 %and.i.i to i32
  %sub.i.i = add nsw i8 %and.i.i, -1
  %halted.i.i = getelementptr %struct.nbu2ss_udc, ptr %1, i32 0, i32 11, i32 %conv10.i.i, i32 7
  %26 = ptrtoint ptr %halted.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %halted.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %halted.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or19.i)
  %tobool17.not.i.i = icmp sgt i8 %or19.i, -1
  %..i.i = select i1 %tobool17.not.i.i, i32 20, i32 520
  %idxprom21.i.i = zext i8 %sub.i.i to i32
  %arrayidx22.i.i = getelementptr %struct.fc_regs, ptr %23, i32 0, i32 16, i32 %idxprom21.i.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22.i.i) #9, !srcloc !249
  %or.i80.i.i = or i32 %27, %..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22.i.i, i32 %or.i80.i.i) #9, !srcloc !250
  br label %if.end42

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %stalled30 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 7
  %28 = ptrtoint ptr %stalled30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load31 = load i8, ptr %stalled30, align 1
  %bf.set33 = or i8 %bf.load31, 32
  store i8 %bf.set33, ptr %stalled30, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.else29, %if.else7.i.i, %if.then.i.i, %if.then24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -22, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nbu2ss_ep_set_halt(ptr noundef %_ep, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_ep_fifo_status(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.89) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc2 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 1056)
  %2 = load ptr, ptr inttoptr (i32 1056 to ptr), align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_regs, align 8
  %call10 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %do.body14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %epnum = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 4
  %5 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp24 = icmp eq i8 %6, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %EP0_LENGTH = getelementptr inbounds %struct.fc_regs, ptr %4, i32 0, i32 13
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_LENGTH) #9, !srcloc !249
  br label %if.end32

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = zext i8 %6 to i32
  %sub = add nsw i32 %conv23, -1
  %EP_LEN_DCNT = getelementptr %struct.fc_regs, ptr %4, i32 0, i32 16, i32 %sub, i32 5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP_LEN_DCNT) #9, !srcloc !249
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbu2ss_ep_fifo_flush(ptr noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc2 = getelementptr inbounds %struct.nbu2ss_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 1056)
  %2 = load ptr, ptr inttoptr (i32 1056 to ptr), align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %do.body14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %1, i32 0, i32 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @_nbu2ss_fifo_flush(ptr noundef nonnull %1, ptr noundef nonnull %_ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_gad_get_frame(ptr noundef readonly %pgadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgadget, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.97) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %USB_ADDRESS = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_ADDRESS) #9, !srcloc !249
  %and = and i32 %2, 2047
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %and, %if.end4 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_gad_wakeup(ptr noundef %pgadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgadget, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.98) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %pgadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef 0) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 15
  %0 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_regs, align 8
  %EPCTR = getelementptr inbounds %struct.fc_regs, ptr %1, i32 0, i32 22
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR) #9, !srcloc !249
  %or.i = or i32 %2, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR, i32 %or.i) #9, !srcloc !250
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7
  %i.026 = phi i32 [ 0, %if.end7 ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_regs, align 8
  %EPCTR10 = getelementptr inbounds %struct.fc_regs, ptr %4, i32 0, i32 22
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR10) #9, !srcloc !249
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %i.026, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 1000
  %or.cond = select i1 %tobool12.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_regs, align 8
  %EPCTR16 = getelementptr inbounds %struct.fc_regs, ptr %7, i32 0, i32 22
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR16) #9, !srcloc !249
  %and.i = and i32 %8, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR16, i32 %and.i) #9, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %for.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_gad_set_selfpowered(ptr noundef %pgadget, i32 noundef %is_selfpowered) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgadget, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %cmp11.not = icmp eq i32 %is_selfpowered, 0
  %is_selfpowered13 = getelementptr inbounds %struct.usb_gadget, ptr %pgadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered13 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered13, align 4
  %bf.shl = select i1 %cmp11.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbu2ss_gad_vbus_session(ptr nocapture noundef readnone %pgadget, i32 noundef %is_active) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_gad_vbus_draw(ptr noundef %pgadget, i32 noundef %mA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgadget, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.104) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %mA11 = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 13
  %0 = ptrtoint ptr %mA11 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mA, ptr %mA11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbu2ss_gad_pullup(ptr noundef %pgadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgadget, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.105) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %vbus_active = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 12
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus_active, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %do.body13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body13:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 4
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %vbus_active, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %do.body13._nbu2ss_pullup.exit_crit_edge, label %if.end.i

do.body13._nbu2ss_pullup.exit_crit_edge:          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_pullup.exit

if.end.i:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not.i = icmp eq i32 %is_on, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.then1.i._nbu2ss_pullup.exit_crit_edge, label %if.then3.i

if.then1.i._nbu2ss_pullup.exit_crit_edge:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_nbu2ss_pullup.exit

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 15
  %8 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_regs.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !249
  %or.i = and i32 %10, -13
  %and.i = or i32 %or.i, 4
  %11 = ptrtoint ptr %p_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %and.i) #9, !srcloc !250
  br label %_nbu2ss_pullup.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %p_regs7.i = getelementptr inbounds %struct.nbu2ss_udc, ptr %pgadget, i32 0, i32 15
  %13 = ptrtoint ptr %p_regs7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_regs7.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !249
  %or10.i = and i32 %15, -13
  %and11.i = or i32 %or10.i, 8
  %16 = ptrtoint ptr %p_regs7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_regs7.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and11.i) #9, !srcloc !250
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %pgadget, i32 0, i32 5
  %18 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %speed.i, align 8
  br label %_nbu2ss_pullup.exit

_nbu2ss_pullup.exit:                              ; preds = %if.else.i, %if.then3.i, %if.then1.i._nbu2ss_pullup.exit_crit_edge, %do.body13._nbu2ss_pullup.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %_nbu2ss_pullup.exit, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %_nbu2ss_pullup.exit ], [ -22, %do.end6 ], [ -22, %do.end ], [ -108, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbu2ss_gad_ioctl(ptr nocapture noundef readnone %pgadget, i32 noundef %code, i32 noundef %param) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nbu2ss_enable_controller(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc_enabled = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 12
  %0 = ptrtoint ptr %udc_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %udc_enabled, align 4
  %1 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_regs = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 15
  %2 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_regs, align 8
  %EPCTR = getelementptr inbounds %struct.fc_regs, ptr %3, i32 0, i32 22
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR) #9, !srcloc !249
  %or.i = or i32 %4, 4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR, i32 %or.i) #9, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_regs, align 8
  %EPCTR2 = getelementptr inbounds %struct.fc_regs, ptr %7, i32 0, i32 22
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR2) #9, !srcloc !249
  %and.i = and i32 %8, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR2, i32 %and.i) #9, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  %10 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_regs, align 8
  %EPCTR4 = getelementptr inbounds %struct.fc_regs, ptr %11, i32 0, i32 22
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR4) #9, !srcloc !249
  %and.i31 = and i32 %12, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EPCTR4, i32 %and.i31) #9, !srcloc !250
  %13 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_regs, align 8
  %AHBSCTR = getelementptr inbounds %struct.fc_regs, ptr %14, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %AHBSCTR, i32 1) #9, !srcloc !250
  %15 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_regs, align 8
  %AHBMCTR = getelementptr inbounds %struct.fc_regs, ptr %16, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %AHBMCTR, i32 52) #9, !srcloc !250
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %waitcnt.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body.while.cond_crit_edge ]
  %17 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_regs, align 8
  %EPCTR8 = getelementptr inbounds %struct.fc_regs, ptr %18, i32 0, i32 22
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EPCTR8) #9, !srcloc !249
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %waitcnt.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #9
  %cmp = icmp eq i32 %inc, 1000
  br i1 %cmp, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nbu2ss_udc, ptr %udc, i32 0, i32 3
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.114) #12
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_regs, align 8
  %UTMI_CHARACTER_1 = getelementptr inbounds %struct.fc_regs, ptr %24, i32 0, i32 3
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %UTMI_CHARACTER_1) #9, !srcloc !249
  %or.i32 = or i32 %25, 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %UTMI_CHARACTER_1, i32 %or.i32) #9, !srcloc !250
  %26 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_regs, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !249
  %or.i33 = or i32 %28, 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %or.i33) #9, !srcloc !250
  %29 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_regs, align 8
  %EP0_CONTROL.i = getelementptr inbounds %struct.fc_regs, ptr %30, i32 0, i32 10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EP0_CONTROL.i) #9, !srcloc !249
  %or.i.i = or i32 %31, 65792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_CONTROL.i, i32 %or.i.i) #9, !srcloc !250
  %32 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_regs, align 8
  %EP0_INT_ENA.i = getelementptr inbounds %struct.fc_regs, ptr %33, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EP0_INT_ENA.i, i32 117) #9, !srcloc !250
  %34 = ptrtoint ptr %p_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_regs, align 8
  %USB_INT_ENA = getelementptr inbounds %struct.fc_regs, ptr %35, i32 0, i32 9
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %USB_INT_ENA) #9, !srcloc !249
  %or.i34 = or i32 %36, 334
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %USB_INT_ENA, i32 %or.i34) #9, !srcloc !250
  %37 = ptrtoint ptr %udc_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load16 = load i8, ptr %udc_enabled, align 4
  %bf.set = or i8 %bf.load16, 2
  store i8 %bf.set, ptr %udc_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__initcall__kmod_emxx_udc__252_3219_udc_driver_init6, !1, !"__initcall__kmod_emxx_udc__252_3219_udc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3219, i32 1}
!2 = !{ptr @__exitcall_udc_driver_exit, !1, !"__exitcall_udc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description253, !4, !"__UNIQUE_ID_description253", i1 false, i1 false}
!4 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3221, i32 1}
!5 = !{ptr @__UNIQUE_ID_author254, !6, !"__UNIQUE_ID_author254", i1 false, i1 false}
!6 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file255, !8, !"__UNIQUE_ID_file255", i1 false, i1 false}
!8 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license256, !8, !"__UNIQUE_ID_license256", i1 false, i1 false}
!10 = !{ptr @udc_driver, !11, !"udc_driver", i1 false, i1 false}
!11 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3208, i32 31}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3100, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nbu2ss_drv_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @nbu2ss_drv_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3118, i32 3}
!22 = !{ptr @nbu2ss_drv_probe._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nbu2ss_drv_probe._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @udc_controller, !25, !"udc_controller", i1 false, i1 false}
!25 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 61, i32 26}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 771, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @_nbu2ss_ep0_out_transfer._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @_nbu2ss_ep0_out_transfer._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 973, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @_nbu2ss_epn_out_transfer._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @_nbu2ss_epn_out_transfer._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 974, i32 3}
!38 = !{ptr @_nbu2ss_epn_out_transfer._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @_nbu2ss_epn_out_transfer._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 1756, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @_nbu2ss_ep0_int._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @_nbu2ss_ep0_int._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 1757, i32 3}
!52 = !{ptr @_nbu2ss_ep0_int._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @_nbu2ss_ep0_int._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 1524, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @std_req_get_status._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @std_req_get_status._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 1323, i32 2}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @_nbu2ss_set_test_mode._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @_nbu2ss_set_test_mode._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @nbu2ss_drv_contest_init.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3040, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 3062, i32 33}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2973, i32 2}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2975, i32 2}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2977, i32 2}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2979, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2981, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2983, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2985, i32 2}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2987, i32 2}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2989, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2991, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2993, i32 2}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2995, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2997, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2999, i32 2}
!97 = !{ptr @ep_info, !98, !"ep_info", i1 false, i1 false}
!98 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2966, i32 3}
!99 = !{ptr @nbu2ss_ep_ops, !100, !"nbu2ss_ep_ops", i1 false, i1 false}
!100 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2797, i32 32}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2423, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @nbu2ss_ep_enable._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @nbu2ss_ep_enable._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2429, i32 3}
!108 = !{ptr @nbu2ss_ep_enable._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @nbu2ss_ep_enable._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2436, i32 3}
!112 = !{ptr @nbu2ss_ep_enable._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nbu2ss_ep_enable._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2445, i32 3}
!116 = !{ptr @nbu2ss_ep_enable._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nbu2ss_ep_enable._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2480, i32 3}
!120 = !{ptr @nbu2ss_ep_disable._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nbu2ss_ep_disable._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2486, i32 3}
!124 = !{ptr @nbu2ss_ep_disable._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @nbu2ss_ep_disable._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2546, i32 4}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @nbu2ss_ep_queue._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @nbu2ss_ep_queue._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2549, i32 4}
!133 = !{ptr @nbu2ss_ep_queue._entry.60, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @nbu2ss_ep_queue._entry_ptr.62, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2559, i32 4}
!137 = !{ptr @nbu2ss_ep_queue._entry.63, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @nbu2ss_ep_queue._entry_ptr.65, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2562, i32 4}
!141 = !{ptr @nbu2ss_ep_queue._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @nbu2ss_ep_queue._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2565, i32 4}
!145 = !{ptr @nbu2ss_ep_queue._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @nbu2ss_ep_queue._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2574, i32 3}
!149 = !{ptr @nbu2ss_ep_queue._entry.72, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nbu2ss_ep_queue._entry_ptr.74, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2579, i32 3}
!153 = !{ptr @nbu2ss_ep_queue._entry.75, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nbu2ss_ep_queue._entry_ptr.77, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2618, i32 4}
!157 = !{ptr @nbu2ss_ep_queue._entry.78, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @nbu2ss_ep_queue._entry_ptr.80, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2670, i32 2}
!161 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nbu2ss_ep_dequeue.__UNIQUE_ID_ddebug251, !160, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2685, i32 3}
!166 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @nbu2ss_ep_set_halt._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @nbu2ss_ep_set_halt._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2693, i32 3}
!171 = !{ptr @nbu2ss_ep_set_halt._entry.86, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @nbu2ss_ep_set_halt._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2733, i32 3}
!175 = !{ptr @nbu2ss_ep_fifo_status._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @nbu2ss_ep_fifo_status._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2741, i32 3}
!179 = !{ptr @nbu2ss_ep_fifo_status._entry.90, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @nbu2ss_ep_fifo_status._entry_ptr.92, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2775, i32 3}
!183 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @nbu2ss_ep_fifo_flush._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @nbu2ss_ep_fifo_flush._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @nbu2ss_ep_fifo_flush._entry.95, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2783, i32 3}
!188 = !{ptr @nbu2ss_ep_fifo_flush._entry_ptr.96, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @nbu2ss_gadget_ops, !190, !"nbu2ss_gadget_ops", i1 false, i1 false}
!190 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2953, i32 36}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2824, i32 3}
!193 = !{ptr @nbu2ss_gad_get_frame._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @nbu2ss_gad_get_frame._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.98, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2845, i32 3}
!197 = !{ptr @nbu2ss_gad_wakeup._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @nbu2ss_gad_wakeup._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2853, i32 3}
!201 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @nbu2ss_gad_wakeup._entry.99, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @nbu2ss_gad_wakeup._entry_ptr.102, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2879, i32 3}
!206 = !{ptr @nbu2ss_gad_set_selfpowered._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @nbu2ss_gad_set_selfpowered._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2905, i32 3}
!210 = !{ptr @nbu2ss_gad_vbus_draw._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @nbu2ss_gad_vbus_draw._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2925, i32 3}
!214 = !{ptr @nbu2ss_gad_pullup._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @nbu2ss_gad_pullup._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2932, i32 3}
!218 = !{ptr @nbu2ss_gad_pullup._entry.106, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @nbu2ss_gad_pullup._entry_ptr.108, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"vbus_gpio", i1 false, i1 false}
!221 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 37, i32 26}
!222 = !{ptr @vbus_irq, !223, !"vbus_irq", i1 false, i1 false}
!223 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 38, i32 12}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2224, i32 3}
!226 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @_nbu2ss_check_vbus._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @_nbu2ss_check_vbus._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2250, i32 3}
!231 = !{ptr @_nbu2ss_check_vbus._entry.111, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @_nbu2ss_check_vbus._entry_ptr.113, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 2172, i32 4}
!235 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @_nbu2ss_enable_controller._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @_nbu2ss_enable_controller._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @driver_name, !239, !"driver_name", i1 false, i1 false}
!239 = !{!"../drivers/staging/emxx_udc/emxx_udc.c", i32 40, i32 19}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 5348483}
!250 = !{i64 5348065}
!251 = !{i8 0, i8 2}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{i64 2148767441, i64 2148767446, i64 2148767459, i64 2148767503, i64 2148767537, i64 2148767558}
