; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/udc-xilinx.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/udc-xilinx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xusb_udc = type { %struct.usb_gadget, [8 x %struct.xusb_ep], ptr, %struct.usb_ctrlrequest, ptr, ptr, i32, i32, i32, i32, ptr, %struct.spinlock, i8, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.xusb_ep = type { %struct.usb_ep, %struct.list_head, ptr, ptr, i32, i32, [4 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.xusb_req = type { %struct.usb_request, %struct.list_head, ptr }

@__initcall__kmod_udc_xilinx__273_2260_xudc_driver_init6 = internal global ptr @xudc_driver_init, section ".initcall6.init", align 4
@xudc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xudc_probe, ptr @xudc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xudc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xudc_driver_exit = internal global ptr @xudc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [41 x i8] c"udc_xilinx.description=Xilinx udc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [30 x i8] c"udc_xilinx.author=Xilinx, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [50 x i8] c"udc_xilinx.file=drivers/usb/gadget/udc/udc-xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [23 x i8] c"udc_xilinx.license=GPL\00", section ".modinfo", align 1
@driver_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx-udc\00", [21 x i8] zeroinitializer }, align 32
@usb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,usb2-device-4.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xudc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xudc_suspend, ptr @xudc_resume, ptr @xudc_suspend, ptr @xudc_resume, ptr @xudc_suspend, ptr @xudc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xudc_probe.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udc_xilinx\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xudc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/udc/udc-xilinx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to request irq %d\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,has-builtin-dma\00", [43 x i8] zeroinitializer }, align 32
@xusb_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @xudc_get_frame, ptr @xudc_wakeup, ptr null, ptr null, ptr null, ptr @xudc_pullup, ptr null, ptr null, ptr @xudc_start, ptr @xudc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@xudc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2115, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"s_axi_aclk clock property is not found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xudc_probe._entry_ptr = internal global ptr @xudc_probe._entry, section ".printk_index", align 4
@xudc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 2121, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xudc_probe._entry_ptr.12 = internal global ptr @xudc_probe._entry.9, section ".printk_index", align 4
@xudc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@xudc_probe.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 2, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s at 0x%08X mapped to %p %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"with DMA\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"without DMA\00", [20 x i8] zeroinitializer }, align 32
@xudc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 2168, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"probe failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@xudc_probe._entry_ptr.19 = internal global ptr @xudc_probe._entry.17, section ".printk_index", align 4
@xudc_startup_handler.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xudc_startup_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Reset\0A\00", [25 x i8] zeroinitializer }, align 32
@xudc_startup_handler.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@xudc_startup_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s %s: Resume IRQ while not suspended\0A\00", [57 x i8] zeroinitializer }, align 32
@xudc_startup_handler.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.24, i8 1, i8 123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Resume\0A\00", [24 x i8] zeroinitializer }, align 32
@xudc_startup_handler.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 1, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Disconnect\0A\00", [20 x i8] zeroinitializer }, align 32
@xudc_done.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xudc_done\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s done %p, status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@xudc_getstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1643, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't respond to getstatus request\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xudc_getstatus\00", [17 x i8] zeroinitializer }, align 32
@xudc_getstatus._entry_ptr = internal global ptr @xudc_getstatus._entry, section ".printk_index", align 4
@__xudc_ep0_queue.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -5, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__xudc_ep0_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s, bogus device state\0A\00", [40 x i8] zeroinitializer }, align 32
@__xudc_ep0_queue.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 -4, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:ep0 busy\0A\00", [19 x i8] zeroinitializer }, align 32
@xudc_setaddress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1586, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't respond to SET ADDRESS request\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xudc_setaddress\00", [16 x i8] zeroinitializer }, align 32
@xudc_setaddress._entry_ptr = internal global ptr @xudc_setaddress._entry, section ".printk_index", align 4
@xudc_set_clear_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1733, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't respond to SET/CLEAR FEATURE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xudc_set_clear_feature\00", [41 x i8] zeroinitializer }, align 32
@xudc_set_clear_feature._entry_ptr = internal global ptr @xudc_set_clear_feature._entry, section ".printk_index", align 4
@xudc_write_fifo.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xudc_write_fifo\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: wrote %s %d bytes%s%s %d left %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/L\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/S\00", [29 x i8] zeroinitializer }, align 32
@xudc_write_fifo.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 0, i8 -78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Send busy\0A\00", [21 x i8] zeroinitializer }, align 32
@xudc_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 351, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xudc_start_dma\00", [17 x i8] zeroinitializer }, align 32
@xudc_start_dma._entry_ptr = internal global ptr @xudc_start_dma._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xudc_start_dma._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 359, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA Error\0A\00", [21 x i8] zeroinitializer }, align 32
@xudc_start_dma._entry_ptr.47 = internal global ptr @xudc_start_dma._entry.45, section ".printk_index", align 4
@xudc_read_fifo.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xudc_read_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Packet NOT ready!\0A\00", [45 x i8] zeroinitializer }, align 32
@xudc_read_fifo.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s overflow %d\0A\00", [16 x i8] zeroinitializer }, align 32
@xudc_read_fifo.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"read %s, %d bytes%s req %p %d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@xudc_read_fifo.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"receive busy\0A\00", [18 x i8] zeroinitializer }, align 32
@config_bulk_out_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 16384, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@xudc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1382, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s is already bound to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xudc_start\00", [21 x i8] zeroinitializer }, align 32
@xudc_start._entry_ptr = internal global ptr @xudc_start._entry, section ".printk_index", align 4
@__xudc_ep_enable.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__xudc_ep_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"only one control endpoint\0A\00", [37 x i8] zeroinitializer }, align 32
@__xudc_ep_enable.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 -49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bogus maxpacket %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__xudc_ep_enable.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rambase = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 34, i32 4096, i32 4352, i32 4608, i32 4864, i32 5120, i32 5376, i32 5632], [32 x i8] zeroinitializer }, align 32
@__xudc_ep_enable.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.58, i8 0, i8 -42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enable Endpoint %d max pkt is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@xusb_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @xudc_ep_enable, ptr @xudc_ep_disable, ptr null, ptr @xudc_ep_alloc_request, ptr @xudc_free_request, ptr @xudc_ep_queue, ptr @xudc_ep_dequeue, ptr @xudc_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ep0name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@xusb_ep0_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @xudc_ep0_enable, ptr @xudc_ep0_disable, ptr null, ptr @xudc_ep_alloc_request, ptr @xudc_free_request, ptr @xudc_ep0_queue, ptr @xudc_ep_dequeue, ptr @xudc_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xudc_ep_enable.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xudc_ep_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: bad ep or descriptor\0A\00", [38 x i8] zeroinitializer }, align 32
@xudc_ep_enable.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 -29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bogus device state\0A\00", [44 x i8] zeroinitializer }, align 32
@xudc_ep_disable.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xudc_ep_disable\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: invalid ep\0A\00", [16 x i8] zeroinitializer }, align 32
@xudc_ep_disable.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 0, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB Ep %d disable\0A \00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xudc_ep_queue.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 1, i8 15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xudc_ep_queue\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: queuing request to disabled %s\0A\00", [60 x i8] zeroinitializer }, align 32
@xudc_ep_queue.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.31, i8 1, i8 16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@xudc_ep_queue.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 1, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gadget_map failed ep%d\0A\00", [40 x i8] zeroinitializer }, align 32
@xudc_ep_queue.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.69, i8 1, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xudc_write_fifo from ep_queue\0A\00", [33 x i8] zeroinitializer }, align 32
@xudc_ep_queue.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.70, i8 1, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xudc_read_fifo from ep_queue\0A\00", [34 x i8] zeroinitializer }, align 32
@xudc_ep_set_halt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.61, i8 0, i8 -67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xudc_ep_set_halt\00", [47 x i8] zeroinitializer }, align 32
@xudc_ep_set_halt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"requests pending can't halt\0A\00", [35 x i8] zeroinitializer }, align 32
@xudc_ep_set_halt.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HW buffers busy can't halt\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967186, i64 4294967274, i64 4294967285]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967186, i64 4294967274, i64 4294967285]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"xudc_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2250, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 203, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"usb_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2244, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"xudc_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2239, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2091, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2095, i32 47 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"xusb_udc_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1429, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2104, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2115, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2121, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2125, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2159, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2168, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1474, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1497, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1516, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1519, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1537, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 561, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1643, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1006, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1010, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1586, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1733, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 703, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 714, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 351, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 359, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 595, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 621, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 632, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 652, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [21 x i8] c"config_bulk_out_desc\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 207, i32 45 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1381, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 822, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 830, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [8 x i8] c"rambase\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 200, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 855, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1311, i32 36 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"xusb_ep_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1197, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant [8 x i8] c"ep0name\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 204, i32 19 }
@___asan_gen_.303 = private unnamed_addr constant [13 x i8] c"xusb_ep0_ops\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1187, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 900, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 908, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 933, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 948, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1084, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1103, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1112, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1116, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 757, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 763, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [39 x i8] c"../drivers/usb/gadget/udc/udc-xilinx.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 768, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_xudc_driver_exit, ptr @__initcall__kmod_udc_xilinx__273_2260_xudc_driver_init6, ptr @xudc_driver_exit, ptr @xudc_getstatus._entry, ptr @xudc_getstatus._entry_ptr, ptr @xudc_probe._entry, ptr @xudc_probe._entry.17, ptr @xudc_probe._entry.9, ptr @xudc_probe._entry_ptr, ptr @xudc_probe._entry_ptr.12, ptr @xudc_probe._entry_ptr.19, ptr @xudc_set_clear_feature._entry, ptr @xudc_set_clear_feature._entry_ptr, ptr @xudc_setaddress._entry, ptr @xudc_setaddress._entry_ptr, ptr @xudc_start._entry, ptr @xudc_start._entry_ptr, ptr @xudc_start_dma._entry, ptr @xudc_start_dma._entry.45, ptr @xudc_start_dma._entry_ptr, ptr @xudc_start_dma._entry_ptr.47, ptr @xudc_driver, ptr @driver_name, ptr @usb_of_match, ptr @xudc_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xusb_udc_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @xudc_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @config_bulk_out_desc, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @rambase, ptr @.str.58, ptr @.str.59, ptr @xusb_ep_ops, ptr @ep0name, ptr @xusb_ep0_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusb_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_getstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_setaddress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_set_clear_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_start_dma._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_bulk_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xudc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rambase to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusb_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusb_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xudc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xudc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @xudc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1856, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i208 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #10
  %req = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i208, ptr %req, align 4
  %tobool5.not = icmp eq ptr %call.i208, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i209 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2, i32 noundef 3520) #10
  %tobool10.not = icmp eq ptr %call.i209, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i209, ptr %4, align 4
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call14) #10
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %addr, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i210 = phi ptr [ %11, %if.end.i ], [ %9, %if.end25.dev_name.exit_crit_edge ]
  %call.i211 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call23, ptr noundef nonnull @xudc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i210, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %cmp30 = icmp slt i32 %call.i211, 0
  br i1 %cmp30, label %do.body, label %if.end40

do.body:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_probe.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_probe, %do.end128)) #10
          to label %if.then37 [label %do.end128], !srcloc !203

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_probe.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call23) #10
  br label %do.end128

if.end40:                                         ; preds = %dev_name.exit
  %call.i212 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %tobool.i = icmp ne ptr %call.i212, null
  %dma_enabled = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 12
  %frombool42 = zext i1 %tobool.i to i8
  %12 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool42, ptr %dma_enabled, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xusb_udc_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %max_speed, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %speed, align 8
  %ep = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ep, ptr %ep0, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @driver_name, ptr %name, align 4
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  %clk = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call48, ptr %clk, align 8
  %cmp.i213 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then51, label %if.end40.if.end64_crit_edge

if.end40.if.end64_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then51:                                        ; preds = %if.end40
  %19 = ptrtoint ptr %call48 to i32
  %cmp54.not = icmp eq ptr %call48, inttoptr (i32 -2 to ptr)
  br i1 %cmp54.not, label %do.end61, label %if.then51.do.end128_crit_edge

if.then51.do.end128_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end128

do.end61:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %clk, align 8
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end40.if.end64_crit_edge
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 8
  %call.i214 = tail call i32 @clk_prepare(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.end.i216, label %if.end64.do.end71_crit_edge

if.end64.do.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

if.end.i216:                                      ; preds = %if.end64
  %call1.i = tail call i32 @clk_enable(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body74, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %22) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then3.i, %if.end64.do.end71_crit_edge
  %retval.0.i217.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i214, %if.end64.do.end71_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  br label %cleanup

do.body74:                                        ; preds = %if.end.i216
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @xudc_probe.__key, i16 noundef signext 3) #10
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 15
  %23 = ptrtoint ptr %write_fn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xudc_write32_be, ptr %write_fn, align 8
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %read_fn to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xudc_read32_be, ptr %read_fn, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %26, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #10, !srcloc !205
  %27 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_fn, align 4
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 280
  %call82 = tail call i32 %28(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 1
  br i1 %cmp83.not, label %do.body74.if.end87_crit_edge, label %if.then84

do.body74.if.end87_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then84:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %write_fn to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xudc_write32, ptr %write_fn, align 8
  %32 = ptrtoint ptr %read_fn to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xudc_read32, ptr %read_fn, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %do.body74.if.end87_crit_edge
  %33 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_fn, align 8
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr, align 4
  tail call void %34(ptr noundef %36, i32 noundef 280, i32 noundef 0) #10
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %name23.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %name23.peel.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ep0name, ptr %name23.peel.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #10
  %ops26.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %ops26.peel.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @xusb_ep0_ops, ptr %ops26.peel.i, align 4
  %caps28.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %41 = ptrtoint ptr %caps28.peel.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load29.peel.i = load i8, ptr %caps28.peel.i, align 4
  %bf.set41.peel.i = or i8 %bf.load29.peel.i, -116
  store i8 %bf.set41.peel.i, ptr %caps28.peel.i, align 4
  %udc42.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %udc42.peel.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %udc42.peel.i, align 4
  %epnumber.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 7
  %43 = ptrtoint ptr %epnumber.peel.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %epnumber.peel.i, align 4
  %desc.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %desc.peel.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %desc.peel.i, align 4
  %offset.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 5
  %45 = ptrtoint ptr %offset.peel.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %offset.peel.i, align 4
  %is_in.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 14
  %46 = ptrtoint ptr %is_in.peel.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %is_in.peel.i, align 1
  %is_iso.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 15
  %47 = ptrtoint ptr %is_iso.peel.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %is_iso.peel.i, align 4
  %maxpacket.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %maxpacket.peel.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %maxpacket.peel.i, align 2
  tail call fastcc void @xudc_epconfig(ptr noundef %ep, ptr noundef nonnull %call.i) #10
  %queue.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %queue.peel.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %queue.peel.i, ptr %queue.peel.i, align 4
  %prev.i77.peel.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i77.peel.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %queue.peel.i, ptr %prev.i77.peel.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i219.if.then.i_crit_edge, %if.end87
  %ep_number.078.i = phi i32 [ 1, %if.end87 ], [ %inc.i, %if.end.i219.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i
  %ep_list2.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 3
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list2.i, ptr noundef %52, ptr noundef %ep_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i219_crit_edge

if.then.i.if.end.i219_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i219

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ep_list2.i, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %ep_list2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ep_list.i, ptr %ep_list2.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ep_list2.i, ptr %52, align 4
  br label %if.end.i219

if.end.i219:                                      ; preds = %if.end.i.i.i, %if.then.i.if.end.i219_crit_edge
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i, i32 noundef 65535) #10
  %name.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 6
  %call.i218 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %ep_number.078.i) #10
  %name9.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 1
  %57 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %name.i, ptr %name9.i, align 4
  %ops.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 2
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @xusb_ep_ops, ptr %ops.i, align 4
  %caps.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %59 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %caps.i, align 4
  %bf.set41.i = or i8 %bf.load.i, 124
  store i8 %bf.set41.i, ptr %caps.i, align 4
  %udc42.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 2
  %60 = ptrtoint ptr %udc42.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %udc42.i, align 4
  %conv.i = trunc i32 %ep_number.078.i to i16
  %epnumber.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 7
  %61 = ptrtoint ptr %epnumber.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i, ptr %epnumber.i, align 4
  %desc.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 3
  %62 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %desc.i, align 4
  %mul.i = shl nuw nsw i32 %ep_number.078.i, 4
  %offset.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 5
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul.i, ptr %offset.i, align 4
  %is_in.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 14
  %64 = ptrtoint ptr %is_in.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %is_in.i, align 1
  %is_iso.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 15
  %65 = ptrtoint ptr %is_iso.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %is_iso.i, align 4
  %maxpacket.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 8
  %66 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %maxpacket.i, align 2
  tail call fastcc void @xudc_epconfig(ptr noundef %arrayidx.i, ptr noundef %call.i) #10
  %queue.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 1
  %67 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i77.i = getelementptr %struct.xusb_udc, ptr %call.i, i32 0, i32 1, i32 %ep_number.078.i, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i77.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %queue.i, ptr %prev.i77.i, align 4
  %inc.i = add nuw nsw i32 %ep_number.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %xudc_eps_init.exit, label %if.end.i219.if.then.i_crit_edge, !llvm.loop !206

if.end.i219.if.then.i_crit_edge:                  ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

xudc_eps_init.exit:                               ; preds = %if.end.i219
  %69 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_fn, align 8
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %addr, align 4
  tail call void %70(ptr noundef %72, i32 noundef 256, i32 noundef 0) #10
  %call94 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %err_disable_unprepare_clk

if.end97:                                         ; preds = %xudc_eps_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev99 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 11
  %dev100 = getelementptr inbounds %struct.xusb_udc, ptr %call.i, i32 0, i32 5
  %73 = ptrtoint ptr %dev100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev99, ptr %dev100, align 8
  %74 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_fn, align 8
  %76 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %addr, align 4
  tail call void %75(ptr noundef %77, i32 noundef 272, i32 noundef -2114126081) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_probe.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_probe, %cleanup)) #10
          to label %if.then117 [label %cleanup], !srcloc !203

if.then117:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call14, align 4
  %81 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr, align 4
  %83 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dma_enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool121.not = icmp eq i8 %84, 0
  %cond = select i1 %tobool121.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_probe.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @driver_name, i32 noundef %80, ptr noundef %82, ptr noundef nonnull %cond) #10
  br label %cleanup

err_disable_unprepare_clk:                        ; preds = %xudc_eps_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %86) #10
  tail call void @clk_unprepare(ptr noundef %86) #10
  br label %do.end128

do.end128:                                        ; preds = %err_disable_unprepare_clk, %if.then51.do.end128_crit_edge, %if.then37, %do.body
  %ret.0 = phi i32 [ %call.i211, %if.then37 ], [ %call94, %err_disable_unprepare_clk ], [ %19, %if.then51.do.end128_crit_edge ], [ %call.i211, %do.body ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %if.then117, %if.end97, %do.end71, %if.end22.cleanup_crit_edge, %if.then19, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then19 ], [ %ret.0, %do.end128 ], [ %retval.0.i217.ph, %do.end71 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %if.then117 ], [ 0, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #10
  %clk = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  %setup.i.i = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 14
  %0 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 10
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 272
  %call5 = tail call i32 %1(ptr noundef %add.ptr) #10
  %and = and i32 %call5, -31457281
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 15
  %4 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_fn, align 8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  tail call void %5(ptr noundef %7, i32 noundef 272, i32 noundef %and) #10
  %8 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_fn, align 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 264
  %call10 = tail call i32 %9(ptr noundef %add.ptr9) #10
  %and11 = and i32 %call10, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xudc_startup_handler(ptr noundef %_udc, i32 noundef %call10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and12 = and i32 %call10, 65279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end39_crit_edge, label %if.then14

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then14:                                        ; preds = %if.end
  %12 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_fn, align 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 272
  %call18 = tail call i32 %13(ptr noundef %add.ptr17) #10
  %or = or i32 %call18, 31457280
  %16 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_fn, align 8
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  tail call void %17(ptr noundef %19, i32 noundef 272, i32 noundef %or) #10
  %and21 = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then14.for.body.preheader_crit_edge, label %if.then23

if.then14.for.body.preheader_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then23:                                        ; preds = %if.then14
  %and.i = and i32 %call10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then23
  %ep.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setup.i.i) #10
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 128
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %add.ptr.i.i, align 4
  %24 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %setup.i.i, align 8
  %setup1.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3
  %25 = ptrtoint ptr %setup1.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %23, ptr %setup1.i.i, align 4
  %26 = lshr i64 %23, 32
  %27 = trunc i64 %26 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  %wValue3.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %wValue3.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %wValue3.i.i, align 2
  %30 = lshr i64 %23, 16
  %31 = trunc i64 %30 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #10
  %wIndex5.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %wIndex5.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wIndex5.i.i, align 4
  %34 = trunc i64 %23 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  %wLength7.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %wLength7.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %wLength7.i.i, align 2
  %queue.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i.not4.i.i.i = icmp eq ptr %38, %queue.i.i.i
  br i1 %cmp.i.not4.i.i.i, label %if.then.i.xudc_nuke.exit.i.i_crit_edge, label %if.then.i.while.body.i.i.i_crit_edge

if.then.i.while.body.i.i.i_crit_edge:             ; preds = %if.then.i
  br label %while.body.i.i.i

if.then.i.xudc_nuke.exit.i.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then.i.while.body.i.i.i_crit_edge
  %39 = phi ptr [ %41, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %38, %if.then.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %ep.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef -104) #10
  %40 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %41, %queue.i.i.i
  br i1 %cmp.i.not.i.i.i, label %while.body.i.i.i.xudc_nuke.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

while.body.i.i.i.xudc_nuke.exit.i.i_crit_edge:    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.i.i

xudc_nuke.exit.i.i:                               ; preds = %while.body.i.i.i.xudc_nuke.exit.i.i_crit_edge, %if.then.i.xudc_nuke.exit.i.i_crit_edge
  %42 = ptrtoint ptr %setup1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %setup1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool.not.i.i = icmp sgt i8 %43, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %spec.select113.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %44 = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i.i, ptr %44, align 8
  %46 = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select113.i.i, ptr %46, align 4
  %bRequest.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bRequest.i.i, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i8 %49, label %xudc_nuke.exit.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 5, label %sw.bb20.i.i
    i8 1, label %xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge
    i8 3, label %xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge74
  ]

xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge74:       ; preds = %xudc_nuke.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28.i.i

xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge:         ; preds = %xudc_nuke.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28.i.i

xudc_nuke.exit.i.i.sw.epilog.i.i_crit_edge:       ; preds = %xudc_nuke.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %xudc_nuke.exit.i.i
  %51 = and i8 %43, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %51)
  %cmp.not.i.i = icmp eq i8 %51, -128
  br i1 %cmp.not.i.i, label %if.end19.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.end19.i.i:                                     ; preds = %sw.bb.i.i
  %req1.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 4
  %52 = ptrtoint ptr %req1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %req1.i.i.i, align 4
  %54 = and i8 %43, 31
  %and.i.i.i = zext i8 %54 to i32
  %55 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %and.i.i.i, label %if.end19.i.i.do.end.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %if.end19.i.i.sw.epilog.i.i.i_crit_edge
    i32 2, label %sw.bb4.i.i.i
  ]

if.end19.i.i.sw.epilog.i.i.i_crit_edge:           ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

if.end19.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %remote_wkp.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 7
  %56 = ptrtoint ptr %remote_wkp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %remote_wkp.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i16 256, i16 768
  br label %sw.epilog.i.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end19.i.i
  %58 = ptrtoint ptr %wIndex5.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wIndex5.i.i, align 4
  %60 = and i16 %59, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %60)
  %cmp.i.i.i = icmp ugt i16 %60, 7
  br i1 %cmp.i.i.i, label %sw.bb4.i.i.i.do.end.i.i.i_crit_edge, label %if.end10.i.i.i

sw.bb4.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.end10.i.i.i:                                   ; preds = %sw.bb4.i.i.i
  %and7.i.i.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_fn, align 4
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr, align 4
  %offset.i.i.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %and7.i.i.i, i32 5
  %65 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %64, i32 %66
  %call.i.i.i = tail call i32 %62(ptr noundef %add.ptr.i67.i.i) #10
  %67 = ptrtoint ptr %wIndex5.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %wIndex5.i.i, align 4
  %69 = and i16 %68, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool18.not.i.i.i = icmp eq i16 %69, 0
  %is_in23.i.i.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %and7.i.i.i, i32 14
  %70 = ptrtoint ptr %is_in23.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_in23.i.i.i, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool24.not.i.i.i = icmp eq i8 %71, 0
  br i1 %tobool18.not.i.i.i, label %if.else.i.i.i, label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end10.i.i.i
  br i1 %tobool24.not.i.i.i, label %if.then19.i.i.i.do.end.i.i.i_crit_edge, label %if.then19.i.i.i.if.end27.i.i.i_crit_edge

if.then19.i.i.i.if.end27.i.i.i_crit_edge:         ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i.i

if.then19.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end10.i.i.i
  br i1 %tobool24.not.i.i.i, label %if.else.i.i.i.if.end27.i.i.i_crit_edge, label %if.else.i.i.i.do.end.i.i.i_crit_edge

if.else.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.else.i.i.i.if.end27.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.else.i.i.i.if.end27.i.i.i_crit_edge, %if.then19.i.i.i.if.end27.i.i.i_crit_edge
  %and13.i.i.i = lshr i32 %call.i.i.i, 22
  %72 = trunc i32 %and13.i.i.i to i16
  %73 = and i16 %72, 256
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.end27.i.i.i, %sw.bb.i.i.i, %if.end19.i.i.sw.epilog.i.i.i_crit_edge
  %status.0.i.i.i = phi i16 [ 0, %if.end19.i.i.sw.epilog.i.i.i_crit_edge ], [ %spec.select.i.i.i, %sw.bb.i.i.i ], [ %73, %if.end27.i.i.i ]
  %length.i.i.i = getelementptr inbounds %struct.usb_request, ptr %53, i32 0, i32 1
  %74 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %length.i.i.i, align 4
  %75 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %53, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %status.0.i.i.i, ptr %76, align 2
  %call32.i.i.i = tail call fastcc i32 @__xudc_ep0_queue(ptr noundef %ep.i.i, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %cmp33.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %cmp33.i.i.i, label %sw.epilog.i.i.i.xudc_handle_setup.exit.i_crit_edge, label %sw.epilog.i.i.i.do.end.i.i.i_crit_edge

sw.epilog.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

sw.epilog.i.i.i.xudc_handle_setup.exit.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_handle_setup.exit.i

do.end.i.i.i:                                     ; preds = %sw.epilog.i.i.i.do.end.i.i.i_crit_edge, %if.else.i.i.i.do.end.i.i.i_crit_edge, %if.then19.i.i.i.do.end.i.i.i_crit_edge, %sw.bb4.i.i.i.do.end.i.i.i_crit_edge, %if.end19.i.i.do.end.i.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 5
  %78 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.28) #13
  %80 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read_fn, align 4
  %82 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %addr, align 4
  %offset.i.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %84 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %83, i32 %85
  %call.i.i.i.i = tail call i32 %81(ptr noundef %add.ptr.i.i.i.i) #10
  %or.i.i.i.i = or i32 %call.i.i.i.i, 1073741824
  %86 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_fn, align 8
  %88 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %addr, align 4
  %90 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset.i.i.i.i, align 4
  tail call void %87(ptr noundef %89, i32 noundef %91, i32 noundef %or.i.i.i.i) #10
  br label %xudc_handle_setup.exit.i

sw.bb20.i.i:                                      ; preds = %xudc_nuke.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp24.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp24.not.i.i, label %if.end27.i.i, label %sw.bb20.i.i.sw.epilog.i.i_crit_edge

sw.bb20.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.end27.i.i:                                     ; preds = %sw.bb20.i.i
  %req1.i69.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 4
  %92 = ptrtoint ptr %req1.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req1.i69.i.i, align 4
  %length.i70.i.i = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %length.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %length.i70.i.i, align 4
  %call.i71.i.i = tail call fastcc i32 @__xudc_ep0_queue(ptr noundef %ep.i.i, ptr noundef %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i.i)
  %cmp.i72.i.i = icmp eq i32 %call.i71.i.i, 0
  br i1 %cmp.i72.i.i, label %if.end27.i.i.xudc_handle_setup.exit.i_crit_edge, label %do.end.i81.i.i

if.end27.i.i.xudc_handle_setup.exit.i_crit_edge:  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_handle_setup.exit.i

do.end.i81.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i73.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 5
  %95 = ptrtoint ptr %dev.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i73.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.33) #13
  %97 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read_fn, align 4
  %99 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %addr, align 4
  %offset.i.i76.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %101 = ptrtoint ptr %offset.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset.i.i76.i.i, align 4
  %add.ptr.i.i77.i.i = getelementptr i8, ptr %100, i32 %102
  %call.i.i78.i.i = tail call i32 %98(ptr noundef %add.ptr.i.i77.i.i) #10
  %or.i.i79.i.i = or i32 %call.i.i78.i.i, 1073741824
  %103 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_fn, align 8
  %105 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %addr, align 4
  %107 = ptrtoint ptr %offset.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i.i76.i.i, align 4
  tail call void %104(ptr noundef %106, i32 noundef %108, i32 noundef %or.i.i79.i.i) #10
  br label %xudc_handle_setup.exit.i

sw.bb28.i.i:                                      ; preds = %xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge, %xudc_nuke.exit.i.i.sw.bb28.i.i_crit_edge74
  %109 = and i8 %43, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp33.not.i.i = icmp eq i8 %109, 0
  br i1 %cmp33.not.i.i, label %if.end36.i.i, label %sw.bb28.i.i.sw.epilog.i.i_crit_edge

sw.bb28.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.end36.i.i:                                     ; preds = %sw.bb28.i.i
  %req1.i83.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 4
  %110 = ptrtoint ptr %req1.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %req1.i83.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.i85.i.i = icmp eq i8 %49, 3
  %112 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %43, label %if.end36.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge [
    i8 0, label %sw.bb.i86.i.i
    i8 2, label %sw.bb9.i.i.i
  ]

if.end36.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i.i.i

sw.bb.i86.i.i:                                    ; preds = %if.end36.i.i
  %113 = ptrtoint ptr %wValue3.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %wValue3.i.i, align 2
  %115 = zext i16 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %114, label %sw.default.i.i.i [
    i16 2, label %sw.bb.i86.i.i.sw.epilog58.i.i.i_crit_edge
    i16 1, label %sw.bb7.i.i.i
  ]

sw.bb.i86.i.i.sw.epilog58.i.i.i_crit_edge:        ; preds = %sw.bb.i86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog58.i.i.i

sw.bb7.i.i.i:                                     ; preds = %sw.bb.i86.i.i
  %remote_wkp.i87.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 7
  br i1 %cmp.i85.i.i, label %if.then.i.i.i, label %if.else.i88.i.i

if.then.i.i.i:                                    ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %remote_wkp.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %remote_wkp.i87.i.i, align 8
  br label %sw.epilog58.i.i.i

if.else.i88.i.i:                                  ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %remote_wkp.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %remote_wkp.i87.i.i, align 8
  br label %sw.epilog58.i.i.i

sw.default.i.i.i:                                 ; preds = %sw.bb.i86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read_fn, align 4
  %120 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %addr, align 4
  %offset.i.i91.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %122 = ptrtoint ptr %offset.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %offset.i.i91.i.i, align 4
  %add.ptr.i.i92.i.i = getelementptr i8, ptr %121, i32 %123
  %call.i.i93.i.i = tail call i32 %119(ptr noundef %add.ptr.i.i92.i.i) #10
  %or.i.i94.i.i = or i32 %call.i.i93.i.i, 1073741824
  %124 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write_fn, align 8
  %126 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %addr, align 4
  %128 = ptrtoint ptr %offset.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset.i.i91.i.i, align 4
  tail call void %125(ptr noundef %127, i32 noundef %129, i32 noundef %or.i.i94.i.i) #10
  br label %sw.epilog58.i.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end36.i.i
  %130 = ptrtoint ptr %wValue3.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %wValue3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool12.not.i.i.i = icmp eq i16 %131, 0
  br i1 %tobool12.not.i.i.i, label %if.then13.i.i.i, label %sw.bb9.i.i.i.sw.epilog58.i.i.i_crit_edge

sw.bb9.i.i.i.sw.epilog58.i.i.i_crit_edge:         ; preds = %sw.bb9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog58.i.i.i

if.then13.i.i.i:                                  ; preds = %sw.bb9.i.i.i
  %132 = ptrtoint ptr %wIndex5.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %wIndex5.i.i, align 4
  %134 = trunc i16 %133 to i8
  %conv16.i.i.i = and i8 %134, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv16.i.i.i)
  %cmp18.i.i.i = icmp ugt i8 %conv16.i.i.i, 7
  br i1 %cmp18.i.i.i, label %if.then13.i.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge, label %if.end21.i.i.i

if.then13.i.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then13.i.i.i
  %conv17.i.i.i = zext i8 %conv16.i.i.i to i32
  %135 = lshr i16 %133, 7
  %136 = and i16 %135, 1
  %is_in.i.i.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %conv17.i.i.i, i32 14
  %137 = ptrtoint ptr %is_in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %is_in.i.i.i, align 1, !range !208
  %139 = zext i8 %138 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %139)
  %cmp34.not.i.i.i = icmp eq i16 %136, %139
  %140 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read_fn, align 4
  %142 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %addr, align 4
  br i1 %cmp34.not.i.i.i, label %if.end37.i.i.i, label %if.end21.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end21.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i.i

if.end37.i.i.i:                                   ; preds = %if.end21.i.i.i
  %offset.i99.i.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %conv17.i.i.i, i32 5
  %144 = ptrtoint ptr %offset.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset.i99.i.i, align 4
  %add.ptr.i100.i.i = getelementptr i8, ptr %143, i32 %145
  %call.i101.i.i = tail call i32 %141(ptr noundef %add.ptr.i100.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16.i.i.i)
  %tobool38.not.i.i.i = icmp eq i8 %conv16.i.i.i, 0
  br i1 %tobool38.not.i.i.i, label %if.then39.i.i.i, label %if.else43.i.i.i

if.then39.i.i.i:                                  ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and40.i.i.i = and i32 %call.i101.i.i, -1073741825
  %146 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write_fn, align 8
  %148 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %addr, align 4
  %150 = ptrtoint ptr %offset.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %offset.i99.i.i, align 4
  tail call void %147(ptr noundef %149, i32 noundef %151, i32 noundef %and40.i.i.i) #10
  br label %sw.epilog58.i.i.i

if.else43.i.i.i:                                  ; preds = %if.end37.i.i.i
  br i1 %cmp.i85.i.i, label %if.then45.i.i.i, label %if.else49.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i.i = or i32 %call.i101.i.i, 1073741824
  %152 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write_fn, align 8
  %154 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %addr, align 4
  %156 = ptrtoint ptr %offset.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset.i99.i.i, align 4
  tail call void %153(ptr noundef %155, i32 noundef %157, i32 noundef %or.i.i.i) #10
  br label %sw.epilog58.i.i.i

if.else49.i.i.i:                                  ; preds = %if.else43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and50.i.i.i = and i32 %call.i101.i.i, -1207959553
  %158 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write_fn, align 8
  %160 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %addr, align 4
  %162 = ptrtoint ptr %offset.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %offset.i99.i.i, align 4
  tail call void %159(ptr noundef %161, i32 noundef %163, i32 noundef %and50.i.i.i) #10
  br label %sw.epilog58.i.i.i

sw.epilog58.i.i.i:                                ; preds = %if.else49.i.i.i, %if.then45.i.i.i, %if.then39.i.i.i, %sw.bb9.i.i.i.sw.epilog58.i.i.i_crit_edge, %sw.default.i.i.i, %if.else.i88.i.i, %if.then.i.i.i, %sw.bb.i86.i.i.sw.epilog58.i.i.i_crit_edge
  %length.i102.i.i = getelementptr inbounds %struct.usb_request, ptr %111, i32 0, i32 1
  %164 = ptrtoint ptr %length.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %length.i102.i.i, align 4
  %call59.i.i.i = tail call fastcc i32 @__xudc_ep0_queue(ptr noundef %ep.i.i, ptr noundef %111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i.i)
  %cmp60.i.i.i = icmp eq i32 %call59.i.i.i, 0
  br i1 %cmp60.i.i.i, label %sw.epilog58.i.i.i.xudc_handle_setup.exit.i_crit_edge, label %do.end.i104.i.i

sw.epilog58.i.i.i.xudc_handle_setup.exit.i_crit_edge: ; preds = %sw.epilog58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_handle_setup.exit.i

do.end.i104.i.i:                                  ; preds = %sw.epilog58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i103.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 5
  %165 = ptrtoint ptr %dev.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i103.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.35) #13
  br label %cleanup.sink.split.sink.split.i.i.i

cleanup.sink.split.sink.split.i.i.i:              ; preds = %do.end.i104.i.i, %if.then13.i.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge, %if.end36.i.i.cleanup.sink.split.sink.split.i.i.i_crit_edge
  %167 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read_fn, align 4
  %169 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %addr, align 4
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %cleanup.sink.split.sink.split.i.i.i, %if.end21.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %.sink139.i.i.i = phi ptr [ %143, %if.end21.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %170, %cleanup.sink.split.sink.split.i.i.i ]
  %.sink.i.i.i = phi ptr [ %141, %if.end21.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %168, %cleanup.sink.split.sink.split.i.i.i ]
  %offset.i111.i.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %171 = ptrtoint ptr %offset.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offset.i111.i.i.i, align 4
  %add.ptr.i133.i.i.i = getelementptr i8, ptr %.sink139.i.i.i, i32 %172
  %call.i134.i.i.i = tail call i32 %.sink.i.i.i(ptr noundef %add.ptr.i133.i.i.i) #10
  %or.i135.i.i.i = or i32 %call.i134.i.i.i, 1073741824
  %173 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_fn, align 8
  %175 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %addr, align 4
  %177 = ptrtoint ptr %offset.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %offset.i111.i.i.i, align 4
  tail call void %174(ptr noundef %176, i32 noundef %178, i32 noundef %or.i135.i.i.i) #10
  br label %xudc_handle_setup.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb28.i.i.sw.epilog.i.i_crit_edge, %sw.bb20.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %xudc_nuke.exit.i.i.sw.epilog.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %driver.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 2
  %179 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %driver.i.i, align 8
  %setup37.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %setup37.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %setup37.i.i, align 4
  %call.i.i = call i32 %182(ptr noundef %_udc, ptr noundef nonnull %setup.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp38.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %sw.epilog.i.i.if.end41.i.i_crit_edge

sw.epilog.i.i.if.end41.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i.i

if.then40.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read_fn, align 4
  %185 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %addr, align 4
  %offset.i107.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %187 = ptrtoint ptr %offset.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %offset.i107.i.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %186, i32 %188
  %call.i109.i.i = call i32 %184(ptr noundef %add.ptr.i108.i.i) #10
  %or.i110.i.i = or i32 %call.i109.i.i, 1073741824
  %189 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write_fn, align 8
  %191 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %addr, align 4
  %193 = ptrtoint ptr %offset.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %offset.i107.i.i, align 4
  call void %190(ptr noundef %192, i32 noundef %194, i32 noundef %or.i110.i.i) #10
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then40.i.i, %sw.epilog.i.i.if.end41.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %xudc_handle_setup.exit.i

xudc_handle_setup.exit.i:                         ; preds = %if.end41.i.i, %cleanup.sink.split.i.i.i, %sw.epilog58.i.i.i.xudc_handle_setup.exit.i_crit_edge, %do.end.i81.i.i, %if.end27.i.i.xudc_handle_setup.exit.i_crit_edge, %do.end.i.i.i, %sw.epilog.i.i.i.xudc_handle_setup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup.i.i) #10
  br label %for.body.preheader

if.else.i:                                        ; preds = %if.then23
  %and1.i = and i32 %call10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %queue.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 1
  %195 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %queue.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %196, i32 -56
  %setupseqrx.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 9
  %197 = ptrtoint ptr %setupseqrx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %setupseqrx.i.i, align 8
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %198, label %if.then3.i.for.body.preheader_crit_edge [
    i32 2, label %sw.bb.i16.i
    i32 1, label %sw.bb3.i.i
  ]

if.then3.i.for.body.preheader_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

sw.bb.i16.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep.i15.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1
  %200 = ptrtoint ptr %setupseqrx.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %setupseqrx.i.i, align 8
  %setupseqtx.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 8
  %201 = ptrtoint ptr %setupseqtx.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %setupseqtx.i.i, align 4
  %length.i.i = getelementptr i8, ptr %196, i32 -52
  %202 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %length.i.i, align 4
  %actual.i.i = getelementptr i8, ptr %196, i32 -4
  %204 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %actual.i.i, align 4
  tail call fastcc void @xudc_done(ptr noundef %ep.i15.i, ptr noundef %add.ptr.i14.i, i32 noundef 0) #10
  br label %for.body.preheader

sw.bb3.i.i:                                       ; preds = %if.then3.i
  %205 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read_fn, align 4
  %207 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %addr, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %208, i32 8
  %call.i18.i = tail call i32 %206(ptr noundef %add.ptr4.i.i) #10
  %209 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %addr, align 4
  %rambase.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 4
  %211 = ptrtoint ptr %rambase.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rambase.i.i, align 4
  %shl.i.i = shl i32 %212, 2
  %add.ptr6.i.i = getelementptr i8, ptr %210, i32 %shl.i.i
  %213 = ptrtoint ptr %add.ptr.i14.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr.i14.i, align 4
  %actual9.i.i = getelementptr i8, ptr %196, i32 -4
  %215 = ptrtoint ptr %actual9.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %actual9.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %214, i32 %216
  %add.i.i = add i32 %216, %call.i18.i
  store i32 %add.i.i, ptr %actual9.i.i, align 4
  %217 = call ptr @memcpy(ptr %add.ptr10.i.i, ptr %add.ptr6.i.i, i32 %call.i18.i)
  %length16.i.i = getelementptr i8, ptr %196, i32 -52
  %218 = ptrtoint ptr %length16.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %length16.i.i, align 4
  %220 = load i32, ptr %actual9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %220)
  %cmp.i.i = icmp eq i32 %219, %220
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %221 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read_fn, align 4
  %223 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %addr, align 4
  %offset.i.i19.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %225 = ptrtoint ptr %offset.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %offset.i.i19.i, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %224, i32 %226
  %call.i.i21.i = tail call i32 %222(ptr noundef %add.ptr.i.i20.i) #10
  %or.i.i22.i = or i32 %call.i.i21.i, 134217728
  %227 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %write_fn, align 8
  %229 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %addr, align 4
  %231 = ptrtoint ptr %offset.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %offset.i.i19.i, align 4
  tail call void %228(ptr noundef %230, i32 noundef %232, i32 noundef %or.i.i22.i) #10
  %233 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %write_fn, align 8
  %235 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %addr, align 4
  %237 = ptrtoint ptr %offset.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %offset.i.i19.i, align 4
  %add.i.i.i = add i32 %238, 8
  tail call void %234(ptr noundef %236, i32 noundef %add.i.i.i, i32 noundef 0) #10
  %239 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write_fn, align 8
  %241 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %addr, align 4
  tail call void %240(ptr noundef %242, i32 noundef 276, i32 noundef 1) #10
  br label %for.body.preheader

if.else.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write_fn, align 8
  %245 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %addr, align 4
  tail call void %244(ptr noundef %246, i32 noundef 8, i32 noundef 0) #10
  %247 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %write_fn, align 8
  %249 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %addr, align 4
  tail call void %248(ptr noundef %250, i32 noundef 276, i32 noundef 1) #10
  br label %for.body.preheader

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %call10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else4.i.for.body.preheader_crit_edge, label %if.then7.i

if.else4.i.for.body.preheader_crit_edge:          ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then7.i:                                       ; preds = %if.else4.i
  %ep.i25.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1
  %setup.i26.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3
  %wIndex.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 3
  %251 = ptrtoint ptr %wIndex.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %wIndex.i.i, align 4
  %253 = lshr i16 %252, 8
  %conv1.i.i = zext i16 %253 to i32
  %queue.i27.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 1
  %254 = ptrtoint ptr %queue.i27.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %queue.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %255, i32 -56
  %length2.i.i = getelementptr i8, ptr %255, i32 -52
  %256 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %length2.i.i, align 4
  %actual.i29.i = getelementptr i8, ptr %255, i32 -4
  %258 = ptrtoint ptr %actual.i29.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %actual.i29.i, align 4
  %sub.i.i = sub i32 %257, %259
  %setupseqtx.i30.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 8
  %260 = ptrtoint ptr %setupseqtx.i30.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %setupseqtx.i30.i, align 4
  %262 = zext i32 %261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %261, label %if.then7.i.for.body.preheader_crit_edge [
    i32 2, label %sw.bb.i32.i
    i32 1, label %sw.bb27.i.i
  ]

if.then7.i.for.body.preheader_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

sw.bb.i32.i:                                      ; preds = %if.then7.i
  %bRequest.i31.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 1
  %263 = ptrtoint ptr %bRequest.i31.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %bRequest.i31.i, align 1
  %265 = zext i8 %264 to i64
  call void @__sanitizer_cov_trace_switch(i64 %265, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %264, label %sw.bb.i32.i.sw.epilog.i37.i_crit_edge [
    i8 5, label %sw.bb6.i.i
    i8 3, label %sw.bb9.i.i
  ]

sw.bb.i32.i.sw.epilog.i37.i_crit_edge:            ; preds = %sw.bb.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i37.i

sw.bb6.i.i:                                       ; preds = %sw.bb.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %266 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write_fn, align 8
  %268 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %addr, align 4
  %wValue.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 2
  %270 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %wValue.i.i, align 2
  %conv8.i.i = zext i16 %271 to i32
  tail call void %267(ptr noundef %269, i32 noundef 256, i32 noundef %conv8.i.i) #10
  br label %sw.epilog.i37.i

sw.bb9.i.i:                                       ; preds = %sw.bb.i32.i
  %272 = ptrtoint ptr %setup.i26.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %setup.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp.i35.i = icmp eq i8 %273, 0
  br i1 %cmp.i35.i, label %if.then.i36.i, label %sw.bb9.i.i.sw.epilog.i37.i_crit_edge

sw.bb9.i.i.sw.epilog.i37.i_crit_edge:             ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i37.i

if.then.i36.i:                                    ; preds = %sw.bb9.i.i
  %wValue14.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 3, i32 2
  %274 = ptrtoint ptr %wValue14.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %wValue14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %275)
  %cmp16.i.i = icmp eq i16 %275, 2
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.then.i36.i.sw.epilog.i37.i_crit_edge

if.then.i36.i.sw.epilog.i37.i_crit_edge:          ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i37.i

if.then18.i.i:                                    ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  %276 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write_fn, align 8
  %278 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %addr, align 4
  tail call void %277(ptr noundef %279, i32 noundef 280, i32 noundef %conv1.i.i) #10
  br label %sw.epilog.i37.i

sw.epilog.i37.i:                                  ; preds = %if.then18.i.i, %if.then.i36.i.sw.epilog.i37.i_crit_edge, %sw.bb9.i.i.sw.epilog.i37.i_crit_edge, %sw.bb6.i.i, %sw.bb.i32.i.sw.epilog.i37.i_crit_edge
  %280 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %length2.i.i, align 4
  %282 = ptrtoint ptr %actual.i29.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %actual.i29.i, align 4
  tail call fastcc void @xudc_done(ptr noundef %ep.i25.i, ptr noundef %add.ptr.i28.i, i32 noundef 0) #10
  br label %for.body.preheader

sw.bb27.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %259)
  %tobool.not.i38.i = icmp eq i32 %257, %259
  br i1 %tobool.not.i38.i, label %if.then28.i.i, label %if.else.i44.i

if.then28.i.i:                                    ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %283 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %read_fn, align 4
  %285 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %addr, align 4
  %offset.i.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 5
  %287 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %offset.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %286, i32 %288
  %call.i40.i = tail call i32 %284(ptr noundef %add.ptr30.i.i) #10
  %or.i.i = or i32 %call.i40.i, 134217728
  %289 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write_fn, align 8
  %291 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %addr, align 4
  %293 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %offset.i.i, align 4
  tail call void %290(ptr noundef %292, i32 noundef %294, i32 noundef %or.i.i) #10
  %295 = ptrtoint ptr %setupseqtx.i30.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 2, ptr %setupseqtx.i30.i, align 4
  br label %if.end51.i.i

if.else.i44.i:                                    ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i.i)
  %cmp36.i.i = icmp ult i32 %sub.i.i, 64
  %phi.bo.i.i = and i32 %sub.i.i, 65535
  %cond.i.i = select i1 %cmp36.i.i, i32 %phi.bo.i.i, i32 64
  %296 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %addr, align 4
  %rambase.i41.i = getelementptr inbounds %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 4
  %298 = ptrtoint ptr %rambase.i41.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %rambase.i41.i, align 4
  %shl.i42.i = shl i32 %299, 2
  %add.ptr40.i.i = getelementptr i8, ptr %297, i32 %shl.i42.i
  %300 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %add.ptr.i28.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %301, i32 %259
  %add.i43.i = add i32 %cond.i.i, %259
  %302 = ptrtoint ptr %actual.i29.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %add.i43.i, ptr %actual.i29.i, align 4
  %303 = call ptr @memcpy(ptr %add.ptr40.i.i, ptr %add.ptr44.i.i, i32 %cond.i.i)
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.else.i44.i, %if.then28.i.i
  %count.0.i.i = phi i32 [ %cond.i.i, %if.else.i44.i ], [ 0, %if.then28.i.i ]
  %304 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %write_fn, align 8
  %306 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %addr, align 4
  tail call void %305(ptr noundef %307, i32 noundef 8, i32 noundef %count.0.i.i) #10
  %308 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write_fn, align 8
  %310 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %addr, align 4
  tail call void %309(ptr noundef %311, i32 noundef 276, i32 noundef 1) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end51.i.i, %sw.epilog.i37.i, %if.then7.i.for.body.preheader_crit_edge, %if.else4.i.for.body.preheader_crit_edge, %if.else.i.i, %if.then.i.i, %sw.bb.i16.i, %if.then3.i.for.body.preheader_crit_edge, %xudc_handle_setup.exit.i, %if.then14.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %shl = shl nuw i32 1, %indvars.iv
  %and29 = and i32 %shl, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp ne i32 %and29, 0
  %shl33 = shl nuw i32 256, %indvars.iv
  %and34 = and i32 %shl33, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35 = icmp ne i32 %and34, 0
  %312 = select i1 %tobool30.not, i1 true, i1 %tobool35
  br i1 %312, label %if.then37, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then37:                                        ; preds = %for.body
  %arrayidx.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %indvars.iv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not.i70 = icmp eq i32 %and29, 0
  br i1 %tobool.not.i70, label %if.then37.if.end.i_crit_edge, label %if.then.i71

if.then37.if.end.i_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i71:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %buffer0ready.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %indvars.iv, i32 12
  %313 = ptrtoint ptr %buffer0ready.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %buffer0ready.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i71, %if.then37.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool5.not.i = icmp eq i32 %and34, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer1ready.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %indvars.iv, i32 13
  %314 = ptrtoint ptr %buffer1ready.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 0, ptr %buffer1ready.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %queue.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %indvars.iv, i32 1
  %315 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %316, %queue.i
  br i1 %cmp.i.not.i, label %if.end7.i.for.inc_crit_edge, label %if.end10.i

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %316, i32 -56
  %is_in.i = getelementptr %struct.xusb_udc, ptr %_udc, i32 0, i32 1, i32 %indvars.iv, i32 14
  %317 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %is_in.i, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool12.not.i = icmp eq i8 %318, 0
  br i1 %tobool12.not.i, label %if.else.i72, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call fastcc i32 @xudc_write_fifo(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #10
  br label %for.inc

if.else.i72:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i = call fastcc i32 @xudc_read_fifo(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else.i72, %if.then13.i, %if.end7.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc.if.end39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %for.inc.if.end39_crit_edge, %if.end.if.end39_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xudc_write32_be(ptr noundef %addr, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %addr, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #10, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_read32_be(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xudc_write32(ptr noundef %addr, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %addr, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #10, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_read32(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !209
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xudc_startup_handler(ptr noundef %udc, i32 noundef %intrstatus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intrstatus, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %do.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_startup_handler.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_startup_handler, %do.end)) #10
          to label %if.then5 [label %do.end], !srcloc !203

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_startup_handler.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.21) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %and6 = and i32 %intrstatus, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i32 2, i32 3
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  tail call fastcc void @xudc_stop_activity(ptr noundef %udc)
  %read_fn.i = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 10
  %write_fn.i = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end
  %i.030.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %read_fn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_fn.i, align 4
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 4
  %offset.i = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 %i.030.i, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %9
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #10
  %and.i = and i32 %call.i, -1073741825
  %10 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_fn.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 4
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  tail call void %11(ptr noundef %13, i32 noundef %15, i32 noundef %and.i) #10
  %epnumber.i = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 %i.030.i, i32 7
  %16 = ptrtoint ptr %epnumber.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %epnumber.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %read_fn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_fn.i, align 4
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 4
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %21, i32 %23
  %call8.i = tail call i32 %19(ptr noundef %add.ptr7.i) #10
  %and9.i = and i32 %call8.i, -134217729
  %24 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_fn.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  tail call void %25(ptr noundef %27, i32 noundef %29, i32 noundef %and9.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %xudc_clear_stall_all_ep.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xudc_clear_stall_all_ep.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_fn.i, align 8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef 280, i32 noundef 0) #10
  %34 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_fn.i, align 8
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i, align 4
  tail call void %35(ptr noundef %37, i32 noundef 256, i32 noundef 0) #10
  %remote_wkp = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 7
  %38 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %remote_wkp, align 8
  %39 = ptrtoint ptr %read_fn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_fn.i, align 4
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 272
  %call15 = tail call i32 %40(ptr noundef %add.ptr) #10
  %or = or i32 %call15, 23068672
  %43 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_fn.i, align 8
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %addr.i, align 4
  tail call void %44(ptr noundef %46, i32 noundef 272, i32 noundef %or) #10
  br label %if.end18

if.end18:                                         ; preds = %xudc_clear_stall_all_ep.exit, %entry.if.end18_crit_edge
  %and19 = and i32 %intrstatus, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end55_crit_edge, label %do.body22

if.end18.if.end55_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.body22:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_startup_handler.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_startup_handler, %do.end40)) #10
          to label %if.then36 [label %do.end40], !srcloc !203

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %dev37 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 5
  %47 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev37, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_startup_handler.__UNIQUE_ID_ddebug266, ptr noundef %48, ptr noundef nonnull @.str.22) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body22
  %read_fn41 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 14
  %49 = ptrtoint ptr %read_fn41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_fn41, align 4
  %addr42 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 10
  %51 = ptrtoint ptr %addr42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr42, align 4
  %add.ptr43 = getelementptr i8, ptr %52, i32 272
  %call44 = tail call i32 %50(ptr noundef %add.ptr43) #10
  %or45 = or i32 %call44, 27262976
  %write_fn46 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 15
  %53 = ptrtoint ptr %write_fn46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_fn46, align 8
  %55 = ptrtoint ptr %addr42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr42, align 4
  tail call void %54(ptr noundef %56, i32 noundef 272, i32 noundef %or45) #10
  %usb_state = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 6
  %57 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %usb_state, align 4
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 2
  %58 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver, align 8
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %suspend, align 4
  %tobool48.not = icmp eq ptr %61, null
  br i1 %tobool48.not, label %do.end40.if.end55_crit_edge, label %if.then49

do.end40.if.end55_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then49:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %62 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver, align 8
  %suspend51 = getelementptr inbounds %struct.usb_gadget_driver, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %suspend51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %suspend51, align 4
  tail call void %65(ptr noundef %udc) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %do.end40.if.end55_crit_edge, %if.end18.if.end55_crit_edge
  %and56 = and i32 %intrstatus, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end151_crit_edge, label %if.then58

if.end55.if.end151_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then58:                                        ; preds = %if.end55
  %usb_state59 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 6
  %66 = ptrtoint ptr %usb_state59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usb_state59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %cmp.not = icmp eq i32 %67, 8
  br i1 %cmp.not, label %if.then58.if.end107_crit_edge, label %land.rhs

if.then58.if.end107_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

land.rhs:                                         ; preds = %if.then58
  %.b255 = load i1, ptr @xudc_startup_handler.__already_done, align 1
  br i1 %.b255, label %land.rhs.if.end107_crit_edge, label %if.then77, !prof !213

land.rhs.if.end107_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then77:                                        ; preds = %land.rhs
  store i1 true, ptr @xudc_startup_handler.__already_done, align 1
  %dev90 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 5
  %68 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev90, align 8
  %call91 = tail call ptr @dev_driver_string(ptr noundef %69) #10
  %70 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev90, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i265 = icmp eq ptr %73, null
  br i1 %tobool.not.i265, label %if.end.i, label %if.then77.dev_name.exit_crit_edge

if.then77.dev_name.exit_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then77.dev_name.exit_crit_edge
  %retval.0.i266 = phi ptr [ %75, %if.end.i ], [ %73, %if.then77.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1517, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call91, ptr noundef %retval.0.i266) #10
  br label %if.end107

if.end107:                                        ; preds = %dev_name.exit, %land.rhs.if.end107_crit_edge, %if.then58.if.end107_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_startup_handler.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_startup_handler, %do.end133)) #10
          to label %if.then129 [label %do.end133], !srcloc !203

if.then129:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %dev130 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 5
  %76 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev130, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_startup_handler.__UNIQUE_ID_ddebug267, ptr noundef %77, ptr noundef nonnull @.str.24) #10
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %if.end107
  %read_fn134 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 14
  %78 = ptrtoint ptr %read_fn134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_fn134, align 4
  %addr135 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 10
  %80 = ptrtoint ptr %addr135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %addr135, align 4
  %add.ptr136 = getelementptr i8, ptr %81, i32 272
  %call137 = tail call i32 %79(ptr noundef %add.ptr136) #10
  %or138 = or i32 %call137, 14680064
  %write_fn139 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 15
  %82 = ptrtoint ptr %write_fn139 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_fn139, align 8
  %84 = ptrtoint ptr %addr135 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %addr135, align 4
  tail call void %83(ptr noundef %85, i32 noundef 272, i32 noundef %or138) #10
  %86 = ptrtoint ptr %usb_state59 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %usb_state59, align 4
  %driver142 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 2
  %87 = ptrtoint ptr %driver142 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver142, align 8
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %resume, align 4
  %tobool143.not = icmp eq ptr %90, null
  br i1 %tobool143.not, label %do.end133.if.end151_crit_edge, label %if.then144

do.end133.if.end151_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then144:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  %lock145 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock145) #10
  %91 = ptrtoint ptr %driver142 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %driver142, align 8
  %resume147 = getelementptr inbounds %struct.usb_gadget_driver, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %resume147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %resume147, align 4
  tail call void %94(ptr noundef %udc) #10
  tail call void @_raw_spin_lock(ptr noundef %lock145) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then144, %do.end133.if.end151_crit_edge, %if.end55.if.end151_crit_edge
  %and152 = and i32 %intrstatus, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end192_crit_edge, label %do.body155

if.end151.if.end192_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

do.body155:                                       ; preds = %if.end151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_startup_handler.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_startup_handler, %do.end173)) #10
          to label %if.then169 [label %do.end173], !srcloc !203

if.then169:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  %dev170 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 5
  %95 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev170, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_startup_handler.__UNIQUE_ID_ddebug268, ptr noundef %96, ptr noundef nonnull @.str.25) #10
  br label %do.end173

do.end173:                                        ; preds = %if.then169, %do.body155
  %read_fn174 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 14
  %97 = ptrtoint ptr %read_fn174 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read_fn174, align 4
  %addr175 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 10
  %99 = ptrtoint ptr %addr175 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %addr175, align 4
  %add.ptr176 = getelementptr i8, ptr %100, i32 272
  %call177 = tail call i32 %98(ptr noundef %add.ptr176) #10
  %or178 = or i32 %call177, 29360128
  %write_fn179 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 15
  %101 = ptrtoint ptr %write_fn179 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_fn179, align 8
  %103 = ptrtoint ptr %addr175 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %addr175, align 4
  tail call void %102(ptr noundef %104, i32 noundef 272, i32 noundef %or178) #10
  %driver181 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 2
  %105 = ptrtoint ptr %driver181 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver181, align 8
  %tobool182.not = icmp eq ptr %106, null
  br i1 %tobool182.not, label %do.end173.if.end192_crit_edge, label %land.lhs.true

do.end173.if.end192_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

land.lhs.true:                                    ; preds = %do.end173
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %disconnect, align 4
  %tobool184.not = icmp eq ptr %108, null
  br i1 %tobool184.not, label %land.lhs.true.if.end192_crit_edge, label %if.then185

land.lhs.true.if.end192_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then185:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %lock186 = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock186) #10
  %109 = ptrtoint ptr %driver181 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver181, align 8
  %disconnect188 = getelementptr inbounds %struct.usb_gadget_driver, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %disconnect188 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %disconnect188, align 4
  tail call void %112(ptr noundef %udc) #10
  tail call void @_raw_spin_lock(ptr noundef %lock186) #10
  br label %if.end192

if.end192:                                        ; preds = %if.then185, %land.lhs.true.if.end192_crit_edge, %do.end173.if.end192_crit_edge, %if.end151.if.end192_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xudc_stop_activity(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 0
  %queue.i = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %1, %queue.i
  br i1 %cmp.i.not4.i, label %entry.xudc_nuke.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.xudc_nuke.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %4, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.xudc_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.xudc_nuke.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit

xudc_nuke.exit:                                   ; preds = %while.body.i.xudc_nuke.exit_crit_edge, %entry.xudc_nuke.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 1
  %queue.i.1 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i.not4.i.1 = icmp eq ptr %6, %queue.i.1
  br i1 %cmp.i.not4.i.1, label %xudc_nuke.exit.xudc_nuke.exit.1_crit_edge, label %xudc_nuke.exit.while.body.i.1_crit_edge

xudc_nuke.exit.while.body.i.1_crit_edge:          ; preds = %xudc_nuke.exit
  br label %while.body.i.1

xudc_nuke.exit.xudc_nuke.exit.1_crit_edge:        ; preds = %xudc_nuke.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %xudc_nuke.exit.while.body.i.1_crit_edge
  %7 = phi ptr [ %9, %while.body.i.1.while.body.i.1_crit_edge ], [ %6, %xudc_nuke.exit.while.body.i.1_crit_edge ]
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.1, ptr noundef %add.ptr.i.1, i32 noundef -108) #10
  %8 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %9, %queue.i.1
  br i1 %cmp.i.not.i.1, label %while.body.i.1.xudc_nuke.exit.1_crit_edge, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.1

while.body.i.1.xudc_nuke.exit.1_crit_edge:        ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.1

xudc_nuke.exit.1:                                 ; preds = %while.body.i.1.xudc_nuke.exit.1_crit_edge, %xudc_nuke.exit.xudc_nuke.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 2
  %queue.i.2 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i.not4.i.2 = icmp eq ptr %11, %queue.i.2
  br i1 %cmp.i.not4.i.2, label %xudc_nuke.exit.1.xudc_nuke.exit.2_crit_edge, label %xudc_nuke.exit.1.while.body.i.2_crit_edge

xudc_nuke.exit.1.while.body.i.2_crit_edge:        ; preds = %xudc_nuke.exit.1
  br label %while.body.i.2

xudc_nuke.exit.1.xudc_nuke.exit.2_crit_edge:      ; preds = %xudc_nuke.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.2

while.body.i.2:                                   ; preds = %while.body.i.2.while.body.i.2_crit_edge, %xudc_nuke.exit.1.while.body.i.2_crit_edge
  %12 = phi ptr [ %14, %while.body.i.2.while.body.i.2_crit_edge ], [ %11, %xudc_nuke.exit.1.while.body.i.2_crit_edge ]
  %add.ptr.i.2 = getelementptr i8, ptr %12, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.2, ptr noundef %add.ptr.i.2, i32 noundef -108) #10
  %13 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %14, %queue.i.2
  br i1 %cmp.i.not.i.2, label %while.body.i.2.xudc_nuke.exit.2_crit_edge, label %while.body.i.2.while.body.i.2_crit_edge

while.body.i.2.while.body.i.2_crit_edge:          ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.2

while.body.i.2.xudc_nuke.exit.2_crit_edge:        ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.2

xudc_nuke.exit.2:                                 ; preds = %while.body.i.2.xudc_nuke.exit.2_crit_edge, %xudc_nuke.exit.1.xudc_nuke.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 3
  %queue.i.3 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 3, i32 1
  %15 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i.not4.i.3 = icmp eq ptr %16, %queue.i.3
  br i1 %cmp.i.not4.i.3, label %xudc_nuke.exit.2.xudc_nuke.exit.3_crit_edge, label %xudc_nuke.exit.2.while.body.i.3_crit_edge

xudc_nuke.exit.2.while.body.i.3_crit_edge:        ; preds = %xudc_nuke.exit.2
  br label %while.body.i.3

xudc_nuke.exit.2.xudc_nuke.exit.3_crit_edge:      ; preds = %xudc_nuke.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.3

while.body.i.3:                                   ; preds = %while.body.i.3.while.body.i.3_crit_edge, %xudc_nuke.exit.2.while.body.i.3_crit_edge
  %17 = phi ptr [ %19, %while.body.i.3.while.body.i.3_crit_edge ], [ %16, %xudc_nuke.exit.2.while.body.i.3_crit_edge ]
  %add.ptr.i.3 = getelementptr i8, ptr %17, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.3, ptr noundef %add.ptr.i.3, i32 noundef -108) #10
  %18 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %19, %queue.i.3
  br i1 %cmp.i.not.i.3, label %while.body.i.3.xudc_nuke.exit.3_crit_edge, label %while.body.i.3.while.body.i.3_crit_edge

while.body.i.3.while.body.i.3_crit_edge:          ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.3

while.body.i.3.xudc_nuke.exit.3_crit_edge:        ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.3

xudc_nuke.exit.3:                                 ; preds = %while.body.i.3.xudc_nuke.exit.3_crit_edge, %xudc_nuke.exit.2.xudc_nuke.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 4
  %queue.i.4 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 4, i32 1
  %20 = ptrtoint ptr %queue.i.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue.i.4, align 4
  %cmp.i.not4.i.4 = icmp eq ptr %21, %queue.i.4
  br i1 %cmp.i.not4.i.4, label %xudc_nuke.exit.3.xudc_nuke.exit.4_crit_edge, label %xudc_nuke.exit.3.while.body.i.4_crit_edge

xudc_nuke.exit.3.while.body.i.4_crit_edge:        ; preds = %xudc_nuke.exit.3
  br label %while.body.i.4

xudc_nuke.exit.3.xudc_nuke.exit.4_crit_edge:      ; preds = %xudc_nuke.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.4

while.body.i.4:                                   ; preds = %while.body.i.4.while.body.i.4_crit_edge, %xudc_nuke.exit.3.while.body.i.4_crit_edge
  %22 = phi ptr [ %24, %while.body.i.4.while.body.i.4_crit_edge ], [ %21, %xudc_nuke.exit.3.while.body.i.4_crit_edge ]
  %add.ptr.i.4 = getelementptr i8, ptr %22, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.4, ptr noundef %add.ptr.i.4, i32 noundef -108) #10
  %23 = ptrtoint ptr %queue.i.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue.i.4, align 4
  %cmp.i.not.i.4 = icmp eq ptr %24, %queue.i.4
  br i1 %cmp.i.not.i.4, label %while.body.i.4.xudc_nuke.exit.4_crit_edge, label %while.body.i.4.while.body.i.4_crit_edge

while.body.i.4.while.body.i.4_crit_edge:          ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.4

while.body.i.4.xudc_nuke.exit.4_crit_edge:        ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.4

xudc_nuke.exit.4:                                 ; preds = %while.body.i.4.xudc_nuke.exit.4_crit_edge, %xudc_nuke.exit.3.xudc_nuke.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 5
  %queue.i.5 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 5, i32 1
  %25 = ptrtoint ptr %queue.i.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue.i.5, align 4
  %cmp.i.not4.i.5 = icmp eq ptr %26, %queue.i.5
  br i1 %cmp.i.not4.i.5, label %xudc_nuke.exit.4.xudc_nuke.exit.5_crit_edge, label %xudc_nuke.exit.4.while.body.i.5_crit_edge

xudc_nuke.exit.4.while.body.i.5_crit_edge:        ; preds = %xudc_nuke.exit.4
  br label %while.body.i.5

xudc_nuke.exit.4.xudc_nuke.exit.5_crit_edge:      ; preds = %xudc_nuke.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.5

while.body.i.5:                                   ; preds = %while.body.i.5.while.body.i.5_crit_edge, %xudc_nuke.exit.4.while.body.i.5_crit_edge
  %27 = phi ptr [ %29, %while.body.i.5.while.body.i.5_crit_edge ], [ %26, %xudc_nuke.exit.4.while.body.i.5_crit_edge ]
  %add.ptr.i.5 = getelementptr i8, ptr %27, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.5, ptr noundef %add.ptr.i.5, i32 noundef -108) #10
  %28 = ptrtoint ptr %queue.i.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %queue.i.5, align 4
  %cmp.i.not.i.5 = icmp eq ptr %29, %queue.i.5
  br i1 %cmp.i.not.i.5, label %while.body.i.5.xudc_nuke.exit.5_crit_edge, label %while.body.i.5.while.body.i.5_crit_edge

while.body.i.5.while.body.i.5_crit_edge:          ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.5

while.body.i.5.xudc_nuke.exit.5_crit_edge:        ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.5

xudc_nuke.exit.5:                                 ; preds = %while.body.i.5.xudc_nuke.exit.5_crit_edge, %xudc_nuke.exit.4.xudc_nuke.exit.5_crit_edge
  %arrayidx.6 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 6
  %queue.i.6 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 6, i32 1
  %30 = ptrtoint ptr %queue.i.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %queue.i.6, align 4
  %cmp.i.not4.i.6 = icmp eq ptr %31, %queue.i.6
  br i1 %cmp.i.not4.i.6, label %xudc_nuke.exit.5.xudc_nuke.exit.6_crit_edge, label %xudc_nuke.exit.5.while.body.i.6_crit_edge

xudc_nuke.exit.5.while.body.i.6_crit_edge:        ; preds = %xudc_nuke.exit.5
  br label %while.body.i.6

xudc_nuke.exit.5.xudc_nuke.exit.6_crit_edge:      ; preds = %xudc_nuke.exit.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.6

while.body.i.6:                                   ; preds = %while.body.i.6.while.body.i.6_crit_edge, %xudc_nuke.exit.5.while.body.i.6_crit_edge
  %32 = phi ptr [ %34, %while.body.i.6.while.body.i.6_crit_edge ], [ %31, %xudc_nuke.exit.5.while.body.i.6_crit_edge ]
  %add.ptr.i.6 = getelementptr i8, ptr %32, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.6, ptr noundef %add.ptr.i.6, i32 noundef -108) #10
  %33 = ptrtoint ptr %queue.i.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %queue.i.6, align 4
  %cmp.i.not.i.6 = icmp eq ptr %34, %queue.i.6
  br i1 %cmp.i.not.i.6, label %while.body.i.6.xudc_nuke.exit.6_crit_edge, label %while.body.i.6.while.body.i.6_crit_edge

while.body.i.6.while.body.i.6_crit_edge:          ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.6

while.body.i.6.xudc_nuke.exit.6_crit_edge:        ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.6

xudc_nuke.exit.6:                                 ; preds = %while.body.i.6.xudc_nuke.exit.6_crit_edge, %xudc_nuke.exit.5.xudc_nuke.exit.6_crit_edge
  %arrayidx.7 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 7
  %queue.i.7 = getelementptr %struct.xusb_udc, ptr %udc, i32 0, i32 1, i32 7, i32 1
  %35 = ptrtoint ptr %queue.i.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %queue.i.7, align 4
  %cmp.i.not4.i.7 = icmp eq ptr %36, %queue.i.7
  br i1 %cmp.i.not4.i.7, label %xudc_nuke.exit.6.xudc_nuke.exit.7_crit_edge, label %xudc_nuke.exit.6.while.body.i.7_crit_edge

xudc_nuke.exit.6.while.body.i.7_crit_edge:        ; preds = %xudc_nuke.exit.6
  br label %while.body.i.7

xudc_nuke.exit.6.xudc_nuke.exit.7_crit_edge:      ; preds = %xudc_nuke.exit.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.7

while.body.i.7:                                   ; preds = %while.body.i.7.while.body.i.7_crit_edge, %xudc_nuke.exit.6.while.body.i.7_crit_edge
  %37 = phi ptr [ %39, %while.body.i.7.while.body.i.7_crit_edge ], [ %36, %xudc_nuke.exit.6.while.body.i.7_crit_edge ]
  %add.ptr.i.7 = getelementptr i8, ptr %37, i32 -56
  tail call fastcc void @xudc_done(ptr noundef %arrayidx.7, ptr noundef %add.ptr.i.7, i32 noundef -108) #10
  %38 = ptrtoint ptr %queue.i.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %queue.i.7, align 4
  %cmp.i.not.i.7 = icmp eq ptr %39, %queue.i.7
  br i1 %cmp.i.not.i.7, label %while.body.i.7.xudc_nuke.exit.7_crit_edge, label %while.body.i.7.while.body.i.7_crit_edge

while.body.i.7.while.body.i.7_crit_edge:          ; preds = %while.body.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.7

while.body.i.7.xudc_nuke.exit.7_crit_edge:        ; preds = %while.body.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit.7

xudc_nuke.exit.7:                                 ; preds = %while.body.i.7.xudc_nuke.exit.7_crit_edge, %xudc_nuke.exit.6.xudc_nuke.exit.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %queue = getelementptr inbounds %struct.xusb_req, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.xusb_req, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.xusb_req, ptr %req, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp = icmp eq i32 %11, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %11, %list_del_init.exit.if.end_crit_edge ]
  %13 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %status.addr.0, label %do.body [
    i32 0, label %if.end.if.end15_crit_edge
    i32 -108, label %if.end.if.end15_crit_edge57
  ]

if.end.if.end15_crit_edge57:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_done.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_done, %if.end15)) #10
          to label %if.then13 [label %if.end15], !srcloc !203

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_done.__UNIQUE_ID_ddebug234, ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef %17, ptr noundef %req, i32 noundef %status.addr.0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body, %if.end.if.end15_crit_edge, %if.end.if.end15_crit_edge57
  %dma_enabled = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dma_enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %if.end15.if.end26_crit_edge, label %land.lhs.true17

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true17:                                  ; preds = %if.end15
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %20 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %epnumber, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool18.not = icmp eq i16 %21, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end26_crit_edge, label %land.lhs.true19

land.lhs.true17.if.end26_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end26_crit_edge, label %if.then22

land.lhs.true19.if.end26_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %24 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_in, align 1, !range !208
  %26 = zext i8 %25 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %1, ptr noundef %req, i32 noundef %26) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true19.if.end26_crit_edge, %land.lhs.true17.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %27 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %complete, align 4
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %if.end26.if.end35_crit_edge, label %if.then29

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete, align 4
  tail call void %30(ptr noundef %ep, ptr noundef %req) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end26.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xudc_ep0_queue(ptr noundef %ep0, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.xusb_ep, ptr %ep0, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %if.end7

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep0_queue.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep0_queue, %cleanup)) #10
          to label %if.then6 [label %cleanup], !srcloc !203

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep0_queue.__UNIQUE_ID_ddebug256, ptr noundef %7, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %queue = getelementptr inbounds %struct.xusb_ep, ptr %ep0, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  br i1 %cmp.i.not, label %if.end30, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep0_queue.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep0_queue, %cleanup)) #10
          to label %if.then25 [label %cleanup], !srcloc !203

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %dev26 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep0_queue.__UNIQUE_ID_ddebug257, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end7
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %actual, align 4
  %queue32 = getelementptr inbounds %struct.xusb_req, ptr %req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.xusb_ep, ptr %ep0, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue32, ptr noundef %15, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_add_tail.exit_crit_edge

if.end30.list_add_tail.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue32, ptr %prev.i, align 4
  %17 = ptrtoint ptr %queue32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue, ptr %queue32, align 4
  %prev3.i.i = getelementptr inbounds %struct.xusb_req, ptr %req, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue32, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end30.list_add_tail.exit_crit_edge
  %setup = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool34.not = icmp sgt i8 %21, -1
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %23) #10, !srcloc !214
  %length38 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %length38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length38, align 4
  %rambase = getelementptr inbounds %struct.xusb_ep, ptr %ep0, i32 0, i32 4
  %26 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rambase, align 4
  %shl = shl i32 %27, 2
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %shl
  %30 = tail call i32 @llvm.umin.i32(i32 %25, i32 64)
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %actual, align 4
  %32 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req, align 4
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %33, i32 %30)
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_fn, align 8
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr, align 4
  tail call void %36(ptr noundef %38, i32 noundef 8, i32 noundef %30) #10
  %39 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_fn, align 8
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr, align 4
  tail call void %40(ptr noundef %42, i32 noundef 276, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %list_add_tail.exit
  %wLength = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %wLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool50.not = icmp eq i16 %44, 0
  br i1 %tobool50.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %write_fn52 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %45 = ptrtoint ptr %write_fn52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_fn52, align 8
  %addr53 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %addr53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr53, align 4
  tail call void %46(ptr noundef %48, i32 noundef 8, i32 noundef 0) #10
  %49 = ptrtoint ptr %write_fn52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_fn52, align 8
  %51 = ptrtoint ptr %addr53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr53, align 4
  tail call void %50(ptr noundef %52, i32 noundef 276, i32 noundef 1) #10
  br label %cleanup

if.else56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %read_fn.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %53 = ptrtoint ptr %read_fn.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_fn.i, align 4
  %addr.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i, align 4
  %offset.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 1, i32 0, i32 5
  %57 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 %58
  %call.i = tail call i32 %54(ptr noundef %add.ptr.i) #10
  %or.i = or i32 %call.i, 134217728
  %write_fn.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %59 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_fn.i, align 8
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr.i, align 4
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i, align 4
  tail call void %60(ptr noundef %62, i32 noundef %64, i32 noundef %or.i) #10
  %65 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_fn.i, align 8
  %67 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %addr.i, align 4
  %69 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %70, 8
  tail call void %66(ptr noundef %68, i32 noundef %add.i, i32 noundef 0) #10
  %71 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_fn.i, align 8
  %73 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr.i, align 4
  tail call void %72(ptr noundef %74, i32 noundef 276, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %if.then51, %if.then35, %if.then25, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -16, %if.then25 ], [ 0, %if.then51 ], [ 0, %if.else56 ], [ 0, %if.then35 ], [ -22, %do.body ], [ -16, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xudc_write_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc2 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %desc = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wMaxPacketSize, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #10, !srcloc !214
  %length6 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length6, align 4
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  %sub = sub i32 %12, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv)
  %call = tail call fastcc i32 @xudc_eptxrx(ptr noundef %ep, ptr noundef %req, ptr noundef %add.ptr, i32 noundef %15)
  %16 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 -11, label %do.body58
    i32 -22, label %entry.sw.bb77_crit_edge
    i32 -110, label %entry.sw.bb77_crit_edge111
  ]

entry.sw.bb77_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

entry.sw.bb77_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %17 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual, align 4
  %add = add i32 %18, %15
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp12.not.not = icmp ult i32 %sub, %conv
  br i1 %cmp12.not.not, label %sw.bb.do.body_crit_edge, label %if.else, !prof !215

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else:                                          ; preds = %sw.bb
  %19 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp19.not = icmp eq i32 %20, %add
  br i1 %cmp19.not, label %lor.lhs.false, label %if.else.do.body_crit_edge, !prof !215

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %21 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %zero, align 4
  %22 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp ne i32 %22, 0
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false, %if.else.do.body_crit_edge, %sw.bb.do.body_crit_edge
  %tobool54.not = phi i1 [ false, %sw.bb.do.body_crit_edge ], [ true, %if.else.do.body_crit_edge ], [ %tobool28.not, %lor.lhs.false ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_write_fifo.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_write_fifo, %do.end)) #10
          to label %if.then43 [label %do.end], !srcloc !203

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %cond45 = select i1 %tobool54.not, ptr @.str.40, ptr @.str.39
  %cond47 = select i1 %cmp12.not.not, ptr @.str.41, ptr @.str.40
  %27 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length6, align 4
  %29 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual, align 4
  %sub52 = sub i32 %28, %30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_write_fifo.__UNIQUE_ID_ddebug243, ptr noundef %24, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, ptr noundef %26, i32 noundef %15, ptr noundef nonnull %cond45, ptr noundef nonnull %cond47, i32 noundef %sub52, ptr noundef %req) #10
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  br i1 %tobool54.not, label %do.end.sw.epilog_crit_edge, label %if.then55

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then55:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %sw.epilog

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_write_fifo.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_write_fifo, %sw.epilog)) #10
          to label %if.then72 [label %sw.epilog], !srcloc !203

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %dev73 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_write_fifo.__UNIQUE_ID_ddebug244, ptr noundef %32, ptr noundef nonnull @.str.42) #10
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry.sw.bb77_crit_edge, %entry.sw.bb77_crit_edge111
  tail call fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb77, %if.then72, %do.body58, %if.then55, %do.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ -11, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb77 ], [ -11, %if.then72 ], [ 0, %if.then55 ], [ -11, %do.end.sw.epilog_crit_edge ], [ -11, %do.body58 ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xudc_read_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc2 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %buffer0ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %2 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buffer0ready, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %buffer1ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %4 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer1ready, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_read_fifo.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_read_fifo, %cleanup)) #10
          to label %if.then8 [label %cleanup], !srcloc !203

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_read_fifo.__UNIQUE_ID_ddebug235, ptr noundef %7, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %curbufnum = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 11
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %offset = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %buffer1ready18 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %dev88 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %name90 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  br label %top

top:                                              ; preds = %if.end121.top_crit_edge, %if.end9
  %8 = ptrtoint ptr %curbufnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %curbufnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  %. = select i1 %tobool10.not, i32 8, i32 12
  %10 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_fn, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %.
  %call14 = tail call i32 %11(ptr noundef %add.ptr13) #10
  %16 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buffer0ready, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %top.if.end21_crit_edge

top.if.end21_crit_edge:                           ; preds = %top
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true17:                                  ; preds = %top
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %buffer1ready18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buffer1ready18, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp ne i8 %19, 0
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %top.if.end21_crit_edge
  %tobool122.not = phi i1 [ true, %top.if.end21_crit_edge ], [ %tobool19.not, %land.lhs.true17 ]
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 %23
  tail call void @llvm.prefetch.p0(ptr %add.ptr24, i32 1, i32 3, i32 1)
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %sub = sub i32 %25, %23
  %26 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %26, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %bf.cast)
  %cmp = icmp ult i32 %call14, %bf.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %tobool29.not = icmp eq i32 %25, %23
  br i1 %tobool29.not, label %if.then38, label %if.end66, !prof !215

if.then38:                                        ; preds = %if.end21
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %28)
  %cmp40.not = icmp eq i32 %28, -75
  br i1 %cmp40.not, label %if.then38.if.end63_crit_edge, label %do.body43

if.then38.if.end63_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_read_fifo.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_read_fifo, %if.end63)) #10
          to label %if.then57 [label %if.end63], !srcloc !203

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev88, align 8
  %31 = ptrtoint ptr %name90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_read_fifo.__UNIQUE_ID_ddebug236, ptr noundef %30, ptr noundef nonnull @.str.50, ptr noundef %32, i32 noundef %call14) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.body43, %if.then38.if.end63_crit_edge
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -75, ptr %status, align 4
  tail call fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef -75)
  br label %cleanup

if.end66:                                         ; preds = %if.end21
  %call67 = tail call fastcc i32 @xudc_eptxrx(ptr noundef %ep, ptr noundef %req, ptr noundef %add.ptr24, i32 noundef %call14)
  %34 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call67, label %if.end66.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 -11, label %do.body126
    i32 -22, label %if.end66.sw.bb145_crit_edge
    i32 -110, label %if.end66.sw.bb145_crit_edge247
  ]

if.end66.sw.bb145_crit_edge247:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb145

if.end66.sw.bb145_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb145

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end66
  %35 = tail call i32 @llvm.umin.i32(i32 %call14, i32 %sub)
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  %add = add i32 %37, %35
  store i32 %add, ptr %actual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_read_fifo.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_read_fifo, %do.end99)) #10
          to label %if.then87 [label %do.end99], !srcloc !203

if.then87:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev88, align 8
  %40 = ptrtoint ptr %name90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name90, align 4
  %cond92 = select i1 %cmp, ptr @.str.41, ptr @.str.40
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual, align 4
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_read_fifo.__UNIQUE_ID_ddebug239, ptr noundef %39, ptr noundef nonnull @.str.51, ptr noundef %41, i32 noundef %call14, ptr noundef nonnull %cond92, ptr noundef %req, i32 noundef %43, i32 noundef %45) #10
  br label %do.end99

do.end99:                                         ; preds = %if.then87, %sw.bb
  %46 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual, align 4
  %48 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp105 = icmp eq i32 %47, %49
  %brmerge = select i1 %cmp105, i1 true, i1 %cmp
  br i1 %brmerge, label %if.then108, label %if.end121

if.then108:                                       ; preds = %do.end99
  %dma_enabled = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dma_enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool109.not = icmp eq i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool114.not = icmp eq i32 %49, 0
  %or.cond = select i1 %tobool109.not, i1 true, i1 %tobool114.not
  br i1 %or.cond, label %if.then108.if.end120_crit_edge, label %if.then115

if.then108.if.end120_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then115:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev88, align 8
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %54 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %53, i32 noundef %55, i32 noundef %47, i32 noundef 2) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.then108.if.end120_crit_edge
  tail call fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

if.end121:                                        ; preds = %do.end99
  br i1 %tobool122.not, label %if.end121.cleanup_crit_edge, label %if.end121.top_crit_edge

if.end121.top_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %top

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body126:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_read_fifo.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_read_fifo, %cleanup)) #10
          to label %if.then140 [label %cleanup], !srcloc !203

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev88, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_read_fifo.__UNIQUE_ID_ddebug240, ptr noundef %57, ptr noundef nonnull @.str.52) #10
  br label %cleanup

sw.bb145:                                         ; preds = %if.end66.sw.bb145_crit_edge, %if.end66.sw.bb145_crit_edge247
  tail call fastcc void @xudc_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb145, %if.then140, %do.body126, %if.end121.cleanup_crit_edge, %if.end120, %if.end66.cleanup_crit_edge, %if.end63, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.end63 ], [ 0, %if.end120 ], [ -11, %if.then8 ], [ 0, %sw.bb145 ], [ -11, %if.then140 ], [ -11, %do.body ], [ -11, %do.body126 ], [ -11, %if.end121.cleanup_crit_edge ], [ -11, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xudc_eptxrx(ptr noundef %ep, ptr nocapture noundef readonly %req, ptr nocapture noundef %bufferptr, i32 noundef %bufferlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %dma_enabled = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_in, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %dma.i101 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %dma.i101 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma.i101, align 4
  %actual.i102 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %actual.i102 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual.i102, align 4
  %add.i103 = add i32 %9, %7
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %length4.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %if.then.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %13, i32 noundef %add.i103, i32 noundef %bufferlen, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge
  %curbufnum.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 11
  %14 = ptrtoint ptr %curbufnum.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %curbufnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %land.lhs.true17.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %buffer0ready.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %16 = ptrtoint ptr %buffer0ready.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buffer0ready.i, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i = icmp eq i8 %17, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i, align 4
  %rambase.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %20 = ptrtoint ptr %rambase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rambase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %22) #10
  %write_fn.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_fn.i, align 8
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i, align 4
  %offset.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %27 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset.i, align 4
  %add9.i = add i32 %28, 8
  tail call void %24(ptr noundef %26, i32 noundef %add9.i, i32 noundef %bufferlen) #10
  %29 = ptrtoint ptr %write_fn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_fn.i, align 8
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i, align 4
  %epnumber.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %33 = ptrtoint ptr %epnumber.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %epnumber.i, align 4
  %conv.i = zext i16 %34 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, 1073741824
  tail call void %30(ptr noundef %32, i32 noundef 516, i32 noundef %or.i) #10
  %35 = ptrtoint ptr %buffer0ready.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %buffer0ready.i, align 1
  br label %if.end40.i

land.lhs.true17.i:                                ; preds = %if.end.i
  %buffer1ready.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %36 = ptrtoint ptr %buffer1ready.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buffer1ready.i, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool18.not.i = icmp eq i8 %37, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %land.lhs.true17.i.cleanup_crit_edge

land.lhs.true17.i.cleanup_crit_edge:              ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr20.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %addr20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr20.i, align 4
  %rambase21.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %40 = ptrtoint ptr %rambase21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rambase21.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %39, i32 %41
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %42 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %add.ptr23.i = getelementptr i8, ptr %add.ptr22.i, i32 %bf.cast.i
  %43 = ptrtoint ptr %add.ptr23.i to i32
  %call.i1.i = tail call i32 @__virt_to_phys(i32 noundef %43) #10
  %write_fn25.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %write_fn25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_fn25.i, align 8
  %46 = ptrtoint ptr %addr20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr20.i, align 4
  %offset27.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %48 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset27.i, align 4
  %add28.i = add i32 %49, 12
  tail call void %45(ptr noundef %47, i32 noundef %add28.i, i32 noundef %bufferlen) #10
  %50 = ptrtoint ptr %write_fn25.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_fn25.i, align 8
  %52 = ptrtoint ptr %addr20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr20.i, align 4
  %epnumber31.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %54 = ptrtoint ptr %epnumber31.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %epnumber31.i, align 4
  %conv32.i = zext i16 %55 to i32
  %shl34.i = shl i32 256, %conv32.i
  %or35.i = or i32 %shl34.i, 1073741824
  tail call void %51(ptr noundef %53, i32 noundef 516, i32 noundef %or35.i) #10
  %56 = ptrtoint ptr %buffer1ready.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %buffer1ready.i, align 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then19.i, %if.then7.i
  %storemerge.i = phi i8 [ 1, %if.then7.i ], [ 0, %if.then19.i ]
  %dst.0.i = phi i32 [ %call.i.i, %if.then7.i ], [ %call.i1.i, %if.then19.i ]
  %57 = ptrtoint ptr %curbufnum.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %storemerge.i, ptr %curbufnum.i, align 4
  %58 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udc1, align 4
  %write_fn.i.i = getelementptr inbounds %struct.xusb_udc, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %write_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_fn.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.xusb_udc, ptr %59, i32 0, i32 10
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr.i.i, align 4
  tail call void %61(ptr noundef %63, i32 noundef 520, i32 noundef %add.i103) #10
  %64 = ptrtoint ptr %write_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_fn.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr.i.i, align 4
  tail call void %65(ptr noundef %67, i32 noundef 524, i32 noundef %dst.0.i) #10
  %68 = ptrtoint ptr %write_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_fn.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %addr.i.i, align 4
  tail call void %69(ptr noundef %71, i32 noundef 528, i32 noundef %bufferlen) #10
  %read_fn.i.i = getelementptr inbounds %struct.xusb_udc, ptr %59, i32 0, i32 14
  %72 = ptrtoint ptr %read_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_fn.i.i, align 4
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.i.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %75, i32 532
  %call41.i.i = tail call i32 %73(ptr noundef %add.ptr40.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %tobool.not42.i.i = icmp sgt i32 %call41.i.i, -1
  br i1 %tobool.not42.i.i, label %if.end40.i.do.end12.i.i_crit_edge, label %if.end40.i.if.end.i.i_crit_edge

if.end40.i.if.end.i.i_crit_edge:                  ; preds = %if.end40.i
  br label %if.end.i.i

if.end40.i.do.end12.i.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.end.i.i:                                       ; preds = %if.end10.i.i.if.end.i.i_crit_edge, %if.end40.i.if.end.i.i_crit_edge
  %timeout.043.i.i = phi i32 [ %dec.i.i, %if.end10.i.i.if.end.i.i_crit_edge ], [ 500, %if.end40.i.if.end.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %timeout.043.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end10.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #10
  %77 = ptrtoint ptr %read_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_fn.i.i, align 4
  %79 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 532
  %call.i2.i = tail call i32 %78(ptr noundef %add.ptr.i.i) #10
  %tobool.not.i.i = icmp sgt i32 %call.i2.i, -1
  br i1 %tobool.not.i.i, label %if.end10.i.i.do.end12.i.i_crit_edge, label %if.end10.i.i.if.end.i.i_crit_edge

if.end10.i.i.if.end.i.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end10.i.i.do.end12.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.end10.i.i.do.end12.i.i_crit_edge, %if.end40.i.do.end12.i.i_crit_edge
  %81 = ptrtoint ptr %read_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_fn.i.i, align 4
  %83 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %addr.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %84, i32 532
  %call16.i.i = tail call i32 %82(ptr noundef %add.ptr15.i.i) #10
  %and17.i.i = and i32 %call16.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %cmp.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %cmp.not.i.i, label %do.end12.i.i.cleanup_crit_edge, label %do.end12.i.i.cleanup.sink.split.i.i_crit_edge

do.end12.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

do.end12.i.i.cleanup_crit_edge:                   ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i.i:                           ; preds = %do.end12.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.46.sink.i.i = phi ptr [ @.str.46, %do.end12.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.43, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -22, %do.end12.i.i.cleanup.sink.split.i.i_crit_edge ], [ -110, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %dev22.i.i = getelementptr inbounds %struct.xusb_udc, ptr %59, i32 0, i32 5
  %85 = ptrtoint ptr %dev22.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev22.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull %.str.46.sink.i.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  %curbufnum.i104 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 11
  %87 = ptrtoint ptr %curbufnum.i104 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %curbufnum.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i105 = icmp eq i8 %88, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i107, label %land.lhs.true10.i

land.lhs.true.i107:                               ; preds = %if.else
  %buffer0ready.i106 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %89 = ptrtoint ptr %buffer0ready.i106 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buffer0ready.i106, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool3.not.i = icmp eq i8 %90, 0
  br i1 %tobool3.not.i, label %if.then.i117, label %land.lhs.true.i107.cleanup_crit_edge

land.lhs.true.i107.cleanup_crit_edge:             ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i117:                                     ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i108 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %91 = ptrtoint ptr %addr.i108 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %addr.i108, align 4
  %rambase.i109 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %93 = ptrtoint ptr %rambase.i109 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rambase.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %92, i32 %94
  %95 = ptrtoint ptr %add.ptr.i110 to i32
  %call.i.i111 = tail call i32 @__virt_to_phys(i32 noundef %95) #10
  %write_fn.i112 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %96 = ptrtoint ptr %write_fn.i112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_fn.i112, align 8
  %98 = ptrtoint ptr %addr.i108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr.i108, align 4
  %epnumber.i113 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %100 = ptrtoint ptr %epnumber.i113 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %epnumber.i113, align 4
  %conv.i114 = zext i16 %101 to i32
  %shl.i115 = shl nuw i32 1, %conv.i114
  %or.i116 = or i32 %shl.i115, -1073741824
  tail call void %97(ptr noundef %99, i32 noundef 516, i32 noundef %or.i116) #10
  %102 = ptrtoint ptr %buffer0ready.i106 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %buffer0ready.i106, align 1
  br label %if.end28.i

land.lhs.true10.i:                                ; preds = %if.else
  %buffer1ready.i118 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %103 = ptrtoint ptr %buffer1ready.i118 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %buffer1ready.i118, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool11.not.i = icmp eq i8 %104, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %land.lhs.true10.i.cleanup_crit_edge

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr13.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %105 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %addr13.i, align 4
  %rambase14.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %107 = ptrtoint ptr %rambase14.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rambase14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %106, i32 %108
  %maxpacket.i119 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %109 = ptrtoint ptr %maxpacket.i119 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 7)
  %bf.load.i120 = load i56, ptr %maxpacket.i119, align 2
  %bf.lshr.i121 = lshr i56 %bf.load.i120, 40
  %bf.cast.i122 = trunc i56 %bf.lshr.i121 to i32
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 %bf.cast.i122
  %110 = ptrtoint ptr %add.ptr16.i to i32
  %call.i1.i123 = tail call i32 @__virt_to_phys(i32 noundef %110) #10
  %write_fn18.i = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %111 = ptrtoint ptr %write_fn18.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_fn18.i, align 8
  %113 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %addr13.i, align 4
  %epnumber20.i = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %115 = ptrtoint ptr %epnumber20.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %epnumber20.i, align 4
  %conv21.i = zext i16 %116 to i32
  %shl23.i = shl i32 256, %conv21.i
  %or24.i = or i32 %shl23.i, -1073741824
  tail call void %112(ptr noundef %114, i32 noundef 516, i32 noundef %or24.i) #10
  %117 = ptrtoint ptr %buffer1ready.i118 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %buffer1ready.i118, align 2
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then12.i, %if.then.i117
  %storemerge.i124 = phi i8 [ 1, %if.then.i117 ], [ 0, %if.then12.i ]
  %src.0.i = phi i32 [ %call.i.i111, %if.then.i117 ], [ %call.i1.i123, %if.then12.i ]
  %118 = ptrtoint ptr %curbufnum.i104 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %storemerge.i124, ptr %curbufnum.i104, align 4
  %119 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %udc1, align 4
  %write_fn.i.i125 = getelementptr inbounds %struct.xusb_udc, ptr %120, i32 0, i32 15
  %121 = ptrtoint ptr %write_fn.i.i125 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_fn.i.i125, align 8
  %addr.i.i126 = getelementptr inbounds %struct.xusb_udc, ptr %120, i32 0, i32 10
  %123 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %addr.i.i126, align 4
  tail call void %122(ptr noundef %124, i32 noundef 520, i32 noundef %src.0.i) #10
  %125 = ptrtoint ptr %write_fn.i.i125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_fn.i.i125, align 8
  %127 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %addr.i.i126, align 4
  tail call void %126(ptr noundef %128, i32 noundef 524, i32 noundef %add.i103) #10
  %129 = ptrtoint ptr %write_fn.i.i125 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_fn.i.i125, align 8
  %131 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %addr.i.i126, align 4
  tail call void %130(ptr noundef %132, i32 noundef 528, i32 noundef %bufferlen) #10
  %read_fn.i.i127 = getelementptr inbounds %struct.xusb_udc, ptr %120, i32 0, i32 14
  %133 = ptrtoint ptr %read_fn.i.i127 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read_fn.i.i127, align 4
  %135 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %addr.i.i126, align 4
  %add.ptr40.i.i128 = getelementptr i8, ptr %136, i32 532
  %call41.i.i129 = tail call i32 %134(ptr noundef %add.ptr40.i.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i129)
  %tobool.not42.i.i130 = icmp sgt i32 %call41.i.i129, -1
  br i1 %tobool.not42.i.i130, label %if.end28.i.do.end12.i.i143_crit_edge, label %if.end28.i.if.end.i.i134_crit_edge

if.end28.i.if.end.i.i134_crit_edge:               ; preds = %if.end28.i
  br label %if.end.i.i134

if.end28.i.do.end12.i.i143_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i143

if.end.i.i134:                                    ; preds = %if.end10.i.i138.if.end.i.i134_crit_edge, %if.end28.i.if.end.i.i134_crit_edge
  %timeout.043.i.i131 = phi i32 [ %dec.i.i132, %if.end10.i.i138.if.end.i.i134_crit_edge ], [ 500, %if.end28.i.if.end.i.i134_crit_edge ]
  %dec.i.i132 = add nsw i32 %timeout.043.i.i131, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i132)
  %tobool7.not.i.i133 = icmp eq i32 %dec.i.i132, 0
  br i1 %tobool7.not.i.i133, label %if.end.i.i134.cleanup.sink.split.i.i147_crit_edge, label %if.end10.i.i138

if.end.i.i134.cleanup.sink.split.i.i147_crit_edge: ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i147

if.end10.i.i138:                                  ; preds = %if.end.i.i134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748) #10
  %138 = ptrtoint ptr %read_fn.i.i127 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read_fn.i.i127, align 4
  %140 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %addr.i.i126, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %141, i32 532
  %call.i2.i136 = tail call i32 %139(ptr noundef %add.ptr.i.i135) #10
  %tobool.not.i.i137 = icmp sgt i32 %call.i2.i136, -1
  br i1 %tobool.not.i.i137, label %if.end10.i.i138.do.end12.i.i143_crit_edge, label %if.end10.i.i138.if.end.i.i134_crit_edge

if.end10.i.i138.if.end.i.i134_crit_edge:          ; preds = %if.end10.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i134

if.end10.i.i138.do.end12.i.i143_crit_edge:        ; preds = %if.end10.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i143

do.end12.i.i143:                                  ; preds = %if.end10.i.i138.do.end12.i.i143_crit_edge, %if.end28.i.do.end12.i.i143_crit_edge
  %142 = ptrtoint ptr %read_fn.i.i127 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read_fn.i.i127, align 4
  %144 = ptrtoint ptr %addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %addr.i.i126, align 4
  %add.ptr15.i.i139 = getelementptr i8, ptr %145, i32 532
  %call16.i.i140 = tail call i32 %143(ptr noundef %add.ptr15.i.i139) #10
  %and17.i.i141 = and i32 %call16.i.i140, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i141)
  %cmp.not.i.i142 = icmp eq i32 %and17.i.i141, 0
  br i1 %cmp.not.i.i142, label %do.end12.i.i143.cleanup_crit_edge, label %do.end12.i.i143.cleanup.sink.split.i.i147_crit_edge

do.end12.i.i143.cleanup.sink.split.i.i147_crit_edge: ; preds = %do.end12.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i147

do.end12.i.i143.cleanup_crit_edge:                ; preds = %do.end12.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i.i147:                        ; preds = %do.end12.i.i143.cleanup.sink.split.i.i147_crit_edge, %if.end.i.i134.cleanup.sink.split.i.i147_crit_edge
  %.str.46.sink.i.i144 = phi ptr [ @.str.46, %do.end12.i.i143.cleanup.sink.split.i.i147_crit_edge ], [ @.str.43, %if.end.i.i134.cleanup.sink.split.i.i147_crit_edge ]
  %retval.0.ph.i.i145 = phi i32 [ -22, %do.end12.i.i143.cleanup.sink.split.i.i147_crit_edge ], [ -110, %if.end.i.i134.cleanup.sink.split.i.i147_crit_edge ]
  %dev22.i.i146 = getelementptr inbounds %struct.xusb_udc, ptr %120, i32 0, i32 5
  %146 = ptrtoint ptr %dev22.i.i146 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev22.i.i146, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull %.str.46.sink.i.i144) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %curbufnum = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 11
  %148 = ptrtoint ptr %curbufnum to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %curbufnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool6.not = icmp eq i8 %149, 0
  br i1 %tobool6.not, label %land.lhs.true, label %land.lhs.true23

land.lhs.true:                                    ; preds = %if.end5
  %buffer0ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %150 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %buffer0ready, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool7.not = icmp eq i8 %151, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %152 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %addr, align 4
  %rambase = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %154 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rambase, align 4
  %add.ptr = getelementptr i8, ptr %153, i32 %155
  %is_in9 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %156 = ptrtoint ptr %is_in9 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_in9, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool10.not = icmp eq i8 %157, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %158 = call ptr @memcpy(ptr %add.ptr, ptr %bufferptr, i32 %bufferlen)
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %159 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_fn, align 8
  %161 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %163 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %offset, align 4
  %add = add i32 %164, 8
  tail call void %160(ptr noundef %162, i32 noundef %add, i32 noundef %bufferlen) #10
  br label %if.end14

if.else13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %165 = call ptr @memcpy(ptr %bufferptr, ptr %add.ptr, i32 %bufferlen)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then11
  %write_fn15 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %166 = ptrtoint ptr %write_fn15 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write_fn15, align 8
  %168 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %addr, align 4
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %170 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %epnumber, align 4
  %conv = zext i16 %171 to i32
  %shl = shl nuw i32 1, %conv
  tail call void %167(ptr noundef %169, i32 noundef 276, i32 noundef %shl) #10
  %172 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %buffer0ready, align 1
  br label %if.end49

land.lhs.true23:                                  ; preds = %if.end5
  %buffer1ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %173 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %buffer1ready, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool24.not = icmp eq i8 %174, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true23
  %addr26 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %175 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %addr26, align 4
  %rambase27 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %177 = ptrtoint ptr %rambase27 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rambase27, align 4
  %add.ptr28 = getelementptr i8, ptr %176, i32 %178
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %179 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %179, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %bf.cast
  %is_in30 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %180 = ptrtoint ptr %is_in30 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %is_in30, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool31.not = icmp eq i8 %181, 0
  br i1 %tobool31.not, label %if.else37, label %if.then32

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %182 = call ptr @memcpy(ptr %add.ptr29, ptr %bufferptr, i32 %bufferlen)
  %write_fn33 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %183 = ptrtoint ptr %write_fn33 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_fn33, align 8
  %185 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %addr26, align 4
  %offset35 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %187 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %offset35, align 4
  %add36 = add i32 %188, 12
  tail call void %184(ptr noundef %186, i32 noundef %add36, i32 noundef %bufferlen) #10
  br label %if.end38

if.else37:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %189 = call ptr @memcpy(ptr %bufferptr, ptr %add.ptr29, i32 %bufferlen)
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then32
  %write_fn39 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %190 = ptrtoint ptr %write_fn39 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write_fn39, align 8
  %192 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %addr26, align 4
  %epnumber41 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %194 = ptrtoint ptr %epnumber41 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %epnumber41, align 4
  %conv42 = zext i16 %195 to i32
  %shl44 = shl i32 256, %conv42
  tail call void %191(ptr noundef %193, i32 noundef 276, i32 noundef %shl44) #10
  %196 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %buffer1ready, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.end38, %if.end14
  %storemerge = phi i8 [ 1, %if.end14 ], [ 0, %if.end38 ]
  %197 = ptrtoint ptr %curbufnum to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %storemerge, ptr %curbufnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %cleanup.sink.split.i.i147, %do.end12.i.i143.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %land.lhs.true.i107.cleanup_crit_edge, %cleanup.sink.split.i.i, %do.end12.i.i.cleanup_crit_edge, %land.lhs.true17.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -11, %land.lhs.true23.cleanup_crit_edge ], [ -11, %land.lhs.true17.i.cleanup_crit_edge ], [ 0, %do.end12.i.i.cleanup_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ -11, %land.lhs.true.i.cleanup_crit_edge ], [ -11, %land.lhs.true10.i.cleanup_crit_edge ], [ 0, %do.end12.i.i143.cleanup_crit_edge ], [ %retval.0.ph.i.i145, %cleanup.sink.split.i.i147 ], [ -11, %land.lhs.true.i107.cleanup_crit_edge ], [ -11, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_get_frame(ptr noundef readonly %gadget) #2 align 64 {
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
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 14
  %0 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 10
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 268
  %call = tail call i32 %1(ptr noundef %add.ptr1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %remote_wkp = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 7
  %0 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remote_wkp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 14
  %2 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 10
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 260
  %call7 = tail call i32 %3(ptr noundef %add.ptr6) #10
  %or = or i32 %call7, 1073741824
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 15
  %6 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_fn, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  tail call void %7(ptr noundef %9, i32 noundef 260, i32 noundef %or) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496000) #10
  %and = and i32 %call7, -1073741825
  %11 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_fn, align 8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  tail call void %12(ptr noundef %14, i32 noundef 260, i32 noundef %and) #10
  br label %done

done:                                             ; preds = %if.end, %entry.done_crit_edge
  %status.0 = phi i32 [ 0, %if.end ], [ -22, %entry.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 14
  %0 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 10
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 260
  %call7 = tail call i32 %1(ptr noundef %add.ptr6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %and = and i32 %call7, 2147483647
  %masksel = select i1 %tobool.not, i32 0, i32 -2147483648
  %crtlreg.0 = or i32 %and, %masksel
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 15
  %4 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_fn, align 8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  tail call void %5(ptr noundef %7, i32 noundef 260, i32 noundef %crtlreg.0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %driver6 = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %driver6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver6, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %driver12 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %driver12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef %5, ptr noundef %7) #13
  br label %err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ep = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 1
  %8 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %driver, ptr %driver6, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %9 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %speed, align 8
  %call16 = tail call fastcc i32 @__xudc_ep_enable(ptr noundef %ep, ptr noundef nonnull @config_bulk_out_desc)
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 15
  %12 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_fn, align 8
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 10
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  tail call void %13(ptr noundef %15, i32 noundef 256, i32 noundef 0) #10
  %remote_wkp = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 7
  %16 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %remote_wkp, align 8
  br label %err

err:                                              ; preds = %if.end, %do.end9
  %ret.0 = phi i32 [ -16, %do.end9 ], [ %call16, %if.end ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 8
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 2
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %driver, align 8
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 15
  %2 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_fn, align 8
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 10
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  tail call void %3(ptr noundef %5, i32 noundef 256, i32 noundef 0) #10
  %remote_wkp = getelementptr inbounds %struct.xusb_udc, ptr %gadget, i32 0, i32 7
  %6 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %remote_wkp, align 8
  tail call fastcc void @xudc_stop_activity(ptr noundef %gadget)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xudc_ep_enable(ptr nocapture noundef %ep, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress, align 1
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %.lobit = lshr i8 %3, 7
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.lobit, ptr %is_in, align 1
  %5 = load i8, ptr %bEndpointAddress, align 1
  %6 = and i8 %5, 15
  %conv6 = zext i8 %6 to i16
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %7 = ptrtoint ptr %epnumber to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv6, ptr %epnumber, align 4
  %desc7 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc, ptr %desc7, align 4
  %desc8 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %9 = ptrtoint ptr %desc8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %desc, ptr %desc8, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes, align 1
  %12 = and i8 %11, 3
  %and10 = zext i8 %12 to i32
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxPacketSize, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv11 = zext i16 %15 to i32
  %maxpacket13 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %16 = zext i16 %15 to i56
  %17 = ptrtoint ptr %maxpacket13 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load = load i56, ptr %maxpacket13, align 2
  %bf.shl = shl nuw i56 %16, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket13, align 2
  %18 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and10, label %entry.unreachabledefault [
    i32 0, label %do.body
    i32 3, label %sw.bb19
    i32 2, label %sw.bb46
    i32 1, label %sw.bb80
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep_enable, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !203

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep_enable.__UNIQUE_ID_ddebug248, ptr noundef %20, ptr noundef nonnull @.str.56) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %is_iso = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 15
  %21 = ptrtoint ptr %is_iso to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_iso, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %is_iso20 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 15
  %22 = ptrtoint ptr %is_iso20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_iso20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %15)
  %cmp22 = icmp ugt i16 %15, 64
  br i1 %cmp22, label %do.body25, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body25:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep_enable, %cleanup)) #10
          to label %if.then39 [label %cleanup], !srcloc !203

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %dev40 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep_enable.__UNIQUE_ID_ddebug249, ptr noundef %24, ptr noundef nonnull @.str.57, i32 noundef %conv11) #10
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %is_iso47 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 15
  %25 = ptrtoint ptr %is_iso47 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_iso47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i = icmp eq i16 %14, 0
  br i1 %cmp.not.i, label %sw.bb46.do.body59_crit_edge, label %is_power_of_2.exit

sw.bb46.do.body59_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

is_power_of_2.exit:                               ; preds = %sw.bb46
  %26 = tail call i32 @llvm.ctpop.i32(i32 %conv11) #10, !range !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp1.i = icmp ult i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %15)
  %cmp52 = icmp ugt i16 %15, 7
  %or.cond = select i1 %cmp1.i, i1 %cmp52, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %15)
  %cmp56 = icmp ult i16 %15, 513
  %or.cond203 = select i1 %or.cond, i1 %cmp56, i1 false
  br i1 %or.cond203, label %is_power_of_2.exit.sw.epilog_crit_edge, label %is_power_of_2.exit.do.body59_crit_edge

is_power_of_2.exit.do.body59_crit_edge:           ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

is_power_of_2.exit.sw.epilog_crit_edge:           ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body59:                                        ; preds = %is_power_of_2.exit.do.body59_crit_edge, %sw.bb46.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep_enable, %cleanup)) #10
          to label %if.then73 [label %cleanup], !srcloc !203

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %dev74 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep_enable.__UNIQUE_ID_ddebug250, ptr noundef %28, ptr noundef nonnull @.str.57, i32 noundef %conv11) #10
  br label %cleanup

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %is_iso81 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 15
  %29 = ptrtoint ptr %is_iso81 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %is_iso81, align 4
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb80, %is_power_of_2.exit.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge
  %buffer0ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %30 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %buffer0ready, align 1
  %buffer1ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %31 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buffer1ready, align 2
  %curbufnum = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 11
  %32 = ptrtoint ptr %curbufnum to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %curbufnum, align 4
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [8 x i32], ptr @rambase, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %rambase = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %35 = ptrtoint ptr %rambase to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rambase, align 4
  tail call fastcc void @xudc_epconfig(ptr noundef %ep, ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__xudc_ep_enable, %do.end104)) #10
          to label %if.then97 [label %do.end104], !srcloc !203

if.then97:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev98 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev98, align 8
  %38 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %epnumber, align 4
  %conv100 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__xudc_ep_enable.__UNIQUE_ID_ddebug251, ptr noundef %37, ptr noundef nonnull @.str.58, i32 noundef %conv100, i32 noundef %conv11) #10
  br label %do.end104

do.end104:                                        ; preds = %if.then97, %sw.epilog
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %45
  %call105 = tail call i32 %41(ptr noundef %add.ptr) #10
  %or = or i32 %call105, -2147483648
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_fn, align 8
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr, align 4
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  tail call void %47(ptr noundef %49, i32 noundef %51, i32 noundef %or) #10
  %52 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %epnumber, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool109.not = icmp eq i16 %53, 0
  br i1 %tobool109.not, label %do.end104.if.end112_crit_edge, label %if.then110

do.end104.if.end112_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then110:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rambase, align 4
  %shl = shl i32 %55, 2
  store i32 %shl, ptr %rambase, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %do.end104.if.end112_crit_edge
  %56 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_fn, align 4
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr, align 4
  %add.ptr115 = getelementptr i8, ptr %59, i32 272
  %call116 = tail call i32 %57(ptr noundef %add.ptr115) #10
  %60 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %epnumber, align 4
  %conv118 = zext i16 %61 to i32
  %shl119 = shl i32 257, %conv118
  %or120 = or i32 %shl119, %call116
  %62 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_fn, align 8
  %64 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr, align 4
  tail call void %63(ptr noundef %65, i32 noundef 272, i32 noundef %or120) #10
  %66 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %epnumber, align 4
  %conv124 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool125.not = icmp eq i16 %67, 0
  br i1 %tobool125.not, label %if.end112.cleanup_crit_edge, label %land.lhs.true126

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true126:                                 ; preds = %if.end112
  %68 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_in, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool128.not = icmp eq i8 %69, 0
  br i1 %tobool128.not, label %if.then129, label %land.lhs.true126.cleanup_crit_edge

land.lhs.true126.cleanup_crit_edge:               ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then129:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_fn, align 8
  %72 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr, align 4
  %shl134 = shl nuw i32 1, %conv124
  tail call void %71(ptr noundef %73, i32 noundef 276, i32 noundef %shl134) #10
  %74 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %buffer0ready, align 1
  %75 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_fn, align 8
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr, align 4
  %79 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %epnumber, align 4
  %conv139 = zext i16 %80 to i32
  %shl140 = shl i32 256, %conv139
  tail call void %76(ptr noundef %78, i32 noundef 276, i32 noundef %shl140) #10
  %81 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %buffer1ready, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %land.lhs.true126.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.then73, %do.body59, %if.then39, %do.body25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then39 ], [ -22, %if.then73 ], [ 0, %if.then129 ], [ 0, %land.lhs.true126.cleanup_crit_edge ], [ 0, %if.end112.cleanup_crit_edge ], [ -22, %do.body25 ], [ -22, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xudc_epconfig(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 14
  %0 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_in, align 1, !range !208
  %2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %2, 29
  %is_iso = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 15
  %3 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_iso, align 4, !range !208
  %5 = zext i8 %4 to i32
  %shl3 = shl nuw nsw i32 %5, 28
  %or = or i32 %shl3, %shl
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %sh.diff = lshr i56 %bf.load, 25
  %tr.sh.diff = trunc i56 %sh.diff to i32
  %shl4 = and i32 %tr.sh.diff, 2147450880
  %rambase = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 4
  %7 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rambase, align 4
  %or5 = or i32 %or, %8
  %or6 = or i32 %or5, %shl4
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 15
  %9 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_fn, align 8
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %udc, i32 0, i32 10
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 5
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  tail call void %10(ptr noundef %12, i32 noundef %14, i32 noundef %or6) #10
  %15 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_fn, align 8
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add = add i32 %20, 8
  %buffer0count = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 9
  %21 = ptrtoint ptr %buffer0count to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %buffer0count, align 4
  %conv10 = zext i16 %22 to i32
  tail call void %16(ptr noundef %18, i32 noundef %add, i32 noundef %conv10) #10
  %23 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_fn, align 8
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr, align 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add14 = add i32 %28, 12
  %buffer1count = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 10
  %29 = ptrtoint ptr %buffer1count to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %buffer1count, align 2
  %conv15 = zext i16 %30 to i32
  tail call void %24(ptr noundef %26, i32 noundef %add14, i32 noundef %conv15) #10
  %buffer0ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 12
  %31 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buffer0ready, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  br i1 %tobool16.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_fn, align 8
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr, align 4
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %37 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %epnumber, align 4
  %conv19 = zext i16 %38 to i32
  %shl20 = shl nuw i32 1, %conv19
  tail call void %34(ptr noundef %36, i32 noundef 276, i32 noundef %shl20) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buffer1ready = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 13
  %39 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %buffer1ready, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool21.not = icmp eq i8 %40, 0
  br i1 %tobool21.not, label %if.end.if.end29_crit_edge, label %if.then22

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_fn, align 8
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr, align 4
  %epnumber25 = getelementptr inbounds %struct.xusb_ep, ptr %ep, i32 0, i32 7
  %45 = ptrtoint ptr %epnumber25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %epnumber25, align 4
  %conv26 = zext i16 %46 to i32
  %shl28 = shl i32 256, %conv26
  tail call void %42(ptr noundef %44, i32 noundef 276, i32 noundef %shl28) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_enable.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_enable, %cleanup)) #10
          to label %if.then8 [label %cleanup], !srcloc !203

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xudc_ep_enable.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false2
  %udc11 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %udc11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc11, align 4
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end9.do.body17_crit_edge, label %lor.lhs.false13

if.end9.do.body17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

lor.lhs.false13:                                  ; preds = %if.end9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %lor.lhs.false13.do.body17_crit_edge, label %do.body37

lor.lhs.false13.do.body17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false13.do.body17_crit_edge, %if.end9.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_enable.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_enable, %cleanup)) #10
          to label %if.then31 [label %cleanup], !srcloc !203

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_enable.__UNIQUE_ID_ddebug253, ptr noundef %9, ptr noundef nonnull @.str.62) #10
  br label %cleanup

do.body37:                                        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %3, i32 0, i32 11
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call47 = tail call fastcc i32 @__xudc_ep_enable(ptr noundef nonnull %_ep, ptr noundef nonnull %desc)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %if.then31, %do.body17, %if.then8, %do.body
  %retval.0 = phi i32 [ %call47, %do.body37 ], [ -22, %if.then8 ], [ -108, %if.then31 ], [ -22, %do.body ], [ -108, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_disable.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_disable, %cleanup)) #10
          to label %if.then5 [label %cleanup], !srcloc !203

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xudc_ep_disable.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %udc8 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc8, align 4
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue.i = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not4.i, label %if.end6.xudc_nuke.exit_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.xudc_nuke.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %if.end6.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -56
  tail call fastcc void @xudc_done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.xudc_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.xudc_nuke.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xudc_nuke.exit

xudc_nuke.exit:                                   ; preds = %while.body.i.xudc_nuke.exit_crit_edge, %if.end6.xudc_nuke.exit_crit_edge
  %desc = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 3
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %desc, align 4
  %desc18 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %8 = ptrtoint ptr %desc18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_disable.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_disable, %do.end37)) #10
          to label %if.then33 [label %do.end37], !srcloc !203

if.then33:                                        ; preds = %xudc_nuke.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 7
  %11 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %epnumber, align 4
  %conv34 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_disable.__UNIQUE_ID_ddebug255, ptr noundef %10, ptr noundef nonnull @.str.65, i32 noundef %conv34) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %xudc_nuke.exit
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 5
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr38 = getelementptr i8, ptr %16, i32 %18
  %call39 = tail call i32 %14(ptr noundef %add.ptr38) #10
  %and = and i32 %call39, 2147483647
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_fn, align 8
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  tail call void %20(ptr noundef %22, i32 noundef %24, i32 noundef %and) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %do.end37 ], [ -22, %if.then5 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xudc_ep_alloc_request(ptr noundef %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !213

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 68) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ep1 = getelementptr inbounds %struct.xusb_req, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %_ep, ptr %ep1, align 8
  %queue = getelementptr inbounds %struct.xusb_req, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.xusb_req, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xudc_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %desc = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_queue.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_queue, %cleanup)) #10
          to label %if.then10 [label %cleanup], !srcloc !203

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_queue.__UNIQUE_ID_ddebug260, ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, ptr noundef %name) #10
  br label %cleanup

if.end11:                                         ; preds = %entry
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.do.body14_crit_edge, label %lor.lhs.false

if.end11.do.body14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

lor.lhs.false:                                    ; preds = %if.end11
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %lor.lhs.false.do.body14_crit_edge, label %do.body35

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %if.end11.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_queue.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_queue, %cleanup)) #10
          to label %if.then28 [label %cleanup], !srcloc !203

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_queue.__UNIQUE_ID_ddebug261, ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.66) #10
  br label %cleanup

do.body35:                                        ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %actual, align 4
  %dma_enabled = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool44.not = icmp eq i8 %15, 0
  br i1 %tobool44.not, label %do.body35.if.end74_crit_edge, label %if.then45

do.body35.if.end74_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then45:                                        ; preds = %do.body35
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 14
  %16 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_in, align 1, !range !208
  %18 = zext i8 %17 to i32
  %call49 = tail call i32 @usb_gadget_map_request(ptr noundef %1, ptr noundef %_req, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then45.if.end74_crit_edge, label %do.body52

if.then45.if.end74_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.body52:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_queue.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_queue, %do.end71)) #10
          to label %if.then66 [label %do.end71], !srcloc !203

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %dev67 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev67, align 8
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 7
  %21 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %epnumber, align 4
  %conv68 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_queue.__UNIQUE_ID_ddebug262, ptr noundef %20, ptr noundef nonnull @.str.68, i32 noundef %conv68) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #10
  br label %cleanup

if.end74:                                         ; preds = %if.then45.if.end74_crit_edge, %do.body35.if.end74_crit_edge
  %queue = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 1
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %24, %queue
  br i1 %cmp.i.not, label %if.then77, label %if.end128

if.then77:                                        ; preds = %if.end74
  %is_in78 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 14
  %25 = ptrtoint ptr %is_in78 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_in78, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool79.not = icmp eq i8 %26, 0
  br i1 %tobool79.not, label %do.body104, label %do.body81

do.body81:                                        ; preds = %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_queue.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_queue, %do.end99)) #10
          to label %if.then95 [label %do.end99], !srcloc !203

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  %dev96 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev96, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_queue.__UNIQUE_ID_ddebug263, ptr noundef %28, ptr noundef nonnull @.str.69) #10
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body81
  %call100 = tail call fastcc i32 @xudc_write_fifo(ptr noundef %_ep, ptr noundef %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  %cmp129.not.old = icmp eq ptr %_req, null
  %or.cond188 = or i1 %cmp129.not.old, %tobool101.not
  br i1 %or.cond188, label %do.end99.if.end134_crit_edge, label %do.end99.if.then131_crit_edge

do.end99.if.then131_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131

do.end99.if.end134_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

do.body104:                                       ; preds = %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_queue.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_queue, %do.end122)) #10
          to label %if.then118 [label %do.end122], !srcloc !203

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  %dev119 = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev119, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_queue.__UNIQUE_ID_ddebug264, ptr noundef %30, ptr noundef nonnull @.str.70) #10
  br label %do.end122

do.end122:                                        ; preds = %if.then118, %do.body104
  %call123 = tail call fastcc i32 @xudc_read_fifo(ptr noundef %_ep, ptr noundef %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  %cmp129.not = icmp eq ptr %_req, null
  %or.cond = or i1 %cmp129.not, %tobool124.not
  br i1 %or.cond, label %do.end122.if.end134_crit_edge, label %do.end122.if.then131_crit_edge

do.end122.if.then131_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131

do.end122.if.end134_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.end128:                                        ; preds = %if.end74
  %cmp129.not.old.old = icmp eq ptr %_req, null
  br i1 %cmp129.not.old.old, label %if.end128.if.end134_crit_edge, label %if.end128.if.then131_crit_edge

if.end128.if.then131_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then131:                                       ; preds = %if.end128.if.then131_crit_edge, %do.end122.if.then131_crit_edge, %do.end99.if.then131_crit_edge
  %queue132 = getelementptr inbounds %struct.xusb_req, ptr %_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue132, ptr noundef %32, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then131.if.end134_crit_edge

if.then131.if.end134_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.end.i.i:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %queue132, ptr %prev.i, align 4
  %34 = ptrtoint ptr %queue132 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue, ptr %queue132, align 4
  %prev3.i.i = getelementptr inbounds %struct.xusb_req, ptr %_req, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %queue132, ptr %32, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end.i.i, %if.then131.if.end134_crit_edge, %if.end128.if.end134_crit_edge, %do.end122.if.end134_crit_edge, %do.end99.if.end134_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %do.end71, %if.then28, %do.body14, %if.then10, %do.body
  %retval.0 = phi i32 [ -11, %do.end71 ], [ 0, %if.end134 ], [ -108, %if.then10 ], [ -22, %if.then28 ], [ -108, %do.body ], [ -22, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %queue, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp15.not = icmp eq ptr %.pn, %queue
  %cmp17 = icmp eq ptr %req.0, %_req
  %or.cond = or i1 %cmp15.not, %cmp17
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp17, label %if.end29, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xudc_done(ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %for.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %epnumber = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 7
  %2 = ptrtoint ptr %epnumber to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %epnumber, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_set_halt, %cleanup)) #10
          to label %if.then8 [label %cleanup], !srcloc !203

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xudc_ep_set_halt.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.71) #10
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  %udc10 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %udc10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udc10, align 4
  %is_in = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 14
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.end9.if.end37_crit_edge, label %land.lhs.true13

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true13:                                  ; preds = %if.end9
  %queue = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp eq ptr %9, %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool17.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool17.not, %cmp.i
  br i1 %or.cond, label %land.lhs.true13.if.end37_crit_edge, label %do.body19

land.lhs.true13.if.end37_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body19:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_set_halt, %cleanup)) #10
          to label %if.then33 [label %cleanup], !srcloc !203

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_set_halt.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.72) #10
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true13.if.end37_crit_edge, %if.end9.if.end37_crit_edge
  %buffer0ready = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 12
  %12 = ptrtoint ptr %buffer0ready to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buffer0ready, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool38.not = icmp eq i8 %13, 0
  br i1 %tobool38.not, label %lor.lhs.false40, label %if.end37.do.body44_crit_edge

if.end37.do.body44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

lor.lhs.false40:                                  ; preds = %if.end37
  %buffer1ready = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 13
  %14 = ptrtoint ptr %buffer1ready to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buffer1ready, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool41.not = icmp eq i8 %15, 0
  br i1 %tobool41.not, label %do.body65, label %lor.lhs.false40.do.body44_crit_edge

lor.lhs.false40.do.body44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

do.body44:                                        ; preds = %lor.lhs.false40.do.body44_crit_edge, %if.end37.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xudc_ep_set_halt, %cleanup)) #10
          to label %if.then58 [label %cleanup], !srcloc !203

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %dev59 = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev59, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xudc_ep_set_halt.__UNIQUE_ID_ddebug247, ptr noundef %17, ptr noundef nonnull @.str.73) #10
  br label %cleanup

do.body65:                                        ; preds = %lor.lhs.false40
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 11
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool74.not = icmp eq i32 %value, 0
  %read_fn80 = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 14
  %18 = ptrtoint ptr %read_fn80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_fn80, align 4
  %addr81 = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %addr81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr81, align 4
  %offset82 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 5
  %22 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset82, align 4
  %add.ptr83 = getelementptr i8, ptr %21, i32 %23
  %call84 = tail call i32 %19(ptr noundef %add.ptr83) #10
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %call84, 1073741824
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 15
  br label %if.end102.sink.split

if.else:                                          ; preds = %do.body65
  %and = and i32 %call84, -1073741825
  %write_fn85 = getelementptr inbounds %struct.xusb_udc, ptr %5, i32 0, i32 15
  %24 = ptrtoint ptr %write_fn85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_fn85, align 8
  %26 = ptrtoint ptr %addr81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr81, align 4
  %28 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset82, align 4
  tail call void %25(ptr noundef %27, i32 noundef %29, i32 noundef %and) #10
  %epnumber88 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 7
  %30 = ptrtoint ptr %epnumber88 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %epnumber88, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool89.not = icmp eq i16 %31, 0
  br i1 %tobool89.not, label %if.else.if.end102_crit_edge, label %if.then90

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %read_fn80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_fn80, align 4
  %34 = ptrtoint ptr %udc10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udc10, align 4
  %addr93 = getelementptr inbounds %struct.xusb_udc, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %addr93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr93, align 4
  %38 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset82, align 4
  %add.ptr95 = getelementptr i8, ptr %37, i32 %39
  %call96 = tail call i32 %33(ptr noundef %add.ptr95) #10
  %and97 = and i32 %call96, -134217729
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then90, %if.then75
  %write_fn85.sink = phi ptr [ %write_fn85, %if.then90 ], [ %write_fn, %if.then75 ]
  %and97.sink = phi i32 [ %and97, %if.then90 ], [ %or, %if.then75 ]
  %40 = ptrtoint ptr %write_fn85.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_fn85.sink, align 8
  %42 = ptrtoint ptr %addr81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr81, align 4
  %44 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset82, align 4
  tail call void %41(ptr noundef %43, i32 noundef %45, i32 noundef %and97.sink) #10
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.else.if.end102_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call69) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then58, %do.body44, %if.then33, %do.body19, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.end102 ], [ -22, %if.then8 ], [ -11, %if.then33 ], [ -11, %if.then58 ], [ -22, %do.body ], [ -11, %do.body19 ], [ -11, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xudc_ep0_enable(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %desc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xudc_ep0_disable(ptr nocapture noundef readnone %ep) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_ep0_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.xusb_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call10 = tail call fastcc i32 @__xudc_ep0_queue(ptr noundef %_ep, ptr noundef %_req)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 260
  %call6 = tail call i32 %3(ptr noundef %add.ptr) #10
  %and = and i32 %call6, 2147483647
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_fn, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  tail call void %7(ptr noundef %9, i32 noundef 260, i32 noundef %and) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %driver = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xudc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %read_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_fn, align 4
  %addr = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 260
  %call8 = tail call i32 %5(ptr noundef %add.ptr) #10
  %or = or i32 %call8, -2147483648
  %write_fn = getelementptr inbounds %struct.xusb_udc, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_fn, align 8
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  tail call void %9(ptr noundef %11, i32 noundef 260, i32 noundef %or) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !134, !135, !137, !139, !140, !142, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !190, !192}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__initcall__kmod_udc_xilinx__273_2260_xudc_driver_init6, !1, !"__initcall__kmod_udc_xilinx__273_2260_xudc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2260, i32 1}
!2 = !{ptr @__exitcall_xudc_driver_exit, !1, !"__exitcall_xudc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description274, !4, !"__UNIQUE_ID_description274", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2262, i32 1}
!5 = !{ptr @__UNIQUE_ID_author275, !6, !"__UNIQUE_ID_author275", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file276, !8, !"__UNIQUE_ID_file276", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license277, !8, !"__UNIQUE_ID_license277", i1 false, i1 false}
!10 = !{ptr @xudc_driver, !11, !"xudc_driver", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2250, i32 31}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2091, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xudc_probe.__UNIQUE_ID_ddebug271, !13, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2095, i32 47}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2104, i32 38}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2115, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xudc_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @xudc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2121, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xudc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @xudc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @xudc_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2125, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2159, i32 2}
!38 = !{ptr @xudc_probe.__UNIQUE_ID_ddebug272, !37, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2168, i32 2}
!43 = !{ptr @xudc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xudc_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1474, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xudc_startup_handler.__UNIQUE_ID_ddebug265, !46, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1497, i32 3}
!51 = !{ptr @xudc_startup_handler.__UNIQUE_ID_ddebug266, !50, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1516, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1519, i32 3}
!57 = !{ptr @xudc_startup_handler.__UNIQUE_ID_ddebug267, !56, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1537, i32 3}
!60 = !{ptr @xudc_startup_handler.__UNIQUE_ID_ddebug268, !59, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 561, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @xudc_done.__UNIQUE_ID_ddebug234, !62, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1643, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @xudc_getstatus._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @xudc_getstatus._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1006, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__xudc_ep0_queue.__UNIQUE_ID_ddebug256, !71, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1010, i32 3}
!76 = !{ptr @__xudc_ep0_queue.__UNIQUE_ID_ddebug257, !75, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1586, i32 2}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xudc_setaddress._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @xudc_setaddress._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1733, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @xudc_set_clear_feature._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @xudc_set_clear_feature._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 703, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @xudc_write_fifo.__UNIQUE_ID_ddebug243, !88, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!91 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 714, i32 3}
!96 = !{ptr @xudc_write_fifo.__UNIQUE_ID_ddebug244, !95, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 351, i32 4}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @xudc_start_dma._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @xudc_start_dma._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 359, i32 3}
!104 = !{ptr @xudc_start_dma._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @xudc_start_dma._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 595, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @xudc_read_fifo.__UNIQUE_ID_ddebug235, !107, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 621, i32 4}
!112 = !{ptr @xudc_read_fifo.__UNIQUE_ID_ddebug236, !111, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 632, i32 3}
!115 = !{ptr @xudc_read_fifo.__UNIQUE_ID_ddebug239, !114, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 652, i32 3}
!118 = !{ptr @xudc_read_fifo.__UNIQUE_ID_ddebug240, !117, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!119 = !{ptr @xusb_udc_ops, !120, !"xusb_udc_ops", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1429, i32 36}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1381, i32 3}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @xudc_start._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @xudc_start._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @config_bulk_out_desc, !127, !"config_bulk_out_desc", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 207, i32 45}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 822, i32 3}
!130 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug248, !129, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 830, i32 4}
!134 = !{ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug249, !133, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!135 = !{ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug250, !136, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 839, i32 4}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 855, i32 2}
!139 = !{ptr @__xudc_ep_enable.__UNIQUE_ID_ddebug251, !138, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!140 = !{ptr @rambase, !141, !"rambase", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 200, i32 12}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1311, i32 36}
!144 = !{ptr @xusb_ep_ops, !145, !"xusb_ep_ops", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1197, i32 32}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 900, i32 3}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @xudc_ep_enable.__UNIQUE_ID_ddebug252, !147, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 908, i32 3}
!152 = !{ptr @xudc_ep_enable.__UNIQUE_ID_ddebug253, !151, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 933, i32 3}
!155 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @xudc_ep_disable.__UNIQUE_ID_ddebug254, !154, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 948, i32 2}
!159 = !{ptr @xudc_ep_disable.__UNIQUE_ID_ddebug255, !158, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1084, i32 3}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @xudc_ep_queue.__UNIQUE_ID_ddebug260, !161, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!164 = !{ptr @xudc_ep_queue.__UNIQUE_ID_ddebug261, !165, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1090, i32 3}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1103, i32 4}
!168 = !{ptr @xudc_ep_queue.__UNIQUE_ID_ddebug262, !167, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1112, i32 4}
!171 = !{ptr @xudc_ep_queue.__UNIQUE_ID_ddebug263, !170, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1116, i32 4}
!174 = !{ptr @xudc_ep_queue.__UNIQUE_ID_ddebug264, !173, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 757, i32 3}
!177 = !{ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug245, !176, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 763, i32 3}
!180 = !{ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug246, !179, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 768, i32 3}
!183 = !{ptr @xudc_ep_set_halt.__UNIQUE_ID_ddebug247, !182, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!184 = !{ptr @ep0name, !185, !"ep0name", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 204, i32 19}
!186 = !{ptr @xusb_ep0_ops, !187, !"xusb_ep0_ops", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 1187, i32 32}
!188 = !{ptr @driver_name, !189, !"driver_name", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 203, i32 19}
!190 = !{ptr @usb_of_match, !191, !"usb_of_match", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2244, i32 34}
!192 = !{ptr @xudc_pm_ops, !193, !"xudc_pm_ops", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/udc/udc-xilinx.c", i32 2239, i32 32}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i64 2148781503, i64 2148781508, i64 2148781521, i64 2148781565, i64 2148781599, i64 2148781620}
!204 = !{i64 2154461513}
!205 = !{i64 6315651}
!206 = distinct !{!206, !207}
!207 = !{!"llvm.loop.peeled.count", i32 1}
!208 = !{i8 0, i8 2}
!209 = !{i64 6316069}
!210 = !{i64 2154461847}
!211 = !{i64 2153857773}
!212 = !{i64 2153856418}
!213 = !{!"branch_weights", i32 2000, i32 1}
!214 = !{i64 797179}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i32 0, i32 33}
