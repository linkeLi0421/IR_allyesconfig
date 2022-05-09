; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/net2272.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/net2272.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.net2272 = type { %struct.usb_gadget, ptr, i16, %struct.spinlock, [4 x %struct.net2272_ep], ptr, i16, i16, i8, i32, i16, i32, ptr, %union.anon.72 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.net2272_ep = type { %struct.usb_ep, ptr, i32, %struct.list_head, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.net2272_request = type { %struct.usb_request, %struct.list_head, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%union.anon.76 = type { %struct.usb_ctrlrequest }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__param_str_use_dma = internal constant [16 x i8] c"net2272.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype241 = internal constant [30 x i8] c"net2272.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__param_str_dma_ep = internal constant [15 x i8] c"net2272.dma_ep\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@dma_ep = internal global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@__param_dma_ep = internal constant %struct.kernel_param { ptr @__param_str_dma_ep, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @dma_ep } }, section "__param", align 4
@__UNIQUE_ID_dma_eptype242 = internal constant [31 x i8] c"net2272.parmtype=dma_ep:ushort\00", section ".modinfo", align 1
@__param_str_dma_mode = internal constant [17 x i8] c"net2272.dma_mode\00", align 1
@dma_mode = internal global { i16, [30 x i8] } { i16 2, [30 x i8] zeroinitializer }, align 32
@__param_dma_mode = internal constant %struct.kernel_param { ptr @__param_str_dma_mode, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @dma_mode } }, section "__param", align 4
@__UNIQUE_ID_dma_modetype243 = internal constant [33 x i8] c"net2272.parmtype=dma_mode:ushort\00", section ".modinfo", align 1
@__param_str_fifo_mode = internal constant [18 x i8] c"net2272.fifo_mode\00", align 1
@fifo_mode = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_fifo_mode = internal constant %struct.kernel_param { ptr @__param_str_fifo_mode, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @fifo_mode } }, section "__param", align 4
@__UNIQUE_ID_fifo_modetype244 = internal constant [34 x i8] c"net2272.parmtype=fifo_mode:ushort\00", section ".modinfo", align 1
@__param_str_enable_suspend = internal constant [23 x i8] c"net2272.enable_suspend\00", align 1
@enable_suspend = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_enable_suspend = internal constant %struct.kernel_param { ptr @__param_str_enable_suspend, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @enable_suspend } }, section "__param", align 4
@__UNIQUE_ID_enable_suspendtype245 = internal constant [39 x i8] c"net2272.parmtype=enable_suspend:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [31 x i8] c"net2272.alias=platform:net2272\00", section ".modinfo", align 1
@__initcall__kmod_net2272__293_2714_net2272_init6 = internal global ptr @net2272_init, section ".initcall6.init", align 4
@net2272_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @net2272_plat_probe, ptr @net2272_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_net2272_cleanup = internal global ptr @net2272_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [58 x i8] c"net2272.description=PLX NET2272 USB Peripheral Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [36 x i8] c"net2272.author=PLX Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [44 x i8] c"net2272.file=drivers/usb/gadget/udc/net2272\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"net2272.license=GPL\00", section ".modinfo", align 1
@net2272_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @pci_ids, ptr @net2272_pci_probe, ptr @net2272_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net2272\00", [24 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net2272\00", [24 x i8] zeroinitializer }, align 32
@pci_ids = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36948, i32 -1, i32 -1, i32 426238, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 12914, i32 -1, i32 -1, i32 426238, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@net2272_probe_init.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_probe_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/udc/net2272.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No IRQ!\0A\00", [23 x i8] zeroinitializer }, align 32
@net2272_probe_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ret->lock\00", [21 x i8] zeroinitializer }, align 32
@net2272_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @net2272_get_frame, ptr @net2272_wakeup, ptr @net2272_set_selfpowered, ptr null, ptr null, ptr @net2272_pullup, ptr null, ptr null, ptr @net2272_start, ptr @net2272_stop, ptr null, ptr null, ptr @net2272_async_callbacks, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@net2272_done.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net2272_done\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"complete %s req %p stat %d len %u/%u buf %p\0A\00", [51 x i8] zeroinitializer }, align 32
@ep_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ep0name, ptr @.str.7, ptr @.str.8, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@ep0name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-a\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-b\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-c\00", [27 x i8] zeroinitializer }, align 32
@net2272_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @net2272_enable, ptr @net2272_disable, ptr null, ptr @net2272_alloc_request, ptr @net2272_free_request, ptr @net2272_queue, ptr @net2272_dequeue, ptr @net2272_set_halt, ptr @net2272_set_wedge, ptr @net2272_fifo_status, ptr @net2272_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@net2272_enable.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net2272_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"enabled %s (ep%d%s-%s) max %04x cfg %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iso\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@net2272_disable.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 76, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net2272_disable\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disabled %s\0A\00", [19 x i8] zeroinitializer }, align 32
@net2272_queue.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net2272_queue\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s queue req %p, len %d buf %p dma %08llx %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"!zero\00", [26 x i8] zeroinitializer }, align 32
@net2272_queue.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.24, i8 0, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s status ack\0A\00", [17 x i8] zeroinitializer }, align 32
@net2272_queue.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"WARNING: returning ZLP short packet termination!\0A\00", [46 x i8] zeroinitializer }, align 32
@net2272_read_fifo.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net2272_read_fifo\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read_fifo %s actual %d len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@net2272_read_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 564, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s out fifo %d bytes, expected %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@net2272_read_fifo._entry_ptr = internal global ptr @net2272_read_fifo._entry, section ".printk_index", align 4
@net2272_read_packet.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net2272_read_packet\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"read packet %s req %p len %u avail %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.net2272_out_flush = private unnamed_addr constant [18 x i8] c"net2272_out_flush\00", align 1
@assert_out_naking.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assert_out_naking\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %s %02x !NAK\0A\00", [47 x i8] zeroinitializer }, align 32
@net2272_kick_dma.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net2272_kick_dma\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kick_dma %s req %p dma %08llx\0A\00", [33 x i8] zeroinitializer }, align 32
@net2272_request_dma.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net2272_request_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request_dma ep %d buf %08x len %d dir %d\0A\00", [54 x i8] zeroinitializer }, align 32
@net2272_write_fifo.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_write_fifo\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write_fifo %s actual %d len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@net2272_write_packet.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net2272_write_packet\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"write packet %s req %p max %u len %u avail %u\0A\00", [49 x i8] zeroinitializer }, align 32
@net2272_dequeue.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net2272_dequeue\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unlink (%s) pio\0A\00", [47 x i8] zeroinitializer }, align 32
@net2272_set_halt_and_wedge.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -9, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net2272_set_halt_and_wedge\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wedge\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"halt\00", [27 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@net2272_rdk1_probe.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_rdk1_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"controller already in use\0A\00", [37 x i8] zeroinitializer }, align 32
@net2272_rdk1_probe.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 2, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't map memory\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@net2272_rdk2_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.52, i8 2, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_rdk2_probe\00", [45 x i8] zeroinitializer }, align 32
@net2272_rdk2_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.53, i8 2, i8 94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@net2272_rdk2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.54, ptr @.str.2, i32 2441, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RDK2 FPGA version %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@net2272_rdk2_probe._entry_ptr = internal global ptr @net2272_rdk2_probe._entry, section ".printk_index", align 4
@net2272_probe_fin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 2265, ptr @.str.59, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"2272 not found!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net2272_probe_fin\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry_ptr = internal global ptr @net2272_probe_fin._entry, section ".printk_index", align 4
@net2272_probe_fin._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.2, i32 2275, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request interrupt %i failed\0A\00", [35 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry_ptr.62 = internal global ptr @net2272_probe_fin._entry.60, section ".printk_index", align 4
@net2272_probe_fin._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 2282, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry_ptr.65 = internal global ptr @net2272_probe_fin._entry.63, section ".printk_index", align 4
@driver_desc = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLX NET2272 USB Peripheral Controller\00", [58 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.58, ptr @.str.2, i32 2285, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"irq %i, mem %p, chip rev %04x, dma %s\0A\00", [57 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry_ptr.68 = internal global ptr @net2272_probe_fin._entry.66, section ".printk_index", align 4
@net2272_probe_fin._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.58, ptr @.str.2, i32 2286, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@net2272_probe_fin._entry_ptr.71 = internal global ptr @net2272_probe_fin._entry.69, section ".printk_index", align 4
@driver_vers = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"2006 October 17/mainline\00", [39 x i8] zeroinitializer }, align 32
@dev_attr_registers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @registers_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@net2272_present.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 2, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net2272_present\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: write/read SCRATCH register test failed: wrote:0x%2.2x, read:0x%2.2x\0A\00", [54 x i8] zeroinitializer }, align 32
@net2272_present.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 2, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s: write/read CHIPREV register test failed: wrote 0x%2.2x, read:0x%2.2x expected:0x%2.2x\0A\00", [37 x i8] zeroinitializer }, align 32
@net2272_present.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.75, i8 2, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"%s: WARNING: UNEXPECTED NET2272 LEGACY REGISTER VALUE:\0A - CHIPREV_LEGACY: expected 0x%2.2x, got:0x%2.2x. (Not NET2272?)\0A\00", [39 x i8] zeroinitializer }, align 32
@net2272_present.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.76, i8 2, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Rev 1 detected: newer silicon recommended for DMA support\0A\00", [33 x i8] zeroinitializer }, align 32
@net2272_present.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.77, i8 2, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: unexpected silicon revision register value:  CHIPREV_2272: 0x%2.2x\0A\00", [56 x i8] zeroinitializer }, align 32
@net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 1, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net2272_handle_stat1_irqs\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disconnect %s\0A\00", [17 x i8] zeroinitializer }, align 32
@net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.80, i8 1, i8 -11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset %s\0A\00", [22 x i8] zeroinitializer }, align 32
@net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.81, i8 1, i8 -4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Suspend disabled, ignoring\0A\00", [36 x i8] zeroinitializer }, align 32
@net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.82, i8 2, i8 1, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unhandled irqstat1 %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.64, i8 1, i8 -78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net2272_handle_stat0_irqs\00", [38 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s stat %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 1, i8 -49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device stat %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 1, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interface status %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.87, i8 1, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s wedged, halt not cleared\0A\00", [35 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.88, i8 1, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s clear halt\0A\00", [17 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.89, i8 1, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test mode: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.90, i8 1, i8 -35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s set halt\0A\00", [19 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.91, i8 1, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setup %02x.%02x v%04x i%04x ep_cfg %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.92, i8 1, i8 -29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"req %02x.%02x protocol STALL; stat %d\0A\00", [57 x i8] zeroinitializer }, align 32
@net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.93, i8 1, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unhandled irqstat0 %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@net2272_test_packet = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FD~", [44 x i8] zeroinitializer }, align 32
@net2272_handle_dma.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_handle_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_dma %s req %p\0A\00", [42 x i8] zeroinitializer }, align 32
@net2272_handle_ep.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net2272_handle_ep\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s ack ep_stat0 %02x, ep_stat1 %02x, req %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SLOW DREQ\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FAST DREQ\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BURST\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s version %s,chiprev %02x, locctl %02x\0Airqenb0 %02x irqenb1 %02x irqstat0 %02x irqstat1 %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0Admareq %02x: %s %s%s%s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dack \00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reqenb \00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"req \00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"valid \00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high speed\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powered\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full speed\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not attached\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"usbctl0 %02x usbctl1 %02x addr 0x%02x (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0A%s\09cfg %02x rsp (%02x) %s%s%s%s%s%s%s%sirqenb %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NAK \00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hide \00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"auto \00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupt \00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"status \00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NAKmode \00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DATA1 \00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DATA0 \00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HALT \00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\09stat0 %02x stat1 %02x avail %04x (ep%d%s-%s)%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09ep_transfer %06x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09buf-a %s buf-b %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@net2272_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 2228, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbind\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net2272_remove\00", [17 x i8] zeroinitializer }, align 32
@net2272_remove._entry_ptr = internal global ptr @net2272_remove._entry, section ".printk_index", align 4
@net2272_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 2618, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"must provide irq/base addr\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2272_plat_probe\00", [45 x i8] zeroinitializer }, align 32
@net2272_plat_probe._entry_ptr = internal global ptr @net2272_plat_probe._entry, section ".printk_index", align 4
@net2272_plat_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.139, i8 2, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get request memory region!\0A\00", [36 x i8] zeroinitializer }, align 32
@net2272_plat_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.53, i8 2, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@net2272_plat_probe._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.138, ptr @.str.2, i32 2659, ptr @.str.56, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"running in 16-bit, %sbyte swap local bus mode\0A\00", [49 x i8] zeroinitializer }, align 32
@net2272_plat_probe._entry_ptr.142 = internal global ptr @net2272_plat_probe._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@switch.table.net2272_probe_fin = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101], [20 x i8] zeroinitializer }, align 32
@switch.table.net2272_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.14, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@switch.table.registers_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.14, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@switch.table.registers_show.144 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [16 x i8] zeroinitializer }, align 32
@switch.table.registers_show.145 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12914, i64 36948]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 12914, i64 36948]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.153 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 56, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"dma_ep\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 70, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant [9 x i8] c"dma_mode\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 79, i32 15 }
@___asan_gen_.162 = private unnamed_addr constant [10 x i8] c"fifo_mode\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 94, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"enable_suspend\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 103, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"net2272_plat_driver\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2688, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"net2272_pci_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2580, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2590, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 37, i32 19 }
@___asan_gen_.180 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2559, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2236, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2245, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"net2272_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1155, i32 36 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 372, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"ep_name\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 42, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant [8 x i8] c"ep0name\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 41, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 44, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 44, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 44, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"net2272_ep_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1057, i32 32 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 239, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 136, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 137, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 138, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 139, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 307, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 836, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 850, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 860, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 543, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 562, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 502, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 116, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 716, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 626, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 428, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 396, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 954, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 987, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2337, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2345, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2417, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2440, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2265, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2275, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2282, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 39, i32 19 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2283, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2286, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [12 x i8] c"driver_vers\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 38, i32 19 }
@___asan_gen_.414 = private unnamed_addr constant [19 x i8] c"dev_attr_registers\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2130, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2146, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2167, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2186, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2194, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1997, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2003, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2035, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2055, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1735, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1838, i32 5 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1852, i32 5 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1863, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1881, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1884, i32 5 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1897, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1909, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1919, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1934, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1971, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c"net2272_test_packet\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1662, i32 17 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1530, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1612, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 157, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 159, i32 18 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 160, i32 18 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 161, i32 18 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 162, i32 18 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1287, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1184, i32 28 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1199, i32 28 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1201, i32 34 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1201, i32 44 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1202, i32 36 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1203, i32 29 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1204, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1212, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1214, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1216, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1218, i32 7 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1220, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1237, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1240, i32 40 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1241, i32 38 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1242, i32 33 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1243, i32 35 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1244, i32 51 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1245, i32 41 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1246, i32 36 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1246, i32 47 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1247, i32 34 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1253, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1261, i32 18 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1266, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1276, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 146, i32 26 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 147, i32 26 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 148, i32 26 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 149, i32 26 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2228, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2618, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2642, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.634 = private constant [36 x i8] c"../drivers/usb/gadget/udc/net2272.c\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 2658, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [31 x i8] c"switch.table.net2272_probe_fin\00", align 1
@___asan_gen_.637 = private unnamed_addr constant [28 x i8] c"switch.table.net2272_enable\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [28 x i8] c"switch.table.registers_show\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [32 x i8] c"switch.table.registers_show.144\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [32 x i8] c"switch.table.registers_show.145\00", align 1
@llvm.compiler.used = appending global [194 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_dma_eptype242, ptr @__UNIQUE_ID_dma_modetype243, ptr @__UNIQUE_ID_enable_suspendtype245, ptr @__UNIQUE_ID_fifo_modetype244, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_use_dmatype241, ptr @__exitcall_net2272_cleanup, ptr @__initcall__kmod_net2272__293_2714_net2272_init6, ptr @__param_dma_ep, ptr @__param_dma_mode, ptr @__param_enable_suspend, ptr @__param_fifo_mode, ptr @__param_use_dma, ptr @net2272_cleanup, ptr @net2272_plat_probe._entry, ptr @net2272_plat_probe._entry.140, ptr @net2272_plat_probe._entry_ptr, ptr @net2272_plat_probe._entry_ptr.142, ptr @net2272_probe_fin._entry, ptr @net2272_probe_fin._entry.60, ptr @net2272_probe_fin._entry.63, ptr @net2272_probe_fin._entry.66, ptr @net2272_probe_fin._entry.69, ptr @net2272_probe_fin._entry_ptr, ptr @net2272_probe_fin._entry_ptr.62, ptr @net2272_probe_fin._entry_ptr.65, ptr @net2272_probe_fin._entry_ptr.68, ptr @net2272_probe_fin._entry_ptr.71, ptr @net2272_rdk2_probe._entry, ptr @net2272_rdk2_probe._entry_ptr, ptr @net2272_read_fifo._entry, ptr @net2272_read_fifo._entry_ptr, ptr @net2272_remove._entry, ptr @net2272_remove._entry_ptr, ptr @use_dma, ptr @dma_ep, ptr @dma_mode, ptr @fifo_mode, ptr @enable_suspend, ptr @net2272_plat_driver, ptr @net2272_pci_driver, ptr @.str, ptr @driver_name, ptr @pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @net2272_probe_init.__key, ptr @.str.4, ptr @net2272_ops, ptr @.str.5, ptr @.str.6, ptr @ep_name, ptr @ep0name, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @net2272_ep_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @driver_desc, ptr @.str.67, ptr @.str.70, ptr @driver_vers, ptr @dev_attr_registers, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @net2272_test_packet, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @switch.table.net2272_probe_fin, ptr @switch.table.net2272_enable, ptr @switch.table.registers_show, ptr @switch.table.registers_show.144, ptr @switch.table.registers_show.145], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_ep to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_suspend to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_read_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_rdk2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_fin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_fin._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_fin._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_fin._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_probe_fin._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_vers to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_registers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_test_packet to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2272_plat_probe._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.net2272_probe_fin to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.net2272_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.registers_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.registers_show.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.registers_show.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pci_register_driver(ptr noundef nonnull @net2272_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @net2272_plat_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_pci

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_pci:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @net2272_pci_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pci, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_pci ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @net2272_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @net2272_pci_driver) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @net2272_plat_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_probe_init.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_pci_probe, %net2272_probe_init.exit)) #10
          to label %if.then5.i [label %net2272_probe_init.exit], !srcloc !376

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_probe_init.__UNIQUE_ID_ddebug285, ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %if.then

if.end7.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1408) #13
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.then_crit_edge, label %do.body13.i

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @net2272_probe_init.__key, i16 noundef signext 3) #10
  %irq17.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %irq17.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %irq17.i, align 8
  %dev18.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev18.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev18.i, align 8
  %ops.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @net2272_ops, ptr %ops.i, align 8
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %max_speed.i, align 4
  %name.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @driver_name, ptr %name.i, align 4
  tail call void @usb_initialize_gadget(ptr noundef %dev1, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @net2272_gadget_release) #10
  br label %net2272_probe_init.exit

net2272_probe_init.exit:                          ; preds = %do.body13.i, %do.body.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %do.body13.i ], [ inttoptr (i32 -19 to ptr), %do.body.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %net2272_probe_init.exit.if.then_crit_edge, label %if.end

net2272_probe_init.exit.if.then_crit_edge:        ; preds = %net2272_probe_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %net2272_probe_init.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge, %if.then5.i
  %retval.0.i42 = phi ptr [ %retval.0.i, %net2272_probe_init.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then5.i ]
  %8 = ptrtoint ptr %retval.0.i42 to i32
  br label %cleanup

if.end:                                           ; preds = %net2272_probe_init.exit
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %dev_id = getelementptr inbounds %struct.net2272, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %dev_id, align 4
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.err_put_crit_edge, label %if.end6

if.end.err_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put

if.end6:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %do.body [
    i16 -28588, label %sw.bb
    i16 12914, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @net2272_rdk1_probe(ptr noundef %pdev, ptr noundef nonnull %retval.0.i)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call fastcc i32 @net2272_rdk2_probe(ptr noundef %pdev, ptr noundef nonnull %retval.0.i)
  br label %sw.epilog

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/net2272.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2478, 0\0A.popsection", ""() #10, !srcloc !377
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %ret.0 = phi i32 [ %call10, %sw.bb9 ], [ %call8, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end15, label %sw.epilog.err_pci_crit_edge

sw.epilog.err_pci_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pci

if.end15:                                         ; preds = %sw.epilog
  %call16 = tail call fastcc i32 @net2272_probe_fin(ptr noundef nonnull %retval.0.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_pci_crit_edge

if.end15.err_pci_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pci

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_pci:                                          ; preds = %if.end15.err_pci_crit_edge, %sw.epilog.err_pci_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sw.epilog.err_pci_crit_edge ], [ %call16, %if.end15.err_pci_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %err_put

err_put:                                          ; preds = %err_pci, %if.end.err_put_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_pci ], [ -19, %if.end.err_put_crit_edge ]
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %retval.0.i, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end19, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %ret.2, %err_put ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2272_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %added.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %added.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %added.i, align 8
  %3 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.net2272_remove.exit_crit_edge, label %if.then.i

entry.net2272_remove.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_del_gadget(ptr noundef %1) #10
  br label %net2272_remove.exit

net2272_remove.exit:                              ; preds = %if.then.i, %entry.net2272_remove.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #10
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i, align 4
  tail call void @iounmap(ptr noundef %7) #10
  %dev1.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 8
  tail call void @device_remove_file(ptr noundef %9, ptr noundef nonnull @dev_attr_registers) #10
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.135) #14
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %13, label %do.body [
    i16 -28588, label %sw.bb
    i16 12914, label %sw.bb1
  ]

sw.bb:                                            ; preds = %net2272_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  %15 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 104
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %19 = and i32 %18, -65537
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  %add.ptr3.i = getelementptr i8, ptr %21, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #10, !srcloc !381
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  tail call void @iounmap(ptr noundef %23) #10
  %epld_base_addr.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 13, i32 0, i32 1
  %24 = ptrtoint ptr %epld_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %epld_base_addr.i, align 4
  tail call void @iounmap(ptr noundef %25) #10
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.i = icmp eq i32 %29, 0
  %sub.i = sub i32 1, %27
  %add.i = add i32 %sub.i, %29
  %cond.i = select i1 %cmp8.i, i32 0, i32 %add.i
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %cond.i) #10
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i, align 8
  %end.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %32 = ptrtoint ptr %end.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp8.2.i = icmp eq i32 %33, 0
  %sub.2.i = sub i32 1, %31
  %add.2.i = add i32 %sub.2.i, %33
  %cond.2.i = select i1 %cmp8.2.i, i32 0, i32 %add.2.i
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %31, i32 noundef %cond.2.i) #10
  %arrayidx.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %end.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %net2272_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  tail call void @iounmap(ptr noundef %36) #10
  %arrayidx.i12 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %37 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i12, align 8
  %end.i13 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %39 = ptrtoint ptr %end.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp3.i = icmp eq i32 %40, 0
  %sub.i14 = sub i32 1, %38
  %add.i15 = add i32 %sub.i14, %40
  %cond.i16 = select i1 %cmp3.i, i32 0, i32 %add.i15
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef %cond.i16) #10
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %end.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  br label %sw.epilog

do.body:                                          ; preds = %net2272_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/net2272.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2550, 0\0A.popsection", ""() #10, !srcloc !382
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %end.1.i.sink = phi ptr [ %end.1.i, %sw.bb1 ], [ %end.3.i, %sw.bb ]
  %.sink22.in = phi ptr [ %arrayidx.1.i, %sw.bb1 ], [ %arrayidx.3.i, %sw.bb ]
  %41 = ptrtoint ptr %.sink22.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %.sink22 = load i32, ptr %.sink22.in, align 8
  %42 = ptrtoint ptr %end.1.i.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end.1.i.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3.1.i = icmp eq i32 %43, 0
  %sub.1.i = sub i32 1, %.sink22
  %add.1.i = add i32 %sub.1.i, %43
  %cond.1.i = select i1 %cmp3.1.i, i32 0, i32 %add.1.i
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %.sink22, i32 noundef %cond.1.i) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_rdk1_probe(ptr nocapture noundef readonly %pdev, ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
if.end:
  %mem_mapped_addr = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mem_mapped_addr) #10
  %0 = getelementptr inbounds [4 x ptr], ptr %mem_mapped_addr, i32 0, i32 2
  %1 = getelementptr inbounds [4 x ptr], ptr %mem_mapped_addr, i32 0, i32 3
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %2 = call ptr @memset(ptr %mem_mapped_addr, i32 255, i32 16)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp5, i32 0, i32 %add
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %cond, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end22

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end.3.do.body_crit_edge, %if.end.2.do.body_crit_edge, %if.end.do.body_crit_edge
  %i.0183.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ 2, %if.end.2.do.body_crit_edge ], [ 3, %if.end.3.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_rdk1_probe.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_rdk1_probe, %err)) #10
          to label %if.then19 [label %err], !srcloc !376

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_rdk1_probe.__UNIQUE_ID_ddebug286, ptr noundef %8, ptr noundef nonnull @.str.52) #10
  br label %err

if.end22:                                         ; preds = %if.end
  %call23 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %cond) #10
  %9 = ptrtoint ptr %mem_mapped_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %mem_mapped_addr, align 4
  %cmp26 = icmp eq ptr %call23, null
  br i1 %cmp26, label %if.end22.if.then27_crit_edge, label %if.end.2

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %if.end22.3.if.then27_crit_edge, %if.end22.2.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %i.0183.lcssa190 = phi i32 [ 0, %if.end22.if.then27_crit_edge ], [ 2, %if.end22.2.if.then27_crit_edge ], [ 3, %if.end22.3.if.then27_crit_edge ]
  %.lcssa189 = phi i32 [ %4, %if.end22.if.then27_crit_edge ], [ %13, %if.end22.2.if.then27_crit_edge ], [ %18, %if.end22.3.if.then27_crit_edge ]
  %cond.lcssa188 = phi i32 [ %cond, %if.end22.if.then27_crit_edge ], [ %cond.2, %if.end22.2.if.then27_crit_edge ], [ %cond.3, %if.end22.3.if.then27_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %.lcssa189, i32 noundef %cond.lcssa188) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_rdk1_probe.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_rdk1_probe, %err)) #10
          to label %if.then42 [label %err], !srcloc !376

if.then42:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev43, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_rdk1_probe.__UNIQUE_ID_ddebug287, ptr noundef %11, ptr noundef nonnull @.str.53) #10
  br label %err

if.end.2:                                         ; preds = %if.end22
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 8
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %14 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.2 = icmp eq i32 %15, 0
  %sub.2 = sub i32 1, %13
  %add.2 = add i32 %sub.2, %15
  %cond.2 = select i1 %cmp5.2, i32 0, i32 %add.2
  %call.2 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %cond.2, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %if.end.2.do.body_crit_edge, label %if.end22.2

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end22.2:                                       ; preds = %if.end.2
  %call23.2 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %cond.2) #10
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call23.2, ptr %0, align 4
  %cmp26.2 = icmp eq ptr %call23.2, null
  br i1 %cmp26.2, label %if.end22.2.if.then27_crit_edge, label %if.end.3

if.end22.2.if.then27_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.3:                                         ; preds = %if.end22.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 8
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %19 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.3 = icmp eq i32 %20, 0
  %sub.3 = sub i32 1, %18
  %add.3 = add i32 %sub.3, %20
  %cond.3 = select i1 %cmp5.3, i32 0, i32 %add.3
  %call.3 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %cond.3, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %if.end.3.do.body_crit_edge, label %if.end22.3

if.end.3.do.body_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end22.3:                                       ; preds = %if.end.3
  %call23.3 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %cond.3) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23.3, ptr %1, align 4
  %cmp26.3 = icmp eq ptr %call23.3, null
  br i1 %cmp26.3, label %if.end22.3.if.then27_crit_edge, label %for.inc.3

if.end22.3.if.then27_crit_edge:                   ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

for.inc.3:                                        ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mem_mapped_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_mapped_addr, align 4
  %24 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %epld_base_addr = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13, i32 0, i32 1
  %28 = ptrtoint ptr %epld_base_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %epld_base_addr, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %base_addr = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 248
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %33 = and i32 %32, -50331649
  %34 = or i32 %33, 16777216
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %24, align 8
  %add.ptr59 = getelementptr i8, ptr %36, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %34) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %24, align 8
  %add.ptr66 = getelementptr i8, ptr %38, i32 104
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  %40 = or i32 %39, 589824
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %24, align 8
  %add.ptr73 = getelementptr i8, ptr %42, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %40) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %24, align 8
  %add.ptr78 = getelementptr i8, ptr %44, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 8) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_addr, align 4
  %add.ptr83 = getelementptr i16, ptr %46, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 -13) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr, align 4
  %add.ptr93 = getelementptr i16, ptr %48, i32 1024
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  %50 = and i8 %49, -2
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr, align 4
  %add.ptr100 = getelementptr i16, ptr %52, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100, i8 %50) #10, !srcloc !388
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 42949600) #10
  br label %cleanup

err:                                              ; preds = %if.then42, %if.then27, %if.then19, %do.body
  %i.0183192 = phi i32 [ %i.0183.lcssa, %if.then19 ], [ %i.0183.lcssa190, %if.then42 ], [ %i.0183.lcssa, %do.body ], [ %i.0183.lcssa190, %if.then27 ]
  %ret.0 = phi i32 [ -16, %if.then19 ], [ -14, %if.then42 ], [ -16, %do.body ], [ -14, %if.then27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0183192)
  %cmp101186.not = icmp eq i32 %i.0183192, 0
  br i1 %cmp101186.not, label %err.cleanup_crit_edge, label %while.body

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %err
  %dec187 = add nsw i32 %i.0183192, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec187)
  %cmp103 = icmp eq i32 %dec187, 1
  br i1 %cmp103, label %while.body.while.cond.backedge_crit_edge, label %if.end106

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end106:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx107 = getelementptr [4 x ptr], ptr %mem_mapped_addr, i32 0, i32 %dec187
  %54 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx107, align 4
  tail call void @iounmap(ptr noundef %55) #10
  %arrayidx109 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187
  %56 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx109, align 8
  %end113 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187, i32 1
  %58 = ptrtoint ptr %end113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %end113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp114 = icmp eq i32 %59, 0
  %sub124 = sub i32 1, %57
  %add125 = add i32 %sub124, %59
  %cond127 = select i1 %cmp114, i32 0, i32 %add125
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %57, i32 noundef %cond127) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end106, %while.body.while.cond.backedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0183192)
  %cmp101 = icmp sgt i32 %i.0183192, 1
  br i1 %cmp101, label %while.body.1, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.1:                                     ; preds = %while.cond.backedge
  %dec187.1 = add nsw i32 %i.0183192, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec187.1)
  %cmp103.1 = icmp eq i32 %dec187.1, 1
  br i1 %cmp103.1, label %while.body.1.while.cond.backedge.1_crit_edge, label %if.end106.1

while.body.1.while.cond.backedge.1_crit_edge:     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.1

if.end106.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx107.1 = getelementptr [4 x ptr], ptr %mem_mapped_addr, i32 0, i32 %dec187.1
  %60 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx107.1, align 4
  tail call void @iounmap(ptr noundef %61) #10
  %arrayidx109.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187.1
  %62 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx109.1, align 8
  %end113.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187.1, i32 1
  %64 = ptrtoint ptr %end113.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end113.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp114.1 = icmp eq i32 %65, 0
  %sub124.1 = sub i32 1, %63
  %add125.1 = add i32 %sub124.1, %65
  %cond127.1 = select i1 %cmp114.1, i32 0, i32 %add125.1
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %63, i32 noundef %cond127.1) #10
  br label %while.cond.backedge.1

while.cond.backedge.1:                            ; preds = %if.end106.1, %while.body.1.while.cond.backedge.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0183192)
  %cmp101.1 = icmp sgt i32 %i.0183192, 2
  br i1 %cmp101.1, label %while.body.2, label %while.cond.backedge.1.cleanup_crit_edge

while.cond.backedge.1.cleanup_crit_edge:          ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.2:                                     ; preds = %while.cond.backedge.1
  %dec187.2 = add nsw i32 %i.0183192, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec187.2)
  %cmp103.2 = icmp eq i32 %dec187.2, 1
  br i1 %cmp103.2, label %while.body.2.cleanup_crit_edge, label %if.end106.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end106.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx107.2 = getelementptr [4 x ptr], ptr %mem_mapped_addr, i32 0, i32 %dec187.2
  %66 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx107.2, align 4
  tail call void @iounmap(ptr noundef %67) #10
  %arrayidx109.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187.2
  %68 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx109.2, align 8
  %end113.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %dec187.2, i32 1
  %70 = ptrtoint ptr %end113.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %end113.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp114.2 = icmp eq i32 %71, 0
  %sub124.2 = sub i32 1, %69
  %add125.2 = add i32 %sub124.2, %71
  %cond127.2 = select i1 %cmp114.2, i32 0, i32 %add125.2
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %69, i32 noundef %cond127.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end106.2, %while.body.2.cleanup_crit_edge, %while.cond.backedge.1.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc.3
  %retval.0 = phi i32 [ 0, %for.inc.3 ], [ %ret.0, %err.cleanup_crit_edge ], [ %ret.0, %while.body.2.cleanup_crit_edge ], [ %ret.0, %if.end106.2 ], [ %ret.0, %while.cond.backedge.1.cleanup_crit_edge ], [ %ret.0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mem_mapped_addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_rdk2_probe(ptr nocapture noundef readonly %pdev, ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp4, i32 0, i32 %add
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %cond, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end18

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %mem_mapped_addr.sroa.0.0 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.do.body_crit_edge ], [ %call19, %for.inc.do.body_crit_edge ]
  %i.0144.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_rdk2_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_rdk2_probe, %err)) #10
          to label %if.then16 [label %err], !srcloc !376

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_rdk2_probe.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.52) #10
  br label %err

if.end18:                                         ; preds = %entry
  %call19 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %cond) #10
  %cmp22 = icmp eq ptr %call19, null
  br i1 %cmp22, label %if.end18.if.then23_crit_edge, label %for.inc

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %if.end18.1.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %i.0144.lcssa150 = phi i32 [ 0, %if.end18.if.then23_crit_edge ], [ 1, %if.end18.1.if.then23_crit_edge ]
  %.lcssa148 = phi i32 [ %1, %if.end18.if.then23_crit_edge ], [ %9, %if.end18.1.if.then23_crit_edge ]
  %cond.lcssa146 = phi i32 [ %cond, %if.end18.if.then23_crit_edge ], [ %cond.1, %if.end18.1.if.then23_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %.lcssa148, i32 noundef %cond.lcssa146) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_rdk2_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_rdk2_probe, %err)) #10
          to label %if.then38 [label %err], !srcloc !376

if.then38:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %dev39 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_rdk2_probe.__UNIQUE_ID_ddebug289, ptr noundef %7, ptr noundef nonnull @.str.53) #10
  br label %err

for.inc:                                          ; preds = %if.end18
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 8
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %10 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.1 = icmp eq i32 %11, 0
  %sub.1 = sub i32 1, %9
  %add.1 = add i32 %sub.1, %11
  %cond.1 = select i1 %cmp4.1, i32 0, i32 %add.1
  %call.1 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %cond.1, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.do.body_crit_edge, label %if.end18.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end18.1:                                       ; preds = %for.inc
  %call19.1 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %cond.1) #10
  %cmp22.1 = icmp eq ptr %call19.1, null
  br i1 %cmp22.1, label %if.end18.1.if.then23_crit_edge, label %for.inc.1

if.end18.1.if.then23_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

for.inc.1:                                        ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %12, align 8
  %base_addr = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19.1, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #10, !srcloc !381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 42949600) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 8
  %add.ptr57 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 16777216) #10, !srcloc !381
  %dev61 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev61, align 8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 8
  %add.ptr63 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #10, !srcloc !379
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.55, i32 noundef %25) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 16777216) #10, !srcloc !381
  br label %cleanup

err:                                              ; preds = %if.then38, %if.then23, %if.then16, %do.body
  %mem_mapped_addr.sroa.0.1 = phi ptr [ %mem_mapped_addr.sroa.0.0, %if.then16 ], [ %mem_mapped_addr.sroa.0.0, %do.body ], [ %call19, %if.then38 ], [ %call19, %if.then23 ]
  %i.0144152 = phi i32 [ %i.0144.lcssa, %if.then16 ], [ %i.0144.lcssa, %do.body ], [ %i.0144.lcssa150, %if.then38 ], [ %i.0144.lcssa150, %if.then23 ]
  %ret.0 = phi i32 [ -16, %if.then16 ], [ -16, %do.body ], [ -14, %if.then38 ], [ -14, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0144152)
  %cmp72.not145 = icmp eq i32 %i.0144152, 0
  br i1 %cmp72.not145, label %err.cleanup_crit_edge, label %while.body.lr.ph

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef %mem_mapped_addr.sroa.0.1) #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 8
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp80 = icmp eq i32 %31, 0
  %sub89 = sub i32 1, %29
  %add90 = add i32 %sub89, %31
  %cond92 = select i1 %cmp80, i32 0, i32 %add90
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %cond92) #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.lr.ph, %err.cleanup_crit_edge, %for.inc.1
  %retval.0 = phi i32 [ 0, %for.inc.1 ], [ %ret.0, %while.body.lr.ph ], [ %ret.0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_probe_fin(ptr noundef %dev, i32 noundef %irqflags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @net2272_present(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @net2272_usb_reset(ptr noundef %dev)
  tail call fastcc void @net2272_usb_reinit(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @net2272_irq, ptr noundef null, i32 noundef %irqflags, ptr noundef nonnull @driver_name, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %7) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 37) #10, !srcloc !388
  %10 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i.i, align 4
  %12 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %13
  %add.ptr.i.i = getelementptr i16, ptr %11, i32 %shl.i.i
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv = zext i8 %14 to i16
  %chiprev = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %chiprev to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %chiprev, align 2
  %dev15 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.64, ptr noundef nonnull @driver_desc) #14
  %18 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev15, align 8
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 8
  %22 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i.i, align 4
  %24 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chiprev, align 2
  %conv22 = zext i16 %25 to i32
  %26 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end10.dma_mode_string.exit_crit_edge, label %if.end.i

if.end10.dma_mode_string.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_mode_string.exit

if.end.i:                                         ; preds = %if.end10
  %27 = load i16, ptr @dma_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %27)
  %28 = icmp ult i16 %27, 3
  br i1 %28, label %switch.lookup, label %if.end.i.dma_mode_string.exit_crit_edge

if.end.i.dma_mode_string.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_mode_string.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = sext i16 %27 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.net2272_probe_fin, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dma_mode_string.exit

dma_mode_string.exit:                             ; preds = %switch.lookup, %if.end.i.dma_mode_string.exit_crit_edge, %if.end10.dma_mode_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.98, %if.end10.dma_mode_string.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.102, %if.end.i.dma_mode_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.67, i32 noundef %21, ptr noundef %23, i32 noundef %conv22, ptr noundef nonnull %retval.0.i) #14
  %31 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.70, ptr noundef nonnull @driver_vers) #14
  %33 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev15, align 8
  %call29 = tail call i32 @device_create_file(ptr noundef %34, ptr noundef nonnull @dev_attr_registers) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %dma_mode_string.exit.err_irq_crit_edge

dma_mode_string.exit.err_irq_crit_edge:           ; preds = %dma_mode_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_irq

if.end32:                                         ; preds = %dma_mode_string.exit
  %call33 = tail call i32 @usb_add_gadget(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %err_add_udc

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %added = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %35 = ptrtoint ptr %added to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %added, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %added, align 8
  br label %cleanup

err_add_udc:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev15, align 8
  tail call void @device_remove_file(ptr noundef %37, ptr noundef nonnull @dev_attr_registers) #10
  br label %err_irq

err_irq:                                          ; preds = %err_add_udc, %dma_mode_string.exit.err_irq_crit_edge
  %ret.0 = phi i32 [ %call29, %dma_mode_string.exit.err_irq_crit_edge ], [ %call33, %err_add_udc ]
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 8
  %call39 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end36, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %do.end ], [ %call.i, %do.end7 ], [ %ret.0, %err_irq ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_initialize_gadget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2272_gadget_release(ptr noundef %_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_dev, i32 -88
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_get_frame(ptr noundef %_gadget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 27, %3
  %add.ptr.i19.i = getelementptr i16, ptr %1, i32 %shl.i18.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv7 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %5 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i16.i, align 4
  %7 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i24 = shl i32 26, %8
  %add.ptr.i19.i25 = getelementptr i16, ptr %6, i32 %shl.i18.i24
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i25) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv10 = zext i8 %9 to i32
  %or = or i32 %shl, %conv10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_wakeup(ptr noundef %_gadget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 24, %3
  %add.ptr.i19.i = getelementptr i16, ptr %1, i32 %shl.i18.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i16.i, align 4
  %8 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i16.i = shl i32 25, %9
  %add.ptr.i17.i = getelementptr i16, ptr %7, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 8) #10, !srcloc !388
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @net2272_set_selfpowered(ptr noundef %_gadget, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_pullup(ptr noundef %_gadget, i32 noundef %is_on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 24, %3
  %add.ptr.i19.i = getelementptr i16, ptr %1, i32 %shl.i18.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp8.not = icmp eq i32 %is_on, 0
  %softconnect = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 6
  %5 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %softconnect, align 8
  %bf.shl = select i1 %cmp8.not, i16 0, i16 16384
  %bf.clear = and i16 %bf.load, -16385
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %softconnect, align 8
  %6 = and i8 %4, -9
  %masksel = select i1 %cmp8.not, i8 0, i8 8
  %tmp.0 = or i8 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i16.i, align 4
  %9 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i16.i = shl i32 24, %10
  %add.ptr.i17.i = getelementptr i16, ptr %8, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %tmp.0) #10, !srcloc !388
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_start(ptr nocapture noundef %_gadget, ptr noundef %driver) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %2 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %for.body.preheader, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  %irqs = getelementptr %struct.net2272, ptr %_gadget, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irqs, align 4
  %irqs.1 = getelementptr %struct.net2272, ptr %_gadget, i32 0, i32 4, i32 1, i32 2
  %5 = ptrtoint ptr %irqs.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %irqs.1, align 4
  %irqs.2 = getelementptr %struct.net2272, ptr %_gadget, i32 0, i32 4, i32 2, i32 2
  %6 = ptrtoint ptr %irqs.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irqs.2, align 4
  %irqs.3 = getelementptr %struct.net2272, ptr %_gadget, i32 0, i32 4, i32 3, i32 2
  %7 = ptrtoint ptr %irqs.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irqs.3, align 4
  %softconnect = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 6
  %8 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %softconnect, align 8
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %softconnect, align 8
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bus, align 4
  %driver5 = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 5
  %10 = ptrtoint ptr %driver5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %driver5, align 4
  tail call fastcc void @net2272_ep0_start(ptr noundef %_gadget)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_stop(ptr noundef %_gadget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @stop_activity(ptr noundef %_gadget, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %driver = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 5
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2272_async_callbacks(ptr noundef %_gadget, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %async_callbacks = getelementptr inbounds %struct.net2272, ptr %_gadget, i32 0, i32 6
  %0 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %bf.shl = select i1 %enable, i16 2048, i16 0
  %bf.clear = and i16 %bf.load, -2049
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %async_callbacks, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @net2272_read(ptr nocapture noundef readonly %dev, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg)
  %cmp = icmp ugt i32 %reg, 31
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %reg to i8
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %base_shift.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #10, !srcloc !388
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %4 = ptrtoint ptr %base_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_shift.i, align 8
  %shl.i = shl nuw i32 1, %5
  %add.ptr.i = getelementptr i16, ptr %3, i32 %shl.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i16 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %base_addr.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i16, align 4
  %base_shift.i17 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %9 = ptrtoint ptr %base_shift.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_shift.i17, align 8
  %shl.i18 = shl i32 %reg, %10
  %add.ptr.i19 = getelementptr i16, ptr %8, i32 %shl.i18
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %ret.0 = phi i8 [ %6, %do.body ], [ %11, %if.else ]
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_write(ptr nocapture noundef readonly %dev, i32 noundef %reg, i8 noundef zeroext %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg)
  %cmp = icmp ugt i32 %reg, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp, label %do.body, label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %reg to i8
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %base_shift.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %4 = ptrtoint ptr %base_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_shift.i, align 8
  %shl.i = shl nuw i32 1, %5
  %add.ptr.i = getelementptr i16, ptr %3, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %value) #10, !srcloc !388
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i14 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %base_addr.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i14, align 4
  %base_shift.i15 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %base_shift.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_shift.i15, align 8
  %shl.i16 = shl i32 %reg, %9
  %add.ptr.i17 = getelementptr i16, ptr %7, i32 %shl.i16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 %value) #10, !srcloc !388
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_ep0_start(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 15, %14
  %add.ptr.i17.i21.i = getelementptr i16, ptr %12, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -124) #10, !srcloc !388
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %pagesel.i8 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pagesel.i8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagesel.i8, align 4
  %conv.i9 = zext i8 %18 to i32
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i11 = load i32, ptr %num.i, align 4
  %bf.lshr.i12 = lshr i32 %bf.load.i11, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i12, i32 %conv.i9)
  %cmp.not.i13 = icmp eq i32 %bf.lshr.i12, %conv.i9
  br i1 %cmp.not.i13, label %net2272_ep_write.exit.net2272_ep_write.exit27_crit_edge, label %if.then.i22

net2272_ep_write.exit.net2272_ep_write.exit27_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit27

if.then.i22:                                      ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i14 = trunc i32 %bf.lshr.i12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i15 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %20 = ptrtoint ptr %base_addr.i14.i.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i14.i.i15, align 4
  %base_shift.i15.i.i16 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %22 = ptrtoint ptr %base_shift.i15.i.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_shift.i15.i.i16, align 8
  %shl.i16.i.i17 = shl i32 4, %23
  %add.ptr.i17.i.i18 = getelementptr i16, ptr %21, i32 %shl.i16.i.i17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i18, i8 %conv6.i14) #10, !srcloc !388
  %24 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load8.i19 = load i32, ptr %num.i, align 4
  %bf.lshr9.i20 = lshr i32 %bf.load8.i19, 24
  %conv10.i21 = trunc i32 %bf.lshr9.i20 to i8
  %25 = ptrtoint ptr %pagesel.i8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i21, ptr %pagesel.i8, align 4
  br label %net2272_ep_write.exit27

net2272_ep_write.exit27:                          ; preds = %if.then.i22, %net2272_ep_write.exit.net2272_ep_write.exit27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i23 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %26 = ptrtoint ptr %base_addr.i14.i18.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i14.i18.i23, align 4
  %base_shift.i15.i19.i24 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %28 = ptrtoint ptr %base_shift.i15.i19.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_shift.i15.i19.i24, align 8
  %shl.i16.i20.i25 = shl i32 14, %29
  %add.ptr.i17.i21.i26 = getelementptr i16, ptr %27, i32 %shl.i16.i20.i25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i26, i8 72) #10, !srcloc !388
  %softconnect = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %30 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %softconnect, align 8
  %31 = lshr i16 %bf.load, 11
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 8
  %conv = or i8 %33, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %34 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %36 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 24, %37
  %add.ptr.i17.i = getelementptr i16, ptr %35, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i14.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 32) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i14.i, align 4
  %42 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i.i = shl nuw i32 1, %43
  %add.ptr.i.i = getelementptr i16, ptr %41, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 97) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i14.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 33) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i14.i, align 4
  %48 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i.i30 = shl nuw i32 1, %49
  %add.ptr.i.i31 = getelementptr i16, ptr %47, i32 %shl.i.i30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i31, i8 84) #10, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_ep_write(ptr nocapture noundef readonly %ep, i32 noundef %reg, i8 noundef zeroext %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pagesel = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel, align 4
  %conv = zext i8 %3 to i32
  %num = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %num, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %conv)
  %cmp.not = icmp eq i32 %bf.lshr, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = trunc i32 %bf.lshr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 4, %8
  %add.ptr.i17.i = getelementptr i16, ptr %6, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv6) #10, !srcloc !388
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8 = load i32, ptr %num, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 24
  %conv10 = trunc i32 %bf.lshr9 to i8
  %10 = ptrtoint ptr %pagesel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10, ptr %pagesel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg)
  %cmp.i = icmp ugt i32 %reg, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp.i, label %do.body.i, label %do.body4.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %reg to i8
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %conv.i) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %15 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %16
  %add.ptr.i.i = getelementptr i16, ptr %14, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %value) #10, !srcloc !388
  br label %net2272_write.exit

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i14.i18 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %base_addr.i14.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i14.i18, align 4
  %base_shift.i15.i19 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %base_shift.i15.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_shift.i15.i19, align 8
  %shl.i16.i20 = shl i32 %reg, %20
  %add.ptr.i17.i21 = getelementptr i16, ptr %18, i32 %shl.i16.i20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21, i8 %value) #10, !srcloc !388
  br label %net2272_write.exit

net2272_write.exit:                               ; preds = %do.body4.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %dev, ptr noundef readonly %driver) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  tail call fastcc void @net2272_usb_reset(ptr noundef %dev)
  %arrayidx = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0
  %stopped.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 5
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %bf.set.i = or i32 %bf.load.i, 2048
  store i32 %bf.set.i, ptr %stopped.i, align 4
  %queue.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 3
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not5.i = icmp eq ptr %4, %queue.i
  br i1 %cmp.i.not5.i, label %entry.net2272_dequeue_all.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.net2272_dequeue_all.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %5 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %4, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -56
  tail call fastcc void @net2272_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.net2272_dequeue_all.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.net2272_dequeue_all.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit

net2272_dequeue_all.exit:                         ; preds = %while.body.i.net2272_dequeue_all.exit_crit_edge, %entry.net2272_dequeue_all.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1
  %stopped.i.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  %8 = ptrtoint ptr %stopped.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i.1 = load i32, ptr %stopped.i.1, align 4
  %bf.set.i.1 = or i32 %bf.load.i.1, 2048
  store i32 %bf.set.i.1, ptr %stopped.i.1, align 4
  %queue.i.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 3
  %9 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i.not5.i.1 = icmp eq ptr %10, %queue.i.1
  br i1 %cmp.i.not5.i.1, label %net2272_dequeue_all.exit.net2272_dequeue_all.exit.1_crit_edge, label %net2272_dequeue_all.exit.while.body.i.1_crit_edge

net2272_dequeue_all.exit.while.body.i.1_crit_edge: ; preds = %net2272_dequeue_all.exit
  br label %while.body.i.1

net2272_dequeue_all.exit.net2272_dequeue_all.exit.1_crit_edge: ; preds = %net2272_dequeue_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %net2272_dequeue_all.exit.while.body.i.1_crit_edge
  %11 = phi ptr [ %13, %while.body.i.1.while.body.i.1_crit_edge ], [ %10, %net2272_dequeue_all.exit.while.body.i.1_crit_edge ]
  %add.ptr.i.1 = getelementptr i8, ptr %11, i32 -56
  tail call fastcc void @net2272_done(ptr noundef %arrayidx.1, ptr noundef %add.ptr.i.1, i32 noundef -108) #10
  %12 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %13, %queue.i.1
  br i1 %cmp.i.not.i.1, label %while.body.i.1.net2272_dequeue_all.exit.1_crit_edge, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.1

while.body.i.1.net2272_dequeue_all.exit.1_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.1

net2272_dequeue_all.exit.1:                       ; preds = %while.body.i.1.net2272_dequeue_all.exit.1_crit_edge, %net2272_dequeue_all.exit.net2272_dequeue_all.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2
  %stopped.i.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 5
  %14 = ptrtoint ptr %stopped.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i.2 = load i32, ptr %stopped.i.2, align 4
  %bf.set.i.2 = or i32 %bf.load.i.2, 2048
  store i32 %bf.set.i.2, ptr %stopped.i.2, align 4
  %queue.i.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 3
  %15 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i.not5.i.2 = icmp eq ptr %16, %queue.i.2
  br i1 %cmp.i.not5.i.2, label %net2272_dequeue_all.exit.1.net2272_dequeue_all.exit.2_crit_edge, label %net2272_dequeue_all.exit.1.while.body.i.2_crit_edge

net2272_dequeue_all.exit.1.while.body.i.2_crit_edge: ; preds = %net2272_dequeue_all.exit.1
  br label %while.body.i.2

net2272_dequeue_all.exit.1.net2272_dequeue_all.exit.2_crit_edge: ; preds = %net2272_dequeue_all.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.2

while.body.i.2:                                   ; preds = %while.body.i.2.while.body.i.2_crit_edge, %net2272_dequeue_all.exit.1.while.body.i.2_crit_edge
  %17 = phi ptr [ %19, %while.body.i.2.while.body.i.2_crit_edge ], [ %16, %net2272_dequeue_all.exit.1.while.body.i.2_crit_edge ]
  %add.ptr.i.2 = getelementptr i8, ptr %17, i32 -56
  tail call fastcc void @net2272_done(ptr noundef %arrayidx.2, ptr noundef %add.ptr.i.2, i32 noundef -108) #10
  %18 = ptrtoint ptr %queue.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %19, %queue.i.2
  br i1 %cmp.i.not.i.2, label %while.body.i.2.net2272_dequeue_all.exit.2_crit_edge, label %while.body.i.2.while.body.i.2_crit_edge

while.body.i.2.while.body.i.2_crit_edge:          ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.2

while.body.i.2.net2272_dequeue_all.exit.2_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.2

net2272_dequeue_all.exit.2:                       ; preds = %while.body.i.2.net2272_dequeue_all.exit.2_crit_edge, %net2272_dequeue_all.exit.1.net2272_dequeue_all.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3
  %stopped.i.3 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 5
  %20 = ptrtoint ptr %stopped.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.3 = load i32, ptr %stopped.i.3, align 4
  %bf.set.i.3 = or i32 %bf.load.i.3, 2048
  store i32 %bf.set.i.3, ptr %stopped.i.3, align 4
  %queue.i.3 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 3
  %21 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i.not5.i.3 = icmp eq ptr %22, %queue.i.3
  br i1 %cmp.i.not5.i.3, label %net2272_dequeue_all.exit.2.net2272_dequeue_all.exit.3_crit_edge, label %net2272_dequeue_all.exit.2.while.body.i.3_crit_edge

net2272_dequeue_all.exit.2.while.body.i.3_crit_edge: ; preds = %net2272_dequeue_all.exit.2
  br label %while.body.i.3

net2272_dequeue_all.exit.2.net2272_dequeue_all.exit.3_crit_edge: ; preds = %net2272_dequeue_all.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.3

while.body.i.3:                                   ; preds = %while.body.i.3.while.body.i.3_crit_edge, %net2272_dequeue_all.exit.2.while.body.i.3_crit_edge
  %23 = phi ptr [ %25, %while.body.i.3.while.body.i.3_crit_edge ], [ %22, %net2272_dequeue_all.exit.2.while.body.i.3_crit_edge ]
  %add.ptr.i.3 = getelementptr i8, ptr %23, i32 -56
  tail call fastcc void @net2272_done(ptr noundef %arrayidx.3, ptr noundef %add.ptr.i.3, i32 noundef -108) #10
  %24 = ptrtoint ptr %queue.i.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue.i.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %25, %queue.i.3
  br i1 %cmp.i.not.i.3, label %while.body.i.3.net2272_dequeue_all.exit.3_crit_edge, label %while.body.i.3.while.body.i.3_crit_edge

while.body.i.3.while.body.i.3_crit_edge:          ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.3

while.body.i.3.net2272_dequeue_all.exit.3_crit_edge: ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit.3

net2272_dequeue_all.exit.3:                       ; preds = %while.body.i.3.net2272_dequeue_all.exit.3_crit_edge, %net2272_dequeue_all.exit.2.net2272_dequeue_all.exit.3_crit_edge
  %spec.select = select i1 %cmp, ptr null, ptr %driver
  %async_callbacks = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %26 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %27 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  %tobool2.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %net2272_dequeue_all.exit.3.if.end6_crit_edge, label %if.then3

net2272_dequeue_all.exit.3.if.end6_crit_edge:     ; preds = %net2272_dequeue_all.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %net2272_dequeue_all.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %spec.select, i32 0, i32 5
  %28 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disconnect, align 4
  tail call void %29(ptr noundef %dev) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %net2272_dequeue_all.exit.3.if.end6_crit_edge
  tail call fastcc void @net2272_usb_reinit(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_usb_reset(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 8
  %dev_id.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %2)
  %cond.i = icmp eq i16 %2, -28588
  br i1 %cond.i, label %do.body.i, label %entry.net2272_cancel_dma.exit_crit_edge

entry.net2272_cancel_dma.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_cancel_dma.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %3 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 4) #10, !srcloc !388
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 168
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  %11 = and i8 %10, 16
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %do.body9.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.body9.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr12.i = getelementptr i8, ptr %13, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 8) #10, !srcloc !388
  br label %net2272_cancel_dma.exit

net2272_cancel_dma.exit:                          ; preds = %do.body9.i, %entry.net2272_cancel_dma.exit_crit_edge
  %dma_busy.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %dma_busy.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -129
  store i16 %bf.clear.i, ptr %dma_busy.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %15 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 32) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i, align 4
  %19 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %20
  %add.ptr.i.i = getelementptr i16, ptr %18, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 33) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i.i, align 4
  %25 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i45 = shl nuw i32 1, %26
  %add.ptr.i.i46 = getelementptr i16, ptr %24, i32 %shl.i.i45
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i46, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i.i, align 4
  %29 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i = shl i32 2, %30
  %add.ptr.i17.i = getelementptr i16, ptr %28, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 -1) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i.i, align 4
  %33 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i50 = shl i32 3, %34
  %add.ptr.i17.i51 = getelementptr i16, ptr %32, i32 %shl.i16.i50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i51, i8 -9) #10, !srcloc !388
  %35 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %dma_busy.i, align 8
  %36 = lshr i16 %bf.load, 7
  %or639 = and i16 %36, 14
  %37 = load i16, ptr @dma_ep, align 2
  %38 = lshr i16 %37, 1
  %or1240 = or i16 %or639, %38
  %39 = trunc i16 %or1240 to i8
  %conv15 = or i8 %39, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i.i, align 4
  %42 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i54 = shl i32 28, %43
  %add.ptr.i17.i55 = getelementptr i16, ptr %41, i32 %shl.i16.i54
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i55, i8 %conv15) #10, !srcloc !388
  %44 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %45)
  %cond.i57 = icmp eq i16 %45, -28588
  br i1 %cond.i57, label %do.body.i60, label %net2272_cancel_dma.exit.net2272_cancel_dma.exit69_crit_edge

net2272_cancel_dma.exit.net2272_cancel_dma.exit69_crit_edge: ; preds = %net2272_cancel_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_cancel_dma.exit69

do.body.i60:                                      ; preds = %net2272_cancel_dma.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %46 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %add.ptr.i58 = getelementptr i8, ptr %48, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 8
  %add.ptr4.i59 = getelementptr i8, ptr %50, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i59, i8 4) #10, !srcloc !388
  br label %while.cond.i63

while.cond.i63:                                   ; preds = %while.cond.i63.while.cond.i63_crit_edge, %do.body.i60
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 8
  %add.ptr6.i61 = getelementptr i8, ptr %52, i32 168
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i61) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  %54 = and i8 %53, 16
  %tobool.not.i62 = icmp eq i8 %54, 0
  br i1 %tobool.not.i62, label %while.cond.i63.while.cond.i63_crit_edge, label %do.body9.i65

while.cond.i63.while.cond.i63_crit_edge:          ; preds = %while.cond.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i63

do.body9.i65:                                     ; preds = %while.cond.i63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %46, align 8
  %add.ptr12.i64 = getelementptr i8, ptr %56, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i64, i8 8) #10, !srcloc !388
  br label %net2272_cancel_dma.exit69

net2272_cancel_dma.exit69:                        ; preds = %do.body9.i65, %net2272_cancel_dma.exit.net2272_cancel_dma.exit69_crit_edge
  %57 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i67 = load i16, ptr %dma_busy.i, align 8
  %bf.clear.i68 = and i16 %bf.load.i67, -129
  store i16 %bf.clear.i68, ptr %dma_busy.i, align 8
  %58 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %58)
  %cmp = icmp ult i16 %58, 4
  %narrow = select i1 %cmp, i16 %58, i16 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 34) #10, !srcloc !388
  %61 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base_addr.i.i, align 4
  %63 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %64
  %add.ptr.i.i.i = getelementptr i16, ptr %62, i32 %shl.i.i.i
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %66 = and i8 %65, 63
  %mode.tr.i = trunc i16 %narrow to i8
  %67 = shl nuw i8 %mode.tr.i, 6
  %conv3.i = or i8 %66, %67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 34) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_addr.i.i, align 4
  %72 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i103.i = shl nuw i32 1, %73
  %add.ptr.i.i104.i = getelementptr i16, ptr %71, i32 %shl.i.i103.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i104.i, i8 %conv3.i) #10, !srcloc !388
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %74 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %ep_list5.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list5.i, ptr noundef %ep_list.i, ptr noundef %ep_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %net2272_cancel_dma.exit69.list_add_tail.exit.i_crit_edge

net2272_cancel_dma.exit69.list_add_tail.exit.i_crit_edge: ; preds = %net2272_cancel_dma.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %net2272_cancel_dma.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ep_list5.i, ptr %prev.i.i, align 4
  %77 = ptrtoint ptr %ep_list5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ep_list.i, ptr %ep_list5.i, align 4
  %prev3.i.i.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ep_list.i, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %ep_list5.i, ptr %ep_list.i, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %net2272_cancel_dma.exit69.list_add_tail.exit.i_crit_edge
  %80 = zext i16 %narrow to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %narrow, label %list_add_tail.exit.i.sw.epilog.i_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb22.i
    i16 2, label %sw.bb41.i
    i16 3, label %sw.bb60.i
  ]

list_add_tail.exit.i.sw.epilog.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %list_add_tail.exit.i
  %ep_list11.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i, align 4
  %call.i.i107.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list11.i, ptr noundef %82, ptr noundef %ep_list.i) #10
  br i1 %call.i.i107.i, label %if.end.i.i109.i, label %sw.bb.i.list_add_tail.exit110.i_crit_edge

sw.bb.i.list_add_tail.exit110.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit110.i

if.end.i.i109.i:                                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %ep_list11.i, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %ep_list11.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ep_list.i, ptr %ep_list11.i, align 4
  %prev3.i.i108.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %prev3.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i108.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %ep_list11.i, ptr %82, align 4
  br label %list_add_tail.exit110.i

list_add_tail.exit110.i:                          ; preds = %if.end.i.i109.i, %sw.bb.i.list_add_tail.exit110.i_crit_edge
  %fifo_size.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 5
  %87 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load.i70 = load i32, ptr %fifo_size.i, align 4
  %bf.clear.i71 = and i32 %bf.load.i70, -16773121
  %bf.set.i = or i32 %bf.clear.i71, 2097152
  store i32 %bf.set.i, ptr %fifo_size.i, align 4
  %fifo_size18.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  br label %sw.epilog.sink.split.i

sw.bb22.i:                                        ; preds = %list_add_tail.exit.i
  %ep_list26.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i, align 4
  %call.i.i112.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list26.i, ptr noundef %89, ptr noundef %ep_list.i) #10
  br i1 %call.i.i112.i, label %if.end.i.i114.i, label %sw.bb22.i.list_add_tail.exit115.i_crit_edge

sw.bb22.i.list_add_tail.exit115.i_crit_edge:      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit115.i

if.end.i.i114.i:                                  ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %ep_list26.i, ptr %prev.i.i, align 4
  %91 = ptrtoint ptr %ep_list26.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %ep_list.i, ptr %ep_list26.i, align 4
  %prev3.i.i113.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %prev3.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i113.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %ep_list26.i, ptr %89, align 4
  br label %list_add_tail.exit115.i

list_add_tail.exit115.i:                          ; preds = %if.end.i.i114.i, %sw.bb22.i.list_add_tail.exit115.i_crit_edge
  %fifo_size31.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  %94 = ptrtoint ptr %fifo_size31.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load32.i = load i32, ptr %fifo_size31.i, align 4
  %bf.clear33.i = and i32 %bf.load32.i, -16773121
  %bf.set34.i = or i32 %bf.clear33.i, 4194304
  store i32 %bf.set34.i, ptr %fifo_size31.i, align 4
  %fifo_size37.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 5
  br label %sw.epilog.sink.split.i

sw.bb41.i:                                        ; preds = %list_add_tail.exit.i
  %ep_list45.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i, align 4
  %call.i.i117.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list45.i, ptr noundef %96, ptr noundef %ep_list.i) #10
  br i1 %call.i.i117.i, label %if.end.i.i119.i, label %sw.bb41.i.list_add_tail.exit120.i_crit_edge

sw.bb41.i.list_add_tail.exit120.i_crit_edge:      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit120.i

if.end.i.i119.i:                                  ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %ep_list45.i, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %ep_list45.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %ep_list.i, ptr %ep_list45.i, align 4
  %prev3.i.i118.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %prev3.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i118.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %ep_list45.i, ptr %96, align 4
  br label %list_add_tail.exit120.i

list_add_tail.exit120.i:                          ; preds = %if.end.i.i119.i, %sw.bb41.i.list_add_tail.exit120.i_crit_edge
  %fifo_size50.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 5
  %101 = ptrtoint ptr %fifo_size50.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load51.i = load i32, ptr %fifo_size50.i, align 4
  %bf.clear52.i = and i32 %bf.load51.i, -16773121
  %bf.set53.i = or i32 %bf.clear52.i, 4194304
  store i32 %bf.set53.i, ptr %fifo_size50.i, align 4
  %fifo_size56.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  br label %sw.epilog.sink.split.i

sw.bb60.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_size63.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb60.i, %list_add_tail.exit120.i, %list_add_tail.exit115.i, %list_add_tail.exit110.i
  %fifo_size63.sink126.i = phi ptr [ %fifo_size63.i, %sw.bb60.i ], [ %fifo_size56.i, %list_add_tail.exit120.i ], [ %fifo_size37.i, %list_add_tail.exit115.i ], [ %fifo_size18.i, %list_add_tail.exit110.i ]
  %.sink.i = phi i32 [ 4194304, %sw.bb60.i ], [ 4194304, %list_add_tail.exit120.i ], [ 2097152, %list_add_tail.exit115.i ], [ 2097152, %list_add_tail.exit110.i ]
  %102 = ptrtoint ptr %fifo_size63.sink126.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load64.i = load i32, ptr %fifo_size63.sink126.i, align 4
  %bf.clear65.i = and i32 %bf.load64.i, -16773121
  %bf.set66.i = or i32 %bf.clear65.i, %.sink.i
  store i32 %bf.set66.i, ptr %fifo_size63.sink126.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %list_add_tail.exit.i.sw.epilog.i_crit_edge
  %ep_list70.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 0, i32 3
  %103 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i, align 4
  %call.i.i122.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list70.i, ptr noundef %104, ptr noundef %ep_list.i) #10
  br i1 %call.i.i122.i, label %if.end.i.i124.i, label %sw.epilog.i.net2272_set_fifo_mode.exit_crit_edge

sw.epilog.i.net2272_set_fifo_mode.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_set_fifo_mode.exit

if.end.i.i124.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %ep_list70.i, ptr %prev.i.i, align 4
  %106 = ptrtoint ptr %ep_list70.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %ep_list.i, ptr %ep_list70.i, align 4
  %prev3.i.i123.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 0, i32 3, i32 1
  %107 = ptrtoint ptr %prev3.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i123.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %ep_list70.i, ptr %104, align 4
  br label %net2272_set_fifo_mode.exit

net2272_set_fifo_mode.exit:                       ; preds = %if.end.i.i124.i, %sw.epilog.i.net2272_set_fifo_mode.exit_crit_edge
  %fifo_size75.i = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 5
  %109 = ptrtoint ptr %fifo_size75.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load76.i = load i32, ptr %fifo_size75.i, align 4
  %bf.clear77.i = and i32 %bf.load76.i, -16773121
  %bf.set78.i = or i32 %bf.clear77.i, 2097152
  store i32 %bf.set78.i, ptr %fifo_size75.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 34) #10, !srcloc !388
  %112 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base_addr.i.i, align 4
  %114 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i74 = shl nuw i32 1, %115
  %add.ptr.i.i75 = getelementptr i16, ptr %113, i32 %shl.i.i74
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i75) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %117 = or i8 %116, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %118 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %119, i8 34) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %120 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base_addr.i.i, align 4
  %122 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i79 = shl nuw i32 1, %123
  %add.ptr.i.i80 = getelementptr i16, ptr %121, i32 %shl.i.i79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i80, i8 %117) #10, !srcloc !388
  %124 = load i16, ptr @dma_mode, align 2
  %conv24 = trunc i16 %124 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %125 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %126, i8 36) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %127 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base_addr.i.i, align 4
  %129 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i84 = shl nuw i32 1, %130
  %add.ptr.i.i85 = getelementptr i16, ptr %128, i32 %shl.i.i84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i85, i8 %conv24) #10, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_usb_reinit(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0
  %name.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %name.peel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ep0name, ptr %name.peel, align 4
  %dev4.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %dev4.peel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev4.peel, align 4
  %num.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 5
  %2 = ptrtoint ptr %num.peel to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.peel = load i32, ptr %num.peel, align 4
  %bf.clear.peel = and i32 %bf.load.peel, 16777151
  store i32 %bf.clear.peel, ptr %num.peel, align 4
  %3 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.peel = icmp eq i8 %3, 0
  br i1 %tobool.not.peel, label %entry.for.body.peel.next_crit_edge, label %land.lhs.true.peel

entry.for.body.peel.next_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.peel.next

land.lhs.true.peel:                               ; preds = %entry
  %4 = load i16, ptr @dma_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp10.peel = icmp eq i16 %4, 0
  br i1 %cmp10.peel, label %if.then.peel, label %land.lhs.true.peel.for.body.peel.next_crit_edge

land.lhs.true.peel.for.body.peel.next_crit_edge:  ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.peel.next

if.then.peel:                                     ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set14.peel = or i32 %bf.clear.peel, 128
  %5 = ptrtoint ptr %num.peel to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.set14.peel, ptr %num.peel, align 4
  br label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.then.peel, %land.lhs.true.peel.for.body.peel.next_crit_edge, %entry.for.body.peel.next_crit_edge
  %6 = ptrtoint ptr %num.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load25.peel = load i32, ptr %num.peel, align 4
  %bf.clear26.peel = and i32 %bf.load25.peel, -16773121
  %bf.set27.peel = or i32 %bf.clear26.peel, 262144
  store i32 %bf.set27.peel, ptr %num.peel, align 4
  tail call fastcc void @net2272_ep_reset(ptr noundef %arrayidx.peel)
  %caps.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load33.peel = load i8, ptr %caps.peel, align 4
  %caps54.peel = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 4
  %bf.set62.peel = or i8 %bf.load33.peel, -116
  %8 = ptrtoint ptr %caps54.peel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set62.peel, ptr %caps54.peel, align 4
  %arrayidx = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1
  %name = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %name, align 4
  %dev4 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev4, align 4
  %num = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 5
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %num, align 4
  %bf.clear = and i32 %bf.load, 16777151
  %bf.set = or i32 %bf.clear, 16777216
  store i32 %bf.set, ptr %num, align 4
  %12 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %for.body.peel.next.if.end52_crit_edge, label %land.lhs.true

for.body.peel.next.if.end52_crit_edge:            ; preds = %for.body.peel.next
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true:                                    ; preds = %for.body.peel.next
  %13 = load i16, ptr @dma_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp10 = icmp eq i16 %13, 1
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set14 = or i32 %bf.clear, 16777344
  %14 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.set14, ptr %num, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then, %land.lhs.true.if.end52_crit_edge, %for.body.peel.next.if.end52_crit_edge
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load21 = load i32, ptr %num, align 4
  %bf.clear22 = and i32 %bf.load21, -16773121
  %bf.set23 = or i32 %bf.clear22, 2097152
  store i32 %bf.set23, ptr %num, align 4
  tail call fastcc void @net2272_ep_reset(ptr noundef %arrayidx)
  %caps38 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %caps38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load39 = load i8, ptr %caps38, align 4
  %caps54 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 1, i32 0, i32 4
  %bf.set62 = or i8 %bf.load39, 124
  %17 = ptrtoint ptr %caps54 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set62, ptr %caps54, align 4
  %arrayidx.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2
  %name.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.8, ptr %name.1, align 4
  %dev4.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 1
  %19 = ptrtoint ptr %dev4.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev4.1, align 4
  %num.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 5
  %20 = ptrtoint ptr %num.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.1 = load i32, ptr %num.1, align 4
  %bf.clear.1 = and i32 %bf.load.1, 16777151
  %bf.set.1 = or i32 %bf.clear.1, 33554432
  store i32 %bf.set.1, ptr %num.1, align 4
  %21 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.1 = icmp eq i8 %21, 0
  br i1 %tobool.not.1, label %if.end52.if.end52.1_crit_edge, label %land.lhs.true.1

if.end52.if.end52.1_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.1

land.lhs.true.1:                                  ; preds = %if.end52
  %22 = load i16, ptr @dma_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp10.1 = icmp eq i16 %22, 2
  br i1 %cmp10.1, label %if.then.1, label %land.lhs.true.1.if.end52.1_crit_edge

land.lhs.true.1.if.end52.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set14.1 = or i32 %bf.clear.1, 33554560
  %23 = ptrtoint ptr %num.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.set14.1, ptr %num.1, align 4
  br label %if.end52.1

if.end52.1:                                       ; preds = %if.then.1, %land.lhs.true.1.if.end52.1_crit_edge, %if.end52.if.end52.1_crit_edge
  %24 = ptrtoint ptr %num.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load21.1 = load i32, ptr %num.1, align 4
  %bf.clear22.1 = and i32 %bf.load21.1, -16773121
  %bf.set23.1 = or i32 %bf.clear22.1, 2097152
  store i32 %bf.set23.1, ptr %num.1, align 4
  tail call fastcc void @net2272_ep_reset(ptr noundef %arrayidx.1)
  %caps38.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 4
  %25 = ptrtoint ptr %caps38.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load39.1 = load i8, ptr %caps38.1, align 4
  %caps54.1 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 2, i32 0, i32 4
  %bf.set62.1 = or i8 %bf.load39.1, 124
  %26 = ptrtoint ptr %caps54.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set62.1, ptr %caps54.1, align 4
  %name.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %name.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.9, ptr %name.2, align 4
  %dev4.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 1
  %28 = ptrtoint ptr %dev4.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev4.2, align 4
  %num.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 5
  %29 = ptrtoint ptr %num.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.2 = load i32, ptr %num.2, align 4
  %bf.clear.2 = and i32 %bf.load.2, 16777151
  %bf.set.2 = or i32 %bf.clear.2, 50331648
  store i32 %bf.set.2, ptr %num.2, align 4
  %30 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.2 = icmp eq i8 %30, 0
  br i1 %tobool.not.2, label %if.end52.1.if.end52.2_crit_edge, label %land.lhs.true.2

if.end52.1.if.end52.2_crit_edge:                  ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.2

land.lhs.true.2:                                  ; preds = %if.end52.1
  %31 = load i16, ptr @dma_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp10.2 = icmp eq i16 %31, 3
  br i1 %cmp10.2, label %if.then.2, label %land.lhs.true.2.if.end52.2_crit_edge

land.lhs.true.2.if.end52.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set14.2 = or i32 %bf.clear.2, 50331776
  %32 = ptrtoint ptr %num.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bf.set14.2, ptr %num.2, align 4
  br label %if.end52.2

if.end52.2:                                       ; preds = %if.then.2, %land.lhs.true.2.if.end52.2_crit_edge, %if.end52.1.if.end52.2_crit_edge
  %arrayidx.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %num.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load21.2 = load i32, ptr %num.2, align 4
  %bf.clear22.2 = and i32 %bf.load21.2, -16773121
  %bf.set23.2 = or i32 %bf.clear22.2, 2097152
  store i32 %bf.set23.2, ptr %num.2, align 4
  tail call fastcc void @net2272_ep_reset(ptr noundef %arrayidx.2)
  %caps38.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 0, i32 4
  %34 = ptrtoint ptr %caps38.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load39.2 = load i8, ptr %caps38.2, align 4
  %caps54.2 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 3, i32 0, i32 4
  %bf.set62.2 = or i8 %bf.load39.2, 124
  %35 = ptrtoint ptr %caps54.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %bf.set62.2, ptr %caps54.2, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.peel, i32 noundef 64) #10
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 3
  %36 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.peel, ptr %ep0, align 4
  %37 = ptrtoint ptr %num.peel to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load71 = load i32, ptr %num.peel, align 4
  %bf.clear72 = and i32 %bf.load71, -2049
  store i32 %bf.clear72, ptr %num.peel, align 4
  %ep_list = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ep_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped1 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %stopped1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 16777216
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %dev4 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 4
  %protocol_stall = getelementptr inbounds %struct.net2272, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load5 = load i16, ptr %protocol_stall, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load5)
  %tobool.not = icmp sgt i16 %bf.load5, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set = or i32 %bf.load, 2048
  %4 = ptrtoint ptr %stopped1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set, ptr %stopped1, align 4
  tail call fastcc void @set_halt(ptr noundef %ep)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %pagesel.i.i = getelementptr inbounds %struct.net2272, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pagesel.i.i, align 4
  %conv.i.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i.i = load i32, ptr %stopped1, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %bf.lshr.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.allow_status.exit_crit_edge, label %if.then.i.i

if.end.allow_status.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_status.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i.i = trunc i32 %bf.lshr.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i.i = getelementptr inbounds %struct.net2272, ptr %6, i32 0, i32 12
  %10 = ptrtoint ptr %base_addr.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i14.i.i.i, align 4
  %base_shift.i15.i.i.i = getelementptr inbounds %struct.net2272, ptr %6, i32 0, i32 11
  %12 = ptrtoint ptr %base_shift.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_shift.i15.i.i.i, align 8
  %shl.i16.i.i.i = shl i32 4, %13
  %add.ptr.i17.i.i.i = getelementptr i16, ptr %11, i32 %shl.i16.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i.i, i8 %conv6.i.i) #10, !srcloc !388
  %14 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load8.i.i = load i32, ptr %stopped1, align 4
  %bf.lshr9.i.i = lshr i32 %bf.load8.i.i, 24
  %conv10.i.i = trunc i32 %bf.lshr9.i.i to i8
  %15 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i.i, ptr %pagesel.i.i, align 4
  br label %allow_status.exit

allow_status.exit:                                ; preds = %if.then.i.i, %if.end.allow_status.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i.i = getelementptr inbounds %struct.net2272, ptr %6, i32 0, i32 12
  %16 = ptrtoint ptr %base_addr.i14.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i14.i18.i.i, align 4
  %base_shift.i15.i19.i.i = getelementptr inbounds %struct.net2272, ptr %6, i32 0, i32 11
  %18 = ptrtoint ptr %base_shift.i15.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_shift.i15.i19.i.i, align 8
  %shl.i16.i20.i.i = shl i32 14, %19
  %add.ptr.i17.i21.i.i = getelementptr i16, ptr %17, i32 %shl.i16.i20.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i.i, i8 -116) #10, !srcloc !388
  %20 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %stopped1, align 4
  %bf.set.i = or i32 %bf.load.i, 2048
  store i32 %bf.set.i, ptr %stopped1, align 4
  br label %if.end11

if.end11:                                         ; preds = %allow_status.exit, %entry.if.end11_crit_edge
  %queue = getelementptr inbounds %struct.net2272_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del_init.exit_crit_edge

if.end11.list_del_init.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.net2272_request, ptr %req, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end11.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.net2272_request, ptr %req, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status13 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %29 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %30)
  %cmp14 = icmp eq i32 %30, -115
  br i1 %cmp14, label %if.then15, label %list_del_init.exit.if.end20_crit_edge

list_del_init.exit.if.end20_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %status, ptr %status13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %list_del_init.exit.if.end20_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then15 ], [ %30, %list_del_init.exit.if.end20_crit_edge ]
  %dev21 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %32 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev21, align 4
  %34 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not = icmp eq i8 %34, 0
  br i1 %tobool22.not, label %if.end20.if.end32_crit_edge, label %land.lhs.true

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end20
  %35 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load23 = load i32, ptr %stopped1, align 4
  %36 = and i32 %bf.load23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not = icmp eq i32 %36, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end32_crit_edge, label %if.then27

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr30 = lshr i32 %bf.load23, 9
  %bf.clear31 = and i32 %bf.lshr30, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %33, ptr noundef %req, i32 noundef %bf.clear31) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %37 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %status.addr.0, label %do.body [
    i32 0, label %if.end32.if.end49_crit_edge
    i32 -108, label %if.end32.if.end49_crit_edge89
  ]

if.end32.if.end49_crit_edge89:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_done.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_done, %if.end49)) #10
          to label %if.then41 [label %if.end49], !srcloc !376

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev42, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_done.__UNIQUE_ID_ddebug249, ptr noundef %39, ptr noundef nonnull @.str.6, ptr noundef %41, ptr noundef %req, i32 noundef %status.addr.0, i32 noundef %43, i32 noundef %45, ptr noundef %47) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then41, %do.body, %if.end32.if.end49_crit_edge, %if.end32.if.end49_crit_edge89
  %bf.clear = and i32 %bf.load, 2048
  %48 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load51 = load i32, ptr %stopped1, align 4
  %bf.set53 = or i32 %bf.load51, 2048
  store i32 %bf.set53, ptr %stopped1, align 4
  %lock = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %49 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load58 = load i32, ptr %stopped1, align 4
  %bf.clear59 = and i32 %bf.load58, -2049
  %bf.set60 = or i32 %bf.clear59, %bf.clear
  store i32 %bf.set60, ptr %stopped1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_halt(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 14, %14
  %add.ptr.i17.i21.i = getelementptr i16, ptr %12, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 8) #10, !srcloc !388
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %pagesel.i3 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pagesel.i3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagesel.i3, align 4
  %conv.i4 = zext i8 %18 to i32
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i6 = load i32, ptr %num.i, align 4
  %bf.lshr.i7 = lshr i32 %bf.load.i6, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i7, i32 %conv.i4)
  %cmp.not.i8 = icmp eq i32 %bf.lshr.i7, %conv.i4
  br i1 %cmp.not.i8, label %net2272_ep_write.exit.net2272_ep_write.exit22_crit_edge, label %if.then.i17

net2272_ep_write.exit.net2272_ep_write.exit22_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit22

if.then.i17:                                      ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i9 = trunc i32 %bf.lshr.i7 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i10 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %20 = ptrtoint ptr %base_addr.i14.i.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i14.i.i10, align 4
  %base_shift.i15.i.i11 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %22 = ptrtoint ptr %base_shift.i15.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_shift.i15.i.i11, align 8
  %shl.i16.i.i12 = shl i32 4, %23
  %add.ptr.i17.i.i13 = getelementptr i16, ptr %21, i32 %shl.i16.i.i12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i13, i8 %conv6.i9) #10, !srcloc !388
  %24 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load8.i14 = load i32, ptr %num.i, align 4
  %bf.lshr9.i15 = lshr i32 %bf.load8.i14, 24
  %conv10.i16 = trunc i32 %bf.lshr9.i15 to i8
  %25 = ptrtoint ptr %pagesel.i3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i16, ptr %pagesel.i3, align 4
  br label %net2272_ep_write.exit22

net2272_ep_write.exit22:                          ; preds = %if.then.i17, %net2272_ep_write.exit.net2272_ep_write.exit22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i18 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %26 = ptrtoint ptr %base_addr.i14.i18.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i14.i18.i18, align 4
  %base_shift.i15.i19.i19 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %28 = ptrtoint ptr %base_shift.i15.i19.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_shift.i15.i19.i19, align 8
  %shl.i16.i20.i20 = shl i32 15, %29
  %add.ptr.i17.i21.i21 = getelementptr i16, ptr %27, i32 %shl.i16.i20.i20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i21, i8 1) #10, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_status(ptr nocapture noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 14, %14
  %add.ptr.i17.i21.i = getelementptr i16, ptr %12, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -116) #10, !srcloc !388
  %15 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %num.i, align 4
  %bf.set = or i32 %bf.load, 2048
  store i32 %bf.set, ptr %num.i, align 4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_ep_reset(ptr noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %desc, align 4
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef -1) #10
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @net2272_ep_ops, ptr %ops, align 4
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %7 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %8 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %12
  %add.ptr.i17.i.i = getelementptr i16, ptr %10, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %14 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 11, %18
  %add.ptr.i17.i21.i = getelementptr i16, ptr %16, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 0) #10, !srcloc !388
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %pagesel.i16 = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %pagesel.i16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pagesel.i16, align 4
  %conv.i17 = zext i8 %22 to i32
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i19 = load i32, ptr %num.i, align 4
  %bf.lshr.i20 = lshr i32 %bf.load.i19, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i20, i32 %conv.i17)
  %cmp.not.i21 = icmp eq i32 %bf.lshr.i20, %conv.i17
  br i1 %cmp.not.i21, label %net2272_ep_write.exit.net2272_ep_write.exit35_crit_edge, label %if.then.i30

net2272_ep_write.exit.net2272_ep_write.exit35_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit35

if.then.i30:                                      ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i22 = trunc i32 %bf.lshr.i20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i23 = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %24 = ptrtoint ptr %base_addr.i14.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i14.i.i23, align 4
  %base_shift.i15.i.i24 = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %base_shift.i15.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_shift.i15.i.i24, align 8
  %shl.i16.i.i25 = shl i32 4, %27
  %add.ptr.i17.i.i26 = getelementptr i16, ptr %25, i32 %shl.i16.i.i25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i26, i8 %conv6.i22) #10, !srcloc !388
  %28 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load8.i27 = load i32, ptr %num.i, align 4
  %bf.lshr9.i28 = lshr i32 %bf.load8.i27, 24
  %conv10.i29 = trunc i32 %bf.lshr9.i28 to i8
  %29 = ptrtoint ptr %pagesel.i16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i29, ptr %pagesel.i16, align 4
  br label %net2272_ep_write.exit35

net2272_ep_write.exit35:                          ; preds = %if.then.i30, %net2272_ep_write.exit.net2272_ep_write.exit35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i31 = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %30 = ptrtoint ptr %base_addr.i14.i18.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i14.i18.i31, align 4
  %base_shift.i15.i19.i32 = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  %32 = ptrtoint ptr %base_shift.i15.i19.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_shift.i15.i19.i32, align 8
  %shl.i16.i20.i33 = shl i32 15, %33
  %add.ptr.i17.i21.i34 = getelementptr i16, ptr %31, i32 %shl.i16.i20.i33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i34, i8 -124) #10, !srcloc !388
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  %spec.select = select i1 %cmp.not, i8 80, i8 83
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i, align 4
  %pagesel.i37 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %pagesel.i37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pagesel.i37, align 4
  %conv.i38 = zext i8 %38 to i32
  %bf.lshr.i41 = lshr i32 %bf.load, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i41, i32 %conv.i38)
  %cmp.not.i42 = icmp eq i32 %bf.lshr.i41, %conv.i38
  br i1 %cmp.not.i42, label %net2272_ep_write.exit35.net2272_ep_write.exit56_crit_edge, label %if.then.i51

net2272_ep_write.exit35.net2272_ep_write.exit56_crit_edge: ; preds = %net2272_ep_write.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit56

if.then.i51:                                      ; preds = %net2272_ep_write.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i43 = trunc i32 %bf.lshr.i41 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i44 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 12
  %39 = ptrtoint ptr %base_addr.i14.i.i44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_addr.i14.i.i44, align 4
  %base_shift.i15.i.i45 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 11
  %41 = ptrtoint ptr %base_shift.i15.i.i45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_shift.i15.i.i45, align 8
  %shl.i16.i.i46 = shl i32 4, %42
  %add.ptr.i17.i.i47 = getelementptr i16, ptr %40, i32 %shl.i16.i.i46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i47, i8 %conv6.i43) #10, !srcloc !388
  %43 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load8.i48 = load i32, ptr %num.i, align 4
  %bf.lshr9.i49 = lshr i32 %bf.load8.i48, 24
  %conv10.i50 = trunc i32 %bf.lshr9.i49 to i8
  %44 = ptrtoint ptr %pagesel.i37 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv10.i50, ptr %pagesel.i37, align 4
  br label %net2272_ep_write.exit56

net2272_ep_write.exit56:                          ; preds = %if.then.i51, %net2272_ep_write.exit35.net2272_ep_write.exit56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i52 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 12
  %45 = ptrtoint ptr %base_addr.i14.i18.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_addr.i14.i18.i52, align 4
  %base_shift.i15.i19.i53 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 11
  %47 = ptrtoint ptr %base_shift.i15.i19.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base_shift.i15.i19.i53, align 8
  %shl.i16.i20.i54 = shl i32 14, %48
  %add.ptr.i17.i21.i55 = getelementptr i16, ptr %46, i32 %shl.i16.i20.i54
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i55, i8 %spec.select) #10, !srcloc !388
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 4
  %pagesel.i58 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %pagesel.i58 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pagesel.i58, align 4
  %conv.i59 = zext i8 %52 to i32
  %53 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i61 = load i32, ptr %num.i, align 4
  %bf.lshr.i62 = lshr i32 %bf.load.i61, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i62, i32 %conv.i59)
  %cmp.not.i63 = icmp eq i32 %bf.lshr.i62, %conv.i59
  br i1 %cmp.not.i63, label %net2272_ep_write.exit56.net2272_ep_write.exit77_crit_edge, label %if.then.i72

net2272_ep_write.exit56.net2272_ep_write.exit77_crit_edge: ; preds = %net2272_ep_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit77

if.then.i72:                                      ; preds = %net2272_ep_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i64 = trunc i32 %bf.lshr.i62 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i65 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 12
  %54 = ptrtoint ptr %base_addr.i14.i.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i14.i.i65, align 4
  %base_shift.i15.i.i66 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 11
  %56 = ptrtoint ptr %base_shift.i15.i.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_shift.i15.i.i66, align 8
  %shl.i16.i.i67 = shl i32 4, %57
  %add.ptr.i17.i.i68 = getelementptr i16, ptr %55, i32 %shl.i16.i.i67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i68, i8 %conv6.i64) #10, !srcloc !388
  %58 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load8.i69 = load i32, ptr %num.i, align 4
  %bf.lshr9.i70 = lshr i32 %bf.load8.i69, 24
  %conv10.i71 = trunc i32 %bf.lshr9.i70 to i8
  %59 = ptrtoint ptr %pagesel.i58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i71, ptr %pagesel.i58, align 4
  br label %net2272_ep_write.exit77

net2272_ep_write.exit77:                          ; preds = %if.then.i72, %net2272_ep_write.exit56.net2272_ep_write.exit77_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i73 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 12
  %60 = ptrtoint ptr %base_addr.i14.i18.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i14.i18.i73, align 4
  %base_shift.i15.i19.i74 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 11
  %62 = ptrtoint ptr %base_shift.i15.i19.i74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_shift.i15.i19.i74, align 8
  %shl.i16.i20.i75 = shl i32 6, %63
  %add.ptr.i17.i21.i76 = getelementptr i16, ptr %61, i32 %shl.i16.i20.i75
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i76, i8 31) #10, !srcloc !388
  %64 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev1.i, align 4
  %pagesel.i79 = getelementptr inbounds %struct.net2272, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %pagesel.i79 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pagesel.i79, align 4
  %conv.i80 = zext i8 %67 to i32
  %68 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i82 = load i32, ptr %num.i, align 4
  %bf.lshr.i83 = lshr i32 %bf.load.i82, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i83, i32 %conv.i80)
  %cmp.not.i84 = icmp eq i32 %bf.lshr.i83, %conv.i80
  br i1 %cmp.not.i84, label %net2272_ep_write.exit77.net2272_ep_write.exit98_crit_edge, label %if.then.i93

net2272_ep_write.exit77.net2272_ep_write.exit98_crit_edge: ; preds = %net2272_ep_write.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit98

if.then.i93:                                      ; preds = %net2272_ep_write.exit77
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i85 = trunc i32 %bf.lshr.i83 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i86 = getelementptr inbounds %struct.net2272, ptr %65, i32 0, i32 12
  %69 = ptrtoint ptr %base_addr.i14.i.i86 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base_addr.i14.i.i86, align 4
  %base_shift.i15.i.i87 = getelementptr inbounds %struct.net2272, ptr %65, i32 0, i32 11
  %71 = ptrtoint ptr %base_shift.i15.i.i87 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %base_shift.i15.i.i87, align 8
  %shl.i16.i.i88 = shl i32 4, %72
  %add.ptr.i17.i.i89 = getelementptr i16, ptr %70, i32 %shl.i16.i.i88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i89, i8 %conv6.i85) #10, !srcloc !388
  %73 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load8.i90 = load i32, ptr %num.i, align 4
  %bf.lshr9.i91 = lshr i32 %bf.load8.i90, 24
  %conv10.i92 = trunc i32 %bf.lshr9.i91 to i8
  %74 = ptrtoint ptr %pagesel.i79 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv10.i92, ptr %pagesel.i79, align 4
  br label %net2272_ep_write.exit98

net2272_ep_write.exit98:                          ; preds = %if.then.i93, %net2272_ep_write.exit77.net2272_ep_write.exit98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i94 = getelementptr inbounds %struct.net2272, ptr %65, i32 0, i32 12
  %75 = ptrtoint ptr %base_addr.i14.i18.i94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr.i14.i18.i94, align 4
  %base_shift.i15.i19.i95 = getelementptr inbounds %struct.net2272, ptr %65, i32 0, i32 11
  %77 = ptrtoint ptr %base_shift.i15.i19.i95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base_shift.i15.i19.i95, align 8
  %shl.i16.i20.i96 = shl i32 7, %78
  %add.ptr.i17.i21.i97 = getelementptr i16, ptr %76, i32 %shl.i16.i20.i96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i97, i8 -1) #10, !srcloc !388
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_enable(ptr noundef %_ep, ptr noundef %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %desc4 = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc4, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %3, @ep0name
  br i1 %cmp, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp8.not = icmp eq i8 %5, 5
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %dev10 = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %driver = getelementptr inbounds %struct.net2272, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %12 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wMaxPacketSize.i, align 1
  %14 = and i16 %13, -249
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  %and.i = zext i16 %15 to i32
  %lock = getelementptr inbounds %struct.net2272, ptr %7, i32 0, i32 3
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %16 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %16, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %15 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket, align 2
  %17 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %desc, ptr %desc4, align 4
  %stopped = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %18 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load26 = load i32, ptr %stopped, align 4
  %bf.clear30 = and i32 %bf.load26, -3073
  store i32 %bf.clear30, ptr %stopped, align 4
  %conv32 = trunc i16 %15 to i8
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %22 to i32
  %bf.lshr.i = lshr i32 %bf.load26, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.end16.net2272_ep_write.exit_crit_edge, label %if.then.i

if.end16.net2272_ep_write.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %23 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %26
  %add.ptr.i17.i.i = getelementptr i16, ptr %24, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %27 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load8.i = load i32, ptr %stopped, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %28 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %if.end16.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %29 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i.i.i, align 4
  %base_shift.i.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 40) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i.i.i, align 4
  %33 = ptrtoint ptr %base_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_shift.i.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %34
  %add.ptr.i.i.i = getelementptr i16, ptr %32, i32 %shl.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv32) #10, !srcloc !388
  %and33 = lshr i16 %15, 8
  %conv34 = trunc i16 %and33 to i8
  %35 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev10, align 4
  %pagesel.i188 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %pagesel.i188 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pagesel.i188, align 4
  %conv.i189 = zext i8 %38 to i32
  %39 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i191 = load i32, ptr %stopped, align 4
  %bf.lshr.i192 = lshr i32 %bf.load.i191, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i192, i32 %conv.i189)
  %cmp.not.i193 = icmp eq i32 %bf.lshr.i192, %conv.i189
  br i1 %cmp.not.i193, label %net2272_ep_write.exit.net2272_ep_write.exit207_crit_edge, label %if.then.i202

net2272_ep_write.exit.net2272_ep_write.exit207_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit207

if.then.i202:                                     ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i194 = trunc i32 %bf.lshr.i192 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i195 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 12
  %40 = ptrtoint ptr %base_addr.i14.i.i195 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i14.i.i195, align 4
  %base_shift.i15.i.i196 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 11
  %42 = ptrtoint ptr %base_shift.i15.i.i196 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_shift.i15.i.i196, align 8
  %shl.i16.i.i197 = shl i32 4, %43
  %add.ptr.i17.i.i198 = getelementptr i16, ptr %41, i32 %shl.i16.i.i197
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i198, i8 %conv6.i194) #10, !srcloc !388
  %44 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load8.i199 = load i32, ptr %stopped, align 4
  %bf.lshr9.i200 = lshr i32 %bf.load8.i199, 24
  %conv10.i201 = trunc i32 %bf.lshr9.i200 to i8
  %45 = ptrtoint ptr %pagesel.i188 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv10.i201, ptr %pagesel.i188, align 4
  br label %net2272_ep_write.exit207

net2272_ep_write.exit207:                         ; preds = %if.then.i202, %net2272_ep_write.exit.net2272_ep_write.exit207_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i.i203 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 12
  %46 = ptrtoint ptr %base_addr.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i.i.i203, align 4
  %base_shift.i.i.i204 = getelementptr inbounds %struct.net2272, ptr %36, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 41) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %base_addr.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i.i.i203, align 4
  %50 = ptrtoint ptr %base_shift.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_shift.i.i.i204, align 8
  %shl.i.i.i205 = shl nuw i32 1, %51
  %add.ptr.i.i.i206 = getelementptr i16, ptr %49, i32 %shl.i.i.i205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i206, i8 %conv34) #10, !srcloc !388
  %52 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev10, align 4
  %pagesel.i209 = getelementptr inbounds %struct.net2272, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %pagesel.i209 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pagesel.i209, align 4
  %conv.i210 = zext i8 %55 to i32
  %56 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i212 = load i32, ptr %stopped, align 4
  %bf.lshr.i213 = lshr i32 %bf.load.i212, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i213, i32 %conv.i210)
  %cmp.not.i214 = icmp eq i32 %bf.lshr.i213, %conv.i210
  br i1 %cmp.not.i214, label %net2272_ep_write.exit207.net2272_ep_write.exit224_crit_edge, label %if.then.i223

net2272_ep_write.exit207.net2272_ep_write.exit224_crit_edge: ; preds = %net2272_ep_write.exit207
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit224

if.then.i223:                                     ; preds = %net2272_ep_write.exit207
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i215 = trunc i32 %bf.lshr.i213 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i216 = getelementptr inbounds %struct.net2272, ptr %53, i32 0, i32 12
  %57 = ptrtoint ptr %base_addr.i14.i.i216 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_addr.i14.i.i216, align 4
  %base_shift.i15.i.i217 = getelementptr inbounds %struct.net2272, ptr %53, i32 0, i32 11
  %59 = ptrtoint ptr %base_shift.i15.i.i217 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_shift.i15.i.i217, align 8
  %shl.i16.i.i218 = shl i32 4, %60
  %add.ptr.i17.i.i219 = getelementptr i16, ptr %58, i32 %shl.i16.i.i218
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i219, i8 %conv6.i215) #10, !srcloc !388
  %61 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load8.i220 = load i32, ptr %stopped, align 4
  %bf.lshr9.i221 = lshr i32 %bf.load8.i220, 24
  %conv10.i222 = trunc i32 %bf.lshr9.i221 to i8
  %62 = ptrtoint ptr %pagesel.i209 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv10.i222, ptr %pagesel.i209, align 4
  br label %net2272_ep_write.exit224

net2272_ep_write.exit224:                         ; preds = %if.then.i223, %net2272_ep_write.exit207.net2272_ep_write.exit224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %53, i32 0, i32 12
  %63 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %53, i32 0, i32 11
  %65 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 7, %66
  %add.ptr.i17.i21.i = getelementptr i16, ptr %64, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %67 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bmAttributes.i, align 1
  %69 = and i8 %68, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i.not = icmp eq i8 %69, 2
  br i1 %cmp.i.not, label %if.then39, label %net2272_ep_write.exit224.if.end57_crit_edge

net2272_ep_write.exit224.if.end57_crit_edge:      ; preds = %net2272_ep_write.exit224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then39:                                        ; preds = %net2272_ep_write.exit224
  %70 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp42 = icmp ne i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp44.not = icmp eq i16 %14, 2
  %or.cond185 = select i1 %cmp42, i1 true, i1 %cmp44.not
  br i1 %or.cond185, label %lor.lhs.false46, label %if.then39.cleanup.sink.split_crit_edge

if.then39.cleanup.sink.split_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false46:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp49 = icmp eq i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %15)
  %cmp52 = icmp ugt i16 %15, 64
  %or.cond186 = select i1 %cmp49, i1 %cmp52, i1 false
  br i1 %or.cond186, label %lor.lhs.false46.cleanup.sink.split_crit_edge, label %lor.lhs.false46.if.end57_crit_edge

lor.lhs.false46.if.end57_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

lor.lhs.false46.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end57:                                         ; preds = %lor.lhs.false46.if.end57_crit_edge, %net2272_ep_write.exit224.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp.i228.not = icmp eq i8 %69, 1
  %72 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load60 = load i32, ptr %stopped, align 4
  %bf.shl62 = select i1 %cmp.i228.not, i32 256, i32 0
  %bf.clear63 = and i32 %bf.load60, -257
  %bf.set64 = or i32 %bf.clear63, %bf.shl62
  store i32 %bf.set64, ptr %stopped, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %73 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bEndpointAddress, align 1
  %75 = and i8 %74, 15
  %76 = shl nuw nsw i8 %69, 5
  %conv71 = or i8 %75, %76
  %.lobit.i = lshr i8 %74, 7
  %77 = zext i8 %.lobit.i to i32
  %78 = shl nuw nsw i8 %.lobit.i, 4
  %conv76 = or i8 %78, %conv71
  %79 = or i8 %conv76, -128
  %bf.value82 = shl nuw nsw i32 %77, 9
  %bf.clear84 = and i32 %bf.set64, -513
  %bf.set85 = or i32 %bf.value82, %bf.clear84
  store i32 %bf.set85, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %tobool89.not = icmp sgt i8 %74, -1
  br i1 %tobool89.not, label %if.then90, label %if.end57.if.end91_crit_edge

if.end57.if.end91_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then90:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @net2272_ep_write(ptr noundef nonnull %_ep, i32 noundef 15, i8 noundef zeroext -128)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end57.if.end91_crit_edge
  tail call fastcc void @net2272_ep_write(ptr noundef nonnull %_ep, i32 noundef 42, i8 noundef zeroext %79)
  %80 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load92 = load i32, ptr %stopped, align 4
  %bf.lshr93 = lshr i32 %bf.load92, 24
  %shl94 = shl nuw i32 1, %bf.lshr93
  %call95 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %7, i32 noundef 32)
  %81 = trunc i32 %shl94 to i8
  %conv98 = or i8 %call95, %81
  tail call fastcc void @net2272_write(ptr noundef %7, i32 noundef 32, i8 noundef zeroext %conv98)
  %call99 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %_ep, i32 noundef 11)
  %82 = or i8 %call99, 12
  tail call fastcc void @net2272_ep_write(ptr noundef nonnull %_ep, i32 noundef 11, i8 noundef zeroext %82)
  %83 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bEndpointAddress, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_enable.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_enable, %cleanup.sink.split)) #10
          to label %if.then111 [label %cleanup.sink.split], !srcloc !376

if.then111:                                       ; preds = %if.end91
  %dev112 = getelementptr inbounds %struct.net2272, ptr %7, i32 0, i32 1
  %85 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev112, align 8
  %87 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name, align 4
  %conv114 = zext i8 %84 to i32
  %and115 = and i32 %conv114, 15
  %and117 = and i32 %conv114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %cond119 = select i1 %tobool118.not, ptr @.str.13, ptr @.str.12
  %89 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bmAttributes.i, align 1
  %91 = and i8 %90, 3
  %and.i232 = zext i8 %91 to i32
  %switch.tableidx = add nsw i32 %and.i232, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %92 = icmp ult i32 %switch.tableidx, 3
  br i1 %92, label %switch.lookup, label %if.then111.type_string.exit_crit_edge

if.then111.type_string.exit_crit_edge:            ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %type_string.exit

switch.lookup:                                    ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.net2272_enable, i32 0, i32 %switch.tableidx
  %93 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %93)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %type_string.exit

type_string.exit:                                 ; preds = %switch.lookup, %if.then111.type_string.exit_crit_edge
  %retval.0.i233 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %if.then111.type_string.exit_crit_edge ]
  %call121 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %_ep, i32 noundef 42)
  %conv122 = zext i8 %call121 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_enable.__UNIQUE_ID_ddebug247, ptr noundef %86, ptr noundef nonnull @.str.11, ptr noundef %88, i32 noundef %and115, ptr noundef nonnull %cond119, ptr noundef nonnull %retval.0.i233, i32 noundef %and.i, i32 noundef %conv122) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %type_string.exit, %if.end91, %lor.lhs.false46.cleanup.sink.split_crit_edge, %if.then39.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -34, %lor.lhs.false46.cleanup.sink.split_crit_edge ], [ -34, %if.then39.cleanup.sink.split_crit_edge ], [ 0, %if.end91 ], [ 0, %type_string.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false12.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_disable(ptr noundef %_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %3, @ep0name
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %do.body3

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false2
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.net2272, ptr %5, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %stopped.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %6 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %bf.set.i = or i32 %bf.load.i, 2048
  store i32 %bf.set.i, ptr %stopped.i, align 4
  %queue.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 3
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not5.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not5.i, label %do.body3.net2272_dequeue_all.exit_crit_edge, label %do.body3.while.body.i_crit_edge

do.body3.while.body.i_crit_edge:                  ; preds = %do.body3
  br label %while.body.i

do.body3.net2272_dequeue_all.exit_crit_edge:      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body3.while.body.i_crit_edge
  %9 = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %8, %do.body3.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -56
  tail call fastcc void @net2272_done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.net2272_dequeue_all.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.net2272_dequeue_all.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_dequeue_all.exit

net2272_dequeue_all.exit:                         ; preds = %while.body.i.net2272_dequeue_all.exit_crit_edge, %do.body3.net2272_dequeue_all.exit_crit_edge
  tail call fastcc void @net2272_ep_reset(ptr noundef nonnull %_ep)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_disable.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_disable, %do.end22)) #10
          to label %if.then16 [label %do.end22], !srcloc !376

if.then16:                                        ; preds = %net2272_dequeue_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 8
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_disable.__UNIQUE_ID_ddebug248, ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef %17) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %net2272_dequeue_all.exit
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %lock24 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net2272_alloc_request(ptr noundef readnone %_ep, i32 noundef %gfp_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !408

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr inbounds %struct.net2272_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.net2272_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2272_free_request(ptr noundef readnone %_ep, ptr noundef %_req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.net2272_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !408

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 9, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %_req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %queue = getelementptr inbounds %struct.net2272_request, ptr %_req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp ne ptr %5, %queue
  %tobool9.not = icmp eq ptr %_ep, null
  %or.cond259 = or i1 %tobool9.not, %cmp.i
  br i1 %or.cond259, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false4
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true, label %lor.lhs.false10.if.end13_crit_edge

lor.lhs.false10.if.end13_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %num = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %lor.lhs.false10.if.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %9 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev14, align 4
  %driver = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %lor.lhs.false16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end13
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %lor.lhs.false16.cleanup_crit_edge, label %if.end19

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false16
  %15 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %if.end19.do.body_crit_edge, label %land.lhs.true21

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true21:                                  ; preds = %if.end19
  %dma = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load22 = load i32, ptr %dma, align 4
  %17 = and i32 %bf.load22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %land.lhs.true21.do.body_crit_edge, label %if.then25

land.lhs.true21.do.body_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then25:                                        ; preds = %land.lhs.true21
  %bf.lshr28 = lshr i32 %bf.load22, 9
  %bf.clear29 = and i32 %bf.lshr28, 1
  %call30 = tail call i32 @usb_gadget_map_request(ptr noundef %10, ptr noundef nonnull %_req, i32 noundef %bf.clear29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then25.do.body_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25.do.body_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.then25.do.body_crit_edge, %land.lhs.true21.do.body_crit_edge, %if.end19.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_queue.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_queue, %do.body51)) #10
          to label %if.then41 [label %do.body51], !srcloc !376

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev42, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %24 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_req, align 4
  %dma44 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 2
  %26 = ptrtoint ptr %dma44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma44, align 4
  %conv = zext i32 %27 to i64
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %28 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load45 = load i32, ptr %zero, align 4
  %29 = and i32 %bf.load45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not = icmp eq i32 %29, 0
  %cond = select i1 %tobool48.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_queue.__UNIQUE_ID_ddebug258, ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef %21, ptr noundef nonnull %_req, i32 noundef %23, ptr noundef %25, i64 noundef %conv, ptr noundef nonnull %cond) #10
  br label %do.body51

do.body51:                                        ; preds = %if.then41, %do.body
  %lock = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 3
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %status61 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %30 = ptrtoint ptr %status61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -115, ptr %status61, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %actual, align 4
  %queue62 = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 3
  %32 = ptrtoint ptr %queue62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %queue62, align 4
  %cmp.i266.not = icmp eq ptr %33, %queue62
  br i1 %cmp.i266.not, label %land.lhs.true65, label %do.body51.if.then181_crit_edge

do.body51.if.then181_crit_edge:                   ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

land.lhs.true65:                                  ; preds = %do.body51
  %stopped = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %34 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load66 = load i32, ptr %stopped, align 4
  %35 = and i32 %bf.load66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool69.not = icmp eq i32 %35, 0
  br i1 %tobool69.not, label %if.then70, label %land.lhs.true65.if.then181_crit_edge

land.lhs.true65.if.then181_crit_edge:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load66)
  %cmp74 = icmp ult i32 %bf.load66, 16777216
  br i1 %cmp74, label %land.lhs.true76, label %if.then70.if.end102_crit_edge

if.then70.if.end102_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true76:                                  ; preds = %if.then70
  %length77 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %36 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp78 = icmp eq i32 %37, 0
  br i1 %cmp78, label %if.then80, label %land.lhs.true76.if.end102_crit_edge

land.lhs.true76.if.end102_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then80:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @net2272_done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_queue.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_queue, %done)) #10
          to label %if.then95 [label %done], !srcloc !376

if.then95:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %dev96 = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev96, align 8
  %name98 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %40 = ptrtoint ptr %name98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name98, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_queue.__UNIQUE_ID_ddebug259, ptr noundef %39, ptr noundef nonnull @.str.24, ptr noundef %41) #10
  br label %done

if.end102:                                        ; preds = %land.lhs.true76.if.end102_crit_edge, %if.then70.if.end102_crit_edge
  %call103 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %_ep, i32 noundef 6)
  %42 = and i8 %call103, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %42)
  %.not = icmp eq i8 %42, 96
  br i1 %.not, label %land.lhs.true110, label %if.end102.if.end137_crit_edge

if.end102.if.end137_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

land.lhs.true110:                                 ; preds = %if.end102
  %call111 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %_ep, i32 noundef 7)
  %43 = and i8 %call111, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool114.not = icmp eq i8 %43, 0
  br i1 %tobool114.not, label %land.lhs.true110.if.end137_crit_edge, label %do.body116

land.lhs.true110.if.end137_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

do.body116:                                       ; preds = %land.lhs.true110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_queue.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_queue, %do.end134)) #10
          to label %if.then130 [label %do.end134], !srcloc !376

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #12
  %dev131 = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 1
  %44 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev131, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_queue.__UNIQUE_ID_ddebug260, ptr noundef %45, ptr noundef nonnull @.str.25) #10
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body116
  %call135 = tail call i32 @net2272_read_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  tail call fastcc void @net2272_ep_write(ptr noundef nonnull %_ep, i32 noundef 6, i8 noundef zeroext 32)
  br label %done

if.end137:                                        ; preds = %land.lhs.true110.if.end137_crit_edge, %if.end102.if.end137_crit_edge
  %call138 = tail call fastcc i32 @net2272_kick_dma(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end137.if.then181_crit_edge

if.end137.if.then181_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

if.then141:                                       ; preds = %if.end137
  %46 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load143 = load i32, ptr %stopped, align 4
  %47 = and i32 %bf.load143, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool146.not = icmp eq i32 %47, 0
  br i1 %tobool146.not, label %if.else, label %if.then147

if.then147:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  %call148 = tail call i32 @net2272_write_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.end157

if.else:                                          ; preds = %if.then141
  %call149 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %_ep, i32 noundef 6)
  %48 = and i8 %call149, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp152 = icmp eq i8 %48, 0
  br i1 %cmp152, label %if.then154, label %if.else.if.then181_crit_edge

if.else.if.then181_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

if.then154:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = tail call i32 @net2272_read_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.then147
  %status.0 = phi i32 [ %call148, %if.then147 ], [ %call155, %if.then154 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp158.not = icmp eq i32 %status.0, 0
  br i1 %cmp158.not, label %if.end157.if.then181_crit_edge, label %if.end157.if.end184_crit_edge, !prof !408

if.end157.if.end184_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.end157.if.then181_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

if.then181:                                       ; preds = %if.end157.if.then181_crit_edge, %if.else.if.then181_crit_edge, %if.end137.if.then181_crit_edge, %land.lhs.true65.if.then181_crit_edge, %do.body51.if.then181_crit_edge
  %prev.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %50, ptr noundef %queue62) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then181.if.end184_crit_edge

if.then181.if.end184_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.end.i.i:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %queue, ptr %prev.i, align 4
  %52 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %queue62, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.net2272_request, ptr %_req, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %queue, ptr %50, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.end.i.i, %if.then181.if.end184_crit_edge, %if.end157.if.end184_crit_edge
  %55 = ptrtoint ptr %queue62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %queue62, align 4
  %cmp.i268.not = icmp eq ptr %56, %queue62
  br i1 %cmp.i268.not, label %if.end184.done_crit_edge, label %if.then196, !prof !409

if.end184.done_crit_edge:                         ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then196:                                       ; preds = %if.end184
  %57 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev14, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pagesel.i, align 4
  %conv.i270 = zext i8 %60 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %61 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i270)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i270
  br i1 %cmp.not.i, label %if.then196.net2272_ep_write.exit_crit_edge, label %if.then.i

if.then196.net2272_ep_write.exit_crit_edge:       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 12
  %62 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 11
  %64 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %65
  %add.ptr.i17.i.i = getelementptr i16, ptr %63, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %66 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %67 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %if.then196.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 12
  %68 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 11
  %70 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 14, %71
  %add.ptr.i17.i21.i = getelementptr i16, ptr %69, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  br label %done

done:                                             ; preds = %net2272_ep_write.exit, %if.end184.done_crit_edge, %do.end134, %if.then95, %if.then80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then25.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -108, %lor.lhs.false16.cleanup_crit_edge ], [ -108, %if.end13.cleanup_crit_edge ], [ %call30, %if.then25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false2

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %bf.load)
  %cmp.not = icmp ugt i32 %bf.load, 16777215
  %tobool3.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool3.not, %cmp.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body4_crit_edge

land.lhs.true.do.body4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tobool3.not.old = icmp eq ptr %_req, null
  br i1 %tobool3.not.old, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false2.do.body4_crit_edge

lor.lhs.false2.do.body4_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false2.do.body4_crit_edge, %land.lhs.true.do.body4_crit_edge
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %stopped10 = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %5 = ptrtoint ptr %stopped10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load11 = load i32, ptr %stopped10, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 11
  %bf.set = or i32 %bf.load11, 2048
  store i32 %bf.set, ptr %stopped10, align 4
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.body4
  %.pn.in = phi ptr [ %queue, %do.body4 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp21.not = icmp eq ptr %.pn, %queue
  %cmp24 = icmp eq ptr %req.0, %_req
  %or.cond100 = or i1 %cmp21.not, %cmp24
  br i1 %or.cond100, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %bf.clear = and i32 %bf.lshr12, 1
  br i1 %cmp24, label %if.end43, label %if.then36

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.shl = shl nuw nsw i32 %bf.clear, 11
  %bf.clear39 = and i32 %bf.load11, -2049
  br label %cleanup.sink.split

if.end43:                                         ; preds = %for.end
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 4
  %cmp47 = icmp eq ptr %8, %.pn
  br i1 %cmp47, label %do.body50, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.body50:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_dequeue.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_dequeue, %do.end63)) #10
          to label %if.then58 [label %do.end63], !srcloc !376

if.then58:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev60 = getelementptr inbounds %struct.net2272, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev60, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_dequeue.__UNIQUE_ID_ddebug261, ptr noundef %12, ptr noundef nonnull @.str.44, ptr noundef %14) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body50
  tail call fastcc void @net2272_done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end43.if.end64_crit_edge
  %15 = ptrtoint ptr %stopped10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load66 = load i32, ptr %stopped10, align 4
  %bf.shl68 = shl nuw nsw i32 %bf.clear, 11
  %bf.clear69 = and i32 %bf.load66, -2049
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end64, %if.then36
  %bf.shl68.sink = phi i32 [ %bf.shl68, %if.end64 ], [ %bf.clear39, %if.then36 ]
  %bf.clear69.sink = phi i32 [ %bf.clear69, %if.end64 ], [ %bf.shl, %if.then36 ]
  %retval.0.ph = phi i32 [ 0, %if.end64 ], [ -22, %if.then36 ]
  %bf.set70 = or i32 %bf.clear69.sink, %bf.shl68.sink
  %16 = ptrtoint ptr %stopped10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.set70, ptr %stopped10, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %lock72 = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock72, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_set_halt(ptr noundef %_ep, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @net2272_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_set_wedge(ptr noundef %_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0name
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @net2272_set_halt_and_wedge(ptr noundef nonnull %_ep, i32 noundef 1, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_fifo_status(ptr noundef readonly %_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %10 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.end7.net2272_ep_read.exit_crit_edge, label %if.then.i

if.end7.net2272_ep_read.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 12
  %12 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 11
  %14 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %15
  %add.ptr.i17.i.i = getelementptr i16, ptr %13, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %17 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %if.end7.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 12
  %18 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 11
  %20 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 13, %21
  %add.ptr.i19.i.i = getelementptr i16, ptr %19, i32 %shl.i18.i.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv = zext i8 %22 to i16
  %shl = shl nuw i16 %conv, 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %pagesel.i47 = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %pagesel.i47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pagesel.i47, align 4
  %conv.i48 = zext i8 %26 to i32
  %27 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i50 = load i32, ptr %num.i, align 4
  %bf.lshr.i51 = lshr i32 %bf.load.i50, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i51, i32 %conv.i48)
  %cmp.not.i52 = icmp eq i32 %bf.lshr.i51, %conv.i48
  br i1 %cmp.not.i52, label %net2272_ep_read.exit.net2272_ep_read.exit66_crit_edge, label %if.then.i61

net2272_ep_read.exit.net2272_ep_read.exit66_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit66

if.then.i61:                                      ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i53 = trunc i32 %bf.lshr.i51 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i54 = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 12
  %28 = ptrtoint ptr %base_addr.i14.i.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i14.i.i54, align 4
  %base_shift.i15.i.i55 = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 11
  %30 = ptrtoint ptr %base_shift.i15.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_shift.i15.i.i55, align 8
  %shl.i16.i.i56 = shl i32 4, %31
  %add.ptr.i17.i.i57 = getelementptr i16, ptr %29, i32 %shl.i16.i.i56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i57, i8 %conv6.i53) #10, !srcloc !388
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load8.i58 = load i32, ptr %num.i, align 4
  %bf.lshr9.i59 = lshr i32 %bf.load8.i58, 24
  %conv10.i60 = trunc i32 %bf.lshr9.i59 to i8
  %33 = ptrtoint ptr %pagesel.i47 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv10.i60, ptr %pagesel.i47, align 4
  br label %net2272_ep_read.exit66

net2272_ep_read.exit66:                           ; preds = %if.then.i61, %net2272_ep_read.exit.net2272_ep_read.exit66_crit_edge
  %base_addr.i16.i.i62 = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 12
  %34 = ptrtoint ptr %base_addr.i16.i.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr.i16.i.i62, align 4
  %base_shift.i17.i.i63 = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 11
  %36 = ptrtoint ptr %base_shift.i17.i.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_shift.i17.i.i63, align 8
  %shl.i18.i.i64 = shl i32 12, %37
  %add.ptr.i19.i.i65 = getelementptr i16, ptr %35, i32 %shl.i18.i.i64
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i65) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv10 = zext i8 %38 to i16
  %or = or i16 %shl, %conv10
  %conv13 = zext i16 %or to i32
  %39 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load14 = load i32, ptr %num.i, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 12
  %bf.clear = and i32 %bf.lshr15, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %conv13)
  %cmp16 = icmp ult i32 %bf.clear, %conv13
  br i1 %cmp16, label %net2272_ep_read.exit66.cleanup_crit_edge, label %if.end19

net2272_ep_read.exit66.cleanup_crit_edge:         ; preds = %net2272_ep_read.exit66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %net2272_ep_read.exit66
  call void @__sanitizer_cov_trace_pc() #12
  %40 = and i32 %bf.load14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool23.not = icmp eq i32 %40, 0
  %41 = trunc i32 %bf.clear to i16
  %conv30 = sub i16 %41, %or
  %avail.0 = select i1 %tobool23.not, i16 %or, i16 %conv30
  %conv32 = zext i16 %avail.0 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %net2272_ep_read.exit66.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv32, %if.end19 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false3.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -75, %net2272_ep_read.exit66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2272_fifo_flush(ptr noundef readonly %_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %10 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.end7.net2272_ep_write.exit_crit_edge, label %if.then.i

if.end7.net2272_ep_write.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 12
  %12 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 11
  %14 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %15
  %add.ptr.i17.i.i = getelementptr i16, ptr %13, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %17 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %if.end7.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 12
  %18 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 11
  %20 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 7, %21
  %add.ptr.i17.i21.i = getelementptr i16, ptr %19, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  br label %cleanup

cleanup:                                          ; preds = %net2272_ep_write.exit, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @net2272_ep_read(ptr nocapture noundef readonly %ep, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pagesel = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel, align 4
  %conv = zext i8 %3 to i32
  %num = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %num, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %conv)
  %cmp.not = icmp eq i32 %bf.lshr, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = trunc i32 %bf.lshr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 4, %8
  %add.ptr.i17.i = getelementptr i16, ptr %6, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv6) #10, !srcloc !388
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8 = load i32, ptr %num, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 24
  %conv10 = trunc i32 %bf.lshr9 to i8
  %10 = ptrtoint ptr %pagesel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10, ptr %pagesel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg)
  %cmp.i = icmp ugt i32 %reg, 31
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %conv.i = trunc i32 %reg to i8
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %conv.i) #10, !srcloc !388
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %15 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %16
  %add.ptr.i.i = getelementptr i16, ptr %14, i32 %shl.i.i
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  br label %net2272_read.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 %reg, %21
  %add.ptr.i19.i = getelementptr i16, ptr %19, i32 %shl.i18.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %net2272_read.exit

net2272_read.exit:                                ; preds = %if.else.i, %do.body.i
  %ret.0.i = phi i8 [ %17, %do.body.i ], [ %22, %if.else.i ]
  ret i8 %ret.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_read_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_read_fifo.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_read_fifo, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_read_fifo.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %name33 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3
  br label %top

top:                                              ; preds = %land.lhs.true.top_crit_edge, %do.end
  %cleanup.0 = phi i32 [ 0, %do.end ], [ %cleanup.3.lcssa213, %land.lhs.true.top_crit_edge ]
  %req.addr.0 = phi ptr [ %req, %do.end ], [ %add.ptr74, %land.lhs.true.top_crit_edge ]
  %actual13 = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 12
  %length18 = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 1
  br label %do.body9

do.body9:                                         ; preds = %net2272_ep_read.exit196.do.body9_crit_edge, %top
  %cleanup.1 = phi i32 [ %cleanup.0, %top ], [ 0, %net2272_ep_read.exit196.do.body9_crit_edge ]
  %10 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.addr.0, align 4
  %12 = ptrtoint ptr %actual13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual13, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %do.body9.net2272_ep_read.exit_crit_edge, label %if.then.i

do.body9.net2272_ep_read.exit_crit_edge:          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %15, i32 0, i32 12
  %19 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %15, i32 0, i32 11
  %21 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %22
  %add.ptr.i17.i.i = getelementptr i16, ptr %20, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %24 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %do.body9.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %15, i32 0, i32 12
  %25 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %15, i32 0, i32 11
  %27 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 13, %28
  %add.ptr.i19.i.i = getelementptr i16, ptr %26, i32 %shl.i18.i.i
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %pagesel.i139 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %pagesel.i139 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pagesel.i139, align 4
  %conv.i140 = zext i8 %33 to i32
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i142 = load i32, ptr %num.i, align 4
  %bf.lshr.i143 = lshr i32 %bf.load.i142, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i143, i32 %conv.i140)
  %cmp.not.i144 = icmp eq i32 %bf.lshr.i143, %conv.i140
  br i1 %cmp.not.i144, label %net2272_ep_read.exit.net2272_ep_read.exit158_crit_edge, label %if.then.i153

net2272_ep_read.exit.net2272_ep_read.exit158_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit158

if.then.i153:                                     ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i145 = trunc i32 %bf.lshr.i143 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i146 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %35 = ptrtoint ptr %base_addr.i14.i.i146 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i14.i.i146, align 4
  %base_shift.i15.i.i147 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %37 = ptrtoint ptr %base_shift.i15.i.i147 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_shift.i15.i.i147, align 8
  %shl.i16.i.i148 = shl i32 4, %38
  %add.ptr.i17.i.i149 = getelementptr i16, ptr %36, i32 %shl.i16.i.i148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i149, i8 %conv6.i145) #10, !srcloc !388
  %39 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load8.i150 = load i32, ptr %num.i, align 4
  %bf.lshr9.i151 = lshr i32 %bf.load8.i150, 24
  %conv10.i152 = trunc i32 %bf.lshr9.i151 to i8
  %40 = ptrtoint ptr %pagesel.i139 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.i152, ptr %pagesel.i139, align 4
  br label %net2272_ep_read.exit158

net2272_ep_read.exit158:                          ; preds = %if.then.i153, %net2272_ep_read.exit.net2272_ep_read.exit158_crit_edge
  %base_addr.i16.i.i154 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %41 = ptrtoint ptr %base_addr.i16.i.i154 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i16.i.i154, align 4
  %base_shift.i17.i.i155 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %43 = ptrtoint ptr %base_shift.i17.i.i155 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_shift.i17.i.i155, align 8
  %shl.i18.i.i156 = shl i32 12, %44
  %add.ptr.i19.i.i157 = getelementptr i16, ptr %42, i32 %shl.i18.i.i156
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i157) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv16 = zext i8 %45 to i32
  %or = or i32 %shl, %conv16
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i, align 4
  %pagesel.i160 = getelementptr inbounds %struct.net2272, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %pagesel.i160 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pagesel.i160, align 4
  %conv.i161 = zext i8 %49 to i32
  %50 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i163 = load i32, ptr %num.i, align 4
  %bf.lshr.i164 = lshr i32 %bf.load.i163, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i164, i32 %conv.i161)
  %cmp.not.i165 = icmp eq i32 %bf.lshr.i164, %conv.i161
  br i1 %cmp.not.i165, label %net2272_ep_read.exit158.net2272_ep_write.exit_crit_edge, label %if.then.i174

net2272_ep_read.exit158.net2272_ep_write.exit_crit_edge: ; preds = %net2272_ep_read.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i174:                                     ; preds = %net2272_ep_read.exit158
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i166 = trunc i32 %bf.lshr.i164 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i167 = getelementptr inbounds %struct.net2272, ptr %47, i32 0, i32 12
  %51 = ptrtoint ptr %base_addr.i14.i.i167 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr.i14.i.i167, align 4
  %base_shift.i15.i.i168 = getelementptr inbounds %struct.net2272, ptr %47, i32 0, i32 11
  %53 = ptrtoint ptr %base_shift.i15.i.i168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_shift.i15.i.i168, align 8
  %shl.i16.i.i169 = shl i32 4, %54
  %add.ptr.i17.i.i170 = getelementptr i16, ptr %52, i32 %shl.i16.i.i169
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i170, i8 %conv6.i166) #10, !srcloc !388
  %55 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load8.i171 = load i32, ptr %num.i, align 4
  %bf.lshr9.i172 = lshr i32 %bf.load8.i171, 24
  %conv10.i173 = trunc i32 %bf.lshr9.i172 to i8
  %56 = ptrtoint ptr %pagesel.i160 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv10.i173, ptr %pagesel.i160, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i174, %net2272_ep_read.exit158.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %47, i32 0, i32 12
  %57 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %47, i32 0, i32 11
  %59 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 6, %60
  %add.ptr.i17.i21.i = getelementptr i16, ptr %58, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 24) #10, !srcloc !388
  %61 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length18, align 4
  %63 = ptrtoint ptr %actual13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %actual13, align 4
  %sub = sub i32 %62, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %sub)
  %cmp = icmp sgt i32 %or, %sub
  br i1 %cmp, label %if.then22, label %net2272_ep_write.exit.if.end37_crit_edge

net2272_ep_write.exit.if.end37_crit_edge:         ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then22:                                        ; preds = %net2272_ep_write.exit
  %65 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %65, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = srem i32 %sub, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp24.not = icmp eq i32 %rem, 0
  br i1 %cmp24.not, label %if.then22.if.end34_crit_edge, label %do.end29

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  %dev31 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev31, align 8
  %70 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.28, ptr noundef %71, i32 noundef %or, i32 noundef %sub) #14
  br label %if.end34

if.end34:                                         ; preds = %do.end29, %if.then22.if.end34_crit_edge
  %cleanup.2 = phi i32 [ 1, %do.end29 ], [ %cleanup.1, %if.then22.if.end34_crit_edge ]
  %72 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %net2272_ep_write.exit.if.end37_crit_edge
  %cleanup.3 = phi i32 [ %cleanup.2, %if.end34 ], [ %cleanup.1, %net2272_ep_write.exit.if.end37_crit_edge ]
  %count.0 = phi i32 [ %72, %if.end34 ], [ %or, %net2272_ep_write.exit.if.end37_crit_edge ]
  %call38 = tail call fastcc i32 @net2272_read_packet(ptr noundef %ep, ptr noundef %add.ptr, ptr noundef %req.addr.0, i32 noundef %count.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleanup.3)
  %tobool39.not = icmp eq i32 %cleanup.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  %or.cond = select i1 %tobool39.not, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %lor.rhs, label %if.then53, !prof !410

lor.rhs:                                          ; preds = %if.end37
  %73 = ptrtoint ptr %actual13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %actual13, align 4
  %75 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %length18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp45 = icmp eq i32 %74, %76
  br i1 %cmp45, label %lor.rhs.if.end56_crit_edge, label %do.cond86, !prof !409

lor.rhs.if.end56_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %if.end37
  br i1 %tobool39.not, label %if.then53.if.end56_crit_edge, label %if.then55

if.then53.if.end56_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then55:                                        ; preds = %if.then53
  tail call fastcc void @assert_out_naking(ptr noundef %ep) #10
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1.i, align 4
  %pagesel.i.i = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pagesel.i.i, align 4
  %conv.i.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load.i.i = load i32, ptr %num.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %bf.lshr.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then55.net2272_ep_write.exit.i_crit_edge, label %if.then.i.i

if.then55.net2272_ep_write.exit.i_crit_edge:      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit.i

if.then.i.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i.i = trunc i32 %bf.lshr.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i.i = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 12
  %82 = ptrtoint ptr %base_addr.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr.i14.i.i.i, align 4
  %base_shift.i15.i.i.i = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 11
  %84 = ptrtoint ptr %base_shift.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base_shift.i15.i.i.i, align 8
  %shl.i16.i.i.i = shl i32 4, %85
  %add.ptr.i17.i.i.i = getelementptr i16, ptr %83, i32 %shl.i16.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i.i, i8 %conv6.i.i) #10, !srcloc !388
  %86 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load8.i.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i.i = lshr i32 %bf.load8.i.i, 24
  %conv10.i.i = trunc i32 %bf.lshr9.i.i to i8
  %87 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv10.i.i, ptr %pagesel.i.i, align 4
  br label %net2272_ep_write.exit.i

net2272_ep_write.exit.i:                          ; preds = %if.then.i.i, %if.then55.net2272_ep_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i.i = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 12
  %88 = ptrtoint ptr %base_addr.i14.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base_addr.i14.i18.i.i, align 4
  %base_shift.i15.i19.i.i = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 11
  %90 = ptrtoint ptr %base_shift.i15.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base_shift.i15.i19.i.i, align 8
  %shl.i16.i20.i.i = shl i32 6, %91
  %add.ptr.i17.i21.i.i = getelementptr i16, ptr %89, i32 %shl.i16.i20.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i.i, i8 10) #10, !srcloc !388
  %92 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1.i, align 4
  %pagesel.i4.i = getelementptr inbounds %struct.net2272, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %pagesel.i4.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pagesel.i4.i, align 4
  %conv.i5.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load.i7.i = load i32, ptr %num.i, align 4
  %bf.lshr.i8.i = lshr i32 %bf.load.i7.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i8.i, i32 %conv.i5.i)
  %cmp.not.i9.i = icmp eq i32 %bf.lshr.i8.i, %conv.i5.i
  br i1 %cmp.not.i9.i, label %net2272_ep_write.exit.i.net2272_out_flush.exit_crit_edge, label %if.then.i18.i

net2272_ep_write.exit.i.net2272_out_flush.exit_crit_edge: ; preds = %net2272_ep_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_out_flush.exit

if.then.i18.i:                                    ; preds = %net2272_ep_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i10.i = trunc i32 %bf.lshr.i8.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i11.i = getelementptr inbounds %struct.net2272, ptr %93, i32 0, i32 12
  %97 = ptrtoint ptr %base_addr.i14.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_addr.i14.i.i11.i, align 4
  %base_shift.i15.i.i12.i = getelementptr inbounds %struct.net2272, ptr %93, i32 0, i32 11
  %99 = ptrtoint ptr %base_shift.i15.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %base_shift.i15.i.i12.i, align 8
  %shl.i16.i.i13.i = shl i32 4, %100
  %add.ptr.i17.i.i14.i = getelementptr i16, ptr %98, i32 %shl.i16.i.i13.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i14.i, i8 %conv6.i10.i) #10, !srcloc !388
  %101 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load8.i15.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i16.i = lshr i32 %bf.load8.i15.i, 24
  %conv10.i17.i = trunc i32 %bf.lshr9.i16.i to i8
  %102 = ptrtoint ptr %pagesel.i4.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv10.i17.i, ptr %pagesel.i4.i, align 4
  br label %net2272_out_flush.exit

net2272_out_flush.exit:                           ; preds = %if.then.i18.i, %net2272_ep_write.exit.i.net2272_out_flush.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i19.i = getelementptr inbounds %struct.net2272, ptr %93, i32 0, i32 12
  %103 = ptrtoint ptr %base_addr.i14.i18.i19.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base_addr.i14.i18.i19.i, align 4
  %base_shift.i15.i19.i20.i = getelementptr inbounds %struct.net2272, ptr %93, i32 0, i32 11
  %105 = ptrtoint ptr %base_shift.i15.i19.i20.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %base_shift.i15.i19.i20.i, align 8
  %shl.i16.i20.i21.i = shl i32 7, %106
  %add.ptr.i17.i21.i22.i = getelementptr i16, ptr %104, i32 %shl.i16.i20.i21.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i22.i, i8 -128) #10, !srcloc !388
  br label %if.end56

if.end56:                                         ; preds = %net2272_out_flush.exit, %if.then53.if.end56_crit_edge, %lor.rhs.if.end56_crit_edge
  %.sink = phi i32 [ -75, %net2272_out_flush.exit ], [ 0, %if.then53.if.end56_crit_edge ], [ 0, %lor.rhs.if.end56_crit_edge ]
  %cleanup.3.lcssa213 = phi i32 [ %cleanup.3, %net2272_out_flush.exit ], [ %cleanup.3, %if.then53.if.end56_crit_edge ], [ 0, %lor.rhs.if.end56_crit_edge ]
  tail call fastcc void @net2272_done(ptr noundef %ep, ptr noundef %req.addr.0, i32 noundef %.sink)
  %107 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load57 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load57)
  %cmp59 = icmp ult i32 %bf.load57, 16777216
  br i1 %cmp59, label %if.then67, label %if.end56.if.end68_crit_edge, !prof !409

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @net2272_ep_write(ptr noundef %ep, i32 noundef 10, i8 noundef zeroext 0)
  tail call fastcc void @net2272_ep_write(ptr noundef %ep, i32 noundef 9, i8 noundef zeroext 0)
  tail call fastcc void @net2272_ep_write(ptr noundef %ep, i32 noundef 8, i8 noundef zeroext 0)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end56.if.end68_crit_edge
  %108 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %109, %queue
  br i1 %cmp.i.not, label %if.end68.cleanup94_crit_edge, label %if.then71

if.end68.cleanup94_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.then71:                                        ; preds = %if.end68
  %add.ptr74 = getelementptr i8, ptr %109, i32 -56
  %call75 = tail call fastcc i32 @net2272_kick_dma(ptr noundef %ep, ptr noundef %add.ptr74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true, label %if.then71.cleanup94_crit_edge

if.then71.cleanup94_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

land.lhs.true:                                    ; preds = %if.then71
  %call78 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef %ep, i32 noundef 6)
  %110 = and i8 %call78, 64
  %tobool80.not = icmp eq i8 %110, 0
  br i1 %tobool80.not, label %land.lhs.true.top_crit_edge, label %land.lhs.true.cleanup94_crit_edge

land.lhs.true.cleanup94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

land.lhs.true.top_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %top

do.cond86:                                        ; preds = %lor.rhs
  %111 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev1.i, align 4
  %pagesel.i177 = getelementptr inbounds %struct.net2272, ptr %112, i32 0, i32 8
  %113 = ptrtoint ptr %pagesel.i177 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %pagesel.i177, align 4
  %conv.i178 = zext i8 %114 to i32
  %115 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load.i180 = load i32, ptr %num.i, align 4
  %bf.lshr.i181 = lshr i32 %bf.load.i180, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i181, i32 %conv.i178)
  %cmp.not.i182 = icmp eq i32 %bf.lshr.i181, %conv.i178
  br i1 %cmp.not.i182, label %do.cond86.net2272_ep_read.exit196_crit_edge, label %if.then.i191

do.cond86.net2272_ep_read.exit196_crit_edge:      ; preds = %do.cond86
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit196

if.then.i191:                                     ; preds = %do.cond86
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i183 = trunc i32 %bf.lshr.i181 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i184 = getelementptr inbounds %struct.net2272, ptr %112, i32 0, i32 12
  %116 = ptrtoint ptr %base_addr.i14.i.i184 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base_addr.i14.i.i184, align 4
  %base_shift.i15.i.i185 = getelementptr inbounds %struct.net2272, ptr %112, i32 0, i32 11
  %118 = ptrtoint ptr %base_shift.i15.i.i185 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %base_shift.i15.i.i185, align 8
  %shl.i16.i.i186 = shl i32 4, %119
  %add.ptr.i17.i.i187 = getelementptr i16, ptr %117, i32 %shl.i16.i.i186
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i187, i8 %conv6.i183) #10, !srcloc !388
  %120 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load8.i188 = load i32, ptr %num.i, align 4
  %bf.lshr9.i189 = lshr i32 %bf.load8.i188, 24
  %conv10.i190 = trunc i32 %bf.lshr9.i189 to i8
  %121 = ptrtoint ptr %pagesel.i177 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv10.i190, ptr %pagesel.i177, align 4
  br label %net2272_ep_read.exit196

net2272_ep_read.exit196:                          ; preds = %if.then.i191, %do.cond86.net2272_ep_read.exit196_crit_edge
  %base_addr.i16.i.i192 = getelementptr inbounds %struct.net2272, ptr %112, i32 0, i32 12
  %122 = ptrtoint ptr %base_addr.i16.i.i192 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base_addr.i16.i.i192, align 4
  %base_shift.i17.i.i193 = getelementptr inbounds %struct.net2272, ptr %112, i32 0, i32 11
  %124 = ptrtoint ptr %base_shift.i17.i.i193 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %base_shift.i17.i.i193, align 8
  %shl.i18.i.i194 = shl i32 6, %125
  %add.ptr.i19.i.i195 = getelementptr i16, ptr %123, i32 %shl.i18.i.i194
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i195) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %127 = and i8 %126, 64
  %tobool90.not = icmp eq i8 %127, 0
  br i1 %tobool90.not, label %net2272_ep_read.exit196.do.body9_crit_edge, label %net2272_ep_read.exit196.cleanup94_crit_edge

net2272_ep_read.exit196.cleanup94_crit_edge:      ; preds = %net2272_ep_read.exit196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

net2272_ep_read.exit196.do.body9_crit_edge:       ; preds = %net2272_ep_read.exit196
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

cleanup94:                                        ; preds = %net2272_ep_read.exit196.cleanup94_crit_edge, %land.lhs.true.cleanup94_crit_edge, %if.then71.cleanup94_crit_edge, %if.end68.cleanup94_crit_edge
  %retval.0 = phi i32 [ 0, %net2272_ep_read.exit196.cleanup94_crit_edge ], [ 1, %if.end68.cleanup94_crit_edge ], [ 1, %if.then71.cleanup94_crit_edge ], [ 1, %land.lhs.true.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_kick_dma(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @use_dma, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %num, align 4
  %2 = add i32 %bf.load, -50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %2)
  %3 = icmp ult i32 %2, -33554432
  %4 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %or.cond142 = or i1 %3, %tobool9.not
  br i1 %or.cond142, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_kick_dma.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_kick_dma, %do.end)) #10
          to label %if.then19 [label %do.end], !srcloc !376

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev20 = getelementptr inbounds %struct.net2272, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev20, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %dma23 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %dma23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma23, align 4
  %conv = zext i32 %14 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_kick_dma.__UNIQUE_ID_ddebug257, ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef %12, ptr noundef %req, i64 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load i32, ptr %num, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %do.end.net2272_ep_write.exit_crit_edge, label %if.then.i

do.end.net2272_ep_write.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %20 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %22 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %23
  %add.ptr.i17.i.i = getelementptr i16, ptr %21, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %24 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load8.i = load i32, ptr %num, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %25 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %do.end.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %26 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %28 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 15, %29
  %add.ptr.i17.i21.i = getelementptr i16, ptr %27, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %dma_busy = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load26 = load i16, ptr %dma_busy, align 8
  %33 = and i16 %bf.load26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool29.not = icmp eq i16 %33, 0
  br i1 %tobool29.not, label %if.end31, label %net2272_ep_write.exit.cleanup_crit_edge

net2272_ep_write.exit.cleanup_crit_edge:          ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %net2272_ep_write.exit
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %and34 = and i32 %35, -2
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load35 = load i32, ptr %num, align 4
  %37 = and i32 %bf.load35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool38.not = icmp eq i32 %37, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end31
  %bf.lshr43 = lshr i32 %bf.load35, 24
  %dma45 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %dma45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma45, align 4
  %call46 = tail call fastcc i32 @net2272_request_dma(ptr noundef %31, i32 noundef %bf.lshr43, i32 noundef %39, i32 noundef %and34, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %40 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual, align 4
  %add = add i32 %41, %and34
  store i32 %add, ptr %actual, align 4
  br label %if.end105

if.else:                                          ; preds = %if.end31
  %pagesel.i144 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 8
  %42 = ptrtoint ptr %pagesel.i144 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pagesel.i144, align 4
  %conv.i145 = zext i8 %43 to i32
  %bf.lshr.i148 = lshr i32 %bf.load35, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i148, i32 %conv.i145)
  %cmp.not.i149 = icmp eq i32 %bf.lshr.i148, %conv.i145
  br i1 %cmp.not.i149, label %if.else.net2272_ep_read.exit_crit_edge, label %if.then.i158

if.else.net2272_ep_read.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i158:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i150 = trunc i32 %bf.lshr.i148 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i151 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %44 = ptrtoint ptr %base_addr.i14.i.i151 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i14.i.i151, align 4
  %base_shift.i15.i.i152 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %46 = ptrtoint ptr %base_shift.i15.i.i152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_shift.i15.i.i152, align 8
  %shl.i16.i.i153 = shl i32 4, %47
  %add.ptr.i17.i.i154 = getelementptr i16, ptr %45, i32 %shl.i16.i.i153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i154, i8 %conv6.i150) #10, !srcloc !388
  %48 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load8.i155 = load i32, ptr %num, align 4
  %bf.lshr9.i156 = lshr i32 %bf.load8.i155, 24
  %conv10.i157 = trunc i32 %bf.lshr9.i156 to i8
  %49 = ptrtoint ptr %pagesel.i144 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv10.i157, ptr %pagesel.i144, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i158, %if.else.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %50 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %52 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 6, %53
  %add.ptr.i19.i.i = getelementptr i16, ptr %51, i32 %shl.i18.i.i
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %55 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1.i, align 4
  %57 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load54 = load i32, ptr %num, align 4
  %bf.lshr55 = lshr i32 %bf.load54, 24
  %dma57 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %58 = ptrtoint ptr %dma57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma57, align 4
  %call58 = tail call fastcc i32 @net2272_request_dma(ptr noundef %56, i32 noundef %bf.lshr55, i32 noundef %59, i32 noundef %and34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %net2272_ep_read.exit.cleanup_crit_edge

net2272_ep_read.exit.cleanup_crit_edge:           ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %net2272_ep_read.exit
  %conv62 = zext i8 %54 to i32
  %and63 = and i32 %conv62, 64
  %60 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load66 = load i32, ptr %num, align 4
  %bf.clear71 = and i32 %bf.load66, -65
  %61 = or i32 %and63, %bf.clear71
  %storemerge = xor i32 %61, 64
  store i32 %storemerge, ptr %num, align 4
  tail call fastcc void @net2272_ep_write(ptr noundef %ep, i32 noundef 14, i8 noundef zeroext -128)
  %and75 = and i32 %conv62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end61.if.end105_crit_edge, label %if.then77

if.end61.if.end105_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then77:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i, align 4
  %dma_eot_polarity = getelementptr inbounds %struct.net2272, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %dma_eot_polarity to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load80 = load i16, ptr %dma_eot_polarity, align 8
  %65 = lshr i16 %bf.load80, 7
  %or90140 = and i16 %65, 14
  %or97141 = or i16 %or90140, 16
  %or97 = zext i16 %or97141 to i32
  %66 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load99 = load i32, ptr %num, align 4
  %bf.lshr100 = lshr i32 %bf.load99, 25
  %or102 = or i32 %bf.lshr100, %or97
  %conv103 = trunc i32 %or102 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %63, i32 0, i32 12
  %67 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %63, i32 0, i32 11
  %69 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 28, %70
  %add.ptr.i17.i = getelementptr i16, ptr %68, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv103) #10, !srcloc !388
  br label %cleanup

if.end105:                                        ; preds = %if.end61.if.end105_crit_edge, %if.end49
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i, align 4
  %pagesel.i160 = getelementptr inbounds %struct.net2272, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %pagesel.i160 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pagesel.i160, align 4
  %conv.i161 = zext i8 %74 to i32
  %75 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i163 = load i32, ptr %num, align 4
  %bf.lshr.i164 = lshr i32 %bf.load.i163, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i164, i32 %conv.i161)
  %cmp.not.i165 = icmp eq i32 %bf.lshr.i164, %conv.i161
  br i1 %cmp.not.i165, label %if.end105.net2272_ep_write.exit179_crit_edge, label %if.then.i174

if.end105.net2272_ep_write.exit179_crit_edge:     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit179

if.then.i174:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i166 = trunc i32 %bf.lshr.i164 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i167 = getelementptr inbounds %struct.net2272, ptr %72, i32 0, i32 12
  %76 = ptrtoint ptr %base_addr.i14.i.i167 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_addr.i14.i.i167, align 4
  %base_shift.i15.i.i168 = getelementptr inbounds %struct.net2272, ptr %72, i32 0, i32 11
  %78 = ptrtoint ptr %base_shift.i15.i.i168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base_shift.i15.i.i168, align 8
  %shl.i16.i.i169 = shl i32 4, %79
  %add.ptr.i17.i.i170 = getelementptr i16, ptr %77, i32 %shl.i16.i.i169
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i170, i8 %conv6.i166) #10, !srcloc !388
  %80 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load8.i171 = load i32, ptr %num, align 4
  %bf.lshr9.i172 = lshr i32 %bf.load8.i171, 24
  %conv10.i173 = trunc i32 %bf.lshr9.i172 to i8
  %81 = ptrtoint ptr %pagesel.i160 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv10.i173, ptr %pagesel.i160, align 4
  br label %net2272_ep_write.exit179

net2272_ep_write.exit179:                         ; preds = %if.then.i174, %if.end105.net2272_ep_write.exit179_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i175 = getelementptr inbounds %struct.net2272, ptr %72, i32 0, i32 12
  %82 = ptrtoint ptr %base_addr.i14.i18.i175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr.i14.i18.i175, align 4
  %base_shift.i15.i19.i176 = getelementptr inbounds %struct.net2272, ptr %72, i32 0, i32 11
  %84 = ptrtoint ptr %base_shift.i15.i19.i176 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base_shift.i15.i19.i176, align 8
  %shl.i16.i20.i177 = shl i32 11, %85
  %add.ptr.i17.i21.i178 = getelementptr i16, ptr %83, i32 %shl.i16.i20.i177
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i178, i8 0) #10, !srcloc !388
  %86 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1.i, align 4
  %dev_id.i = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %89)
  %cond.i = icmp eq i16 %89, -28588
  br i1 %cond.i, label %do.body.i, label %net2272_ep_write.exit179.cleanup_crit_edge

net2272_ep_write.exit179.cleanup_crit_edge:       ; preds = %net2272_ep_write.exit179
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %net2272_ep_write.exit179
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  %90 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 13
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %add.ptr.i = getelementptr i8, ptr %92, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #10, !srcloc !388
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %net2272_ep_write.exit179.cleanup_crit_edge, %if.then77, %net2272_ep_read.exit.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %net2272_ep_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then77 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %net2272_ep_write.exit.cleanup_crit_edge ], [ -16, %if.then39.cleanup_crit_edge ], [ -16, %net2272_ep_read.exit.cleanup_crit_edge ], [ 0, %net2272_ep_write.exit179.cleanup_crit_edge ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_write_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_write_fifo.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_write_fifo, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_write_fifo.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3
  br label %top

top:                                              ; preds = %net2272_ep_read.exit240.top_crit_edge, %do.end
  %req.addr.0 = phi ptr [ %req, %do.end ], [ %add.ptr53, %net2272_ep_read.exit240.top_crit_edge ]
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %top.net2272_ep_write.exit_crit_edge, label %if.then.i

top.net2272_ep_write.exit_crit_edge:              ; preds = %top
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %top
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %11, i32 0, i32 11
  %17 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %18
  %add.ptr.i17.i.i = getelementptr i16, ptr %16, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %20 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %top.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %11, i32 0, i32 12
  %21 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %11, i32 0, i32 11
  %23 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 6, %24
  %add.ptr.i17.i21.i = getelementptr i16, ptr %22, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 4) #10, !srcloc !388
  %actual15 = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 12
  %length33 = getelementptr inbounds %struct.usb_request, ptr %req.addr.0, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %net2272_ep_write.exit261, %net2272_ep_write.exit
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %pagesel.i99 = getelementptr inbounds %struct.net2272, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %pagesel.i99 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pagesel.i99, align 4
  %conv.i100 = zext i8 %28 to i32
  %29 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i102 = load i32, ptr %num.i, align 4
  %bf.lshr.i103 = lshr i32 %bf.load.i102, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i103, i32 %conv.i100)
  %cmp.not.i104 = icmp eq i32 %bf.lshr.i103, %conv.i100
  br i1 %cmp.not.i104, label %while.cond.net2272_ep_read.exit_crit_edge, label %if.then.i113

while.cond.net2272_ep_read.exit_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i113:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i105 = trunc i32 %bf.lshr.i103 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i106 = getelementptr inbounds %struct.net2272, ptr %26, i32 0, i32 12
  %30 = ptrtoint ptr %base_addr.i14.i.i106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i14.i.i106, align 4
  %base_shift.i15.i.i107 = getelementptr inbounds %struct.net2272, ptr %26, i32 0, i32 11
  %32 = ptrtoint ptr %base_shift.i15.i.i107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_shift.i15.i.i107, align 8
  %shl.i16.i.i108 = shl i32 4, %33
  %add.ptr.i17.i.i109 = getelementptr i16, ptr %31, i32 %shl.i16.i.i108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i109, i8 %conv6.i105) #10, !srcloc !388
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load8.i110 = load i32, ptr %num.i, align 4
  %bf.lshr9.i111 = lshr i32 %bf.load8.i110, 24
  %conv10.i112 = trunc i32 %bf.lshr9.i111 to i8
  %35 = ptrtoint ptr %pagesel.i99 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv10.i112, ptr %pagesel.i99, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i113, %while.cond.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %26, i32 0, i32 12
  %36 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %26, i32 0, i32 11
  %38 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 6, %39
  %add.ptr.i19.i.i = getelementptr i16, ptr %37, i32 %shl.i18.i.i
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool9.not = icmp sgt i8 %40, -1
  br i1 %tobool9.not, label %while.body, label %net2272_ep_read.exit.cleanup_crit_edge

net2272_ep_read.exit.cleanup_crit_edge:           ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %net2272_ep_read.exit
  %41 = ptrtoint ptr %req.addr.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req.addr.0, align 4
  %43 = ptrtoint ptr %actual15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %actual15, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #10, !srcloc !412
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i, align 4
  %pagesel.i115 = getelementptr inbounds %struct.net2272, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %pagesel.i115 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pagesel.i115, align 4
  %conv.i116 = zext i8 %48 to i32
  %49 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i118 = load i32, ptr %num.i, align 4
  %bf.lshr.i119 = lshr i32 %bf.load.i118, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i119, i32 %conv.i116)
  %cmp.not.i120 = icmp eq i32 %bf.lshr.i119, %conv.i116
  br i1 %cmp.not.i120, label %while.body.net2272_ep_read.exit134_crit_edge, label %if.then.i129

while.body.net2272_ep_read.exit134_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit134

if.then.i129:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i121 = trunc i32 %bf.lshr.i119 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i122 = getelementptr inbounds %struct.net2272, ptr %46, i32 0, i32 12
  %50 = ptrtoint ptr %base_addr.i14.i.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base_addr.i14.i.i122, align 4
  %base_shift.i15.i.i123 = getelementptr inbounds %struct.net2272, ptr %46, i32 0, i32 11
  %52 = ptrtoint ptr %base_shift.i15.i.i123 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_shift.i15.i.i123, align 8
  %shl.i16.i.i124 = shl i32 4, %53
  %add.ptr.i17.i.i125 = getelementptr i16, ptr %51, i32 %shl.i16.i.i124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i125, i8 %conv6.i121) #10, !srcloc !388
  %54 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load8.i126 = load i32, ptr %num.i, align 4
  %bf.lshr9.i127 = lshr i32 %bf.load8.i126, 24
  %conv10.i128 = trunc i32 %bf.lshr9.i127 to i8
  %55 = ptrtoint ptr %pagesel.i115 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv10.i128, ptr %pagesel.i115, align 4
  br label %net2272_ep_read.exit134

net2272_ep_read.exit134:                          ; preds = %if.then.i129, %while.body.net2272_ep_read.exit134_crit_edge
  %base_addr.i16.i.i130 = getelementptr inbounds %struct.net2272, ptr %46, i32 0, i32 12
  %56 = ptrtoint ptr %base_addr.i16.i.i130 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i16.i.i130, align 4
  %base_shift.i17.i.i131 = getelementptr inbounds %struct.net2272, ptr %46, i32 0, i32 11
  %58 = ptrtoint ptr %base_shift.i17.i.i131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_shift.i17.i.i131, align 8
  %shl.i18.i.i132 = shl i32 6, %59
  %add.ptr.i19.i.i133 = getelementptr i16, ptr %57, i32 %shl.i18.i.i132
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i133) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %61 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i, align 4
  %pagesel.i136 = getelementptr inbounds %struct.net2272, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %pagesel.i136 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pagesel.i136, align 4
  %conv.i137 = zext i8 %64 to i32
  %65 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load.i139 = load i32, ptr %num.i, align 4
  %bf.lshr.i140 = lshr i32 %bf.load.i139, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i140, i32 %conv.i137)
  %cmp.not.i141 = icmp eq i32 %bf.lshr.i140, %conv.i137
  br i1 %cmp.not.i141, label %net2272_ep_read.exit134.net2272_ep_read.exit155_crit_edge, label %if.then.i150

net2272_ep_read.exit134.net2272_ep_read.exit155_crit_edge: ; preds = %net2272_ep_read.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit155

if.then.i150:                                     ; preds = %net2272_ep_read.exit134
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i142 = trunc i32 %bf.lshr.i140 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i143 = getelementptr inbounds %struct.net2272, ptr %62, i32 0, i32 12
  %66 = ptrtoint ptr %base_addr.i14.i.i143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i14.i.i143, align 4
  %base_shift.i15.i.i144 = getelementptr inbounds %struct.net2272, ptr %62, i32 0, i32 11
  %68 = ptrtoint ptr %base_shift.i15.i.i144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base_shift.i15.i.i144, align 8
  %shl.i16.i.i145 = shl i32 4, %69
  %add.ptr.i17.i.i146 = getelementptr i16, ptr %67, i32 %shl.i16.i.i145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i146, i8 %conv6.i142) #10, !srcloc !388
  %70 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load8.i147 = load i32, ptr %num.i, align 4
  %bf.lshr9.i148 = lshr i32 %bf.load8.i147, 24
  %conv10.i149 = trunc i32 %bf.lshr9.i148 to i8
  %71 = ptrtoint ptr %pagesel.i136 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv10.i149, ptr %pagesel.i136, align 4
  br label %net2272_ep_read.exit155

net2272_ep_read.exit155:                          ; preds = %if.then.i150, %net2272_ep_read.exit134.net2272_ep_read.exit155_crit_edge
  %base_addr.i16.i.i151 = getelementptr inbounds %struct.net2272, ptr %62, i32 0, i32 12
  %72 = ptrtoint ptr %base_addr.i16.i.i151 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base_addr.i16.i.i151, align 4
  %base_shift.i17.i.i152 = getelementptr inbounds %struct.net2272, ptr %62, i32 0, i32 11
  %74 = ptrtoint ptr %base_shift.i17.i.i152 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base_shift.i17.i.i152, align 8
  %shl.i18.i.i153 = shl i32 13, %75
  %add.ptr.i19.i.i154 = getelementptr i16, ptr %73, i32 %shl.i18.i.i153
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i154) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv18 = zext i8 %76 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1.i, align 4
  %pagesel.i157 = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %pagesel.i157 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pagesel.i157, align 4
  %conv.i158 = zext i8 %80 to i32
  %81 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load.i160 = load i32, ptr %num.i, align 4
  %bf.lshr.i161 = lshr i32 %bf.load.i160, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i161, i32 %conv.i158)
  %cmp.not.i162 = icmp eq i32 %bf.lshr.i161, %conv.i158
  br i1 %cmp.not.i162, label %net2272_ep_read.exit155.net2272_ep_read.exit176_crit_edge, label %if.then.i171

net2272_ep_read.exit155.net2272_ep_read.exit176_crit_edge: ; preds = %net2272_ep_read.exit155
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit176

if.then.i171:                                     ; preds = %net2272_ep_read.exit155
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i163 = trunc i32 %bf.lshr.i161 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i164 = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 12
  %82 = ptrtoint ptr %base_addr.i14.i.i164 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr.i14.i.i164, align 4
  %base_shift.i15.i.i165 = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 11
  %84 = ptrtoint ptr %base_shift.i15.i.i165 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base_shift.i15.i.i165, align 8
  %shl.i16.i.i166 = shl i32 4, %85
  %add.ptr.i17.i.i167 = getelementptr i16, ptr %83, i32 %shl.i16.i.i166
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i167, i8 %conv6.i163) #10, !srcloc !388
  %86 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load8.i168 = load i32, ptr %num.i, align 4
  %bf.lshr9.i169 = lshr i32 %bf.load8.i168, 24
  %conv10.i170 = trunc i32 %bf.lshr9.i169 to i8
  %87 = ptrtoint ptr %pagesel.i157 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv10.i170, ptr %pagesel.i157, align 4
  br label %net2272_ep_read.exit176

net2272_ep_read.exit176:                          ; preds = %if.then.i171, %net2272_ep_read.exit155.net2272_ep_read.exit176_crit_edge
  %base_addr.i16.i.i172 = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 12
  %88 = ptrtoint ptr %base_addr.i16.i.i172 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base_addr.i16.i.i172, align 4
  %base_shift.i17.i.i173 = getelementptr inbounds %struct.net2272, ptr %78, i32 0, i32 11
  %90 = ptrtoint ptr %base_shift.i17.i.i173 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base_shift.i17.i.i173, align 8
  %shl.i18.i.i174 = shl i32 12, %91
  %add.ptr.i19.i.i175 = getelementptr i16, ptr %89, i32 %shl.i18.i.i174
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i175) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv20 = zext i8 %92 to i32
  %or = or i32 %shl, %conv20
  %93 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %93, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %bf.cast)
  %cmp = icmp ult i32 %or, %bf.cast
  br i1 %cmp, label %if.then23, label %net2272_ep_read.exit176.if.end30_crit_edge

net2272_ep_read.exit176.if.end30_crit_edge:       ; preds = %net2272_ep_read.exit176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %net2272_ep_read.exit176
  %94 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i, align 4
  %pagesel.i178 = getelementptr inbounds %struct.net2272, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %pagesel.i178 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pagesel.i178, align 4
  %conv.i179 = zext i8 %97 to i32
  %98 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i181 = load i32, ptr %num.i, align 4
  %bf.lshr.i182 = lshr i32 %bf.load.i181, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i182, i32 %conv.i179)
  %cmp.not.i183 = icmp eq i32 %bf.lshr.i182, %conv.i179
  br i1 %cmp.not.i183, label %if.then23.net2272_ep_read.exit197_crit_edge, label %if.then.i192

if.then23.net2272_ep_read.exit197_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit197

if.then.i192:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i184 = trunc i32 %bf.lshr.i182 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i185 = getelementptr inbounds %struct.net2272, ptr %95, i32 0, i32 12
  %99 = ptrtoint ptr %base_addr.i14.i.i185 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base_addr.i14.i.i185, align 4
  %base_shift.i15.i.i186 = getelementptr inbounds %struct.net2272, ptr %95, i32 0, i32 11
  %101 = ptrtoint ptr %base_shift.i15.i.i186 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base_shift.i15.i.i186, align 8
  %shl.i16.i.i187 = shl i32 4, %102
  %add.ptr.i17.i.i188 = getelementptr i16, ptr %100, i32 %shl.i16.i.i187
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i188, i8 %conv6.i184) #10, !srcloc !388
  %103 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load8.i189 = load i32, ptr %num.i, align 4
  %bf.lshr9.i190 = lshr i32 %bf.load8.i189, 24
  %conv10.i191 = trunc i32 %bf.lshr9.i190 to i8
  %104 = ptrtoint ptr %pagesel.i178 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv10.i191, ptr %pagesel.i178, align 4
  br label %net2272_ep_read.exit197

net2272_ep_read.exit197:                          ; preds = %if.then.i192, %if.then23.net2272_ep_read.exit197_crit_edge
  %base_addr.i16.i.i193 = getelementptr inbounds %struct.net2272, ptr %95, i32 0, i32 12
  %105 = ptrtoint ptr %base_addr.i16.i.i193 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base_addr.i16.i.i193, align 4
  %base_shift.i17.i.i194 = getelementptr inbounds %struct.net2272, ptr %95, i32 0, i32 11
  %107 = ptrtoint ptr %base_shift.i17.i.i194 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %base_shift.i17.i.i194, align 8
  %shl.i18.i.i195 = shl i32 13, %108
  %add.ptr.i19.i.i196 = getelementptr i16, ptr %106, i32 %shl.i18.i.i195
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i196) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv25 = zext i8 %109 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %110 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1.i, align 4
  %pagesel.i199 = getelementptr inbounds %struct.net2272, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %pagesel.i199 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pagesel.i199, align 4
  %conv.i200 = zext i8 %113 to i32
  %114 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load.i202 = load i32, ptr %num.i, align 4
  %bf.lshr.i203 = lshr i32 %bf.load.i202, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i203, i32 %conv.i200)
  %cmp.not.i204 = icmp eq i32 %bf.lshr.i203, %conv.i200
  br i1 %cmp.not.i204, label %net2272_ep_read.exit197.net2272_ep_read.exit218_crit_edge, label %if.then.i213

net2272_ep_read.exit197.net2272_ep_read.exit218_crit_edge: ; preds = %net2272_ep_read.exit197
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit218

if.then.i213:                                     ; preds = %net2272_ep_read.exit197
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i205 = trunc i32 %bf.lshr.i203 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i206 = getelementptr inbounds %struct.net2272, ptr %111, i32 0, i32 12
  %115 = ptrtoint ptr %base_addr.i14.i.i206 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base_addr.i14.i.i206, align 4
  %base_shift.i15.i.i207 = getelementptr inbounds %struct.net2272, ptr %111, i32 0, i32 11
  %117 = ptrtoint ptr %base_shift.i15.i.i207 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %base_shift.i15.i.i207, align 8
  %shl.i16.i.i208 = shl i32 4, %118
  %add.ptr.i17.i.i209 = getelementptr i16, ptr %116, i32 %shl.i16.i.i208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i209, i8 %conv6.i205) #10, !srcloc !388
  %119 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load8.i210 = load i32, ptr %num.i, align 4
  %bf.lshr9.i211 = lshr i32 %bf.load8.i210, 24
  %conv10.i212 = trunc i32 %bf.lshr9.i211 to i8
  %120 = ptrtoint ptr %pagesel.i199 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv10.i212, ptr %pagesel.i199, align 4
  br label %net2272_ep_read.exit218

net2272_ep_read.exit218:                          ; preds = %if.then.i213, %net2272_ep_read.exit197.net2272_ep_read.exit218_crit_edge
  %base_addr.i16.i.i214 = getelementptr inbounds %struct.net2272, ptr %111, i32 0, i32 12
  %121 = ptrtoint ptr %base_addr.i16.i.i214 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base_addr.i16.i.i214, align 4
  %base_shift.i17.i.i215 = getelementptr inbounds %struct.net2272, ptr %111, i32 0, i32 11
  %123 = ptrtoint ptr %base_shift.i17.i.i215 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %base_shift.i17.i.i215, align 8
  %shl.i18.i.i216 = shl i32 12, %124
  %add.ptr.i19.i.i217 = getelementptr i16, ptr %122, i32 %shl.i18.i.i216
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i217) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv28 = zext i8 %125 to i32
  %or29 = or i32 %shl26, %conv28
  br label %if.end30

if.end30:                                         ; preds = %net2272_ep_read.exit218, %net2272_ep_read.exit176.if.end30_crit_edge
  %max.0 = phi i32 [ %or29, %net2272_ep_read.exit218 ], [ %or, %net2272_ep_read.exit176.if.end30_crit_edge ]
  %call31 = tail call fastcc i32 @net2272_write_packet(ptr noundef %ep, ptr noundef %add.ptr, ptr noundef %req.addr.0, i32 noundef %max.0)
  %126 = ptrtoint ptr %length33 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %length33, align 4
  %128 = ptrtoint ptr %actual15 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %actual15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp36 = icmp eq i32 %127, %129
  br i1 %cmp36, label %if.then38, label %if.end66

if.then38:                                        ; preds = %if.end30
  %130 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %130, i32 7)
  %bf.load41 = load i56, ptr %maxpacket, align 2
  %bf.lshr42 = lshr i56 %bf.load41, 40
  %bf.cast43 = trunc i56 %bf.lshr42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %bf.cast43)
  %cmp44 = icmp ult i32 %call31, %bf.cast43
  br i1 %cmp44, label %if.then46, label %if.then38.if.end47_crit_edge

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then38.if.end47_crit_edge
  tail call fastcc void @net2272_done(ptr noundef %ep, ptr noundef %req.addr.0, i32 noundef 0)
  %131 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %132, %queue
  br i1 %cmp.i.not, label %if.end47.cleanup_crit_edge, label %if.then50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %if.end47
  %add.ptr53 = getelementptr i8, ptr %132, i32 -56
  %call54 = tail call fastcc i32 @net2272_kick_dma(ptr noundef %ep, ptr noundef %add.ptr53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %if.then50
  %133 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev1.i, align 4
  %pagesel.i221 = getelementptr inbounds %struct.net2272, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %pagesel.i221 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pagesel.i221, align 4
  %conv.i222 = zext i8 %136 to i32
  %137 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %bf.load.i224 = load i32, ptr %num.i, align 4
  %bf.lshr.i225 = lshr i32 %bf.load.i224, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i225, i32 %conv.i222)
  %cmp.not.i226 = icmp eq i32 %bf.lshr.i225, %conv.i222
  br i1 %cmp.not.i226, label %if.then57.net2272_ep_read.exit240_crit_edge, label %if.then.i235

if.then57.net2272_ep_read.exit240_crit_edge:      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit240

if.then.i235:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i227 = trunc i32 %bf.lshr.i225 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i228 = getelementptr inbounds %struct.net2272, ptr %134, i32 0, i32 12
  %138 = ptrtoint ptr %base_addr.i14.i.i228 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base_addr.i14.i.i228, align 4
  %base_shift.i15.i.i229 = getelementptr inbounds %struct.net2272, ptr %134, i32 0, i32 11
  %140 = ptrtoint ptr %base_shift.i15.i.i229 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %base_shift.i15.i.i229, align 8
  %shl.i16.i.i230 = shl i32 4, %141
  %add.ptr.i17.i.i231 = getelementptr i16, ptr %139, i32 %shl.i16.i.i230
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i231, i8 %conv6.i227) #10, !srcloc !388
  %142 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load8.i232 = load i32, ptr %num.i, align 4
  %bf.lshr9.i233 = lshr i32 %bf.load8.i232, 24
  %conv10.i234 = trunc i32 %bf.lshr9.i233 to i8
  %143 = ptrtoint ptr %pagesel.i221 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv10.i234, ptr %pagesel.i221, align 4
  br label %net2272_ep_read.exit240

net2272_ep_read.exit240:                          ; preds = %if.then.i235, %if.then57.net2272_ep_read.exit240_crit_edge
  %base_addr.i16.i.i236 = getelementptr inbounds %struct.net2272, ptr %134, i32 0, i32 12
  %144 = ptrtoint ptr %base_addr.i16.i.i236 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base_addr.i16.i.i236, align 4
  %base_shift.i17.i.i237 = getelementptr inbounds %struct.net2272, ptr %134, i32 0, i32 11
  %146 = ptrtoint ptr %base_shift.i17.i.i237 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %base_shift.i17.i.i237, align 8
  %shl.i18.i.i238 = shl i32 6, %147
  %add.ptr.i19.i.i239 = getelementptr i16, ptr %145, i32 %shl.i18.i.i238
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i239) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %149 = and i8 %148, 64
  %tobool61.not = icmp eq i8 %149, 0
  br i1 %tobool61.not, label %net2272_ep_read.exit240.cleanup_crit_edge, label %net2272_ep_read.exit240.top_crit_edge

net2272_ep_read.exit240.top_crit_edge:            ; preds = %net2272_ep_read.exit240
  call void @__sanitizer_cov_trace_pc() #12
  br label %top

net2272_ep_read.exit240.cleanup_crit_edge:        ; preds = %net2272_ep_read.exit240
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end30
  %150 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev1.i, align 4
  %pagesel.i242 = getelementptr inbounds %struct.net2272, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %pagesel.i242 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pagesel.i242, align 4
  %conv.i243 = zext i8 %153 to i32
  %154 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %bf.load.i245 = load i32, ptr %num.i, align 4
  %bf.lshr.i246 = lshr i32 %bf.load.i245, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i246, i32 %conv.i243)
  %cmp.not.i247 = icmp eq i32 %bf.lshr.i246, %conv.i243
  br i1 %cmp.not.i247, label %if.end66.net2272_ep_write.exit261_crit_edge, label %if.then.i256

if.end66.net2272_ep_write.exit261_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit261

if.then.i256:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i248 = trunc i32 %bf.lshr.i246 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i249 = getelementptr inbounds %struct.net2272, ptr %151, i32 0, i32 12
  %155 = ptrtoint ptr %base_addr.i14.i.i249 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base_addr.i14.i.i249, align 4
  %base_shift.i15.i.i250 = getelementptr inbounds %struct.net2272, ptr %151, i32 0, i32 11
  %157 = ptrtoint ptr %base_shift.i15.i.i250 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %base_shift.i15.i.i250, align 8
  %shl.i16.i.i251 = shl i32 4, %158
  %add.ptr.i17.i.i252 = getelementptr i16, ptr %156, i32 %shl.i16.i.i251
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i252, i8 %conv6.i248) #10, !srcloc !388
  %159 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %bf.load8.i253 = load i32, ptr %num.i, align 4
  %bf.lshr9.i254 = lshr i32 %bf.load8.i253, 24
  %conv10.i255 = trunc i32 %bf.lshr9.i254 to i8
  %160 = ptrtoint ptr %pagesel.i242 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv10.i255, ptr %pagesel.i242, align 4
  br label %net2272_ep_write.exit261

net2272_ep_write.exit261:                         ; preds = %if.then.i256, %if.end66.net2272_ep_write.exit261_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i257 = getelementptr inbounds %struct.net2272, ptr %151, i32 0, i32 12
  %161 = ptrtoint ptr %base_addr.i14.i18.i257 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base_addr.i14.i18.i257, align 4
  %base_shift.i15.i19.i258 = getelementptr inbounds %struct.net2272, ptr %151, i32 0, i32 11
  %163 = ptrtoint ptr %base_shift.i15.i19.i258 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %base_shift.i15.i19.i258, align 8
  %shl.i16.i20.i259 = shl i32 6, %164
  %add.ptr.i17.i21.i260 = getelementptr i16, ptr %162, i32 %shl.i16.i20.i259
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i260, i8 4) #10, !srcloc !388
  br label %while.cond

cleanup:                                          ; preds = %net2272_ep_read.exit240.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %net2272_ep_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %net2272_ep_read.exit.cleanup_crit_edge ], [ 1, %if.then50.cleanup_crit_edge ], [ 1, %net2272_ep_read.exit240.cleanup_crit_edge ], [ 1, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_read_packet(ptr nocapture noundef readonly %ep, ptr nocapture noundef writeonly %buf, ptr noundef %req, i32 noundef %avail) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %base_shift.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %base_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_shift.i, align 8
  %shl.i = shl i32 5, %5
  %add.ptr.i = getelementptr i16, ptr %3, i32 %shl.i
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %add = add i32 %7, %avail
  store i32 %add, ptr %actual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_read_packet.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_read_packet, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %15 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.then.net2272_ep_read.exit_crit_edge, label %if.then.i

if.then.net2272_ep_read.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 12
  %17 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 11
  %19 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %20
  %add.ptr.i17.i.i = getelementptr i16, ptr %18, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %21 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %22 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %if.then.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 12
  %23 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 11
  %25 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 13, %26
  %add.ptr.i19.i.i = getelementptr i16, ptr %24, i32 %shl.i18.i.i
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %pagesel.i71 = getelementptr inbounds %struct.net2272, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %pagesel.i71 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pagesel.i71, align 4
  %conv.i72 = zext i8 %31 to i32
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i74 = load i32, ptr %num.i, align 4
  %bf.lshr.i75 = lshr i32 %bf.load.i74, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i75, i32 %conv.i72)
  %cmp.not.i76 = icmp eq i32 %bf.lshr.i75, %conv.i72
  br i1 %cmp.not.i76, label %net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge, label %if.then.i85

net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit90

if.then.i85:                                      ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i77 = trunc i32 %bf.lshr.i75 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i78 = getelementptr inbounds %struct.net2272, ptr %29, i32 0, i32 12
  %33 = ptrtoint ptr %base_addr.i14.i.i78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i14.i.i78, align 4
  %base_shift.i15.i.i79 = getelementptr inbounds %struct.net2272, ptr %29, i32 0, i32 11
  %35 = ptrtoint ptr %base_shift.i15.i.i79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_shift.i15.i.i79, align 8
  %shl.i16.i.i80 = shl i32 4, %36
  %add.ptr.i17.i.i81 = getelementptr i16, ptr %34, i32 %shl.i16.i.i80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i81, i8 %conv6.i77) #10, !srcloc !388
  %37 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load8.i82 = load i32, ptr %num.i, align 4
  %bf.lshr9.i83 = lshr i32 %bf.load8.i82, 24
  %conv10.i84 = trunc i32 %bf.lshr9.i83 to i8
  %38 = ptrtoint ptr %pagesel.i71 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10.i84, ptr %pagesel.i71, align 4
  br label %net2272_ep_read.exit90

net2272_ep_read.exit90:                           ; preds = %if.then.i85, %net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge
  %base_addr.i16.i.i86 = getelementptr inbounds %struct.net2272, ptr %29, i32 0, i32 12
  %39 = ptrtoint ptr %base_addr.i16.i.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_addr.i16.i.i86, align 4
  %base_shift.i17.i.i87 = getelementptr inbounds %struct.net2272, ptr %29, i32 0, i32 11
  %41 = ptrtoint ptr %base_shift.i17.i.i87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_shift.i17.i.i87, align 8
  %shl.i18.i.i88 = shl i32 12, %42
  %add.ptr.i19.i.i89 = getelementptr i16, ptr %40, i32 %shl.i18.i.i88
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i89) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv11 = zext i8 %43 to i32
  %or = or i32 %shl, %conv11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_read_packet.__UNIQUE_ID_ddebug254, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef %13, ptr noundef %req, i32 noundef %avail, i32 noundef %or) #10
  br label %do.end

do.end:                                           ; preds = %net2272_ep_read.exit90, %entry
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %44 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail)
  %cmp14 = icmp eq i32 %avail, 0
  br i1 %cmp14, label %if.then22, label %if.end26, !prof !409

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %rem = and i32 %avail, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool27.not = icmp eq i32 %rem, 0
  br i1 %tobool27.not, label %if.end26.do.body36.preheader_crit_edge, label %if.then34, !prof !408

if.end26.do.body36.preheader_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36.preheader

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %avail, 1
  br label %do.body36.preheader

do.body36.preheader:                              ; preds = %if.then34, %if.end26.do.body36.preheader_crit_edge
  %avail.addr.1.ph = phi i32 [ %avail, %if.end26.do.body36.preheader_crit_edge ], [ %inc, %if.then34 ]
  br label %do.body36

do.body36:                                        ; preds = %do.body36.do.body36_crit_edge, %do.body36.preheader
  %bufp.0 = phi ptr [ %incdec.ptr, %do.body36.do.body36_crit_edge ], [ %buf, %do.body36.preheader ]
  %avail.addr.1 = phi i32 [ %sub, %do.body36.do.body36_crit_edge ], [ %avail.addr.1.ph, %do.body36.preheader ]
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !413
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  %incdec.ptr = getelementptr i16, ptr %bufp.0, i32 1
  %48 = ptrtoint ptr %bufp.0 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %bufp.0, align 2
  %sub = add i32 %avail.addr.1, -2
  %tobool43.not = icmp eq i32 %sub, 0
  br i1 %tobool43.not, label %do.end44, label %do.body36.do.body36_crit_edge

do.body36.do.body36_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

do.end44:                                         ; preds = %do.body36
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %pagesel.i92 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %pagesel.i92 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pagesel.i92, align 4
  %conv.i93 = zext i8 %52 to i32
  %num.i94 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %53 = ptrtoint ptr %num.i94 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i95 = load i32, ptr %num.i94, align 4
  %bf.lshr.i96 = lshr i32 %bf.load.i95, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i96, i32 %conv.i93)
  %cmp.not.i97 = icmp eq i32 %bf.lshr.i96, %conv.i93
  br i1 %cmp.not.i97, label %do.end44.net2272_ep_read.exit111_crit_edge, label %if.then.i106

do.end44.net2272_ep_read.exit111_crit_edge:       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit111

if.then.i106:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i98 = trunc i32 %bf.lshr.i96 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i99 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 12
  %54 = ptrtoint ptr %base_addr.i14.i.i99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i14.i.i99, align 4
  %base_shift.i15.i.i100 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 11
  %56 = ptrtoint ptr %base_shift.i15.i.i100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_shift.i15.i.i100, align 8
  %shl.i16.i.i101 = shl i32 4, %57
  %add.ptr.i17.i.i102 = getelementptr i16, ptr %55, i32 %shl.i16.i.i101
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i102, i8 %conv6.i98) #10, !srcloc !388
  %58 = ptrtoint ptr %num.i94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load8.i103 = load i32, ptr %num.i94, align 4
  %bf.lshr9.i104 = lshr i32 %bf.load8.i103, 24
  %conv10.i105 = trunc i32 %bf.lshr9.i104 to i8
  %59 = ptrtoint ptr %pagesel.i92 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i105, ptr %pagesel.i92, align 4
  br label %net2272_ep_read.exit111

net2272_ep_read.exit111:                          ; preds = %if.then.i106, %do.end44.net2272_ep_read.exit111_crit_edge
  %base_addr.i16.i.i107 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 12
  %60 = ptrtoint ptr %base_addr.i16.i.i107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i16.i.i107, align 4
  %base_shift.i17.i.i108 = getelementptr inbounds %struct.net2272, ptr %50, i32 0, i32 11
  %62 = ptrtoint ptr %base_shift.i17.i.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_shift.i17.i.i108, align 8
  %shl.i18.i.i109 = shl i32 6, %63
  %add.ptr.i19.i.i110 = getelementptr i16, ptr %61, i32 %shl.i18.i.i109
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i110) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %65 = and i8 %64, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool47.not = icmp eq i8 %65, 0
  br i1 %tobool47.not, label %net2272_ep_read.exit111.cleanup_crit_edge, label %if.then48

net2272_ep_read.exit111.cleanup_crit_edge:        ; preds = %net2272_ep_read.exit111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %net2272_ep_read.exit111
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %pagesel.i113 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %pagesel.i113 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pagesel.i113, align 4
  %conv.i114 = zext i8 %69 to i32
  %70 = ptrtoint ptr %num.i94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load.i116 = load i32, ptr %num.i94, align 4
  %bf.lshr.i117 = lshr i32 %bf.load.i116, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i117, i32 %conv.i114)
  %cmp.not.i118 = icmp eq i32 %bf.lshr.i117, %conv.i114
  br i1 %cmp.not.i118, label %if.then48.net2272_ep_read.exit132_crit_edge, label %if.then.i127

if.then48.net2272_ep_read.exit132_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit132

if.then.i127:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i119 = trunc i32 %bf.lshr.i117 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i120 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 12
  %71 = ptrtoint ptr %base_addr.i14.i.i120 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_addr.i14.i.i120, align 4
  %base_shift.i15.i.i121 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 11
  %73 = ptrtoint ptr %base_shift.i15.i.i121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base_shift.i15.i.i121, align 8
  %shl.i16.i.i122 = shl i32 4, %74
  %add.ptr.i17.i.i123 = getelementptr i16, ptr %72, i32 %shl.i16.i.i122
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i123, i8 %conv6.i119) #10, !srcloc !388
  %75 = ptrtoint ptr %num.i94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load8.i124 = load i32, ptr %num.i94, align 4
  %bf.lshr9.i125 = lshr i32 %bf.load8.i124, 24
  %conv10.i126 = trunc i32 %bf.lshr9.i125 to i8
  %76 = ptrtoint ptr %pagesel.i113 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv10.i126, ptr %pagesel.i113, align 4
  br label %net2272_ep_read.exit132

net2272_ep_read.exit132:                          ; preds = %if.then.i127, %if.then48.net2272_ep_read.exit132_crit_edge
  %base_addr.i16.i.i128 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 12
  %77 = ptrtoint ptr %base_addr.i16.i.i128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_addr.i16.i.i128, align 4
  %base_shift.i17.i.i129 = getelementptr inbounds %struct.net2272, ptr %67, i32 0, i32 11
  %79 = ptrtoint ptr %base_shift.i17.i.i129 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base_shift.i17.i.i129, align 8
  %shl.i18.i.i130 = shl i32 6, %80
  %add.ptr.i19.i.i131 = getelementptr i16, ptr %78, i32 %shl.i18.i.i130
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i131) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %cleanup

cleanup:                                          ; preds = %net2272_ep_read.exit132, %net2272_ep_read.exit111.cleanup_crit_edge, %if.then22
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %avail)
  %cmp = icmp ugt i32 %bf.cast, %avail
  %conv13 = zext i1 %cmp to i32
  ret i32 %conv13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assert_out_naking(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_read.exit_crit_edge, label %if.then.i

entry.net2272_ep_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %entry.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 6, %14
  %add.ptr.i19.i.i = getelementptr i16, ptr %12, i32 %shl.i18.i.i
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %net2272_ep_read.exit.if.end11_crit_edge

net2272_ep_read.exit.if.end11_crit_edge:          ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body:                                          ; preds = %net2272_ep_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @assert_out_naking.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@assert_out_naking, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !376

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %dev8 = getelementptr inbounds %struct.net2272, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @assert_out_naking.__UNIQUE_ID_ddebug246, ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef %21, ptr noundef nonnull @__func__.net2272_out_flush, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  %pagesel.i2 = getelementptr inbounds %struct.net2272, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %pagesel.i2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pagesel.i2, align 4
  %conv.i3 = zext i8 %25 to i32
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i5 = load i32, ptr %num.i, align 4
  %bf.lshr.i6 = lshr i32 %bf.load.i5, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i6, i32 %conv.i3)
  %cmp.not.i7 = icmp eq i32 %bf.lshr.i6, %conv.i3
  br i1 %cmp.not.i7, label %do.end.net2272_ep_write.exit_crit_edge, label %if.then.i16

do.end.net2272_ep_write.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i16:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i8 = trunc i32 %bf.lshr.i6 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i9 = getelementptr inbounds %struct.net2272, ptr %23, i32 0, i32 12
  %27 = ptrtoint ptr %base_addr.i14.i.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i14.i.i9, align 4
  %base_shift.i15.i.i10 = getelementptr inbounds %struct.net2272, ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %base_shift.i15.i.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_shift.i15.i.i10, align 8
  %shl.i16.i.i11 = shl i32 4, %30
  %add.ptr.i17.i.i12 = getelementptr i16, ptr %28, i32 %shl.i16.i.i11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i12, i8 %conv6.i8) #10, !srcloc !388
  %31 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load8.i13 = load i32, ptr %num.i, align 4
  %bf.lshr9.i14 = lshr i32 %bf.load8.i13, 24
  %conv10.i15 = trunc i32 %bf.lshr9.i14 to i8
  %32 = ptrtoint ptr %pagesel.i2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv10.i15, ptr %pagesel.i2, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i16, %do.end.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %23, i32 0, i32 12
  %33 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %23, i32 0, i32 11
  %35 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 15, %36
  %add.ptr.i17.i21.i = getelementptr i16, ptr %34, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  br label %if.end11

if.end11:                                         ; preds = %net2272_ep_write.exit, %net2272_ep_read.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_request_dma(ptr nocapture noundef %dev, i32 noundef %ep, i32 noundef %buf, i32 noundef %len, i32 noundef %dir) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_request_dma.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_request_dma, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_request_dma.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %ep, i32 noundef %buf, i32 noundef %len, i32 noundef %dir) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma_busy = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %dma_busy, align 8
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %len)
  %cmp8 = icmp ugt i32 %len, 16777216
  %or.cond = and i1 %cmp8, %cmp
  br i1 %or.cond, label %if.end7.return_crit_edge, label %if.end10

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10:                                         ; preds = %if.end7
  %bf.set = or i16 %bf.load, 128
  %4 = ptrtoint ptr %dma_busy to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %bf.set, ptr %dma_busy, align 8
  %dev_id = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %6)
  %cond = icmp eq i16 %6, -28588
  br i1 %cond, label %do.body14, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  tail call void @arm_heavy_mb() #10
  %7 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1104937472) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %add.ptr19 = getelementptr i8, ptr %11, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 4096) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf)
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 8
  %add.ptr23 = getelementptr i8, ptr %14, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %len)
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %15) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 %dir, 3
  %or = or i32 %shl, 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 8
  %add.ptr31 = getelementptr i8, ptr %20, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %18) #10, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !421
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 8
  %add.ptr35 = getelementptr i8, ptr %22, i32 104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %24 = or i32 %23, 1024
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 8
  %add.ptr41 = getelementptr i8, ptr %26, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %24) #10, !srcloc !381
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body14, %if.end10.sw.epilog_crit_edge
  %27 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load42 = load i16, ptr %dma_busy, align 8
  %28 = lshr i16 %bf.load42, 7
  %or5385 = and i16 %28, 14
  %or5986 = or i16 %or5385, 48
  %or59 = zext i16 %or5986 to i32
  %shr = lshr i32 %ep, 1
  %or61 = or i32 %shr, %or59
  %conv62 = trunc i32 %or61 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %29 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %31 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 28, %32
  %add.ptr.i17.i = getelementptr i16, ptr %30, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv62) #10, !srcloc !388
  %33 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i14.i, align 4
  %35 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i18.i = shl i32 29, %36
  %add.ptr.i19.i = getelementptr i16, ptr %34, i32 %shl.i18.i
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %return

return:                                           ; preds = %sw.epilog, %if.end7.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %do.end.return_crit_edge ], [ -22, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_write_packet(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %buf, ptr noundef %req, i32 noundef %max) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %base_shift.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %base_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_shift.i, align 8
  %shl.i = shl i32 5, %5
  %add.ptr.i = getelementptr i16, ptr %3, i32 %shl.i
  %length2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length2, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %sub = sub i32 %7, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %max)
  %add = add i32 %10, %9
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %actual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_write_packet.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_write_packet, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !376

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %19 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %20 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.then.net2272_ep_read.exit_crit_edge, label %if.then.i

if.then.net2272_ep_read.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 12
  %21 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 11
  %23 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %24
  %add.ptr.i17.i.i = getelementptr i16, ptr %22, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %26 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %if.then.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 12
  %27 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %13, i32 0, i32 11
  %29 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 13, %30
  %add.ptr.i19.i.i = getelementptr i16, ptr %28, i32 %shl.i18.i.i
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %pagesel.i71 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %pagesel.i71 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pagesel.i71, align 4
  %conv.i72 = zext i8 %35 to i32
  %36 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i74 = load i32, ptr %num.i, align 4
  %bf.lshr.i75 = lshr i32 %bf.load.i74, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i75, i32 %conv.i72)
  %cmp.not.i76 = icmp eq i32 %bf.lshr.i75, %conv.i72
  br i1 %cmp.not.i76, label %net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge, label %if.then.i85

net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit90

if.then.i85:                                      ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i77 = trunc i32 %bf.lshr.i75 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i78 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 12
  %37 = ptrtoint ptr %base_addr.i14.i.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i14.i.i78, align 4
  %base_shift.i15.i.i79 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 11
  %39 = ptrtoint ptr %base_shift.i15.i.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_shift.i15.i.i79, align 8
  %shl.i16.i.i80 = shl i32 4, %40
  %add.ptr.i17.i.i81 = getelementptr i16, ptr %38, i32 %shl.i16.i.i80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i81, i8 %conv6.i77) #10, !srcloc !388
  %41 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load8.i82 = load i32, ptr %num.i, align 4
  %bf.lshr9.i83 = lshr i32 %bf.load8.i82, 24
  %conv10.i84 = trunc i32 %bf.lshr9.i83 to i8
  %42 = ptrtoint ptr %pagesel.i71 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10.i84, ptr %pagesel.i71, align 4
  br label %net2272_ep_read.exit90

net2272_ep_read.exit90:                           ; preds = %if.then.i85, %net2272_ep_read.exit.net2272_ep_read.exit90_crit_edge
  %base_addr.i16.i.i86 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 12
  %43 = ptrtoint ptr %base_addr.i16.i.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_addr.i16.i.i86, align 4
  %base_shift.i17.i.i87 = getelementptr inbounds %struct.net2272, ptr %33, i32 0, i32 11
  %45 = ptrtoint ptr %base_shift.i17.i.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_shift.i17.i.i87, align 8
  %shl.i18.i.i88 = shl i32 12, %46
  %add.ptr.i19.i.i89 = getelementptr i16, ptr %44, i32 %shl.i18.i.i88
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i89) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv17 = zext i8 %47 to i32
  %or = or i32 %shl, %conv17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_write_packet.__UNIQUE_ID_ddebug252, ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef %17, ptr noundef %req, i32 noundef %max, i32 noundef %10, i32 noundef %or) #10
  br label %do.end

do.end:                                           ; preds = %net2272_ep_read.exit90, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1892 = icmp ugt i32 %10, 1
  br i1 %cmp1892, label %do.end.do.body26_crit_edge, label %do.end.while.end_crit_edge, !prof !408

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.do.body26_crit_edge:                       ; preds = %do.end
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.end.do.body26_crit_edge
  %bufp.094 = phi ptr [ %incdec.ptr, %do.body26.do.body26_crit_edge ], [ %buf, %do.end.do.body26_crit_edge ]
  %count.093 = phi i32 [ %sub29, %do.body26.do.body26_crit_edge ], [ %10, %do.end.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  tail call void @arm_heavy_mb() #10
  %incdec.ptr = getelementptr i16, ptr %bufp.094, i32 1
  %48 = ptrtoint ptr %bufp.094 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bufp.094, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %50) #10, !srcloc !424
  %sub29 = add i32 %count.093, -2
  %cmp18 = icmp ugt i32 %sub29, 1
  br i1 %cmp18, label %do.body26.do.body26_crit_edge, label %do.body26.while.end_crit_edge, !prof !408

do.body26.while.end_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

while.end:                                        ; preds = %do.body26.while.end_crit_edge, %do.end.while.end_crit_edge
  %count.0.lcssa = phi i32 [ %10, %do.end.while.end_crit_edge ], [ %sub29, %do.body26.while.end_crit_edge ]
  %bufp.0.lcssa = phi ptr [ %buf, %do.end.while.end_crit_edge ], [ %incdec.ptr, %do.body26.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool30.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool30.not, label %while.end.if.end47_crit_edge, label %if.then37, !prof !408

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %call39 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %52, i32 noundef 34)
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %55 = and i8 %call39, -2
  tail call fastcc void @net2272_write(ptr noundef %54, i32 noundef 34, i8 noundef zeroext %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %bufp.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bufp.0.lcssa, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %57) #10, !srcloc !388
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call fastcc void @net2272_write(ptr noundef %59, i32 noundef 34, i8 noundef zeroext %call39)
  br label %if.end47

if.end47:                                         ; preds = %if.then37, %while.end.if.end47_crit_edge
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_fifo_bytecount(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 10, %14
  %add.ptr.i17.i21.i = getelementptr i16, ptr %12, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 0) #10, !srcloc !388
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %pagesel.i2 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pagesel.i2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pagesel.i2, align 4
  %conv.i3 = zext i8 %18 to i32
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i5 = load i32, ptr %num.i, align 4
  %bf.lshr.i6 = lshr i32 %bf.load.i5, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i6, i32 %conv.i3)
  %cmp.not.i7 = icmp eq i32 %bf.lshr.i6, %conv.i3
  br i1 %cmp.not.i7, label %net2272_ep_write.exit.net2272_ep_write.exit21_crit_edge, label %if.then.i16

net2272_ep_write.exit.net2272_ep_write.exit21_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit21

if.then.i16:                                      ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i8 = trunc i32 %bf.lshr.i6 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i9 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %20 = ptrtoint ptr %base_addr.i14.i.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i14.i.i9, align 4
  %base_shift.i15.i.i10 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %22 = ptrtoint ptr %base_shift.i15.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_shift.i15.i.i10, align 8
  %shl.i16.i.i11 = shl i32 4, %23
  %add.ptr.i17.i.i12 = getelementptr i16, ptr %21, i32 %shl.i16.i.i11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i12, i8 %conv6.i8) #10, !srcloc !388
  %24 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load8.i13 = load i32, ptr %num.i, align 4
  %bf.lshr9.i14 = lshr i32 %bf.load8.i13, 24
  %conv10.i15 = trunc i32 %bf.lshr9.i14 to i8
  %25 = ptrtoint ptr %pagesel.i2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i15, ptr %pagesel.i2, align 4
  br label %net2272_ep_write.exit21

net2272_ep_write.exit21:                          ; preds = %if.then.i16, %net2272_ep_write.exit.net2272_ep_write.exit21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i17 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 12
  %26 = ptrtoint ptr %base_addr.i14.i18.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i14.i18.i17, align 4
  %base_shift.i15.i19.i18 = getelementptr inbounds %struct.net2272, ptr %16, i32 0, i32 11
  %28 = ptrtoint ptr %base_shift.i15.i19.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_shift.i15.i19.i18, align 8
  %shl.i16.i20.i19 = shl i32 9, %29
  %add.ptr.i17.i21.i20 = getelementptr i16, ptr %27, i32 %shl.i16.i20.i19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i20, i8 0) #10, !srcloc !388
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %pagesel.i23 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %pagesel.i23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pagesel.i23, align 4
  %conv.i24 = zext i8 %33 to i32
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i26 = load i32, ptr %num.i, align 4
  %bf.lshr.i27 = lshr i32 %bf.load.i26, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i27, i32 %conv.i24)
  %cmp.not.i28 = icmp eq i32 %bf.lshr.i27, %conv.i24
  br i1 %cmp.not.i28, label %net2272_ep_write.exit21.net2272_ep_write.exit42_crit_edge, label %if.then.i37

net2272_ep_write.exit21.net2272_ep_write.exit42_crit_edge: ; preds = %net2272_ep_write.exit21
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit42

if.then.i37:                                      ; preds = %net2272_ep_write.exit21
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i29 = trunc i32 %bf.lshr.i27 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i30 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %35 = ptrtoint ptr %base_addr.i14.i.i30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i14.i.i30, align 4
  %base_shift.i15.i.i31 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %37 = ptrtoint ptr %base_shift.i15.i.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_shift.i15.i.i31, align 8
  %shl.i16.i.i32 = shl i32 4, %38
  %add.ptr.i17.i.i33 = getelementptr i16, ptr %36, i32 %shl.i16.i.i32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i33, i8 %conv6.i29) #10, !srcloc !388
  %39 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load8.i34 = load i32, ptr %num.i, align 4
  %bf.lshr9.i35 = lshr i32 %bf.load8.i34, 24
  %conv10.i36 = trunc i32 %bf.lshr9.i35 to i8
  %40 = ptrtoint ptr %pagesel.i23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.i36, ptr %pagesel.i23, align 4
  br label %net2272_ep_write.exit42

net2272_ep_write.exit42:                          ; preds = %if.then.i37, %net2272_ep_write.exit21.net2272_ep_write.exit42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i38 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 12
  %41 = ptrtoint ptr %base_addr.i14.i18.i38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i14.i18.i38, align 4
  %base_shift.i15.i19.i39 = getelementptr inbounds %struct.net2272, ptr %31, i32 0, i32 11
  %43 = ptrtoint ptr %base_shift.i15.i19.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_shift.i15.i19.i39, align 8
  %shl.i16.i20.i40 = shl i32 8, %44
  %add.ptr.i17.i21.i41 = getelementptr i16, ptr %42, i32 %shl.i16.i20.i40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i41, i8 0) #10, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef %wedged) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  br i1 %tobool1.not, label %if.end7.do.body15_crit_edge, label %land.lhs.true10

if.end7.do.body15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

land.lhs.true10:                                  ; preds = %if.end7
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmAttributes.i, align 1
  %11 = and i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.not = icmp eq i8 %11, 1
  br i1 %cmp.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.do.body15_crit_edge

land.lhs.true10.do.body15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body15:                                        ; preds = %land.lhs.true10.do.body15_crit_edge, %if.end7.do.body15_crit_edge
  %lock = getelementptr inbounds %struct.net2272, ptr %4, i32 0, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 3
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue, align 4
  %cmp.i107.not = icmp eq ptr %13, %queue
  br i1 %cmp.i107.not, label %if.else, label %do.body15.if.end80_crit_edge

do.body15.if.end80_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.else:                                          ; preds = %do.body15
  %is_in = getelementptr inbounds %struct.net2272_ep, ptr %_ep, i32 0, i32 5
  %14 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load26 = load i32, ptr %is_in, align 4
  %15 = and i32 %bf.load26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool30.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool30.not, %tobool28.not
  br i1 %or.cond, label %if.else.do.body37_crit_edge, label %land.lhs.true31

if.else.do.body37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

land.lhs.true31:                                  ; preds = %if.else
  %call32 = tail call i32 @net2272_fifo_status(ptr noundef nonnull %_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %land.lhs.true31.do.body37_crit_edge, label %land.lhs.true31.if.end80_crit_edge

land.lhs.true31.if.end80_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true31.do.body37_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

do.body37:                                        ; preds = %land.lhs.true31.do.body37_crit_edge, %if.else.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_set_halt_and_wedge.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_set_halt_and_wedge, %do.end52)) #10
          to label %if.then44 [label %do.end52], !srcloc !376

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev46 = getelementptr inbounds %struct.net2272, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev46, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %cond = select i1 %tobool30.not, ptr @.str.48, ptr @.str.47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedged)
  %tobool48.not = icmp eq i32 %wedged, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_set_halt_and_wedge.__UNIQUE_ID_ddebug262, ptr noundef %19, ptr noundef nonnull @.str.46, ptr noundef %21, ptr noundef nonnull %cond, ptr noundef nonnull %cond49) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then44, %do.body37
  br i1 %tobool30.not, label %if.else73, label %if.then54

if.then54:                                        ; preds = %do.end52
  %22 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load56 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load56)
  %cmp58 = icmp ult i32 %bf.load56, 16777216
  br i1 %cmp58, label %if.then60, label %if.else64

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %protocol_stall = getelementptr inbounds %struct.net2272, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load62 = load i16, ptr %protocol_stall, align 8
  %bf.set = or i16 %bf.load62, -32768
  store i16 %bf.set, ptr %protocol_stall, align 8
  br label %if.end65

if.else64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @set_halt(ptr noundef nonnull %_ep)
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedged)
  %tobool66.not = icmp eq i32 %wedged, 0
  br i1 %tobool66.not, label %if.end65.if.end80_crit_edge, label %if.then67

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load69 = load i32, ptr %is_in, align 4
  %bf.set71 = or i32 %bf.load69, 1024
  br label %if.end80.sink.split

if.else73:                                        ; preds = %do.end52
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %pagesel.i.i = getelementptr inbounds %struct.net2272, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pagesel.i.i, align 4
  %conv.i.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i.i = load i32, ptr %is_in, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %bf.lshr.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.else73.clear_halt.exit_crit_edge, label %if.then.i.i

if.else73.clear_halt.exit_crit_edge:              ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_halt.exit

if.then.i.i:                                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i.i = trunc i32 %bf.lshr.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i.i = getelementptr inbounds %struct.net2272, ptr %28, i32 0, i32 12
  %32 = ptrtoint ptr %base_addr.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i14.i.i.i, align 4
  %base_shift.i15.i.i.i = getelementptr inbounds %struct.net2272, ptr %28, i32 0, i32 11
  %34 = ptrtoint ptr %base_shift.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_shift.i15.i.i.i, align 8
  %shl.i16.i.i.i = shl i32 4, %35
  %add.ptr.i17.i.i.i = getelementptr i16, ptr %33, i32 %shl.i16.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i.i, i8 %conv6.i.i) #10, !srcloc !388
  %36 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load8.i.i = load i32, ptr %is_in, align 4
  %bf.lshr9.i.i = lshr i32 %bf.load8.i.i, 24
  %conv10.i.i = trunc i32 %bf.lshr9.i.i to i8
  %37 = ptrtoint ptr %pagesel.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.i.i, ptr %pagesel.i.i, align 4
  br label %clear_halt.exit

clear_halt.exit:                                  ; preds = %if.then.i.i, %if.else73.clear_halt.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i.i = getelementptr inbounds %struct.net2272, ptr %28, i32 0, i32 12
  %38 = ptrtoint ptr %base_addr.i14.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i14.i18.i.i, align 4
  %base_shift.i15.i19.i.i = getelementptr inbounds %struct.net2272, ptr %28, i32 0, i32 11
  %40 = ptrtoint ptr %base_shift.i15.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_shift.i15.i19.i.i, align 8
  %shl.i16.i20.i.i = shl i32 14, %41
  %add.ptr.i17.i21.i.i = getelementptr i16, ptr %39, i32 %shl.i16.i20.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i.i, i8 3) #10, !srcloc !388
  %42 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load75 = load i32, ptr %is_in, align 4
  %bf.clear76 = and i32 %bf.load75, -1025
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %clear_halt.exit, %if.then67
  %bf.set71.sink = phi i32 [ %bf.set71, %if.then67 ], [ %bf.clear76, %clear_halt.exit ]
  %43 = ptrtoint ptr %is_in to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.set71.sink, ptr %is_in, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %if.end65.if.end80_crit_edge, %land.lhs.true31.if.end80_crit_edge, %do.body15.if.end80_crit_edge
  %ret.0 = phi i32 [ 0, %if.end65.if.end80_crit_edge ], [ -11, %do.body15.if.end80_crit_edge ], [ -11, %land.lhs.true31.if.end80_crit_edge ], [ 0, %if.end80.sink.split ]
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %lock82 = getelementptr inbounds %struct.net2272, ptr %45, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock82, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %land.lhs.true10.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end80 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %lor.lhs.false3.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_halt(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_write.exit_crit_edge, label %if.then.i

entry.net2272_ep_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i, %entry.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 14, %14
  %add.ptr.i17.i21.i = getelementptr i16, ptr %12, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 3) #10, !srcloc !388
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2272_present(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 29, %3
  %add.ptr.i19.i = getelementptr i16, ptr %1, i32 %shl.i18.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ii.0192 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %ii.0192 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i16.i, align 4
  %7 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i16.i = shl i32 29, %8
  %add.ptr.i17.i = getelementptr i16, ptr %6, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv) #10, !srcloc !388
  %9 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr.i16.i, align 4
  %11 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i163 = shl i32 29, %12
  %add.ptr.i19.i164 = getelementptr i16, ptr %10, i32 %shl.i18.i163
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i164) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv2 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ii.0192, i32 %conv2)
  %cmp3.not = icmp eq i32 %ii.0192, %conv2
  br i1 %cmp3.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_present.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_present, %cleanup)) #10
          to label %if.then9 [label %cleanup], !srcloc !376

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_present.__UNIQUE_ID_ddebug280, ptr noundef %15, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %ii.0192, i32 noundef %conv2) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add = add nuw nsw i32 %ii.0192, 7
  %cmp = icmp ult i32 %ii.0192, 249
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i16.i, align 4
  %18 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i16.i167 = shl i32 29, %19
  %add.ptr.i17.i168 = getelementptr i16, ptr %17, i32 %shl.i16.i167
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i168, i8 %4) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i16.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 37) #10, !srcloc !388
  %22 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i16.i, align 4
  %24 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i.i = shl nuw i32 1, %25
  %add.ptr.i.i = getelementptr i16, ptr %23, i32 %shl.i.i
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  br label %for.body17

for.body17:                                       ; preds = %for.inc47.for.body17_crit_edge, %for.end
  %ii.1193 = phi i32 [ 0, %for.end ], [ %add48, %for.inc47.for.body17_crit_edge ]
  %conv18 = trunc i32 %ii.1193 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i16.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 37) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i16.i, align 4
  %31 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i.i171 = shl nuw i32 1, %32
  %add.ptr.i.i172 = getelementptr i16, ptr %30, i32 %shl.i.i171
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i172, i8 %conv18) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i16.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 37) #10, !srcloc !388
  %35 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i16.i, align 4
  %37 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i.i175 = shl nuw i32 1, %38
  %add.ptr.i.i176 = getelementptr i16, ptr %36, i32 %shl.i.i175
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i176) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %26)
  %cmp22.not = icmp eq i8 %39, %26
  br i1 %cmp22.not, label %for.inc47, label %do.body25

do.body25:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_present.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_present, %cleanup)) #10
          to label %if.then39 [label %cleanup], !srcloc !376

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %conv21.le = zext i8 %26 to i32
  %conv20.le = zext i8 %39 to i32
  %dev40 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_present.__UNIQUE_ID_ddebug281, ptr noundef %41, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %ii.1193, i32 noundef %conv20.le, i32 noundef %conv21.le) #10
  br label %cleanup

for.inc47:                                        ; preds = %for.body17
  %add48 = add nuw nsw i32 %ii.1193, 7
  %cmp15 = icmp ult i32 %ii.1193, 249
  br i1 %cmp15, label %for.inc47.for.body17_crit_edge, label %for.end49

for.inc47.for.body17_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end49:                                        ; preds = %for.inc47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i16.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 35) #10, !srcloc !388
  %44 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i16.i, align 4
  %46 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i.i179 = shl nuw i32 1, %47
  %add.ptr.i.i180 = getelementptr i16, ptr %45, i32 %shl.i.i179
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i180) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv51 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %48)
  %cmp52.not = icmp eq i8 %48, 64
  br i1 %cmp52.not, label %if.end75, label %do.body55

do.body55:                                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_present.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_present, %cleanup)) #10
          to label %if.then69 [label %cleanup], !srcloc !376

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %dev70 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %49 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev70, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_present.__UNIQUE_ID_ddebug282, ptr noundef %50, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72, i32 noundef 64, i32 noundef %conv51) #10
  br label %cleanup

if.end75:                                         ; preds = %for.end49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr.i16.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 37) #10, !srcloc !388
  %53 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i16.i, align 4
  %55 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i.i183 = shl nuw i32 1, %56
  %add.ptr.i.i184 = getelementptr i16, ptr %54, i32 %shl.i.i183
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i184) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv77 = zext i8 %57 to i32
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %57, label %do.body97 [
    i8 16, label %do.body78
    i8 17, label %if.end75.cleanup_crit_edge
  ]

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_present.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_present, %cleanup)) #10
          to label %if.then92 [label %cleanup], !srcloc !376

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %dev93 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %59 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev93, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_present.__UNIQUE_ID_ddebug283, ptr noundef %60, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.72) #10
  br label %cleanup

do.body97:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_present.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_present, %cleanup)) #10
          to label %if.then111 [label %cleanup], !srcloc !376

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %dev112 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %61 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev112, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_present.__UNIQUE_ID_ddebug284, ptr noundef %62, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef %conv77) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %do.body97, %if.then92, %do.body78, %if.end75.cleanup_crit_edge, %if.then69, %do.body55, %if.then39, %do.body25, %if.then9, %do.body
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then39 ], [ -22, %if.then69 ], [ 0, %if.then111 ], [ 0, %if.then92 ], [ 0, %if.end75.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body25 ], [ -22, %do.body55 ], [ 0, %do.body78 ], [ 0, %do.body97 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_irq(i32 noundef %irq, ptr noundef %_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net2272, ptr %_dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %_dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %_dev, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 3, %3
  %add.ptr.i19.i = getelementptr i16, ptr %1, i32 %shl.i18.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call fastcc void @net2272_handle_stat1_irqs(ptr noundef %_dev, i8 noundef zeroext %4)
  %5 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i16.i, align 4
  %7 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i10 = shl i32 2, %8
  %add.ptr.i19.i11 = getelementptr i16, ptr %6, i32 %shl.i18.i10
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i11) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call fastcc void @net2272_handle_stat0_irqs(ptr noundef %_dev, i8 noundef zeroext %9)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_handle_stat1_irqs(ptr noundef %dev, i8 noundef zeroext %stat) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %stat to i32
  %and = and i32 %conv, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end85_crit_edge, label %if.then

entry.if.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 3, %3
  %add.ptr.i17.i = getelementptr i16, ptr %1, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 68) #10, !srcloc !388
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %and5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then3.if.else_crit_edge, label %land.lhs.true

if.then3.if.else_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then3
  %6 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i14.i, align 4
  %8 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i18.i = shl i32 25, %9
  %add.ptr.i19.i = getelementptr i16, ptr %7, i32 %shl.i18.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp9 = icmp eq i8 %11, 0
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat1_irqs, %if.then60)) #10
          to label %if.then18 [label %if.then60], !srcloc !376

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev19, align 8
  %driver = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %driver20 = getelementptr inbounds %struct.usb_gadget_driver, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %driver20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug276, ptr noundef %13, ptr noundef nonnull @.str.79, ptr noundef %17) #10
  br label %if.then60

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then3.if.else_crit_edge
  %and22 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else.cleanup_crit_edge, label %land.lhs.true24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.else
  %18 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i14.i, align 4
  %20 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i18.i250 = shl i32 25, %21
  %add.ptr.i19.i251 = getelementptr i16, ptr %19, i32 %shl.i18.i250
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i251) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %23 = and i8 %22, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp29 = icmp eq i8 %23, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat1_irqs, %if.then60)) #10
          to label %if.then46 [label %if.then60], !srcloc !376

if.then46:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %dev47 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev47, align 8
  %driver48 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %driver48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver48, align 4
  %driver49 = getelementptr inbounds %struct.usb_gadget_driver, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %driver49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug277, ptr noundef %25, ptr noundef nonnull @.str.80, ptr noundef %29) #10
  br label %if.then60

if.then60:                                        ; preds = %if.then46, %if.then31, %if.then18, %if.then11
  %reset.0.off0265 = phi i1 [ true, %if.then46 ], [ false, %if.then18 ], [ false, %if.then11 ], [ true, %if.then31 ]
  %driver61 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %30 = ptrtoint ptr %driver61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver61, align 4
  tail call fastcc void @stop_activity(ptr noundef %dev, ptr noundef %31)
  tail call fastcc void @net2272_ep0_start(ptr noundef %dev)
  %async_callbacks = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %32 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %33 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool62.not = icmp eq i16 %33, 0
  br i1 %tobool62.not, label %if.then60.cleanup186_crit_edge, label %if.then63

if.then60.cleanup186_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.then63:                                        ; preds = %if.then60
  %lock = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %34 = ptrtoint ptr %driver61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver61, align 4
  br i1 %reset.0.off0265, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_gadget_udc_reset(ptr noundef %dev, ptr noundef %35) #10
  br label %if.end72

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %disconnect70 = getelementptr inbounds %struct.usb_gadget_driver, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %disconnect70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disconnect70, align 4
  tail call void %37(ptr noundef %dev) #10
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then65
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %cleanup186

cleanup:                                          ; preds = %land.lhs.true24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %and79 = and i8 %stat, -69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and79)
  %tobool81.not.not = icmp eq i8 %and79, 0
  br i1 %tobool81.not.not, label %cleanup.cleanup186_crit_edge, label %cleanup.if.end85_crit_edge

cleanup.cleanup186_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

cleanup.if.end85_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i8 %and79 to i32
  br label %if.end85

if.end85:                                         ; preds = %cleanup.if.end85_crit_edge, %entry.if.end85_crit_edge
  %conv86.pre-phi = phi i32 [ %.pre, %cleanup.if.end85_crit_edge ], [ %conv, %entry.if.end85_crit_edge ]
  %stat.addr.1 = phi i8 [ %and79, %cleanup.if.end85_crit_edge ], [ %stat, %entry.if.end85_crit_edge ]
  %and88 = and i32 %conv86.pre-phi, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end85.if.end155_crit_edge, label %if.then90

if.end85.if.end155_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then90:                                        ; preds = %if.end85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i252 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %38 = ptrtoint ptr %base_addr.i14.i252 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i14.i252, align 4
  %base_shift.i15.i253 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %40 = ptrtoint ptr %base_shift.i15.i253 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_shift.i15.i253, align 8
  %shl.i16.i254 = shl i32 3, %41
  %add.ptr.i17.i255 = getelementptr i16, ptr %39, i32 %shl.i16.i254
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i255, i8 16) #10, !srcloc !388
  %and92 = and i32 %conv86.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %async_callbacks135 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %42 = ptrtoint ptr %async_callbacks135 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load136 = load i16, ptr %async_callbacks135, align 8
  %43 = and i16 %bf.load136, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool140.not = icmp eq i16 %43, 0
  br i1 %tobool93.not, label %if.else134, label %if.then94

if.then94:                                        ; preds = %if.then90
  br i1 %tobool140.not, label %if.then94.if.end108_crit_edge, label %land.lhs.true101

if.then94.if.end108_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true101:                                 ; preds = %if.then94
  %driver102 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %44 = ptrtoint ptr %driver102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver102, align 4
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %suspend, align 4
  %tobool103.not = icmp eq ptr %47, null
  br i1 %tobool103.not, label %land.lhs.true101.if.end108_crit_edge, label %if.then104

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %47(ptr noundef %dev) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true101.if.end108_crit_edge, %if.then94.if.end108_crit_edge
  %48 = load i16, ptr @enable_suspend, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool109.not = icmp eq i16 %48, 0
  br i1 %tobool109.not, label %if.then110, label %if.end108.if.end149_crit_edge

if.end108.if.end149_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %and112 = and i8 %stat.addr.1, -9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat1_irqs, %if.end149)) #10
          to label %if.then128 [label %if.end149], !srcloc !376

if.then128:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  %dev129 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %49 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev129, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug278, ptr noundef %50, ptr noundef nonnull @.str.81) #10
  br label %if.end149

if.else134:                                       ; preds = %if.then90
  br i1 %tobool140.not, label %if.else134.if.end149_crit_edge, label %land.lhs.true141

if.else134.if.end149_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

land.lhs.true141:                                 ; preds = %if.else134
  %driver142 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %51 = ptrtoint ptr %driver142 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver142, align 4
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resume, align 4
  %tobool143.not = icmp eq ptr %54, null
  br i1 %tobool143.not, label %land.lhs.true141.if.end149_crit_edge, label %if.then144

land.lhs.true141.if.end149_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then144:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %54(ptr noundef %dev) #10
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %land.lhs.true141.if.end149_crit_edge, %if.else134.if.end149_crit_edge, %if.then128, %if.then110, %if.end108.if.end149_crit_edge
  %stat.addr.2 = phi i8 [ %stat.addr.1, %if.end108.if.end149_crit_edge ], [ %and112, %if.then128 ], [ %stat.addr.1, %if.then144 ], [ %stat.addr.1, %land.lhs.true141.if.end149_crit_edge ], [ %stat.addr.1, %if.else134.if.end149_crit_edge ], [ %and112, %if.then110 ]
  %55 = and i8 %stat.addr.2, -17
  br label %if.end155

if.end155:                                        ; preds = %if.end149, %if.end85.if.end155_crit_edge
  %stat.addr.3 = phi i8 [ %55, %if.end149 ], [ %stat.addr.1, %if.end85.if.end155_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %stat.addr.3)
  %tobool156.not = icmp eq i8 %stat.addr.3, 0
  br i1 %tobool156.not, label %if.end155.cleanup186_crit_edge, label %if.end158

if.end155.cleanup186_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

if.end158:                                        ; preds = %if.end155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i256 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %56 = ptrtoint ptr %base_addr.i14.i256 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i14.i256, align 4
  %base_shift.i15.i257 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %58 = ptrtoint ptr %base_shift.i15.i257 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_shift.i15.i257, align 8
  %shl.i16.i258 = shl i32 3, %59
  %add.ptr.i17.i259 = getelementptr i16, ptr %57, i32 %shl.i16.i258
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i259, i8 %stat.addr.3) #10, !srcloc !388
  %60 = and i8 %stat.addr.3, -43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool162.not = icmp eq i8 %60, 0
  br i1 %tobool162.not, label %if.end158.cleanup186_crit_edge, label %do.body165

if.end158.cleanup186_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup186

do.body165:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat1_irqs, %cleanup186)) #10
          to label %if.then179 [label %cleanup186], !srcloc !376

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #12
  %dev180 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %61 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev180, align 8
  %conv181 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug279, ptr noundef %62, ptr noundef nonnull @.str.82, i32 noundef %conv181) #10
  br label %cleanup186

cleanup186:                                       ; preds = %if.then179, %do.body165, %if.end158.cleanup186_crit_edge, %if.end155.cleanup186_crit_edge, %cleanup.cleanup186_crit_edge, %if.end72, %if.then60.cleanup186_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_handle_stat0_irqs(ptr noundef %dev, i8 noundef zeroext %stat) unnamed_addr #3 align 64 {
entry:
  %u = alloca %union.anon.76, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %stat to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else452, label %if.then, !prof !408

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u) #10
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 3
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 25, %9
  %add.ptr.i19.i = getelementptr i16, ptr %7, i32 %shl.i18.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  %. = select i1 %tobool7.not, i32 2, i32 3
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %speed, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %if.end30)) #10
          to label %if.then24 [label %if.end30], !srcloc !376

if.then24:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev25, align 8
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %call28 = tail call ptr @usb_speed_string(i32 noundef %16) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug265, ptr noundef %14, ptr noundef nonnull @.str.64, ptr noundef %call28) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then4, %if.then.if.end30_crit_edge
  %ep31 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4
  %irqs = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqs, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %irqs, align 4
  %and33 = and i8 %stat, -2
  %queue = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 3
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not722 = icmp eq ptr %20, %queue
  br i1 %cmp.i.not722, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end30.while.body_crit_edge
  %21 = phi ptr [ %27, %while.body.while.body_crit_edge ], [ %20, %if.end30.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %21, i32 -56
  %actual = getelementptr i8, ptr %21, i32 -4
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  %length = getelementptr i8, ptr %21, i32 -52
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp43 = icmp eq i32 %23, %25
  %cond = select i1 %cmp43, i32 0, i32 -71
  tail call fastcc void @net2272_done(ptr noundef %ep31, ptr noundef %add.ptr, i32 noundef %cond)
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %27, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end30.while.end_crit_edge
  %stopped = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 5
  %28 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %stopped, align 4
  %bf.clear = and i32 %bf.load, -2049
  store i32 %bf.clear, ptr %stopped, align 4
  %protocol_stall = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %29 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load45 = load i16, ptr %protocol_stall, align 8
  %bf.clear46 = and i16 %bf.load45, 32767
  store i16 %bf.clear46, ptr %protocol_stall, align 8
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 6, i8 noundef zeroext 31)
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 7, i8 noundef zeroext 127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %30 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %32 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 4, %33
  %add.ptr.i17.i = getelementptr i16, ptr %31, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr.i14.i, align 4
  %36 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i666 = shl i32 10, %37
  %add.ptr.i17.i667 = getelementptr i16, ptr %35, i32 %shl.i16.i666
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i667, i8 -1) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i14.i, align 4
  %40 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i670 = shl i32 9, %41
  %add.ptr.i17.i671 = getelementptr i16, ptr %39, i32 %shl.i16.i670
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i671, i8 -1) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i14.i, align 4
  %44 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i674 = shl i32 8, %45
  %add.ptr.i17.i675 = getelementptr i16, ptr %43, i32 %shl.i16.i674
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i675, i8 -1) #10, !srcloc !388
  %call48 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 64)
  %46 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call48, ptr %u, align 1
  %call50 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 65)
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call50, ptr %0, align 1
  %call52 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 66)
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call52, ptr %1, align 1
  %call54 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 67)
  %arrayidx55 = getelementptr inbounds [8 x i8], ptr %u, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call54, ptr %arrayidx55, align 1
  %call56 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 68)
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %call56, ptr %2, align 1
  %call58 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 69)
  %arrayidx59 = getelementptr inbounds [8 x i8], ptr %u, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call58, ptr %arrayidx59, align 1
  %call60 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 70)
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call60, ptr %3, align 1
  %call62 = tail call fastcc zeroext i8 @net2272_read(ptr noundef %dev, i32 noundef 71)
  %arrayidx63 = getelementptr inbounds [8 x i8], ptr %u, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %call62, ptr %arrayidx63, align 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %1, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %1, align 2
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %2, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #10
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %2, align 2
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %3, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #10
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %3, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i14.i, align 4
  %68 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i678 = shl i32 2, %69
  %add.ptr.i17.i679 = getelementptr i16, ptr %67, i32 %shl.i16.i678
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i679, i8 32) #10, !srcloc !388
  %70 = xor i8 %and33, 32
  %.lobit = lshr i8 %call48, 7
  %71 = zext i8 %.lobit to i32
  %72 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load70 = load i32, ptr %stopped, align 4
  %bf.shl = shl nuw nsw i32 %71, 9
  %bf.clear71 = and i32 %bf.load70, -513
  %bf.set72 = or i32 %bf.shl, %bf.clear71
  store i32 %bf.set72, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call48)
  %tobool76.not = icmp sgt i8 %call48, -1
  br i1 %tobool76.not, label %while.end.if.end79_crit_edge, label %if.then77

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then77:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stop_out_naking(ptr noundef %ep31)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %while.end.if.end79_crit_edge
  %scratch.0 = phi i8 [ 7, %if.then77 ], [ 11, %while.end.if.end79_crit_edge ]
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 11, i8 noundef zeroext %scratch.0)
  %73 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %u, align 1
  %conv81 = zext i8 %74 to i32
  %and82 = and i32 %conv81, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83.not = icmp eq i32 %and82, 0
  br i1 %cmp83.not, label %if.end86, label %if.end79.do.body378_crit_edge

if.end79.do.body378_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body378

if.end86:                                         ; preds = %if.end79
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %0, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %76, label %if.end86.do.body378_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb215
    i8 3, label %sw.bb289
    i8 5, label %sw.bb371
  ]

if.end86.do.body378_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body378

sw.bb:                                            ; preds = %if.end86
  %and90 = and i32 %conv81, 31
  %78 = zext i32 %and90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %and90, label %sw.bb.cleanup448_crit_edge [
    i32 2, label %sw.bb91
    i32 0, label %sw.bb137
    i32 1, label %sw.bb179
  ]

sw.bb.cleanup448_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup448

sw.bb91:                                          ; preds = %sw.bb
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %2, align 1
  %call93 = tail call fastcc ptr @net2272_get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %80)
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %sw.bb91.do.body420_crit_edge, label %lor.lhs.false

sw.bb91.do.body420_crit_edge:                     ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

lor.lhs.false:                                    ; preds = %sw.bb91
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %cmp97 = icmp ugt i16 %82, 2
  br i1 %cmp97, label %lor.lhs.false.do.body420_crit_edge, label %if.end100

lor.lhs.false.do.body420_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end100:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef nonnull %call93, i32 noundef 15)
  %83 = and i8 %call101, 1
  %84 = zext i8 %83 to i16
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 11, i8 noundef zeroext 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !426
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base_addr.i14.i, align 4
  %87 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i = shl i32 5, %88
  %add.ptr.i = getelementptr i16, ptr %86, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %84) #10, !srcloc !424
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep31)
  tail call fastcc void @allow_status(ptr noundef %ep31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup448)) #10
          to label %if.then130 [label %cleanup448], !srcloc !376

if.then130:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %89 = shl nuw nsw i16 %84, 8
  %dev131 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %90 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev131, align 8
  %name = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name, align 4
  %conv133 = zext i16 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug266, ptr noundef %91, ptr noundef nonnull @.str.84, ptr noundef %93, i32 noundef %conv133) #10
  br label %cleanup448

sw.bb137:                                         ; preds = %sw.bb
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %95)
  %cmp140 = icmp ugt i16 %95, 2
  br i1 %cmp140, label %sw.bb137.do.body420_crit_edge, label %if.end143

sw.bb137.do.body420_crit_edge:                    ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end143:                                        ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #12
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 17
  %96 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load145 = load i32, ptr %is_selfpowered, align 4
  %97 = lshr i32 %bf.load145, 18
  %98 = trunc i32 %97 to i16
  %99 = and i16 %98, 1
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 11, i8 noundef zeroext 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @arm_heavy_mb() #10
  %100 = shl nuw nsw i16 %99, 8
  %101 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_addr.i14.i, align 4
  %103 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i682 = shl i32 5, %104
  %add.ptr.i683 = getelementptr i16, ptr %102, i32 %shl.i682
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i683, i16 %100) #10, !srcloc !424
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep31)
  tail call fastcc void @allow_status(ptr noundef %ep31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup448)) #10
          to label %if.then173 [label %cleanup448], !srcloc !376

if.then173:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %dev174 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %105 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev174, align 8
  %conv175 = zext i16 %99 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug267, ptr noundef %106, ptr noundef nonnull @.str.85, i32 noundef %conv175) #10
  br label %cleanup448

sw.bb179:                                         ; preds = %sw.bb
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %108)
  %cmp182 = icmp ugt i16 %108, 2
  br i1 %cmp182, label %sw.bb179.do.body420_crit_edge, label %if.end185

sw.bb179.do.body420_crit_edge:                    ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end185:                                        ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @net2272_ep_write(ptr noundef %ep31, i32 noundef 11, i8 noundef zeroext 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !428
  tail call void @arm_heavy_mb() #10
  %109 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base_addr.i14.i, align 4
  %111 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i686 = shl i32 5, %112
  %add.ptr.i687 = getelementptr i16, ptr %110, i32 %shl.i686
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i687, i16 0) #10, !srcloc !424
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep31)
  tail call fastcc void @allow_status(ptr noundef %ep31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup448)) #10
          to label %if.then208 [label %cleanup448], !srcloc !376

if.then208:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %dev209 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %113 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev209, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug268, ptr noundef %114, ptr noundef nonnull @.str.86, i32 noundef 0) #10
  br label %cleanup448

sw.bb215:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp219.not = icmp eq i8 %74, 2
  br i1 %cmp219.not, label %if.end222, label %sw.bb215.do.body378_crit_edge

sw.bb215.do.body378_crit_edge:                    ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body378

if.end222:                                        ; preds = %sw.bb215
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp225.not = icmp eq i16 %116, 0
  br i1 %cmp225.not, label %lor.lhs.false227, label %if.end222.do.body420_crit_edge

if.end222.do.body420_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

lor.lhs.false227:                                 ; preds = %if.end222
  %117 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %cmp230.not = icmp eq i16 %118, 0
  br i1 %cmp230.not, label %if.end233, label %lor.lhs.false227.do.body420_crit_edge

lor.lhs.false227.do.body420_crit_edge:            ; preds = %lor.lhs.false227
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end233:                                        ; preds = %lor.lhs.false227
  %119 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %2, align 1
  %call235 = tail call fastcc ptr @net2272_get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %120)
  %tobool236.not = icmp eq ptr %call235, null
  br i1 %tobool236.not, label %if.end233.do.body420_crit_edge, label %if.end238

if.end233.do.body420_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end238:                                        ; preds = %if.end233
  %wedged = getelementptr inbounds %struct.net2272_ep, ptr %call235, i32 0, i32 5
  %121 = ptrtoint ptr %wedged to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load239 = load i32, ptr %wedged, align 4
  %122 = and i32 %bf.load239, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool242.not = icmp eq i32 %122, 0
  br i1 %tobool242.not, label %do.body266, label %do.body244

do.body244:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup288.thread708)) #10
          to label %if.then258 [label %cleanup288.thread708], !srcloc !376

if.then258:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #12
  %dev259 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %123 = ptrtoint ptr %dev259 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev259, align 8
  %name261 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %name261 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name261, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug269, ptr noundef %124, ptr noundef nonnull @.str.87, ptr noundef %126) #10
  br label %cleanup288.thread708

do.body266:                                       ; preds = %if.end238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %do.end286)) #10
          to label %if.then280 [label %do.end286], !srcloc !376

if.then280:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #12
  %dev281 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %127 = ptrtoint ptr %dev281 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev281, align 8
  %name283 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 1
  %129 = ptrtoint ptr %name283 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name283, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug270, ptr noundef %128, ptr noundef nonnull @.str.88, ptr noundef %130) #10
  br label %do.end286

do.end286:                                        ; preds = %if.then280, %do.body266
  tail call fastcc void @clear_halt(ptr noundef nonnull %call235)
  br label %cleanup288.thread708

cleanup288.thread708:                             ; preds = %do.end286, %if.then258, %do.body244
  tail call fastcc void @allow_status(ptr noundef %ep31)
  br label %cleanup448

sw.bb289:                                         ; preds = %if.end86
  %131 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %74, label %sw.bb289.do.body378_crit_edge [
    i8 0, label %if.then295
    i8 2, label %if.end332
  ]

sw.bb289.do.body378_crit_edge:                    ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body378

if.then295:                                       ; preds = %sw.bb289
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp298.not = icmp eq i16 %133, 0
  br i1 %cmp298.not, label %if.then295.if.end303_crit_edge, label %if.then300

if.then295.if.end303_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end303

if.then300:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #12
  %134 = lshr i16 %133, 8
  %135 = zext i16 %134 to i32
  tail call fastcc void @net2272_set_test_mode(ptr noundef %dev, i32 noundef %135)
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %if.then295.if.end303_crit_edge
  tail call fastcc void @allow_status(ptr noundef %ep31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup448)) #10
          to label %if.then318 [label %cleanup448], !srcloc !376

if.then318:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  %dev319 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %136 = ptrtoint ptr %dev319 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev319, align 8
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %2, align 1
  %conv321 = zext i16 %139 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug271, ptr noundef %137, ptr noundef nonnull @.str.89, i32 noundef %conv321) #10
  br label %cleanup448

if.end332:                                        ; preds = %sw.bb289
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp335.not = icmp eq i16 %141, 0
  br i1 %cmp335.not, label %lor.lhs.false337, label %if.end332.do.body420_crit_edge

if.end332.do.body420_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

lor.lhs.false337:                                 ; preds = %if.end332
  %142 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp340.not = icmp eq i16 %143, 0
  br i1 %cmp340.not, label %if.end343, label %lor.lhs.false337.do.body420_crit_edge

lor.lhs.false337.do.body420_crit_edge:            ; preds = %lor.lhs.false337
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end343:                                        ; preds = %lor.lhs.false337
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %2, align 1
  %call345 = tail call fastcc ptr @net2272_get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %145)
  %tobool346.not = icmp eq ptr %call345, null
  br i1 %tobool346.not, label %if.end343.do.body420_crit_edge, label %if.end348

if.end343.do.body420_crit_edge:                   ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

if.end348:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @set_halt(ptr noundef nonnull %call345)
  tail call fastcc void @allow_status(ptr noundef %ep31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %cleanup448)) #10
          to label %if.then363 [label %cleanup448], !srcloc !376

if.then363:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #12
  %dev364 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %146 = ptrtoint ptr %dev364 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev364, align 8
  %name366 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %name366 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name366, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug272, ptr noundef %147, ptr noundef nonnull @.str.90, ptr noundef %149) #10
  br label %cleanup448

sw.bb371:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %1, align 1
  %conv375 = trunc i16 %151 to i8
  tail call fastcc void @net2272_write(ptr noundef %dev, i32 noundef 48, i8 noundef zeroext %conv375)
  tail call fastcc void @allow_status(ptr noundef %ep31)
  br label %cleanup448

do.body378:                                       ; preds = %sw.bb289.do.body378_crit_edge, %sw.bb215.do.body378_crit_edge, %if.end86.do.body378_crit_edge, %if.end79.do.body378_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %do.end406)) #10
          to label %if.then392 [label %do.end406], !srcloc !376

if.then392:                                       ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #12
  %dev393 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %152 = ptrtoint ptr %dev393 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev393, align 8
  %154 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %u, align 1
  %conv395 = zext i8 %155 to i32
  %156 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %0, align 1
  %conv397 = zext i8 %157 to i32
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %1, align 1
  %conv399 = zext i16 %159 to i32
  %160 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %2, align 1
  %conv401 = zext i16 %161 to i32
  %call402 = tail call fastcc zeroext i8 @net2272_ep_read(ptr noundef %ep31, i32 noundef 42)
  %conv403 = zext i8 %call402 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug273, ptr noundef %153, ptr noundef nonnull @.str.91, i32 noundef %conv395, i32 noundef %conv397, i32 noundef %conv399, i32 noundef %conv401, i32 noundef %conv403) #10
  br label %do.end406

do.end406:                                        ; preds = %if.then392, %do.body378
  %162 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %162)
  %bf.load407 = load i16, ptr %protocol_stall, align 8
  %163 = and i16 %bf.load407, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool410.not = icmp eq i16 %163, 0
  br i1 %tobool410.not, label %do.end406.cleanup448_crit_edge, label %sw.epilog416

do.end406.cleanup448_crit_edge:                   ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup448

sw.epilog416:                                     ; preds = %do.end406
  %lock = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %driver = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 5
  %164 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %driver, align 4
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %setup, align 4
  %call413 = call i32 %167(ptr noundef %dev, ptr noundef nonnull %u) #10
  call void @_raw_spin_lock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call413)
  %cmp417 = icmp slt i32 %call413, 0
  br i1 %cmp417, label %sw.epilog416.do.body420_crit_edge, label %sw.epilog416.cleanup448_crit_edge

sw.epilog416.cleanup448_crit_edge:                ; preds = %sw.epilog416
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup448

sw.epilog416.do.body420_crit_edge:                ; preds = %sw.epilog416
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body420

do.body420:                                       ; preds = %sw.epilog416.do.body420_crit_edge, %if.end343.do.body420_crit_edge, %lor.lhs.false337.do.body420_crit_edge, %if.end332.do.body420_crit_edge, %if.end233.do.body420_crit_edge, %lor.lhs.false227.do.body420_crit_edge, %if.end222.do.body420_crit_edge, %sw.bb179.do.body420_crit_edge, %sw.bb137.do.body420_crit_edge, %lor.lhs.false.do.body420_crit_edge, %sw.bb91.do.body420_crit_edge
  %tmp.1 = phi i32 [ %call413, %sw.epilog416.do.body420_crit_edge ], [ 0, %lor.lhs.false.do.body420_crit_edge ], [ 0, %sw.bb91.do.body420_crit_edge ], [ 0, %sw.bb137.do.body420_crit_edge ], [ 0, %sw.bb179.do.body420_crit_edge ], [ 0, %lor.lhs.false227.do.body420_crit_edge ], [ 0, %if.end222.do.body420_crit_edge ], [ 0, %if.end233.do.body420_crit_edge ], [ 0, %lor.lhs.false337.do.body420_crit_edge ], [ 0, %if.end332.do.body420_crit_edge ], [ 0, %if.end343.do.body420_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %do.end442)) #10
          to label %if.then434 [label %do.end442], !srcloc !376

if.then434:                                       ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #12
  %dev435 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %168 = ptrtoint ptr %dev435 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev435, align 8
  %170 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %u, align 1
  %conv437 = zext i8 %171 to i32
  %172 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %0, align 1
  %conv439 = zext i8 %173 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug274, ptr noundef %169, ptr noundef nonnull @.str.92, i32 noundef %conv437, i32 noundef %conv439, i32 noundef %tmp.1) #10
  br label %do.end442

do.end442:                                        ; preds = %if.then434, %do.body420
  %174 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load444 = load i16, ptr %protocol_stall, align 8
  %bf.set446 = or i16 %bf.load444, -32768
  store i16 %bf.set446, ptr %protocol_stall, align 8
  br label %cleanup448

cleanup448:                                       ; preds = %do.end442, %sw.epilog416.cleanup448_crit_edge, %do.end406.cleanup448_crit_edge, %sw.bb371, %if.then363, %if.end348, %if.then318, %if.end303, %cleanup288.thread708, %if.then208, %if.end185, %if.then173, %if.end143, %if.then130, %if.end100, %sw.bb.cleanup448_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u) #10
  br label %next_endpoints

if.else452:                                       ; preds = %entry
  %and454 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  br i1 %tobool455.not, label %if.else452.next_endpoints_crit_edge, label %if.then456

if.else452.next_endpoints_crit_edge:              ; preds = %if.else452
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_endpoints

if.then456:                                       ; preds = %if.else452
  %dev_id.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 2
  %175 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %176)
  %cond.i = icmp eq i16 %176, -28588
  br i1 %cond.i, label %do.body.i, label %if.then456.net2272_cancel_dma.exit_crit_edge

if.then456.net2272_cancel_dma.exit_crit_edge:     ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_cancel_dma.exit

do.body.i:                                        ; preds = %if.then456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %177 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 13
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %add.ptr.i688 = getelementptr i8, ptr %179, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i688, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %177, align 8
  %add.ptr4.i = getelementptr i8, ptr %181, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 4) #10, !srcloc !388
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %182 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %177, align 8
  %add.ptr6.i = getelementptr i8, ptr %183, i32 168
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  %185 = and i8 %184, 16
  %tobool.not.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %do.body9.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.body9.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %186 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %177, align 8
  %add.ptr12.i = getelementptr i8, ptr %187, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 8) #10, !srcloc !388
  br label %net2272_cancel_dma.exit

net2272_cancel_dma.exit:                          ; preds = %do.body9.i, %if.then456.net2272_cancel_dma.exit_crit_edge
  %dma_busy.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 6
  %188 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load.i = load i16, ptr %dma_busy.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -129
  store i16 %bf.clear.i, ptr %dma_busy.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i689 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %189 = ptrtoint ptr %base_addr.i14.i689 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base_addr.i14.i689, align 4
  %base_shift.i15.i690 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  %191 = ptrtoint ptr %base_shift.i15.i690 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %base_shift.i15.i690, align 8
  %shl.i16.i691 = shl i32 2, %192
  %add.ptr.i17.i692 = getelementptr i16, ptr %190, i32 %shl.i16.i691
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i692, i8 64) #10, !srcloc !388
  %and458 = and i8 %stat, -65
  %193 = ptrtoint ptr %base_addr.i14.i689 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base_addr.i14.i689, align 4
  %195 = ptrtoint ptr %base_shift.i15.i690 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %base_shift.i15.i690, align 8
  %shl.i18.i695 = shl i32 28, %196
  %add.ptr.i19.i696 = getelementptr i16, ptr %194, i32 %shl.i18.i695
  %197 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i696) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %198 = and i8 %197, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool463.not = icmp eq i8 %198, 0
  %conv465 = select i1 %tobool463.not, i32 1, i32 2
  %arrayidx467 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 %conv465
  tail call fastcc void @net2272_handle_dma(ptr noundef %arrayidx467)
  br label %next_endpoints

next_endpoints:                                   ; preds = %net2272_cancel_dma.exit, %if.else452.next_endpoints_crit_edge, %cleanup448
  %stat.addr.0 = phi i8 [ %70, %cleanup448 ], [ %and458, %net2272_cancel_dma.exit ], [ %stat, %if.else452.next_endpoints_crit_edge ]
  %and471 = and i8 %stat.addr.0, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and471)
  %tobool476.not723 = icmp eq i8 %and471, 0
  br i1 %tobool476.not723, label %next_endpoints.for.end_crit_edge, label %next_endpoints.for.body_crit_edge

next_endpoints.for.body_crit_edge:                ; preds = %next_endpoints
  br label %for.body

next_endpoints.for.end_crit_edge:                 ; preds = %next_endpoints
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup493.for.body_crit_edge, %next_endpoints.for.body_crit_edge
  %num.0725 = phi i8 [ %inc496, %cleanup493.for.body_crit_edge ], [ 0, %next_endpoints.for.body_crit_edge ]
  %scratch.1724 = phi i8 [ %scratch.2, %cleanup493.for.body_crit_edge ], [ %and471, %next_endpoints.for.body_crit_edge ]
  %conv477 = zext i8 %num.0725 to i32
  %shl = shl nuw i32 1, %conv477
  %conv479 = zext i8 %scratch.1724 to i32
  %and481 = and i32 %shl, %conv479
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and481)
  %cmp482 = icmp eq i32 %and481, 0
  br i1 %cmp482, label %for.body.cleanup493_crit_edge, label %if.end485

for.body.cleanup493_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup493

if.end485:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %199 = trunc i32 %shl to i8
  %conv489 = xor i8 %scratch.1724, %199
  %arrayidx492 = getelementptr %struct.net2272, ptr %dev, i32 0, i32 4, i32 %conv477
  call fastcc void @net2272_handle_ep(ptr noundef %arrayidx492)
  br label %cleanup493

cleanup493:                                       ; preds = %if.end485, %for.body.cleanup493_crit_edge
  %scratch.2 = phi i8 [ %conv489, %if.end485 ], [ %scratch.1724, %for.body.cleanup493_crit_edge ]
  %inc496 = add i8 %num.0725, 1
  %tobool476.not = icmp eq i8 %scratch.2, 0
  br i1 %tobool476.not, label %cleanup493.for.end_crit_edge, label %cleanup493.for.body_crit_edge

cleanup493.for.body_crit_edge:                    ; preds = %cleanup493
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup493.for.end_crit_edge:                     ; preds = %cleanup493
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup493.for.end_crit_edge, %next_endpoints.for.end_crit_edge
  %200 = and i8 %stat.addr.0, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool500.not = icmp eq i8 %200, 0
  br i1 %tobool500.not, label %for.end.if.end522_crit_edge, label %do.body502

for.end.if.end522_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end522

do.body502:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_stat0_irqs, %if.end522)) #10
          to label %if.then516 [label %if.end522], !srcloc !376

if.then516:                                       ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #12
  %dev517 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 1
  %201 = ptrtoint ptr %dev517 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev517, align 8
  %conv518 = zext i8 %200 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug275, ptr noundef %202, ptr noundef nonnull @.str.93, i32 noundef %conv518) #10
  br label %if.end522

if.end522:                                        ; preds = %if.then516, %do.body502, %for.end.if.end522_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_out_naking(ptr nocapture noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %3 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %entry.net2272_ep_read.exit_crit_edge, label %if.then.i

entry.net2272_ep_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %8
  %add.ptr.i17.i.i = getelementptr i16, ptr %6, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %10 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %entry.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 6, %14
  %add.ptr.i19.i.i = getelementptr i16, ptr %12, i32 %shl.i18.i.i
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not = icmp eq i8 %16, 0
  br i1 %cmp.not, label %net2272_ep_read.exit.if.end_crit_edge, label %if.then

net2272_ep_read.exit.if.end_crit_edge:            ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %net2272_ep_read.exit
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %pagesel.i4 = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %pagesel.i4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pagesel.i4, align 4
  %conv.i5 = zext i8 %20 to i32
  %21 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i7 = load i32, ptr %num.i, align 4
  %bf.lshr.i8 = lshr i32 %bf.load.i7, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i8, i32 %conv.i5)
  %cmp.not.i9 = icmp eq i32 %bf.lshr.i8, %conv.i5
  br i1 %cmp.not.i9, label %if.then.net2272_ep_write.exit_crit_edge, label %if.then.i18

if.then.net2272_ep_write.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i10 = trunc i32 %bf.lshr.i8 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i11 = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 12
  %22 = ptrtoint ptr %base_addr.i14.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i14.i.i11, align 4
  %base_shift.i15.i.i12 = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 11
  %24 = ptrtoint ptr %base_shift.i15.i.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_shift.i15.i.i12, align 8
  %shl.i16.i.i13 = shl i32 4, %25
  %add.ptr.i17.i.i14 = getelementptr i16, ptr %23, i32 %shl.i16.i.i13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i14, i8 %conv6.i10) #10, !srcloc !388
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load8.i15 = load i32, ptr %num.i, align 4
  %bf.lshr9.i16 = lshr i32 %bf.load8.i15, 24
  %conv10.i17 = trunc i32 %bf.lshr9.i16 to i8
  %27 = ptrtoint ptr %pagesel.i4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv10.i17, ptr %pagesel.i4, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i18, %if.then.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 12
  %28 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 11
  %30 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 14, %31
  %add.ptr.i17.i21.i = getelementptr i16, ptr %29, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 -128) #10, !srcloc !388
  br label %if.end

if.end:                                           ; preds = %net2272_ep_write.exit, %net2272_ep_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net2272_get_ep_by_addr(ptr noundef readonly %dev, i16 noundef zeroext %wIndex) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wIndex to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ep2 = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 4
  br label %cleanup33

if.end:                                           ; preds = %entry
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn48 = load ptr, ptr %ep_list, align 4
  %cmp7.not49 = icmp eq ptr %.pn48, %ep_list
  br i1 %cmp7.not49, label %if.end.cleanup33_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn48, %if.end.for.body_crit_edge ]
  %desc = getelementptr i8, ptr %.pn50, i32 48
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %bEndpointAddress12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bEndpointAddress12 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bEndpointAddress12, align 1
  %conv14 = zext i8 %4 to i32
  %xor = xor i32 %conv14, %conv
  %and15 = and i32 %xor, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and22 = and i32 %conv14, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and22)
  %cmp23 = icmp eq i32 %and, %and22
  %or.cond = select i1 %tobool16.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %cleanup33.loopexit.split.loop.exit46, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp7.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp7.not, label %for.inc.cleanup33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

cleanup33.loopexit.split.loop.exit46:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ep.0.le = getelementptr i8, ptr %.pn50, i32 -12
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.loopexit.split.loop.exit46, %for.inc.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %if.then
  %retval.2 = phi ptr [ %ep2, %if.then ], [ %ep.0.le, %cleanup33.loopexit.split.loop.exit46 ], [ null, %if.end.cleanup33_crit_edge ], [ null, %for.inc.cleanup33_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_set_test_mode(ptr noundef readonly %dev, i32 noundef %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %dev, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 32) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i, align 4
  %4 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %5
  %add.ptr.i.i = getelementptr i16, ptr %3, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 33) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i, align 4
  %10 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i27 = shl nuw i32 1, %11
  %add.ptr.i.i28 = getelementptr i16, ptr %9, i32 %shl.i.i27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i28, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 51) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr.i.i, align 4
  %16 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i31 = shl nuw i32 1, %17
  %add.ptr.i.i32 = getelementptr i16, ptr %15, i32 %shl.i.i31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i32, i8 8) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i, align 4
  %20 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i = shl i32 4, %21
  %add.ptr.i17.i = getelementptr i16, ptr %19, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i.i, align 4
  %24 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i35 = shl i32 6, %25
  %add.ptr.i17.i36 = getelementptr i16, ptr %23, i32 %shl.i16.i35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i36, i8 4) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i.i, align 4
  %28 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i39 = shl i32 14, %29
  %add.ptr.i17.i40 = getelementptr i16, ptr %27, i32 %shl.i16.i39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i40, i8 72) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 42) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i.i, align 4
  %34 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i43 = shl nuw i32 1, %35
  %add.ptr.i.i44 = getelementptr i16, ptr %33, i32 %shl.i.i43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i44, i8 16) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr.i.i, align 4
  %38 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i47 = shl i32 7, %39
  %add.ptr.i17.i48 = getelementptr i16, ptr %37, i32 %shl.i16.i47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i48, i8 -128) #10, !srcloc !388
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %40 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i.i, align 4
  %42 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i = shl i32 6, %43
  %add.ptr.i19.i = getelementptr i16, ptr %41, i32 %shl.i18.i
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %45 = and i8 %44, 4
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv1 = trunc i32 %mode to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 50) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i.i, align 4
  %50 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i51 = shl nuw i32 1, %51
  %add.ptr.i.i52 = getelementptr i16, ptr %49, i32 %shl.i.i51
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 %conv1) #10, !srcloc !388
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp = icmp eq i32 %mode, 4
  br i1 %cmp, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 34) #10, !srcloc !388
  %54 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i.i, align 4
  %56 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i55 = shl nuw i32 1, %57
  %add.ptr.i.i56 = getelementptr i16, ptr %55, i32 %shl.i.i55
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i56) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %59 = and i8 %58, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 34) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i.i, align 4
  %64 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i59 = shl nuw i32 1, %65
  %add.ptr.i.i60 = getelementptr i16, ptr %63, i32 %shl.i.i59
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i60, i8 %59) #10, !srcloc !388
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.069 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [52 x i8], ptr @net2272_test_packet, i32 0, i32 %i.069
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i.i, align 4
  %70 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i63 = shl i32 5, %71
  %add.ptr.i17.i64 = getelementptr i16, ptr %69, i32 %shl.i16.i63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i64, i8 %67) #10, !srcloc !388
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base_addr.i.i, align 4
  %74 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base_shift.i.i, align 8
  %shl.i16.i67 = shl i32 8, %75
  %add.ptr.i17.i68 = getelementptr i16, ptr %73, i32 %shl.i16.i67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i68, i8 0) #10, !srcloc !388
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_handle_dma(ptr noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %spec.select235 = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_dma.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_dma, %do.end)) #10
          to label %if.then8 [label %do.end], !srcloc !376

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev9, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_dma.__UNIQUE_ID_ddebug263, ptr noundef %5, ptr noundef nonnull @.str.95, ptr noundef %7, ptr noundef %spec.select235) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %entry
  %dev12 = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  %dma_eot_polarity = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dma_eot_polarity to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %dma_eot_polarity, align 8
  %11 = lshr i16 %bf.load, 7
  %or20132 = and i16 %11, 14
  %or27133 = or i16 %or20132, 16
  %or27 = zext i16 %or27133 to i32
  %dma = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load28 = load i32, ptr %dma, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 7
  %bf.clear30 = and i32 %bf.lshr29, 1
  %or32 = or i32 %bf.clear30, %or27
  %conv = trunc i32 %or32 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %base_addr.i14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i14.i, align 4
  %base_shift.i15.i = getelementptr inbounds %struct.net2272, ptr %9, i32 0, i32 11
  %15 = ptrtoint ptr %base_shift.i15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_shift.i15.i, align 8
  %shl.i16.i = shl i32 28, %16
  %add.ptr.i17.i = getelementptr i16, ptr %14, i32 %shl.i16.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 %conv) #10, !srcloc !388
  %17 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev12, align 4
  %dma_busy = getelementptr inbounds %struct.net2272, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %dma_busy to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load34 = load i16, ptr %dma_busy, align 8
  %bf.clear35 = and i16 %bf.load34, -129
  store i16 %bf.clear35, ptr %dma_busy, align 8
  %20 = load ptr, ptr %dev12, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pagesel.i, align 4
  %conv.i134 = zext i8 %22 to i32
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %dma, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i134)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i134
  br i1 %cmp.not.i, label %do.end.net2272_ep_read.exit_crit_edge, label %if.then.i

do.end.net2272_ep_read.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %24 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %27
  %add.ptr.i17.i.i = getelementptr i16, ptr %25, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %28 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load8.i = load i32, ptr %dma, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %29 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %do.end.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 12
  %30 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %20, i32 0, i32 11
  %32 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 11, %33
  %add.ptr.i19.i.i = getelementptr i16, ptr %31, i32 %shl.i18.i.i
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %35 = or i8 %34, 12
  %36 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev12, align 4
  %pagesel.i136 = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %pagesel.i136 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pagesel.i136, align 4
  %conv.i137 = zext i8 %39 to i32
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i139 = load i32, ptr %dma, align 4
  %bf.lshr.i140 = lshr i32 %bf.load.i139, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i140, i32 %conv.i137)
  %cmp.not.i141 = icmp eq i32 %bf.lshr.i140, %conv.i137
  br i1 %cmp.not.i141, label %net2272_ep_read.exit.net2272_ep_write.exit_crit_edge, label %if.then.i150

net2272_ep_read.exit.net2272_ep_write.exit_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i150:                                     ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i142 = trunc i32 %bf.lshr.i140 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i143 = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 12
  %41 = ptrtoint ptr %base_addr.i14.i.i143 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i14.i.i143, align 4
  %base_shift.i15.i.i144 = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 11
  %43 = ptrtoint ptr %base_shift.i15.i.i144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_shift.i15.i.i144, align 8
  %shl.i16.i.i145 = shl i32 4, %44
  %add.ptr.i17.i.i146 = getelementptr i16, ptr %42, i32 %shl.i16.i.i145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i146, i8 %conv6.i142) #10, !srcloc !388
  %45 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load8.i147 = load i32, ptr %dma, align 4
  %bf.lshr9.i148 = lshr i32 %bf.load8.i147, 24
  %conv10.i149 = trunc i32 %bf.lshr9.i148 to i8
  %46 = ptrtoint ptr %pagesel.i136 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv10.i149, ptr %pagesel.i136, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i150, %net2272_ep_read.exit.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 12
  %47 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 11
  %49 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 11, %50
  %add.ptr.i17.i21.i = getelementptr i16, ptr %48, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 %35) #10, !srcloc !388
  %51 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load40 = load i32, ptr %dma, align 4
  %52 = and i32 %bf.load40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool43.not = icmp eq i32 %52, 0
  br i1 %tobool43.not, label %if.else73, label %if.then44

if.then44:                                        ; preds = %net2272_ep_write.exit
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select235, i32 0, i32 1
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %55 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %55, i32 7)
  %bf.load47 = load i56, ptr %maxpacket, align 2
  %bf.lshr48 = lshr i56 %bf.load47, 40
  %bf.cast49 = trunc i56 %bf.lshr48 to i32
  %rem = urem i32 %54, %bf.cast49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then44.if.then56_crit_edge

if.then44.if.then56_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.then44
  %zero = getelementptr inbounds %struct.usb_request, ptr %spec.select235, i32 0, i32 6
  %56 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load52 = load i32, ptr %zero, align 4
  %57 = and i32 %bf.load52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool55.not = icmp eq i32 %57, 0
  br i1 %tobool55.not, label %lor.lhs.false.if.end57_crit_edge, label %lor.lhs.false.if.then56_crit_edge

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.then44.if.then56_crit_edge
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %lor.lhs.false.if.end57_crit_edge
  tail call fastcc void @net2272_done(ptr noundef %ep, ptr noundef %spec.select235, i32 noundef 0)
  %58 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %queue, align 4
  %cmp.i151.not = icmp eq ptr %59, %queue
  br i1 %cmp.i151.not, label %if.end57.if.end99_crit_edge, label %if.then61

if.end57.if.end99_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then61:                                        ; preds = %if.end57
  %add.ptr66 = getelementptr i8, ptr %59, i32 -56
  %call67 = tail call fastcc i32 @net2272_kick_dma(ptr noundef %ep, ptr noundef %add.ptr66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.then61.if.end99_crit_edge

if.then61.if.end99_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then70:                                        ; preds = %if.then61
  %60 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %61, %queue
  br i1 %cmp.i.not.i, label %if.then70.if.end99_crit_edge, label %if.then70.if.end99.sink.split_crit_edge, !prof !409

if.then70.if.end99.sink.split_crit_edge:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.sink.split

if.then70.if.end99_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.else73:                                        ; preds = %net2272_ep_write.exit
  %62 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev12, align 4
  %base_addr.i16.i = getelementptr inbounds %struct.net2272, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %base_addr.i16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base_addr.i16.i, align 4
  %base_shift.i17.i = getelementptr inbounds %struct.net2272, ptr %63, i32 0, i32 11
  %66 = ptrtoint ptr %base_shift.i17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_shift.i17.i, align 8
  %shl.i18.i = shl i32 2, %67
  %add.ptr.i19.i = getelementptr i16, ptr %65, i32 %shl.i18.i
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %69 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool77.not = icmp eq i8 %69, 0
  br i1 %tobool77.not, label %if.else73.if.end80_crit_edge, label %if.then78

if.else73.if.end80_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then78:                                        ; preds = %if.else73
  %70 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev12, align 4
  %dev_id.i = getelementptr inbounds %struct.net2272, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28588, i16 %73)
  %cond.i155 = icmp eq i16 %73, -28588
  br i1 %cond.i155, label %do.body.i, label %if.then78.net2272_cancel_dma.exit_crit_edge

if.then78.net2272_cancel_dma.exit_crit_edge:      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_cancel_dma.exit

do.body.i:                                        ; preds = %if.then78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %74 = getelementptr inbounds %struct.net2272, ptr %71, i32 0, i32 13
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %add.ptr.i156 = getelementptr i8, ptr %76, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i156, i8 0) #10, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 8
  %add.ptr4.i = getelementptr i8, ptr %78, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 4) #10, !srcloc !388
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %74, align 8
  %add.ptr6.i = getelementptr i8, ptr %80, i32 168
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  %82 = and i8 %81, 16
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %do.body9.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.body9.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %74, align 8
  %add.ptr12.i = getelementptr i8, ptr %84, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 8) #10, !srcloc !388
  br label %net2272_cancel_dma.exit

net2272_cancel_dma.exit:                          ; preds = %do.body9.i, %if.then78.net2272_cancel_dma.exit_crit_edge
  %dma_busy.i = getelementptr inbounds %struct.net2272, ptr %71, i32 0, i32 6
  %85 = ptrtoint ptr %dma_busy.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load.i157 = load i16, ptr %dma_busy.i, align 8
  %bf.clear.i = and i16 %bf.load.i157, -129
  store i16 %bf.clear.i, ptr %dma_busy.i, align 8
  br label %if.end80

if.end80:                                         ; preds = %net2272_cancel_dma.exit, %if.else73.if.end80_crit_edge
  %86 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev12, align 4
  %pagesel.i159 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %pagesel.i159 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pagesel.i159, align 4
  %conv.i160 = zext i8 %89 to i32
  %90 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load.i162 = load i32, ptr %dma, align 4
  %bf.lshr.i163 = lshr i32 %bf.load.i162, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i163, i32 %conv.i160)
  %cmp.not.i164 = icmp eq i32 %bf.lshr.i163, %conv.i160
  br i1 %cmp.not.i164, label %if.end80.net2272_ep_read.exit179_crit_edge, label %if.then.i173

if.end80.net2272_ep_read.exit179_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit179

if.then.i173:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i165 = trunc i32 %bf.lshr.i163 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i166 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 12
  %91 = ptrtoint ptr %base_addr.i14.i.i166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i14.i.i166, align 4
  %base_shift.i15.i.i167 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 11
  %93 = ptrtoint ptr %base_shift.i15.i.i167 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %base_shift.i15.i.i167, align 8
  %shl.i16.i.i168 = shl i32 4, %94
  %add.ptr.i17.i.i169 = getelementptr i16, ptr %92, i32 %shl.i16.i.i168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i169, i8 %conv6.i165) #10, !srcloc !388
  %95 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load8.i170 = load i32, ptr %dma, align 4
  %bf.lshr9.i171 = lshr i32 %bf.load8.i170, 24
  %conv10.i172 = trunc i32 %bf.lshr9.i171 to i8
  %96 = ptrtoint ptr %pagesel.i159 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv10.i172, ptr %pagesel.i159, align 4
  br label %net2272_ep_read.exit179

net2272_ep_read.exit179:                          ; preds = %if.then.i173, %if.end80.net2272_ep_read.exit179_crit_edge
  %base_addr.i16.i.i175 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 12
  %97 = ptrtoint ptr %base_addr.i16.i.i175 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_addr.i16.i.i175, align 4
  %base_shift.i17.i.i176 = getelementptr inbounds %struct.net2272, ptr %87, i32 0, i32 11
  %99 = ptrtoint ptr %base_shift.i17.i.i176 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %base_shift.i17.i.i176, align 8
  %shl.i18.i.i177 = shl i32 10, %100
  %add.ptr.i19.i.i178 = getelementptr i16, ptr %98, i32 %shl.i18.i.i177
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i178) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv82 = zext i8 %101 to i32
  %shl83 = shl nuw nsw i32 %conv82, 16
  %102 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev12, align 4
  %pagesel.i181 = getelementptr inbounds %struct.net2272, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %pagesel.i181 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pagesel.i181, align 4
  %conv.i182 = zext i8 %105 to i32
  %106 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load.i184 = load i32, ptr %dma, align 4
  %bf.lshr.i185 = lshr i32 %bf.load.i184, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i185, i32 %conv.i182)
  %cmp.not.i186 = icmp eq i32 %bf.lshr.i185, %conv.i182
  br i1 %cmp.not.i186, label %net2272_ep_read.exit179.net2272_ep_read.exit201_crit_edge, label %if.then.i195

net2272_ep_read.exit179.net2272_ep_read.exit201_crit_edge: ; preds = %net2272_ep_read.exit179
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit201

if.then.i195:                                     ; preds = %net2272_ep_read.exit179
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i187 = trunc i32 %bf.lshr.i185 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i188 = getelementptr inbounds %struct.net2272, ptr %103, i32 0, i32 12
  %107 = ptrtoint ptr %base_addr.i14.i.i188 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_addr.i14.i.i188, align 4
  %base_shift.i15.i.i189 = getelementptr inbounds %struct.net2272, ptr %103, i32 0, i32 11
  %109 = ptrtoint ptr %base_shift.i15.i.i189 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %base_shift.i15.i.i189, align 8
  %shl.i16.i.i190 = shl i32 4, %110
  %add.ptr.i17.i.i191 = getelementptr i16, ptr %108, i32 %shl.i16.i.i190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i191, i8 %conv6.i187) #10, !srcloc !388
  %111 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load8.i192 = load i32, ptr %dma, align 4
  %bf.lshr9.i193 = lshr i32 %bf.load8.i192, 24
  %conv10.i194 = trunc i32 %bf.lshr9.i193 to i8
  %112 = ptrtoint ptr %pagesel.i181 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv10.i194, ptr %pagesel.i181, align 4
  br label %net2272_ep_read.exit201

net2272_ep_read.exit201:                          ; preds = %if.then.i195, %net2272_ep_read.exit179.net2272_ep_read.exit201_crit_edge
  %base_addr.i16.i.i197 = getelementptr inbounds %struct.net2272, ptr %103, i32 0, i32 12
  %113 = ptrtoint ptr %base_addr.i16.i.i197 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base_addr.i16.i.i197, align 4
  %base_shift.i17.i.i198 = getelementptr inbounds %struct.net2272, ptr %103, i32 0, i32 11
  %115 = ptrtoint ptr %base_shift.i17.i.i198 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %base_shift.i17.i.i198, align 8
  %shl.i18.i.i199 = shl i32 9, %116
  %add.ptr.i19.i.i200 = getelementptr i16, ptr %114, i32 %shl.i18.i.i199
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i200) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv85 = zext i8 %117 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or87 = or i32 %shl86, %shl83
  %118 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev12, align 4
  %pagesel.i203 = getelementptr inbounds %struct.net2272, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %pagesel.i203 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pagesel.i203, align 4
  %conv.i204 = zext i8 %121 to i32
  %122 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %122)
  %bf.load.i206 = load i32, ptr %dma, align 4
  %bf.lshr.i207 = lshr i32 %bf.load.i206, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i207, i32 %conv.i204)
  %cmp.not.i208 = icmp eq i32 %bf.lshr.i207, %conv.i204
  br i1 %cmp.not.i208, label %net2272_ep_read.exit201.net2272_ep_read.exit223_crit_edge, label %if.then.i217

net2272_ep_read.exit201.net2272_ep_read.exit223_crit_edge: ; preds = %net2272_ep_read.exit201
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit223

if.then.i217:                                     ; preds = %net2272_ep_read.exit201
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i209 = trunc i32 %bf.lshr.i207 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i210 = getelementptr inbounds %struct.net2272, ptr %119, i32 0, i32 12
  %123 = ptrtoint ptr %base_addr.i14.i.i210 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base_addr.i14.i.i210, align 4
  %base_shift.i15.i.i211 = getelementptr inbounds %struct.net2272, ptr %119, i32 0, i32 11
  %125 = ptrtoint ptr %base_shift.i15.i.i211 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %base_shift.i15.i.i211, align 8
  %shl.i16.i.i212 = shl i32 4, %126
  %add.ptr.i17.i.i213 = getelementptr i16, ptr %124, i32 %shl.i16.i.i212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i213, i8 %conv6.i209) #10, !srcloc !388
  %127 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load8.i214 = load i32, ptr %dma, align 4
  %bf.lshr9.i215 = lshr i32 %bf.load8.i214, 24
  %conv10.i216 = trunc i32 %bf.lshr9.i215 to i8
  %128 = ptrtoint ptr %pagesel.i203 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv10.i216, ptr %pagesel.i203, align 4
  br label %net2272_ep_read.exit223

net2272_ep_read.exit223:                          ; preds = %if.then.i217, %net2272_ep_read.exit201.net2272_ep_read.exit223_crit_edge
  %base_addr.i16.i.i219 = getelementptr inbounds %struct.net2272, ptr %119, i32 0, i32 12
  %129 = ptrtoint ptr %base_addr.i16.i.i219 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base_addr.i16.i.i219, align 4
  %base_shift.i17.i.i220 = getelementptr inbounds %struct.net2272, ptr %119, i32 0, i32 11
  %131 = ptrtoint ptr %base_shift.i17.i.i220 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %base_shift.i17.i.i220, align 8
  %shl.i18.i.i221 = shl i32 8, %132
  %add.ptr.i19.i.i222 = getelementptr i16, ptr %130, i32 %shl.i18.i.i221
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i222) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv89 = zext i8 %133 to i32
  %or90 = or i32 %or87, %conv89
  %134 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load91 = load i32, ptr %dma, align 4
  %135 = and i32 %bf.load91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool94.not = icmp eq i32 %135, 0
  %add = add nuw nsw i32 %or90, 4
  %spec.select = select i1 %tobool94.not, i32 %or90, i32 %add
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select235, i32 0, i32 12
  %136 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %actual, align 4
  %add98 = add i32 %spec.select, %137
  store i32 %add98, ptr %actual, align 4
  %138 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i225 = icmp eq ptr %139, %queue
  br i1 %cmp.i.not.i225, label %net2272_ep_read.exit223.if.end99_crit_edge, label %net2272_ep_read.exit223.if.end99.sink.split_crit_edge, !prof !409

net2272_ep_read.exit223.if.end99.sink.split_crit_edge: ; preds = %net2272_ep_read.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.sink.split

net2272_ep_read.exit223.if.end99_crit_edge:       ; preds = %net2272_ep_read.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.end99.sink.split:                              ; preds = %net2272_ep_read.exit223.if.end99.sink.split_crit_edge, %if.then70.if.end99.sink.split_crit_edge
  %.sink = phi ptr [ %61, %if.then70.if.end99.sink.split_crit_edge ], [ %139, %net2272_ep_read.exit223.if.end99.sink.split_crit_edge ]
  %add.ptr.i226 = getelementptr i8, ptr %.sink, i32 -56
  %140 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load.i228 = load i32, ptr %dma, align 4
  %141 = and i32 %bf.load.i228, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool4.not.i229 = icmp eq i32 %141, 0
  %cond.i230 = select i1 %tobool4.not.i229, ptr @net2272_read_fifo, ptr @net2272_write_fifo
  %call5.i231 = tail call i32 %cond.i230(ptr noundef %ep, ptr noundef %add.ptr.i226) #10
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %net2272_ep_read.exit223.if.end99_crit_edge, %if.then70.if.end99_crit_edge, %if.then61.if.end99_crit_edge, %if.end57.if.end99_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2272_handle_ep(ptr noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %dev1.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pagesel.i, align 4
  %conv.i47 = zext i8 %5 to i32
  %num.i = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i47)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i47
  br i1 %cmp.not.i, label %entry.net2272_ep_read.exit_crit_edge, label %if.then.i

entry.net2272_ep_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %10
  %add.ptr.i17.i.i = getelementptr i16, ptr %8, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %12 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %entry.net2272_ep_read.exit_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 6, %16
  %add.ptr.i19.i.i = getelementptr i16, ptr %14, i32 %shl.i18.i.i
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %pagesel.i49 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %pagesel.i49 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pagesel.i49, align 4
  %conv.i50 = zext i8 %21 to i32
  %22 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i52 = load i32, ptr %num.i, align 4
  %bf.lshr.i53 = lshr i32 %bf.load.i52, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i53, i32 %conv.i50)
  %cmp.not.i54 = icmp eq i32 %bf.lshr.i53, %conv.i50
  br i1 %cmp.not.i54, label %net2272_ep_read.exit.net2272_ep_read.exit68_crit_edge, label %if.then.i63

net2272_ep_read.exit.net2272_ep_read.exit68_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit68

if.then.i63:                                      ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i55 = trunc i32 %bf.lshr.i53 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i56 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 12
  %23 = ptrtoint ptr %base_addr.i14.i.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i14.i.i56, align 4
  %base_shift.i15.i.i57 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %base_shift.i15.i.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_shift.i15.i.i57, align 8
  %shl.i16.i.i58 = shl i32 4, %26
  %add.ptr.i17.i.i59 = getelementptr i16, ptr %24, i32 %shl.i16.i.i58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i59, i8 %conv6.i55) #10, !srcloc !388
  %27 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load8.i60 = load i32, ptr %num.i, align 4
  %bf.lshr9.i61 = lshr i32 %bf.load8.i60, 24
  %conv10.i62 = trunc i32 %bf.lshr9.i61 to i8
  %28 = ptrtoint ptr %pagesel.i49 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10.i62, ptr %pagesel.i49, align 4
  br label %net2272_ep_read.exit68

net2272_ep_read.exit68:                           ; preds = %if.then.i63, %net2272_ep_read.exit.net2272_ep_read.exit68_crit_edge
  %base_addr.i16.i.i64 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 12
  %29 = ptrtoint ptr %base_addr.i16.i.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i16.i.i64, align 4
  %base_shift.i17.i.i65 = getelementptr inbounds %struct.net2272, ptr %19, i32 0, i32 11
  %31 = ptrtoint ptr %base_shift.i17.i.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_shift.i17.i.i65, align 8
  %shl.i18.i.i66 = shl i32 7, %32
  %add.ptr.i19.i.i67 = getelementptr i16, ptr %30, i32 %shl.i18.i.i66
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i67) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %irqs = getelementptr inbounds %struct.net2272_ep, ptr %ep, i32 0, i32 2
  %34 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irqs, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %irqs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_handle_ep.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_handle_ep, %do.end)) #10
          to label %if.then10 [label %do.end], !srcloc !376

if.then10:                                        ; preds = %net2272_ep_read.exit68
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  %dev11 = getelementptr inbounds %struct.net2272, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev11, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %conv = zext i8 %17 to i32
  %conv13 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_handle_ep.__UNIQUE_ID_ddebug264, ptr noundef %39, ptr noundef nonnull @.str.97, ptr noundef %41, i32 noundef %conv, i32 noundef %conv13, ptr noundef %spec.select) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %net2272_ep_read.exit68
  %conv17 = zext i8 %17 to i32
  %and = and i8 %17, -49
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  %pagesel.i70 = getelementptr inbounds %struct.net2272, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %pagesel.i70 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pagesel.i70, align 4
  %conv.i71 = zext i8 %45 to i32
  %46 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i73 = load i32, ptr %num.i, align 4
  %bf.lshr.i74 = lshr i32 %bf.load.i73, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i74, i32 %conv.i71)
  %cmp.not.i75 = icmp eq i32 %bf.lshr.i74, %conv.i71
  br i1 %cmp.not.i75, label %do.end.net2272_ep_write.exit_crit_edge, label %if.then.i84

do.end.net2272_ep_write.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit

if.then.i84:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i76 = trunc i32 %bf.lshr.i74 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i77 = getelementptr inbounds %struct.net2272, ptr %43, i32 0, i32 12
  %47 = ptrtoint ptr %base_addr.i14.i.i77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i14.i.i77, align 4
  %base_shift.i15.i.i78 = getelementptr inbounds %struct.net2272, ptr %43, i32 0, i32 11
  %49 = ptrtoint ptr %base_shift.i15.i.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_shift.i15.i.i78, align 8
  %shl.i16.i.i79 = shl i32 4, %50
  %add.ptr.i17.i.i80 = getelementptr i16, ptr %48, i32 %shl.i16.i.i79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i80, i8 %conv6.i76) #10, !srcloc !388
  %51 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load8.i81 = load i32, ptr %num.i, align 4
  %bf.lshr9.i82 = lshr i32 %bf.load8.i81, 24
  %conv10.i83 = trunc i32 %bf.lshr9.i82 to i8
  %52 = ptrtoint ptr %pagesel.i70 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv10.i83, ptr %pagesel.i70, align 4
  br label %net2272_ep_write.exit

net2272_ep_write.exit:                            ; preds = %if.then.i84, %do.end.net2272_ep_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i = getelementptr inbounds %struct.net2272, ptr %43, i32 0, i32 12
  %53 = ptrtoint ptr %base_addr.i14.i18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i14.i18.i, align 4
  %base_shift.i15.i19.i = getelementptr inbounds %struct.net2272, ptr %43, i32 0, i32 11
  %55 = ptrtoint ptr %base_shift.i15.i19.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_shift.i15.i19.i, align 8
  %shl.i16.i20.i = shl i32 6, %56
  %add.ptr.i17.i21.i = getelementptr i16, ptr %54, i32 %shl.i16.i20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i, i8 %and) #10, !srcloc !388
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i, align 4
  %pagesel.i86 = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %pagesel.i86 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pagesel.i86, align 4
  %conv.i87 = zext i8 %60 to i32
  %61 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i89 = load i32, ptr %num.i, align 4
  %bf.lshr.i90 = lshr i32 %bf.load.i89, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i90, i32 %conv.i87)
  %cmp.not.i91 = icmp eq i32 %bf.lshr.i90, %conv.i87
  br i1 %cmp.not.i91, label %net2272_ep_write.exit.net2272_ep_write.exit105_crit_edge, label %if.then.i100

net2272_ep_write.exit.net2272_ep_write.exit105_crit_edge: ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_write.exit105

if.then.i100:                                     ; preds = %net2272_ep_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i92 = trunc i32 %bf.lshr.i90 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i93 = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 12
  %62 = ptrtoint ptr %base_addr.i14.i.i93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i14.i.i93, align 4
  %base_shift.i15.i.i94 = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 11
  %64 = ptrtoint ptr %base_shift.i15.i.i94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_shift.i15.i.i94, align 8
  %shl.i16.i.i95 = shl i32 4, %65
  %add.ptr.i17.i.i96 = getelementptr i16, ptr %63, i32 %shl.i16.i.i95
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i96, i8 %conv6.i92) #10, !srcloc !388
  %66 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load8.i97 = load i32, ptr %num.i, align 4
  %bf.lshr9.i98 = lshr i32 %bf.load8.i97, 24
  %conv10.i99 = trunc i32 %bf.lshr9.i98 to i8
  %67 = ptrtoint ptr %pagesel.i86 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv10.i99, ptr %pagesel.i86, align 4
  br label %net2272_ep_write.exit105

net2272_ep_write.exit105:                         ; preds = %if.then.i100, %net2272_ep_write.exit.net2272_ep_write.exit105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i18.i101 = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 12
  %68 = ptrtoint ptr %base_addr.i14.i18.i101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i14.i18.i101, align 4
  %base_shift.i15.i19.i102 = getelementptr inbounds %struct.net2272, ptr %58, i32 0, i32 11
  %70 = ptrtoint ptr %base_shift.i15.i19.i102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_shift.i15.i19.i102, align 8
  %shl.i16.i20.i103 = shl i32 7, %71
  %add.ptr.i17.i21.i104 = getelementptr i16, ptr %69, i32 %shl.i16.i20.i103
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i21.i104, i8 %33) #10, !srcloc !388
  %72 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load = load i32, ptr %num.i, align 4
  %73 = and i32 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool19.not = icmp ne i32 %73, 0
  %and21 = and i32 %conv17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.else24, label %if.then23

if.then23:                                        ; preds = %net2272_ep_write.exit105
  %74 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %75, %queue
  br i1 %cmp.i.not.i, label %if.then23.if.end30_crit_edge, label %if.end.i, !prof !409

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %75, i32 -56
  %call5.i = tail call i32 @net2272_read_fifo(ptr noundef %ep, ptr noundef %add.ptr.i) #10, !callees !429
  br label %if.end30

if.else24:                                        ; preds = %net2272_ep_write.exit105
  %and26 = and i32 %conv17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else24.if.end30_crit_edge, label %if.then28

if.else24.if.end30_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %if.else24
  %76 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i108 = icmp eq ptr %77, %queue
  br i1 %cmp.i.not.i108, label %if.then28.if.end30_crit_edge, label %if.end.i115, !prof !409

if.then28.if.end30_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i115:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i109 = getelementptr i8, ptr %77, i32 -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i112 = icmp eq i32 %73, 0
  %cond.i113 = select i1 %tobool4.not.i112, ptr @net2272_read_fifo, ptr @net2272_write_fifo
  %call5.i114 = tail call i32 %cond.i113(ptr noundef %ep, ptr noundef %add.ptr.i109) #10, !callees !429
  br label %if.end30

if.end30:                                         ; preds = %if.end.i115, %if.then28.if.end30_crit_edge, %if.else24.if.end30_crit_edge, %if.end.i, %if.then23.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @registers_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %chiprev = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chiprev, align 2
  %conv6 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i.i, align 4
  %base_shift.i.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 34) #10, !srcloc !388
  %6 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i, align 4
  %8 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i = shl nuw i32 1, %9
  %add.ptr.i.i = getelementptr i16, ptr %7, i32 %shl.i.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv8 = zext i8 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 32) #10, !srcloc !388
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  %15 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i271 = shl nuw i32 1, %16
  %add.ptr.i.i272 = getelementptr i16, ptr %14, i32 %shl.i.i271
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i272) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv10 = zext i8 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 33) #10, !srcloc !388
  %20 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i.i, align 4
  %22 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i275 = shl nuw i32 1, %23
  %add.ptr.i.i276 = getelementptr i16, ptr %21, i32 %shl.i.i275
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i276) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv12 = zext i8 %24 to i32
  %25 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i.i, align 4
  %27 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i = shl i32 2, %28
  %add.ptr.i19.i = getelementptr i16, ptr %26, i32 %shl.i18.i
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv14 = zext i8 %29 to i32
  %30 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i.i, align 4
  %32 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i279 = shl i32 3, %33
  %add.ptr.i19.i280 = getelementptr i16, ptr %31, i32 %shl.i18.i279
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i280) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv16 = zext i8 %34 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, ptr noundef nonnull @driver_name, ptr noundef nonnull @driver_vers, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #10
  %sub = sub i32 4096, %call17
  %add.ptr = getelementptr i8, ptr %buf, i32 %call17
  %35 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i.i, align 4
  %37 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i283 = shl i32 28, %38
  %add.ptr.i19.i284 = getelementptr i16, ptr %36, i32 %shl.i18.i283
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i284) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv19 = zext i8 %39 to i32
  %and = and i32 %conv19, 1
  %add = add nuw nsw i32 %and, 1
  %arrayidx = getelementptr [4 x ptr], ptr @ep_name, i32 0, i32 %add
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %and22 = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool.not, ptr @.str.107, ptr @.str.106
  %and24 = and i32 %conv19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.107, ptr @.str.108
  %and28 = and i32 %conv19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.107, ptr @.str.109
  %and32 = and i32 %conv19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.107, ptr @.str.110
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.105, i32 noundef %conv19, ptr noundef %41, ptr noundef nonnull %cond, ptr noundef nonnull %cond26, ptr noundef nonnull %cond30, ptr noundef nonnull %cond34) #10
  %sub36 = sub i32 %sub, %call35
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %call35
  %42 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i.i, align 4
  %44 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i287 = shl i32 25, %45
  %add.ptr.i19.i288 = getelementptr i16, ptr %43, i32 %shl.i18.i287
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i288) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv39 = zext i8 %46 to i32
  %and40 = and i32 %conv39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %entry.if.end52_crit_edge, label %if.then

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then:                                          ; preds = %entry
  %and43 = and i32 %conv39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else, label %if.then.if.end52_crit_edge

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp46 = icmp eq i32 %48, 0
  %.str.112..str.113 = select i1 %cmp46, ptr @.str.112, ptr @.str.113
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then.if.end52_crit_edge, %entry.if.end52_crit_edge
  %s.0 = phi ptr [ @.str.111, %if.then.if.end52_crit_edge ], [ %.str.112..str.113, %if.else ], [ @.str.114, %entry.if.end52_crit_edge ]
  %49 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr.i.i, align 4
  %51 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_shift.i.i, align 8
  %shl.i18.i291 = shl i32 24, %52
  %add.ptr.i19.i292 = getelementptr i16, ptr %50, i32 %shl.i18.i291
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i292) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv54 = zext i8 %53 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 48) #10, !srcloc !388
  %56 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i.i, align 4
  %58 = ptrtoint ptr %base_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_shift.i.i, align 8
  %shl.i.i295 = shl nuw i32 1, %59
  %add.ptr.i.i296 = getelementptr i16, ptr %57, i32 %shl.i.i295
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i296) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %conv57 = zext i8 %60 to i32
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub36, ptr noundef nonnull @.str.115, i32 noundef %conv54, i32 noundef %conv39, i32 noundef %conv57, ptr noundef nonnull %s.0) #10
  %sub59 = sub i32 %sub36, %call58
  %add.ptr60 = getelementptr i8, ptr %add.ptr37, i32 %call58
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end52
  %i.0540 = phi i32 [ 0, %if.end52 ], [ %inc, %cleanup.for.body_crit_edge ]
  %size.0538 = phi i32 [ %sub59, %if.end52 ], [ %size.1, %cleanup.for.body_crit_edge ]
  %next.0536 = phi ptr [ %add.ptr60, %if.end52 ], [ %next.1, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0540)
  %tobool65.not = icmp eq i32 %i.0540, 0
  br i1 %tobool65.not, label %for.body.if.end68_crit_edge, label %land.lhs.true

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr %struct.net2272, ptr %1, i32 0, i32 4, i32 %i.0540, i32 4
  %61 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc, align 4
  %tobool66.not = icmp eq ptr %62, null
  br i1 %tobool66.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %for.body.if.end68_crit_edge
  %dev1.i = getelementptr %struct.net2272, ptr %1, i32 0, i32 4, i32 %i.0540, i32 1
  %63 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1.i, align 4
  %pagesel.i = getelementptr inbounds %struct.net2272, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pagesel.i, align 4
  %conv.i = zext i8 %66 to i32
  %num.i = getelementptr %struct.net2272, ptr %1, i32 0, i32 4, i32 %i.0540, i32 5
  %67 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.i, %conv.i
  br i1 %cmp.not.i, label %if.end68.net2272_ep_read.exit_crit_edge, label %if.then.i

if.end68.net2272_ep_read.exit_crit_edge:          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %bf.lshr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i = getelementptr inbounds %struct.net2272, ptr %64, i32 0, i32 12
  %68 = ptrtoint ptr %base_addr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i14.i.i, align 4
  %base_shift.i15.i.i = getelementptr inbounds %struct.net2272, ptr %64, i32 0, i32 11
  %70 = ptrtoint ptr %base_shift.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_shift.i15.i.i, align 8
  %shl.i16.i.i = shl i32 4, %71
  %add.ptr.i17.i.i = getelementptr i16, ptr %69, i32 %shl.i16.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i, i8 %conv6.i) #10, !srcloc !388
  %72 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load8.i = load i32, ptr %num.i, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 24
  %conv10.i = trunc i32 %bf.lshr9.i to i8
  %73 = ptrtoint ptr %pagesel.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv10.i, ptr %pagesel.i, align 4
  br label %net2272_ep_read.exit

net2272_ep_read.exit:                             ; preds = %if.then.i, %if.end68.net2272_ep_read.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i.i = getelementptr inbounds %struct.net2272, ptr %64, i32 0, i32 12
  %74 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base_addr.i.i.i, align 4
  %base_shift.i.i.i = getelementptr inbounds %struct.net2272, ptr %64, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 42) #10, !srcloc !388
  %76 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_addr.i.i.i, align 4
  %78 = ptrtoint ptr %base_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base_shift.i.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %79
  %add.ptr.i.i.i = getelementptr i16, ptr %77, i32 %shl.i.i.i
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i, align 4
  %pagesel.i298 = getelementptr inbounds %struct.net2272, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %pagesel.i298 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pagesel.i298, align 4
  %conv.i299 = zext i8 %84 to i32
  %85 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load.i301 = load i32, ptr %num.i, align 4
  %bf.lshr.i302 = lshr i32 %bf.load.i301, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i302, i32 %conv.i299)
  %cmp.not.i303 = icmp eq i32 %bf.lshr.i302, %conv.i299
  br i1 %cmp.not.i303, label %net2272_ep_read.exit.net2272_ep_read.exit313_crit_edge, label %if.then.i312

net2272_ep_read.exit.net2272_ep_read.exit313_crit_edge: ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit313

if.then.i312:                                     ; preds = %net2272_ep_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i304 = trunc i32 %bf.lshr.i302 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i305 = getelementptr inbounds %struct.net2272, ptr %82, i32 0, i32 12
  %86 = ptrtoint ptr %base_addr.i14.i.i305 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base_addr.i14.i.i305, align 4
  %base_shift.i15.i.i306 = getelementptr inbounds %struct.net2272, ptr %82, i32 0, i32 11
  %88 = ptrtoint ptr %base_shift.i15.i.i306 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %base_shift.i15.i.i306, align 8
  %shl.i16.i.i307 = shl i32 4, %89
  %add.ptr.i17.i.i308 = getelementptr i16, ptr %87, i32 %shl.i16.i.i307
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i308, i8 %conv6.i304) #10, !srcloc !388
  %90 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load8.i309 = load i32, ptr %num.i, align 4
  %bf.lshr9.i310 = lshr i32 %bf.load8.i309, 24
  %conv10.i311 = trunc i32 %bf.lshr9.i310 to i8
  %91 = ptrtoint ptr %pagesel.i298 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv10.i311, ptr %pagesel.i298, align 4
  br label %net2272_ep_read.exit313

net2272_ep_read.exit313:                          ; preds = %if.then.i312, %net2272_ep_read.exit.net2272_ep_read.exit313_crit_edge
  %base_addr.i16.i.i = getelementptr inbounds %struct.net2272, ptr %82, i32 0, i32 12
  %92 = ptrtoint ptr %base_addr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base_addr.i16.i.i, align 4
  %base_shift.i17.i.i = getelementptr inbounds %struct.net2272, ptr %82, i32 0, i32 11
  %94 = ptrtoint ptr %base_shift.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base_shift.i17.i.i, align 8
  %shl.i18.i.i = shl i32 15, %95
  %add.ptr.i19.i.i = getelementptr i16, ptr %93, i32 %shl.i18.i.i
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %name = getelementptr %struct.net2272, ptr %1, i32 0, i32 4, i32 %i.0540, i32 0, i32 1
  %97 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name, align 4
  %conv72 = zext i8 %80 to i32
  %conv73 = zext i8 %96 to i32
  %and75 = and i32 %conv73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, ptr @.str.107, ptr @.str.117
  %and79 = and i32 %conv73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %cond81 = select i1 %tobool80.not, ptr @.str.107, ptr @.str.118
  %and83 = and i32 %conv73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.107, ptr @.str.119
  %and87 = and i32 %conv73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %cond89 = select i1 %tobool88.not, ptr @.str.107, ptr @.str.120
  %and91 = and i32 %conv73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %cond93 = select i1 %tobool92.not, ptr @.str.107, ptr @.str.121
  %and95 = and i32 %conv73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %cond97 = select i1 %tobool96.not, ptr @.str.107, ptr @.str.122
  %and99 = and i32 %conv73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.124, ptr @.str.123
  %and103 = and i32 %conv73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cond105 = select i1 %tobool104.not, ptr @.str.107, ptr @.str.125
  %99 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev1.i, align 4
  %pagesel.i315 = getelementptr inbounds %struct.net2272, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %pagesel.i315 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pagesel.i315, align 4
  %conv.i316 = zext i8 %102 to i32
  %103 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load.i318 = load i32, ptr %num.i, align 4
  %bf.lshr.i319 = lshr i32 %bf.load.i318, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i319, i32 %conv.i316)
  %cmp.not.i320 = icmp eq i32 %bf.lshr.i319, %conv.i316
  br i1 %cmp.not.i320, label %net2272_ep_read.exit313.net2272_ep_read.exit334_crit_edge, label %if.then.i329

net2272_ep_read.exit313.net2272_ep_read.exit334_crit_edge: ; preds = %net2272_ep_read.exit313
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit334

if.then.i329:                                     ; preds = %net2272_ep_read.exit313
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i321 = trunc i32 %bf.lshr.i319 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i322 = getelementptr inbounds %struct.net2272, ptr %100, i32 0, i32 12
  %104 = ptrtoint ptr %base_addr.i14.i.i322 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base_addr.i14.i.i322, align 4
  %base_shift.i15.i.i323 = getelementptr inbounds %struct.net2272, ptr %100, i32 0, i32 11
  %106 = ptrtoint ptr %base_shift.i15.i.i323 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_shift.i15.i.i323, align 8
  %shl.i16.i.i324 = shl i32 4, %107
  %add.ptr.i17.i.i325 = getelementptr i16, ptr %105, i32 %shl.i16.i.i324
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i325, i8 %conv6.i321) #10, !srcloc !388
  %108 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load8.i326 = load i32, ptr %num.i, align 4
  %bf.lshr9.i327 = lshr i32 %bf.load8.i326, 24
  %conv10.i328 = trunc i32 %bf.lshr9.i327 to i8
  %109 = ptrtoint ptr %pagesel.i315 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv10.i328, ptr %pagesel.i315, align 4
  br label %net2272_ep_read.exit334

net2272_ep_read.exit334:                          ; preds = %if.then.i329, %net2272_ep_read.exit313.net2272_ep_read.exit334_crit_edge
  %base_addr.i16.i.i330 = getelementptr inbounds %struct.net2272, ptr %100, i32 0, i32 12
  %110 = ptrtoint ptr %base_addr.i16.i.i330 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base_addr.i16.i.i330, align 4
  %base_shift.i17.i.i331 = getelementptr inbounds %struct.net2272, ptr %100, i32 0, i32 11
  %112 = ptrtoint ptr %base_shift.i17.i.i331 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base_shift.i17.i.i331, align 8
  %shl.i18.i.i332 = shl i32 11, %113
  %add.ptr.i19.i.i333 = getelementptr i16, ptr %111, i32 %shl.i18.i.i332
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i333) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv107 = zext i8 %114 to i32
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.0536, i32 noundef %size.0538, ptr noundef nonnull @.str.116, ptr noundef %98, i32 noundef %conv72, i32 noundef %conv73, ptr noundef nonnull %cond77, ptr noundef nonnull %cond81, ptr noundef nonnull %cond85, ptr noundef nonnull %cond89, ptr noundef nonnull %cond93, ptr noundef nonnull %cond97, ptr noundef nonnull %cond101, ptr noundef nonnull %cond105, i32 noundef %conv107) #10
  %sub109 = sub i32 %size.0538, %call108
  %add.ptr110 = getelementptr i8, ptr %next.0536, i32 %call108
  %115 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev1.i, align 4
  %pagesel.i336 = getelementptr inbounds %struct.net2272, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %pagesel.i336 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pagesel.i336, align 4
  %conv.i337 = zext i8 %118 to i32
  %119 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load.i339 = load i32, ptr %num.i, align 4
  %bf.lshr.i340 = lshr i32 %bf.load.i339, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i340, i32 %conv.i337)
  %cmp.not.i341 = icmp eq i32 %bf.lshr.i340, %conv.i337
  br i1 %cmp.not.i341, label %net2272_ep_read.exit334.net2272_ep_read.exit355_crit_edge, label %if.then.i350

net2272_ep_read.exit334.net2272_ep_read.exit355_crit_edge: ; preds = %net2272_ep_read.exit334
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit355

if.then.i350:                                     ; preds = %net2272_ep_read.exit334
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i342 = trunc i32 %bf.lshr.i340 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i343 = getelementptr inbounds %struct.net2272, ptr %116, i32 0, i32 12
  %120 = ptrtoint ptr %base_addr.i14.i.i343 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base_addr.i14.i.i343, align 4
  %base_shift.i15.i.i344 = getelementptr inbounds %struct.net2272, ptr %116, i32 0, i32 11
  %122 = ptrtoint ptr %base_shift.i15.i.i344 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %base_shift.i15.i.i344, align 8
  %shl.i16.i.i345 = shl i32 4, %123
  %add.ptr.i17.i.i346 = getelementptr i16, ptr %121, i32 %shl.i16.i.i345
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i346, i8 %conv6.i342) #10, !srcloc !388
  %124 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load8.i347 = load i32, ptr %num.i, align 4
  %bf.lshr9.i348 = lshr i32 %bf.load8.i347, 24
  %conv10.i349 = trunc i32 %bf.lshr9.i348 to i8
  %125 = ptrtoint ptr %pagesel.i336 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv10.i349, ptr %pagesel.i336, align 4
  br label %net2272_ep_read.exit355

net2272_ep_read.exit355:                          ; preds = %if.then.i350, %net2272_ep_read.exit334.net2272_ep_read.exit355_crit_edge
  %base_addr.i16.i.i351 = getelementptr inbounds %struct.net2272, ptr %116, i32 0, i32 12
  %126 = ptrtoint ptr %base_addr.i16.i.i351 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base_addr.i16.i.i351, align 4
  %base_shift.i17.i.i352 = getelementptr inbounds %struct.net2272, ptr %116, i32 0, i32 11
  %128 = ptrtoint ptr %base_shift.i17.i.i352 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %base_shift.i17.i.i352, align 8
  %shl.i18.i.i353 = shl i32 6, %129
  %add.ptr.i19.i.i354 = getelementptr i16, ptr %127, i32 %shl.i18.i.i353
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i354) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv112 = zext i8 %130 to i32
  %131 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev1.i, align 4
  %pagesel.i357 = getelementptr inbounds %struct.net2272, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %pagesel.i357 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %pagesel.i357, align 4
  %conv.i358 = zext i8 %134 to i32
  %135 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load.i360 = load i32, ptr %num.i, align 4
  %bf.lshr.i361 = lshr i32 %bf.load.i360, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i361, i32 %conv.i358)
  %cmp.not.i362 = icmp eq i32 %bf.lshr.i361, %conv.i358
  br i1 %cmp.not.i362, label %net2272_ep_read.exit355.net2272_ep_read.exit376_crit_edge, label %if.then.i371

net2272_ep_read.exit355.net2272_ep_read.exit376_crit_edge: ; preds = %net2272_ep_read.exit355
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit376

if.then.i371:                                     ; preds = %net2272_ep_read.exit355
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i363 = trunc i32 %bf.lshr.i361 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i364 = getelementptr inbounds %struct.net2272, ptr %132, i32 0, i32 12
  %136 = ptrtoint ptr %base_addr.i14.i.i364 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base_addr.i14.i.i364, align 4
  %base_shift.i15.i.i365 = getelementptr inbounds %struct.net2272, ptr %132, i32 0, i32 11
  %138 = ptrtoint ptr %base_shift.i15.i.i365 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base_shift.i15.i.i365, align 8
  %shl.i16.i.i366 = shl i32 4, %139
  %add.ptr.i17.i.i367 = getelementptr i16, ptr %137, i32 %shl.i16.i.i366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i367, i8 %conv6.i363) #10, !srcloc !388
  %140 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load8.i368 = load i32, ptr %num.i, align 4
  %bf.lshr9.i369 = lshr i32 %bf.load8.i368, 24
  %conv10.i370 = trunc i32 %bf.lshr9.i369 to i8
  %141 = ptrtoint ptr %pagesel.i357 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv10.i370, ptr %pagesel.i357, align 4
  br label %net2272_ep_read.exit376

net2272_ep_read.exit376:                          ; preds = %if.then.i371, %net2272_ep_read.exit355.net2272_ep_read.exit376_crit_edge
  %base_addr.i16.i.i372 = getelementptr inbounds %struct.net2272, ptr %132, i32 0, i32 12
  %142 = ptrtoint ptr %base_addr.i16.i.i372 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base_addr.i16.i.i372, align 4
  %base_shift.i17.i.i373 = getelementptr inbounds %struct.net2272, ptr %132, i32 0, i32 11
  %144 = ptrtoint ptr %base_shift.i17.i.i373 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %base_shift.i17.i.i373, align 8
  %shl.i18.i.i374 = shl i32 7, %145
  %add.ptr.i19.i.i375 = getelementptr i16, ptr %143, i32 %shl.i18.i.i374
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i375) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv114 = zext i8 %146 to i32
  %147 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev1.i, align 4
  %pagesel.i378 = getelementptr inbounds %struct.net2272, ptr %148, i32 0, i32 8
  %149 = ptrtoint ptr %pagesel.i378 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %pagesel.i378, align 4
  %conv.i379 = zext i8 %150 to i32
  %151 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load.i381 = load i32, ptr %num.i, align 4
  %bf.lshr.i382 = lshr i32 %bf.load.i381, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i382, i32 %conv.i379)
  %cmp.not.i383 = icmp eq i32 %bf.lshr.i382, %conv.i379
  br i1 %cmp.not.i383, label %net2272_ep_read.exit376.net2272_ep_read.exit397_crit_edge, label %if.then.i392

net2272_ep_read.exit376.net2272_ep_read.exit397_crit_edge: ; preds = %net2272_ep_read.exit376
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit397

if.then.i392:                                     ; preds = %net2272_ep_read.exit376
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i384 = trunc i32 %bf.lshr.i382 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i385 = getelementptr inbounds %struct.net2272, ptr %148, i32 0, i32 12
  %152 = ptrtoint ptr %base_addr.i14.i.i385 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base_addr.i14.i.i385, align 4
  %base_shift.i15.i.i386 = getelementptr inbounds %struct.net2272, ptr %148, i32 0, i32 11
  %154 = ptrtoint ptr %base_shift.i15.i.i386 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %base_shift.i15.i.i386, align 8
  %shl.i16.i.i387 = shl i32 4, %155
  %add.ptr.i17.i.i388 = getelementptr i16, ptr %153, i32 %shl.i16.i.i387
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i388, i8 %conv6.i384) #10, !srcloc !388
  %156 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %bf.load8.i389 = load i32, ptr %num.i, align 4
  %bf.lshr9.i390 = lshr i32 %bf.load8.i389, 24
  %conv10.i391 = trunc i32 %bf.lshr9.i390 to i8
  %157 = ptrtoint ptr %pagesel.i378 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv10.i391, ptr %pagesel.i378, align 4
  br label %net2272_ep_read.exit397

net2272_ep_read.exit397:                          ; preds = %if.then.i392, %net2272_ep_read.exit376.net2272_ep_read.exit397_crit_edge
  %base_addr.i16.i.i393 = getelementptr inbounds %struct.net2272, ptr %148, i32 0, i32 12
  %158 = ptrtoint ptr %base_addr.i16.i.i393 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base_addr.i16.i.i393, align 4
  %base_shift.i17.i.i394 = getelementptr inbounds %struct.net2272, ptr %148, i32 0, i32 11
  %160 = ptrtoint ptr %base_shift.i17.i.i394 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %base_shift.i17.i.i394, align 8
  %shl.i18.i.i395 = shl i32 13, %161
  %add.ptr.i19.i.i396 = getelementptr i16, ptr %159, i32 %shl.i18.i.i395
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i396) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv116 = zext i8 %162 to i32
  %shl = shl nuw nsw i32 %conv116, 8
  %163 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev1.i, align 4
  %pagesel.i399 = getelementptr inbounds %struct.net2272, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %pagesel.i399 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %pagesel.i399, align 4
  %conv.i400 = zext i8 %166 to i32
  %167 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %bf.load.i402 = load i32, ptr %num.i, align 4
  %bf.lshr.i403 = lshr i32 %bf.load.i402, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i403, i32 %conv.i400)
  %cmp.not.i404 = icmp eq i32 %bf.lshr.i403, %conv.i400
  br i1 %cmp.not.i404, label %net2272_ep_read.exit397.net2272_ep_read.exit418_crit_edge, label %if.then.i413

net2272_ep_read.exit397.net2272_ep_read.exit418_crit_edge: ; preds = %net2272_ep_read.exit397
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit418

if.then.i413:                                     ; preds = %net2272_ep_read.exit397
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i405 = trunc i32 %bf.lshr.i403 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i406 = getelementptr inbounds %struct.net2272, ptr %164, i32 0, i32 12
  %168 = ptrtoint ptr %base_addr.i14.i.i406 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base_addr.i14.i.i406, align 4
  %base_shift.i15.i.i407 = getelementptr inbounds %struct.net2272, ptr %164, i32 0, i32 11
  %170 = ptrtoint ptr %base_shift.i15.i.i407 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %base_shift.i15.i.i407, align 8
  %shl.i16.i.i408 = shl i32 4, %171
  %add.ptr.i17.i.i409 = getelementptr i16, ptr %169, i32 %shl.i16.i.i408
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i409, i8 %conv6.i405) #10, !srcloc !388
  %172 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %bf.load8.i410 = load i32, ptr %num.i, align 4
  %bf.lshr9.i411 = lshr i32 %bf.load8.i410, 24
  %conv10.i412 = trunc i32 %bf.lshr9.i411 to i8
  %173 = ptrtoint ptr %pagesel.i399 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv10.i412, ptr %pagesel.i399, align 4
  br label %net2272_ep_read.exit418

net2272_ep_read.exit418:                          ; preds = %if.then.i413, %net2272_ep_read.exit397.net2272_ep_read.exit418_crit_edge
  %base_addr.i16.i.i414 = getelementptr inbounds %struct.net2272, ptr %164, i32 0, i32 12
  %174 = ptrtoint ptr %base_addr.i16.i.i414 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base_addr.i16.i.i414, align 4
  %base_shift.i17.i.i415 = getelementptr inbounds %struct.net2272, ptr %164, i32 0, i32 11
  %176 = ptrtoint ptr %base_shift.i17.i.i415 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %base_shift.i17.i.i415, align 8
  %shl.i18.i.i416 = shl i32 12, %177
  %add.ptr.i19.i.i417 = getelementptr i16, ptr %175, i32 %shl.i18.i.i416
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i417) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv118 = zext i8 %178 to i32
  %or = or i32 %shl, %conv118
  %and120 = and i32 %conv72, 15
  %179 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load = load i32, ptr %num.i, align 4
  %180 = and i32 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool121.not = icmp eq i32 %180, 0
  %cond122 = select i1 %tobool121.not, ptr @.str.13, ptr @.str.12
  %181 = lshr i8 %80, 5
  %182 = and i8 %181, 3
  %and.i = zext i8 %182 to i32
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %183 = icmp ult i32 %switch.tableidx, 3
  br i1 %183, label %switch.lookup, label %net2272_ep_read.exit418.type_string.exit_crit_edge

net2272_ep_read.exit418.type_string.exit_crit_edge: ; preds = %net2272_ep_read.exit418
  call void @__sanitizer_cov_trace_pc() #12
  br label %type_string.exit

switch.lookup:                                    ; preds = %net2272_ep_read.exit418
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.registers_show, i32 0, i32 %switch.tableidx
  %184 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %184)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %type_string.exit

type_string.exit:                                 ; preds = %switch.lookup, %net2272_ep_read.exit418.type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %net2272_ep_read.exit418.type_string.exit_crit_edge ]
  %185 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool129.not = icmp eq i32 %185, 0
  %cond130 = select i1 %tobool129.not, ptr @.str.107, ptr @.str.127
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110, i32 noundef %sub109, ptr noundef nonnull @.str.126, i32 noundef %conv112, i32 noundef %conv114, i32 noundef %or, i32 noundef %and120, ptr noundef nonnull %cond122, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %cond130) #10
  %sub132 = sub i32 %sub109, %call131
  %add.ptr133 = getelementptr i8, ptr %add.ptr110, i32 %call131
  %186 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev1.i, align 4
  %pagesel.i420 = getelementptr inbounds %struct.net2272, ptr %187, i32 0, i32 8
  %188 = ptrtoint ptr %pagesel.i420 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %pagesel.i420, align 4
  %conv.i421 = zext i8 %189 to i32
  %190 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load.i423 = load i32, ptr %num.i, align 4
  %bf.lshr.i424 = lshr i32 %bf.load.i423, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i424, i32 %conv.i421)
  %cmp.not.i425 = icmp eq i32 %bf.lshr.i424, %conv.i421
  br i1 %cmp.not.i425, label %type_string.exit.net2272_ep_read.exit439_crit_edge, label %if.then.i434

type_string.exit.net2272_ep_read.exit439_crit_edge: ; preds = %type_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit439

if.then.i434:                                     ; preds = %type_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i426 = trunc i32 %bf.lshr.i424 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i427 = getelementptr inbounds %struct.net2272, ptr %187, i32 0, i32 12
  %191 = ptrtoint ptr %base_addr.i14.i.i427 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base_addr.i14.i.i427, align 4
  %base_shift.i15.i.i428 = getelementptr inbounds %struct.net2272, ptr %187, i32 0, i32 11
  %193 = ptrtoint ptr %base_shift.i15.i.i428 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %base_shift.i15.i.i428, align 8
  %shl.i16.i.i429 = shl i32 4, %194
  %add.ptr.i17.i.i430 = getelementptr i16, ptr %192, i32 %shl.i16.i.i429
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i430, i8 %conv6.i426) #10, !srcloc !388
  %195 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %bf.load8.i431 = load i32, ptr %num.i, align 4
  %bf.lshr9.i432 = lshr i32 %bf.load8.i431, 24
  %conv10.i433 = trunc i32 %bf.lshr9.i432 to i8
  %196 = ptrtoint ptr %pagesel.i420 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv10.i433, ptr %pagesel.i420, align 4
  br label %net2272_ep_read.exit439

net2272_ep_read.exit439:                          ; preds = %if.then.i434, %type_string.exit.net2272_ep_read.exit439_crit_edge
  %base_addr.i16.i.i435 = getelementptr inbounds %struct.net2272, ptr %187, i32 0, i32 12
  %197 = ptrtoint ptr %base_addr.i16.i.i435 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base_addr.i16.i.i435, align 4
  %base_shift.i17.i.i436 = getelementptr inbounds %struct.net2272, ptr %187, i32 0, i32 11
  %199 = ptrtoint ptr %base_shift.i17.i.i436 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %base_shift.i17.i.i436, align 8
  %shl.i18.i.i437 = shl i32 10, %200
  %add.ptr.i19.i.i438 = getelementptr i16, ptr %198, i32 %shl.i18.i.i437
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i438) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv135 = zext i8 %201 to i32
  %shl137 = shl nuw nsw i32 %conv135, 16
  %202 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev1.i, align 4
  %pagesel.i441 = getelementptr inbounds %struct.net2272, ptr %203, i32 0, i32 8
  %204 = ptrtoint ptr %pagesel.i441 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %pagesel.i441, align 4
  %conv.i442 = zext i8 %205 to i32
  %206 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %bf.load.i444 = load i32, ptr %num.i, align 4
  %bf.lshr.i445 = lshr i32 %bf.load.i444, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i445, i32 %conv.i442)
  %cmp.not.i446 = icmp eq i32 %bf.lshr.i445, %conv.i442
  br i1 %cmp.not.i446, label %net2272_ep_read.exit439.net2272_ep_read.exit460_crit_edge, label %if.then.i455

net2272_ep_read.exit439.net2272_ep_read.exit460_crit_edge: ; preds = %net2272_ep_read.exit439
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit460

if.then.i455:                                     ; preds = %net2272_ep_read.exit439
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i447 = trunc i32 %bf.lshr.i445 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i448 = getelementptr inbounds %struct.net2272, ptr %203, i32 0, i32 12
  %207 = ptrtoint ptr %base_addr.i14.i.i448 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base_addr.i14.i.i448, align 4
  %base_shift.i15.i.i449 = getelementptr inbounds %struct.net2272, ptr %203, i32 0, i32 11
  %209 = ptrtoint ptr %base_shift.i15.i.i449 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %base_shift.i15.i.i449, align 8
  %shl.i16.i.i450 = shl i32 4, %210
  %add.ptr.i17.i.i451 = getelementptr i16, ptr %208, i32 %shl.i16.i.i450
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i451, i8 %conv6.i447) #10, !srcloc !388
  %211 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %bf.load8.i452 = load i32, ptr %num.i, align 4
  %bf.lshr9.i453 = lshr i32 %bf.load8.i452, 24
  %conv10.i454 = trunc i32 %bf.lshr9.i453 to i8
  %212 = ptrtoint ptr %pagesel.i441 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv10.i454, ptr %pagesel.i441, align 4
  br label %net2272_ep_read.exit460

net2272_ep_read.exit460:                          ; preds = %if.then.i455, %net2272_ep_read.exit439.net2272_ep_read.exit460_crit_edge
  %base_addr.i16.i.i456 = getelementptr inbounds %struct.net2272, ptr %203, i32 0, i32 12
  %213 = ptrtoint ptr %base_addr.i16.i.i456 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base_addr.i16.i.i456, align 4
  %base_shift.i17.i.i457 = getelementptr inbounds %struct.net2272, ptr %203, i32 0, i32 11
  %215 = ptrtoint ptr %base_shift.i17.i.i457 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %base_shift.i17.i.i457, align 8
  %shl.i18.i.i458 = shl i32 9, %216
  %add.ptr.i19.i.i459 = getelementptr i16, ptr %214, i32 %shl.i18.i.i458
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i459) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv139 = zext i8 %217 to i32
  %shl141 = shl nuw nsw i32 %conv139, 8
  %or142 = or i32 %shl141, %shl137
  %218 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev1.i, align 4
  %pagesel.i462 = getelementptr inbounds %struct.net2272, ptr %219, i32 0, i32 8
  %220 = ptrtoint ptr %pagesel.i462 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %pagesel.i462, align 4
  %conv.i463 = zext i8 %221 to i32
  %222 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %bf.load.i465 = load i32, ptr %num.i, align 4
  %bf.lshr.i466 = lshr i32 %bf.load.i465, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i466, i32 %conv.i463)
  %cmp.not.i467 = icmp eq i32 %bf.lshr.i466, %conv.i463
  br i1 %cmp.not.i467, label %net2272_ep_read.exit460.net2272_ep_read.exit481_crit_edge, label %if.then.i476

net2272_ep_read.exit460.net2272_ep_read.exit481_crit_edge: ; preds = %net2272_ep_read.exit460
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit481

if.then.i476:                                     ; preds = %net2272_ep_read.exit460
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i468 = trunc i32 %bf.lshr.i466 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i469 = getelementptr inbounds %struct.net2272, ptr %219, i32 0, i32 12
  %223 = ptrtoint ptr %base_addr.i14.i.i469 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base_addr.i14.i.i469, align 4
  %base_shift.i15.i.i470 = getelementptr inbounds %struct.net2272, ptr %219, i32 0, i32 11
  %225 = ptrtoint ptr %base_shift.i15.i.i470 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %base_shift.i15.i.i470, align 8
  %shl.i16.i.i471 = shl i32 4, %226
  %add.ptr.i17.i.i472 = getelementptr i16, ptr %224, i32 %shl.i16.i.i471
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i472, i8 %conv6.i468) #10, !srcloc !388
  %227 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %bf.load8.i473 = load i32, ptr %num.i, align 4
  %bf.lshr9.i474 = lshr i32 %bf.load8.i473, 24
  %conv10.i475 = trunc i32 %bf.lshr9.i474 to i8
  %228 = ptrtoint ptr %pagesel.i462 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv10.i475, ptr %pagesel.i462, align 4
  br label %net2272_ep_read.exit481

net2272_ep_read.exit481:                          ; preds = %if.then.i476, %net2272_ep_read.exit460.net2272_ep_read.exit481_crit_edge
  %base_addr.i16.i.i477 = getelementptr inbounds %struct.net2272, ptr %219, i32 0, i32 12
  %229 = ptrtoint ptr %base_addr.i16.i.i477 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base_addr.i16.i.i477, align 4
  %base_shift.i17.i.i478 = getelementptr inbounds %struct.net2272, ptr %219, i32 0, i32 11
  %231 = ptrtoint ptr %base_shift.i17.i.i478 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %base_shift.i17.i.i478, align 8
  %shl.i18.i.i479 = shl i32 8, %232
  %add.ptr.i19.i.i480 = getelementptr i16, ptr %230, i32 %shl.i18.i.i479
  %233 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19.i.i480) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %conv144 = zext i8 %233 to i32
  %or146 = or i32 %or142, %conv144
  %call147 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub132, ptr noundef nonnull @.str.128, i32 noundef %or146) #10
  %sub148 = sub i32 %sub132, %call147
  %add.ptr149 = getelementptr i8, ptr %add.ptr133, i32 %call147
  %234 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev1.i, align 4
  %pagesel.i483 = getelementptr inbounds %struct.net2272, ptr %235, i32 0, i32 8
  %236 = ptrtoint ptr %pagesel.i483 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %pagesel.i483, align 4
  %conv.i484 = zext i8 %237 to i32
  %238 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %bf.load.i486 = load i32, ptr %num.i, align 4
  %bf.lshr.i487 = lshr i32 %bf.load.i486, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i487, i32 %conv.i484)
  %cmp.not.i488 = icmp eq i32 %bf.lshr.i487, %conv.i484
  br i1 %cmp.not.i488, label %net2272_ep_read.exit481.net2272_ep_read.exit502_crit_edge, label %if.then.i497

net2272_ep_read.exit481.net2272_ep_read.exit502_crit_edge: ; preds = %net2272_ep_read.exit481
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit502

if.then.i497:                                     ; preds = %net2272_ep_read.exit481
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i489 = trunc i32 %bf.lshr.i487 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i490 = getelementptr inbounds %struct.net2272, ptr %235, i32 0, i32 12
  %239 = ptrtoint ptr %base_addr.i14.i.i490 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %base_addr.i14.i.i490, align 4
  %base_shift.i15.i.i491 = getelementptr inbounds %struct.net2272, ptr %235, i32 0, i32 11
  %241 = ptrtoint ptr %base_shift.i15.i.i491 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %base_shift.i15.i.i491, align 8
  %shl.i16.i.i492 = shl i32 4, %242
  %add.ptr.i17.i.i493 = getelementptr i16, ptr %240, i32 %shl.i16.i.i492
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i493, i8 %conv6.i489) #10, !srcloc !388
  %243 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %bf.load8.i494 = load i32, ptr %num.i, align 4
  %bf.lshr9.i495 = lshr i32 %bf.load8.i494, 24
  %conv10.i496 = trunc i32 %bf.lshr9.i495 to i8
  %244 = ptrtoint ptr %pagesel.i483 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv10.i496, ptr %pagesel.i483, align 4
  br label %net2272_ep_read.exit502

net2272_ep_read.exit502:                          ; preds = %if.then.i497, %net2272_ep_read.exit481.net2272_ep_read.exit502_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i.i498 = getelementptr inbounds %struct.net2272, ptr %235, i32 0, i32 12
  %245 = ptrtoint ptr %base_addr.i.i.i498 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base_addr.i.i.i498, align 4
  %base_shift.i.i.i499 = getelementptr inbounds %struct.net2272, ptr %235, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %246, i8 44) #10, !srcloc !388
  %247 = ptrtoint ptr %base_addr.i.i.i498 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %base_addr.i.i.i498, align 4
  %249 = ptrtoint ptr %base_shift.i.i.i499 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %base_shift.i.i.i499, align 8
  %shl.i.i.i500 = shl nuw i32 1, %250
  %add.ptr.i.i.i501 = getelementptr i16, ptr %248, i32 %shl.i.i.i500
  %251 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i501) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %252 = and i8 %251, 3
  %253 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev1.i, align 4
  %pagesel.i504 = getelementptr inbounds %struct.net2272, ptr %254, i32 0, i32 8
  %255 = ptrtoint ptr %pagesel.i504 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %pagesel.i504, align 4
  %conv.i505 = zext i8 %256 to i32
  %257 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %bf.load.i507 = load i32, ptr %num.i, align 4
  %bf.lshr.i508 = lshr i32 %bf.load.i507, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i508, i32 %conv.i505)
  %cmp.not.i509 = icmp eq i32 %bf.lshr.i508, %conv.i505
  br i1 %cmp.not.i509, label %net2272_ep_read.exit502.net2272_ep_read.exit523_crit_edge, label %if.then.i518

net2272_ep_read.exit502.net2272_ep_read.exit523_crit_edge: ; preds = %net2272_ep_read.exit502
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_ep_read.exit523

if.then.i518:                                     ; preds = %net2272_ep_read.exit502
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i510 = trunc i32 %bf.lshr.i508 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %base_addr.i14.i.i511 = getelementptr inbounds %struct.net2272, ptr %254, i32 0, i32 12
  %258 = ptrtoint ptr %base_addr.i14.i.i511 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %base_addr.i14.i.i511, align 4
  %base_shift.i15.i.i512 = getelementptr inbounds %struct.net2272, ptr %254, i32 0, i32 11
  %260 = ptrtoint ptr %base_shift.i15.i.i512 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %base_shift.i15.i.i512, align 8
  %shl.i16.i.i513 = shl i32 4, %261
  %add.ptr.i17.i.i514 = getelementptr i16, ptr %259, i32 %shl.i16.i.i513
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i.i514, i8 %conv6.i510) #10, !srcloc !388
  %262 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %bf.load8.i515 = load i32, ptr %num.i, align 4
  %bf.lshr9.i516 = lshr i32 %bf.load8.i515, 24
  %conv10.i517 = trunc i32 %bf.lshr9.i516 to i8
  %263 = ptrtoint ptr %pagesel.i504 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv10.i517, ptr %pagesel.i504, align 4
  br label %net2272_ep_read.exit523

net2272_ep_read.exit523:                          ; preds = %if.then.i518, %net2272_ep_read.exit502.net2272_ep_read.exit523_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %base_addr.i.i.i519 = getelementptr inbounds %struct.net2272, ptr %254, i32 0, i32 12
  %264 = ptrtoint ptr %base_addr.i.i.i519 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %base_addr.i.i.i519, align 4
  %base_shift.i.i.i520 = getelementptr inbounds %struct.net2272, ptr %254, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %265, i8 44) #10, !srcloc !388
  %266 = ptrtoint ptr %base_addr.i.i.i519 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base_addr.i.i.i519, align 4
  %268 = ptrtoint ptr %base_shift.i.i.i520 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %base_shift.i.i.i520, align 8
  %shl.i.i.i521 = shl nuw i32 1, %269
  %add.ptr.i.i.i522 = getelementptr i16, ptr %267, i32 %shl.i.i.i521
  %270 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i522) #10, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %271 = lshr i8 %270, 2
  %272 = and i8 %271, 3
  %conv159 = zext i8 %252 to i32
  %switch.gep543 = getelementptr inbounds [4 x ptr], ptr @switch.table.registers_show.144, i32 0, i32 %conv159
  %273 = ptrtoint ptr %switch.gep543 to i32
  call void @__asan_load4_noabort(i32 %273)
  %switch.load544 = load ptr, ptr %switch.gep543, align 4
  %conv161 = zext i8 %272 to i32
  %switch.gep546 = getelementptr inbounds [4 x ptr], ptr @switch.table.registers_show.145, i32 0, i32 %conv161
  %274 = ptrtoint ptr %switch.gep546 to i32
  call void @__asan_load4_noabort(i32 %274)
  %switch.load547 = load ptr, ptr %switch.gep546, align 4
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr149, i32 noundef %sub148, ptr noundef nonnull @.str.129, ptr noundef nonnull %switch.load544, ptr noundef nonnull %switch.load547) #10
  %sub164 = sub i32 %sub148, %call163
  %add.ptr165 = getelementptr i8, ptr %add.ptr149, i32 %call163
  br label %cleanup

cleanup:                                          ; preds = %net2272_ep_read.exit523, %land.lhs.true.cleanup_crit_edge
  %next.1 = phi ptr [ %add.ptr165, %net2272_ep_read.exit523 ], [ %next.0536, %land.lhs.true.cleanup_crit_edge ]
  %size.1 = phi i32 [ %sub164, %net2272_ep_read.exit523 ], [ %size.0538, %land.lhs.true.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0540, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %sub167 = sub i32 4096, %size.1
  ret i32 %sub167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_plat_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 4096, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  %tobool3.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.137) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_probe_init.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_plat_probe, %net2272_probe_init.exit)) #10
          to label %if.then5.i [label %net2272_probe_init.exit], !srcloc !376

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_probe_init.__UNIQUE_ID_ddebug285, ptr noundef %dev4, ptr noundef nonnull @.str.3) #10
  br label %if.then8

if.end7.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1408) #13
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.then8_crit_edge, label %do.body13.i

if.end7.i.if.then8_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

do.body13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @net2272_probe_init.__key, i16 noundef signext 3) #10
  %irq17.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %irq17.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %irq17.i, align 8
  %dev18.i = getelementptr inbounds %struct.net2272, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev18.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev4, ptr %dev18.i, align 8
  %ops.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @net2272_ops, ptr %ops.i, align 8
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %max_speed.i, align 4
  %name.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @driver_name, ptr %name.i, align 4
  tail call void @usb_initialize_gadget(ptr noundef %dev4, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @net2272_gadget_release) #10
  br label %net2272_probe_init.exit

net2272_probe_init.exit:                          ; preds = %do.body13.i, %do.body.i
  %retval.0.i132 = phi ptr [ %call7.i.i.i, %do.body13.i ], [ inttoptr (i32 -19 to ptr), %do.body.i ]
  %cmp.i = icmp ugt ptr %retval.0.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %net2272_probe_init.exit.if.then8_crit_edge, label %if.end10

net2272_probe_init.exit.if.then8_crit_edge:       ; preds = %net2272_probe_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %net2272_probe_init.exit.if.then8_crit_edge, %if.end7.i.if.then8_crit_edge, %if.then5.i
  %retval.0.i132135 = phi ptr [ %retval.0.i132, %net2272_probe_init.exit.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.if.then8_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then5.i ]
  %8 = ptrtoint ptr %retval.0.i132135 to i32
  br label %cleanup

if.end10:                                         ; preds = %net2272_probe_init.exit
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %tobool34.not = icmp eq ptr %call2, null
  br i1 %tobool34.not, label %if.end10.if.end37_crit_edge, label %if.then35

if.end10.if.end37_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call2, align 4
  %base_shift = getelementptr inbounds %struct.net2272, ptr %retval.0.i132, i32 0, i32 11
  %15 = ptrtoint ptr %base_shift to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %base_shift, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end10.if.end37_crit_edge
  %call38 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef nonnull @driver_name, i32 noundef 0) #10
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.body41, label %if.end52

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_plat_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_plat_probe, %err)) #10
          to label %if.then47 [label %err], !srcloc !376

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %dev48 = getelementptr inbounds %struct.net2272, ptr %retval.0.i132, i32 0, i32 1
  %16 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev48, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_plat_probe.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.139) #10
  br label %err

if.end52:                                         ; preds = %if.end37
  %call53 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %add.i) #10
  %base_addr = getelementptr inbounds %struct.net2272, ptr %retval.0.i132, i32 0, i32 12
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call53, ptr %base_addr, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.body57, label %if.end76

do.body57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2272_plat_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2272_plat_probe, %err_req)) #10
          to label %if.then71 [label %err_req], !srcloc !376

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev72 = getelementptr inbounds %struct.net2272, ptr %retval.0.i132, i32 0, i32 1
  %19 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2272_plat_probe.__UNIQUE_ID_ddebug291, ptr noundef %20, ptr noundef nonnull @.str.53) #10
  br label %err_req

if.end76:                                         ; preds = %if.end52
  %call77 = tail call fastcc i32 @net2272_probe_fin(ptr noundef nonnull %retval.0.i132, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %err_io

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i132, ptr %driver_data.i.i, align 4
  %call85 = tail call fastcc zeroext i8 @net2272_read(ptr noundef nonnull %retval.0.i132, i32 noundef 34)
  %22 = and i8 %call85, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool87.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool87.not, ptr @.str.143, ptr @.str.107
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.141, ptr noundef nonnull %cond) #14
  br label %cleanup

err_io:                                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr, align 4
  tail call void @iounmap(ptr noundef %24) #10
  br label %err_req

err_req:                                          ; preds = %err_io, %if.then71, %do.body57
  %ret.0 = phi i32 [ %call77, %err_io ], [ -14, %if.then71 ], [ -14, %do.body57 ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i) #10
  br label %err

err:                                              ; preds = %err_req, %if.then47, %do.body41
  %ret.1 = phi i32 [ %ret.0, %err_req ], [ -16, %if.then47 ], [ -16, %do.body41 ]
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %retval.0.i132, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end80, %if.then8, %do.end
  %retval.0 = phi i32 [ %8, %if.then8 ], [ %ret.1, %err ], [ 0, %if.end80 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2272_plat_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %added.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %added.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %added.i, align 8
  %3 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.net2272_remove.exit_crit_edge, label %if.then.i

entry.net2272_remove.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %net2272_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_del_gadget(ptr noundef %1) #10
  br label %net2272_remove.exit

net2272_remove.exit:                              ; preds = %if.then.i, %entry.net2272_remove.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #10
  %base_addr.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i, align 4
  tail call void @iounmap(ptr noundef %7) #10
  %dev1.i = getelementptr inbounds %struct.net2272, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 8
  tail call void @device_remove_file(ptr noundef %9, ptr noundef nonnull @dev_attr_registers) #10
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.135) #14
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i) #10
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !260, !261, !262, !264, !265, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !348, !349, !350, !352, !354, !355, !356, !357, !359, !360, !362, !364, !365, !366}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @__param_use_dma, !1, !"__param_use_dma", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_dmatype241, !1, !"__UNIQUE_ID_use_dmatype241", i1 false, i1 false}
!3 = !{ptr @__param_dma_ep, !4, !"__param_dma_ep", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 71, i32 1}
!5 = !{ptr @__UNIQUE_ID_dma_eptype242, !4, !"__UNIQUE_ID_dma_eptype242", i1 false, i1 false}
!6 = !{ptr @__param_dma_mode, !7, !"__param_dma_mode", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 80, i32 1}
!8 = !{ptr @__UNIQUE_ID_dma_modetype243, !7, !"__UNIQUE_ID_dma_modetype243", i1 false, i1 false}
!9 = !{ptr @__param_fifo_mode, !10, !"__param_fifo_mode", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 95, i32 1}
!11 = !{ptr @__UNIQUE_ID_fifo_modetype244, !10, !"__UNIQUE_ID_fifo_modetype244", i1 false, i1 false}
!12 = !{ptr @__param_enable_suspend, !13, !"__param_enable_suspend", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 104, i32 1}
!14 = !{ptr @__UNIQUE_ID_enable_suspendtype245, !13, !"__UNIQUE_ID_enable_suspendtype245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias292, !16, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2696, i32 1}
!17 = !{ptr @__initcall__kmod_net2272__293_2714_net2272_init6, !18, !"__initcall__kmod_net2272__293_2714_net2272_init6", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2714, i32 1}
!19 = !{ptr @__exitcall_net2272_cleanup, !20, !"__exitcall_net2272_cleanup", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2721, i32 1}
!21 = !{ptr @__UNIQUE_ID_description294, !22, !"__UNIQUE_ID_description294", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2723, i32 1}
!23 = !{ptr @__UNIQUE_ID_author295, !24, !"__UNIQUE_ID_author295", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2724, i32 1}
!25 = !{ptr @__UNIQUE_ID_file296, !26, !"__UNIQUE_ID_file296", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2725, i32 1}
!27 = !{ptr @__UNIQUE_ID_license297, !26, !"__UNIQUE_ID_license297", i1 false, i1 false}
!28 = !{ptr @__param_str_use_dma, !1, !"__param_str_use_dma", i1 false, i1 false}
!29 = !{ptr @use_dma, !30, !"use_dma", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 56, i32 13}
!31 = !{ptr @__param_str_dma_ep, !4, !"__param_str_dma_ep", i1 false, i1 false}
!32 = !{ptr @dma_ep, !33, !"dma_ep", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 70, i32 15}
!34 = !{ptr @__param_str_dma_mode, !7, !"__param_str_dma_mode", i1 false, i1 false}
!35 = !{ptr @dma_mode, !36, !"dma_mode", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 79, i32 15}
!37 = !{ptr @__param_str_fifo_mode, !10, !"__param_str_fifo_mode", i1 false, i1 false}
!38 = !{ptr @fifo_mode, !39, !"fifo_mode", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 94, i32 15}
!40 = !{ptr @__param_str_enable_suspend, !13, !"__param_str_enable_suspend", i1 false, i1 false}
!41 = !{ptr @enable_suspend, !42, !"enable_suspend", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 103, i32 15}
!43 = !{ptr @.str, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2590, i32 9}
!45 = !{ptr @net2272_pci_driver, !46, !"net2272_pci_driver", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2580, i32 26}
!47 = !{ptr @driver_name, !48, !"driver_name", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 37, i32 19}
!49 = !{ptr @pci_ids, !50, !"pci_ids", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2559, i32 29}
!51 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2236, i32 3}
!53 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @net2272_probe_init.__UNIQUE_ID_ddebug285, !52, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!56 = !{ptr @net2272_probe_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2245, i32 2}
!58 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @net2272_ops, !60, !"net2272_ops", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1155, i32 36}
!61 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 372, i32 3}
!63 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @net2272_done.__UNIQUE_ID_ddebug249, !62, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 44, i32 2}
!67 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 44, i32 10}
!69 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 44, i32 18}
!71 = !{ptr @ep_name, !72, !"ep_name", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 42, i32 27}
!73 = !{ptr @ep0name, !74, !"ep0name", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 41, i32 19}
!75 = !{ptr @net2272_ep_ops, !76, !"net2272_ep_ops", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1057, i32 32}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 239, i32 2}
!79 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @net2272_enable.__UNIQUE_ID_ddebug247, !78, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!81 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 136, i32 38}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 137, i32 38}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 138, i32 38}
!89 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 139, i32 38}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 307, i32 2}
!93 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @net2272_disable.__UNIQUE_ID_ddebug248, !92, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 836, i32 2}
!97 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @net2272_queue.__UNIQUE_ID_ddebug258, !96, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!99 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 850, i32 4}
!103 = !{ptr @net2272_queue.__UNIQUE_ID_ddebug259, !102, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 860, i32 5}
!106 = !{ptr @net2272_queue.__UNIQUE_ID_ddebug260, !105, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 543, i32 2}
!109 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @net2272_read_fifo.__UNIQUE_ID_ddebug255, !108, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 562, i32 5}
!113 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @net2272_read_fifo._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @net2272_read_fifo._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 502, i32 2}
!119 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @net2272_read_packet.__UNIQUE_ID_ddebug254, !118, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!121 = !{ptr @__func__.net2272_out_flush, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 485, i32 2}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 116, i32 3}
!125 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @assert_out_naking.__UNIQUE_ID_ddebug246, !124, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 716, i32 2}
!129 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @net2272_kick_dma.__UNIQUE_ID_ddebug257, !128, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 626, i32 2}
!133 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @net2272_request_dma.__UNIQUE_ID_ddebug256, !132, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!135 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 428, i32 2}
!137 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @net2272_write_fifo.__UNIQUE_ID_ddebug253, !136, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 396, i32 2}
!141 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @net2272_write_packet.__UNIQUE_ID_ddebug252, !140, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 954, i32 3}
!145 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @net2272_dequeue.__UNIQUE_ID_ddebug261, !144, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!147 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 987, i32 3}
!149 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @net2272_set_halt_and_wedge.__UNIQUE_ID_ddebug262, !148, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!151 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2337, i32 4}
!157 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @net2272_rdk1_probe.__UNIQUE_ID_ddebug286, !156, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2345, i32 4}
!161 = !{ptr @net2272_rdk1_probe.__UNIQUE_ID_ddebug287, !160, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2417, i32 4}
!164 = !{ptr @net2272_rdk2_probe.__UNIQUE_ID_ddebug288, !163, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!165 = !{ptr @net2272_rdk2_probe.__UNIQUE_ID_ddebug289, !166, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2425, i32 4}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2440, i32 2}
!169 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @net2272_rdk2_probe._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @net2272_rdk2_probe._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.57, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2265, i32 3}
!174 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @net2272_probe_fin._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @net2272_probe_fin._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2275, i32 3}
!180 = !{ptr @net2272_probe_fin._entry.60, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @net2272_probe_fin._entry_ptr.62, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2282, i32 2}
!184 = !{ptr @net2272_probe_fin._entry.63, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @net2272_probe_fin._entry_ptr.65, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.67, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2283, i32 2}
!188 = !{ptr @net2272_probe_fin._entry.66, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @net2272_probe_fin._entry_ptr.68, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2286, i32 2}
!192 = !{ptr @net2272_probe_fin._entry.69, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @net2272_probe_fin._entry_ptr.71, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2130, i32 4}
!196 = !{ptr @.str.73, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @net2272_present.__UNIQUE_ID_ddebug280, !195, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!198 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2146, i32 4}
!200 = !{ptr @net2272_present.__UNIQUE_ID_ddebug281, !199, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!201 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2167, i32 3}
!203 = !{ptr @net2272_present.__UNIQUE_ID_ddebug282, !202, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!204 = !{ptr @.str.76, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2186, i32 3}
!206 = !{ptr @net2272_present.__UNIQUE_ID_ddebug283, !205, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!207 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2194, i32 3}
!209 = !{ptr @net2272_present.__UNIQUE_ID_ddebug284, !208, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1997, i32 5}
!212 = !{ptr @.str.79, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug276, !211, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!214 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2003, i32 5}
!216 = !{ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug277, !215, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!217 = !{ptr @.str.81, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2035, i32 5}
!219 = !{ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug278, !218, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!220 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2055, i32 3}
!222 = !{ptr @net2272_handle_stat1_irqs.__UNIQUE_ID_ddebug279, !221, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1735, i32 4}
!225 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug265, !224, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1838, i32 5}
!228 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug266, !227, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!229 = !{ptr @.str.85, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1852, i32 5}
!231 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug267, !230, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!232 = !{ptr @.str.86, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1863, i32 5}
!234 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug268, !233, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1881, i32 5}
!237 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug269, !236, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!238 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1884, i32 5}
!240 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug270, !239, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!241 = !{ptr @.str.89, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1897, i32 5}
!243 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug271, !242, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!244 = !{ptr @.str.90, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1909, i32 4}
!246 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug272, !245, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!247 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1919, i32 4}
!249 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug273, !248, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!250 = !{ptr @.str.92, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1934, i32 4}
!252 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug274, !251, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!253 = !{ptr @.str.93, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1971, i32 3}
!255 = !{ptr @net2272_handle_stat0_irqs.__UNIQUE_ID_ddebug275, !254, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!256 = !{ptr @net2272_test_packet, !257, !"net2272_test_packet", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1662, i32 17}
!258 = !{ptr @.str.94, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1530, i32 2}
!260 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @net2272_handle_dma.__UNIQUE_ID_ddebug263, !259, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!262 = !{ptr @.str.96, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1612, i32 2}
!264 = !{ptr @.str.97, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @net2272_handle_ep.__UNIQUE_ID_ddebug264, !263, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!266 = !{ptr @driver_desc, !267, !"driver_desc", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 39, i32 19}
!268 = !{ptr @.str.98, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 157, i32 10}
!270 = !{ptr @.str.99, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 159, i32 18}
!272 = !{ptr @.str.100, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 160, i32 18}
!274 = !{ptr @.str.101, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 161, i32 18}
!276 = !{ptr @.str.102, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 162, i32 18}
!278 = !{ptr @driver_vers, !279, !"driver_vers", i1 false, i1 false}
!279 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 38, i32 19}
!280 = !{ptr @.str.103, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1287, i32 8}
!282 = !{ptr @dev_attr_registers, !281, !"dev_attr_registers", i1 false, i1 false}
!283 = !{ptr @.str.104, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1184, i32 28}
!285 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1199, i32 28}
!287 = !{ptr @.str.106, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1201, i32 34}
!289 = !{ptr @.str.107, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1201, i32 44}
!291 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1202, i32 36}
!293 = !{ptr @.str.109, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1203, i32 29}
!295 = !{ptr @.str.110, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1204, i32 34}
!297 = !{ptr @.str.111, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1212, i32 8}
!299 = !{ptr @.str.112, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1214, i32 8}
!301 = !{ptr @.str.113, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1216, i32 8}
!303 = !{ptr @.str.114, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1218, i32 7}
!305 = !{ptr @.str.115, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1220, i32 3}
!307 = !{ptr @.str.116, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1237, i32 4}
!309 = !{ptr @.str.117, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1240, i32 40}
!311 = !{ptr @.str.118, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1241, i32 38}
!313 = !{ptr @.str.119, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1242, i32 33}
!315 = !{ptr @.str.120, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1243, i32 35}
!317 = !{ptr @.str.121, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1244, i32 51}
!319 = !{ptr @.str.122, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1245, i32 41}
!321 = !{ptr @.str.123, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1246, i32 36}
!323 = !{ptr @.str.124, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1246, i32 47}
!325 = !{ptr @.str.125, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1247, i32 34}
!327 = !{ptr @.str.126, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1253, i32 4}
!329 = !{ptr @.str.127, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1261, i32 18}
!331 = !{ptr @.str.128, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1266, i32 4}
!333 = !{ptr @.str.129, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 1276, i32 4}
!335 = !{ptr @.str.130, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 146, i32 26}
!337 = !{ptr @.str.131, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 147, i32 26}
!339 = !{ptr @.str.132, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 148, i32 26}
!341 = !{ptr @.str.133, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 149, i32 26}
!343 = distinct !{null, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 150, i32 26}
!345 = !{ptr @.str.135, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2228, i32 2}
!347 = !{ptr @.str.136, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @net2272_remove._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @net2272_remove._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @net2272_plat_driver, !351, !"net2272_plat_driver", i1 false, i1 false}
!351 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2688, i32 31}
!352 = !{ptr @.str.137, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2618, i32 3}
!354 = !{ptr @.str.138, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @net2272_plat_probe._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @net2272_plat_probe._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.139, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2642, i32 3}
!359 = !{ptr @net2272_plat_probe.__UNIQUE_ID_ddebug290, !358, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!360 = !{ptr @net2272_plat_probe.__UNIQUE_ID_ddebug291, !361, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!361 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2648, i32 3}
!362 = !{ptr @.str.141, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/gadget/udc/net2272.c", i32 2658, i32 2}
!364 = !{ptr @net2272_plat_probe._entry.140, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @net2272_plat_probe._entry_ptr.142, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.143, !363, !"<string literal>", i1 false, i1 false}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{i64 2148824869, i64 2148824874, i64 2148824887, i64 2148824931, i64 2148824965, i64 2148824986}
!377 = !{i64 2154941136, i64 2154941634, i64 2154941173, i64 2154941229, i64 2154941263, i64 2154941287, i64 2154941328, i64 2154941349, i64 2154941377, i64 2154941411}
!378 = !{i64 2154943467}
!379 = !{i64 4935064}
!380 = !{i64 2154944460}
!381 = !{i64 4934646}
!382 = !{i64 2154945931, i64 2154950490, i64 2154945968, i64 2154946024, i64 2154946058, i64 2154946082, i64 2154946123, i64 2154946144, i64 2154946172, i64 2154946206}
!383 = !{i64 2154925340}
!384 = !{i64 2154925599}
!385 = !{i64 2154926940}
!386 = !{i64 2154927965}
!387 = !{i64 2154928265}
!388 = !{i64 4934449}
!389 = !{i64 2154928681}
!390 = !{i64 2154928972}
!391 = !{i64 2154929629}
!392 = !{i64 4934844}
!393 = !{i64 2154929808}
!394 = !{i64 2154936144}
!395 = !{i64 2154936385}
!396 = !{i64 2154937381}
!397 = !{i64 2154939829}
!398 = !{i64 2154940070}
!399 = !{i64 2154733794}
!400 = !{i64 2154734121}
!401 = !{i8 0, i8 2}
!402 = !{i64 2154734371}
!403 = !{i64 2154733196}
!404 = !{i64 2154800970}
!405 = !{i64 2154801279}
!406 = !{i64 2154801623}
!407 = !{i64 2154801866}
!408 = !{!"branch_weights", i32 2000, i32 1}
!409 = !{!"branch_weights", i32 1, i32 2000}
!410 = !{!"branch_weights", i32 4000000, i32 4001}
!411 = !{i64 2154798013}
!412 = !{i64 754695}
!413 = !{i64 4934226}
!414 = !{i64 2154782472}
!415 = !{i64 2154782955}
!416 = !{i64 2154793222}
!417 = !{i64 2154794051}
!418 = !{i64 2154794494}
!419 = !{i64 2154794922}
!420 = !{i64 2154795377}
!421 = !{i64 2154796710}
!422 = !{i64 2154797712}
!423 = !{i64 2154774630}
!424 = !{i64 4934026}
!425 = !{i64 2154775057}
!426 = !{i64 2154858026}
!427 = !{i64 2154860733}
!428 = !{i64 2154863422}
!429 = !{ptr @net2272_read_fifo, ptr @net2272_write_fifo}
